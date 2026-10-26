# frozen_string_literal: true

# This is generated code!

module Aws::Personalize
  # This module contains the types returned by client operations.
  module Types

    # <p>Describes a custom algorithm.</p>
    # @!attribute name
    #   <p>The name of the algorithm.</p>
    #   @return [String]
    # @!attribute algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm.</p>
    #   @return [String]
    # @!attribute algorithm_image
    #   <p>The URI of the Docker container for the algorithm image.</p>
    #   @return [Types::AlgorithmImage]
    # @!attribute default_hyper_parameters
    #   <p>Specifies the default hyperparameters.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_hyper_parameter_ranges
    #   <p>Specifies the default hyperparameters, their ranges, and whether they
    #         are tunable. A tunable hyperparameter can
    #         have its value determined during hyperparameter optimization (HPO).</p>
    #   @return [Types::DefaultHyperParameterRanges]
    # @!attribute default_resource_config
    #   <p>Specifies the default maximum number of training jobs and parallel training jobs.</p>
    #   @return [Hash<String, String>]
    # @!attribute training_input_mode
    #   <p>The training input mode.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the algorithm was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the algorithm was last updated.</p>
    #   @return [Time]
    class Algorithm < Struct.new(
      nil,
      :name,
      :algorithm_arn,
      :algorithm_image,
      :default_hyper_parameters,
      :default_hyper_parameter_ranges,
      :default_resource_config,
      :training_input_mode,
      :role_arn,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an algorithm image.</p>
    # @!attribute name
    #   <p>The name of the algorithm image.</p>
    #   @return [String]
    # @!attribute docker_uri
    #   <p>The URI of the Docker container for the algorithm image.</p>
    #   @return [String]
    class AlgorithmImage < Struct.new(
      nil,
      :name,
      :docker_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When the solution performs AutoML (<code>performAutoML</code> is true in
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>), Amazon Personalize
    #       determines which recipe, from the specified list, optimizes the given metric.
    #       Amazon Personalize then uses that recipe for the solution.</p>
    # @!attribute metric_name
    #   <p>The metric to optimize.</p>
    #   @return [String]
    # @!attribute recipe_list
    #   <p>The list of candidate recipes.</p>
    #   @return [Array<String>]
    class AutoMLConfig < Struct.new(
      nil,
      :metric_name,
      :recipe_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When the solution performs AutoML (<code>performAutoML</code> is true in
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>), specifies the recipe that best optimized the
    #       specified metric.</p>
    # @!attribute best_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the best recipe.</p>
    #   @return [String]
    class AutoMLResult < Struct.new(
      nil,
      :best_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The automatic training configuration to use when <code>performAutoTraining</code> is true.</p>
    # @!attribute scheduling_expression
    #   <p>Specifies how often to automatically train new solution versions. Specify a rate expression in rate(<i>value</i>
    #               <i>unit</i>) format.
    #         For value, specify a number between 1 and 30. For unit, specify <code>day</code> or <code>days</code>.
    #         For example, to automatically create a new solution version every 5 days, specify <code>rate(5 days)</code>. The default is every 7 days.</p>
    #            <p>For more information about auto training, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html">Creating and configuring a solution</a>.</p>
    #   @return [String]
    class AutoTrainingConfig < Struct.new(
      nil,
      :scheduling_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a batch inference job.</p>
    # @!attribute job_name
    #   <p>The name of the batch inference job.</p>
    #   @return [String]
    # @!attribute batch_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The ARN of the filter used on the batch inference job.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the batch inference job failed, the reason for the failure.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version from which the batch inference job
    #         was created.</p>
    #   @return [String]
    # @!attribute num_results
    #   <p>The number of recommendations generated by the batch inference job. This number includes
    #         the error messages generated for failed input records.</p>
    #   @return [Integer]
    # @!attribute job_input
    #   <p>The Amazon S3 path that leads to the input data used to generate the batch inference
    #         job.</p>
    #   @return [Types::BatchInferenceJobInput]
    # @!attribute job_output
    #   <p>The Amazon S3 bucket that contains the output data generated by the batch inference job.</p>
    #   @return [Types::BatchInferenceJobOutput]
    # @!attribute batch_inference_job_config
    #   <p>A string to string map of the configuration details of a batch inference job.</p>
    #   @return [Types::BatchInferenceJobConfig]
    # @!attribute role_arn
    #   <p>The ARN of the Amazon Identity and Access Management (IAM) role that requested the batch inference job.</p>
    #   @return [String]
    # @!attribute batch_inference_job_mode
    #   <p>The job's mode.</p>
    #   @return [String]
    # @!attribute theme_generation_config
    #   <p>The job's theme generation settings.</p>
    #   @return [Types::ThemeGenerationConfig]
    # @!attribute status
    #   <p>The status of the batch inference job. The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING</p>
    #               </li>
    #               <li>
    #                  <p>IN PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time at which the batch inference job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The time at which the batch inference job was last updated.</p>
    #   @return [Time]
    class BatchInferenceJob < Struct.new(
      nil,
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
      :batch_inference_job_mode,
      :theme_generation_config,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of a batch inference job.</p>
    # @!attribute item_exploration_config
    #   <p>A string to string map specifying the exploration configuration hyperparameters, including <code>explorationWeight</code> and
    #         <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when
    #         recommending items.
    #         See <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute ranking_influence
    #   <p>A map of ranking influence values for POPULARITY and FRESHNESS. For each key, specify a numerical value between 0.0 and 1.0 that determines how much influence that ranking factor has on the final recommendations. A value closer to 1.0 gives more weight to the factor, while a value closer to 0.0 reduces its influence.</p>
    #   @return [Hash<String, Float>]
    class BatchInferenceJobConfig < Struct.new(
      nil,
      :item_exploration_config,
      :ranking_influence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input configuration of a batch inference job.</p>
    # @!attribute s3_data_source
    #   <p>The URI of the Amazon S3 location that contains your input data. The Amazon S3 bucket must be in the
    #         same region as the API endpoint you are calling.</p>
    #   @return [Types::S3DataConfig]
    class BatchInferenceJobInput < Struct.new(
      nil,
      :s3_data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration parameters of a batch inference job.</p>
    # @!attribute s3_data_destination
    #   <p>Information on the Amazon S3 bucket in which the batch inference job's output is stored.</p>
    #   @return [Types::S3DataConfig]
    class BatchInferenceJobOutput < Struct.new(
      nil,
      :s3_data_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A truncated version of the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_BatchInferenceJob.html">BatchInferenceJob</a>. The
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListBatchInferenceJobs.html">ListBatchInferenceJobs</a> operation returns a list of batch inference job
    #       summaries.</p>
    # @!attribute batch_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the batch inference job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch inference job. The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING</p>
    #               </li>
    #               <li>
    #                  <p>IN PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time at which the batch inference job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The time at which the batch inference job was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If the batch inference job failed, the reason for the failure.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The ARN of the solution version used by the batch inference job.</p>
    #   @return [String]
    # @!attribute batch_inference_job_mode
    #   <p>The job's mode.</p>
    #   @return [String]
    class BatchInferenceJobSummary < Struct.new(
      nil,
      :batch_inference_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :solution_version_arn,
      :batch_inference_job_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a batch segment job.</p>
    # @!attribute job_name
    #   <p>The name of the batch segment job.</p>
    #   @return [String]
    # @!attribute batch_segment_job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch segment job.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The ARN of the filter used on the batch segment job.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the batch segment job failed, the reason for the failure.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version used by the batch segment job to generate batch segments.</p>
    #   @return [String]
    # @!attribute num_results
    #   <p>The number of predicted users generated by the batch segment job for each line of input data. The maximum number of users per segment is 5 million.</p>
    #   @return [Integer]
    # @!attribute job_input
    #   <p>The Amazon S3 path that leads to the input data used to generate the batch segment job.</p>
    #   @return [Types::BatchSegmentJobInput]
    # @!attribute job_output
    #   <p>The Amazon S3 bucket that contains the output data generated by the batch segment job.</p>
    #   @return [Types::BatchSegmentJobOutput]
    # @!attribute role_arn
    #   <p>The ARN of the Amazon Identity and Access Management (IAM) role that requested the batch segment job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch segment job. The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING</p>
    #               </li>
    #               <li>
    #                  <p>IN PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time at which the batch segment job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The time at which the batch segment job last updated.</p>
    #   @return [Time]
    class BatchSegmentJob < Struct.new(
      nil,
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
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input configuration of a batch segment job.</p>
    # @!attribute s3_data_source
    #   <p>The configuration details of an Amazon S3 input or output bucket.</p>
    #   @return [Types::S3DataConfig]
    class BatchSegmentJobInput < Struct.new(
      nil,
      :s3_data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration parameters of a batch segment job.</p>
    # @!attribute s3_data_destination
    #   <p>The configuration details of an Amazon S3 input or output bucket.</p>
    #   @return [Types::S3DataConfig]
    class BatchSegmentJobOutput < Struct.new(
      nil,
      :s3_data_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A truncated version of the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_BatchSegmentJob.html">BatchSegmentJob</a> datatype.
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListBatchSegmentJobs.html">ListBatchSegmentJobs</a> operation returns a list of batch segment job
    #       summaries.</p>
    # @!attribute batch_segment_job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch segment job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the batch segment job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch segment job. The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING</p>
    #               </li>
    #               <li>
    #                  <p>IN PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time at which the batch segment job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The time at which the batch segment job was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If the batch segment job failed, the reason for the failure.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version used by the batch segment job to generate batch segments.</p>
    #   @return [String]
    class BatchSegmentJobSummary < Struct.new(
      nil,
      :batch_segment_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :solution_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the deployment of a solution version.
    #       For more information on campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    # @!attribute name
    #   <p>The name of the campaign.</p>
    #   @return [String]
    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign. </p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version the campaign uses.</p>
    #   @return [String]
    # @!attribute min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second. A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code>
    #         as necessary.</p>
    #   @return [Integer]
    # @!attribute campaign_config
    #   <p>The configuration details of a campaign.</p>
    #   @return [Types::CampaignConfig]
    # @!attribute status
    #   <p>The status of the campaign.</p>
    #            <p>A campaign can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If a campaign fails, the reason behind the failure.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the campaign was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix format) that the campaign was last updated.</p>
    #   @return [Time]
    # @!attribute latest_campaign_update
    #   <p>Provides a summary of the properties of a campaign update. For a complete listing, call the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a> API.</p>
    #            <note>
    #               <p>The <code>latestCampaignUpdate</code> field is only returned when the campaign has had
    #           at least one <code>UpdateCampaign</code> call. </p>
    #            </note>
    #   @return [Types::CampaignUpdateSummary]
    class Campaign < Struct.new(
      nil,
      :name,
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time,
      :latest_campaign_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of a campaign.</p>
    # @!attribute item_exploration_config
    #   <p>Specifies the exploration configuration hyperparameters, including <code>explorationWeight</code> and
    #         <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when
    #         recommending items. Provide <code>itemExplorationConfig</code> data only if your solution uses the
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a> recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute enable_metadata_with_recommendations
    #   <p>Whether metadata with recommendations is enabled for the campaign.
    #         If enabled, you can specify the columns from your Items dataset in your request for recommendations. Amazon Personalize returns this data for each item in the recommendation response.
    #       For information about enabling metadata for a campaign, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata">Enabling metadata in recommendations for a campaign</a>.</p>
    #            <p>
    #         If you enable metadata in recommendations, you will incur additional costs. For more information, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.
    #       </p>
    #   @return [Boolean]
    # @!attribute sync_with_latest_solution_version
    #   <p>Whether the campaign automatically updates to use the latest solution version (trained model) of a solution. If you specify <code>True</code>,
    #         you must specify the ARN of your <i>solution</i> for the <code>SolutionVersionArn</code> parameter. It must be in <code>SolutionArn/$LATEST</code> format.
    #         The default is <code>False</code> and you must manually update the campaign to deploy the latest solution version.
    #       </p>
    #            <p>
    #         For more information about automatic campaign updates, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update">Enabling automatic campaign updates</a>.
    #       </p>
    #   @return [Boolean]
    # @!attribute ranking_influence
    #   <p>A map of ranking influence values for POPULARITY and FRESHNESS. For each key, specify a numerical value between 0.0 and 1.0 that determines how much influence that ranking factor has on the final recommendations. A value closer to 1.0 gives more weight to the factor, while a value closer to 0.0 reduces its influence. </p>
    #   @return [Hash<String, Float>]
    class CampaignConfig < Struct.new(
      nil,
      :item_exploration_config,
      :enable_metadata_with_recommendations,
      :sync_with_latest_solution_version,
      :ranking_influence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a campaign. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a> API.</p>
    # @!attribute name
    #   <p>The name of the campaign.</p>
    #   @return [String]
    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the campaign.</p>
    #            <p>A campaign can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the campaign was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the campaign was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a campaign fails, the reason behind the failure.</p>
    #   @return [String]
    class CampaignSummary < Struct.new(
      nil,
      :name,
      :campaign_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a campaign update. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a> API.</p>
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the deployed solution version.</p>
    #   @return [String]
    # @!attribute min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support.</p>
    #   @return [Integer]
    # @!attribute campaign_config
    #   <p>The configuration details of a campaign.</p>
    #   @return [Types::CampaignConfig]
    # @!attribute status
    #   <p>The status of the campaign update.</p>
    #            <p>A campaign update can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If a campaign update fails, the reason behind the failure.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the campaign update was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the campaign update was last updated.</p>
    #   @return [Time]
    class CampaignUpdateSummary < Struct.new(
      nil,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the name and range of a categorical hyperparameter.</p>
    # @!attribute name
    #   <p>The name of the hyperparameter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of the categories for the hyperparameter.</p>
    #   @return [Array<String>]
    class CategoricalHyperParameterRange < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the name and range of a continuous hyperparameter.</p>
    # @!attribute name
    #   <p>The name of the hyperparameter.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>The minimum allowable value for the hyperparameter.</p>
    #   @return [Float]
    # @!attribute max_value
    #   <p>The maximum allowable value for the hyperparameter.</p>
    #   @return [Float]
    class ContinuousHyperParameterRange < Struct.new(
      nil,
      :name,
      :min_value,
      :max_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_value] = 0 unless options.key?(:min_value)
        options[:max_value] = 0 unless options.key?(:max_value)
        super
      end
    end

    # @!attribute job_name
    #   <p>The name of the batch inference job to create.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version that will be used to generate the
    #         batch inference recommendations.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The ARN of the filter to apply to the batch inference job. For more information on using
    #         filters, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering batch recommendations</a>.</p>
    #   @return [String]
    # @!attribute num_results
    #   <p>The number of recommendations to retrieve.</p>
    #   @return [Integer]
    # @!attribute job_input
    #   <p>The Amazon S3 path that leads to the input file to base your recommendations on. The input
    #         material must be in JSON format.</p>
    #   @return [Types::BatchInferenceJobInput]
    # @!attribute job_output
    #   <p>The path to the Amazon S3 bucket where the job's output will be stored.</p>
    #   @return [Types::BatchInferenceJobOutput]
    # @!attribute role_arn
    #   <p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
    #         Amazon S3 buckets respectively.</p>
    #   @return [String]
    # @!attribute batch_inference_job_config
    #   <p>The configuration details of a batch inference job.</p>
    #   @return [Types::BatchInferenceJobConfig]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the batch inference job.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute batch_inference_job_mode
    #   <p>The mode of the batch inference job. To generate descriptive themes for groups of similar items, set the
    #         job mode to <code>THEME_GENERATION</code>. If you don't want to generate themes, use the default <code>BATCH_INFERENCE</code>.</p>
    #            <p>
    #         When you get batch recommendations with themes, you will incur additional costs. For more information, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.
    #       </p>
    #   @return [String]
    # @!attribute theme_generation_config
    #   <p>For theme generation jobs, specify the name of the column in your Items
    #         dataset that contains each item's name.</p>
    #   @return [Types::ThemeGenerationConfig]
    class CreateBatchInferenceJobRequest < Struct.new(
      nil,
      :job_name,
      :solution_version_arn,
      :filter_arn,
      :num_results,
      :job_input,
      :job_output,
      :role_arn,
      :batch_inference_job_config,
      :tags,
      :batch_inference_job_mode,
      :theme_generation_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_inference_job_arn
    #   <p>The ARN of the batch inference job.</p>
    #   @return [String]
    class CreateBatchInferenceJobResponse < Struct.new(
      nil,
      :batch_inference_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the batch segment job to create.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version you want the batch segment job to use to generate
    #         batch segments.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The ARN of the filter to apply to the batch segment job. For more information on using
    #         filters, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering batch recommendations</a>.</p>
    #   @return [String]
    # @!attribute num_results
    #   <p>The number of predicted users generated by the batch segment job for each line of input data. The maximum number of users per segment is 5 million.</p>
    #   @return [Integer]
    # @!attribute job_input
    #   <p>The Amazon S3 path for the input data used to generate the batch segment job.</p>
    #   @return [Types::BatchSegmentJobInput]
    # @!attribute job_output
    #   <p>The Amazon S3 path for the bucket where the job's output will be stored.</p>
    #   @return [Types::BatchSegmentJobOutput]
    # @!attribute role_arn
    #   <p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
    #         Amazon S3 buckets respectively.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the batch segment job.</p>
    #   @return [Array<Types::Tag>]
    class CreateBatchSegmentJobRequest < Struct.new(
      nil,
      :job_name,
      :solution_version_arn,
      :filter_arn,
      :num_results,
      :job_input,
      :job_output,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_segment_job_arn
    #   <p>The ARN of the batch segment job.</p>
    #   @return [String]
    class CreateBatchSegmentJobResponse < Struct.new(
      nil,
      :batch_segment_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the new campaign. The campaign name must be unique within your account.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model to deploy with the campaign. To specify the latest solution version of your solution,
    #         specify the ARN of your <i>solution</i> in <code>SolutionArn/$LATEST</code> format.
    #         You must use this format if you set <code>syncWithLatestSolutionVersion</code> to <code>True</code> in the
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html">CampaignConfig</a>.
    #       </p>
    #            <p>
    #         To deploy a model that isn't the latest solution version of your solution, specify the ARN of the solution version.
    #       </p>
    #            <p>
    #         For more information about automatic campaign updates, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update">Enabling automatic campaign updates</a>.
    #       </p>
    #   @return [String]
    # @!attribute min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support.  A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code> as necessary.</p>
    #   @return [Integer]
    # @!attribute campaign_config
    #   <p>The configuration details of a campaign.</p>
    #   @return [Types::CampaignConfig]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the campaign.</p>
    #   @return [Array<Types::Tag>]
    class CreateCampaignRequest < Struct.new(
      nil,
      :name,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #   @return [String]
    class CreateCampaignResponse < Struct.new(
      nil,
      :campaign_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name for the data deletion job.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that has the datasets you want to
    #       delete records from.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The Amazon S3 bucket that contains the list of userIds of the users to delete.</p>
    #   @return [Types::DataSource]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that has permissions to read from the Amazon S3
    #         data source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the data deletion job.</p>
    #   @return [Array<Types::Tag>]
    class CreateDataDeletionJobRequest < Struct.new(
      nil,
      :job_name,
      :dataset_group_arn,
      :data_source,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_deletion_job_arn
    #   <p>The Amazon Resource Name (ARN) of the data deletion job.</p>
    #   @return [String]
    class CreateDataDeletionJobResponse < Struct.new(
      nil,
      :data_deletion_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name for the dataset export job.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that contains the data
    #         to export.</p>
    #   @return [String]
    # @!attribute ingestion_mode
    #   <p>The data to export, based on how you imported the data. You can choose
    #         to export only <code>BULK</code> data that you imported using a dataset
    #         import job, only <code>PUT</code> data that you imported incrementally
    #         (using the console, PutEvents, PutUsers and PutItems operations), or
    #           <code>ALL</code> for both types. The default value is <code>PUT</code>.
    #       </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that has
    #         permissions to add data to your output Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute job_output
    #   <p>The path to the Amazon S3 bucket where the job's output is stored.</p>
    #   @return [Types::DatasetExportJobOutput]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset export job.</p>
    #   @return [Array<Types::Tag>]
    class CreateDatasetExportJobRequest < Struct.new(
      nil,
      :job_name,
      :dataset_arn,
      :ingestion_mode,
      :role_arn,
      :job_output,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset export job.</p>
    #   @return [String]
    class CreateDatasetExportJobResponse < Struct.new(
      nil,
      :dataset_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the new dataset group.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role that has permissions to access
    #         the Key Management Service (KMS) key. Supplying an IAM role is only valid when also
    #         specifying a KMS key.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a Key Management Service (KMS) key used to
    #         encrypt the datasets.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the dataset group. Specify a domain to create a
    #         Domain dataset group. The domain you specify determines the default
    #         schemas for datasets and the use cases available for recommenders. If you
    #         don't specify a domain, you create a Custom dataset group with solution
    #         versions that you deploy with a campaign. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset group.</p>
    #   @return [Array<Types::Tag>]
    class CreateDatasetGroupRequest < Struct.new(
      nil,
      :name,
      :role_arn,
      :kms_key_arn,
      :domain,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the new dataset group.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain for the new Domain dataset group.</p>
    #   @return [String]
    class CreateDatasetGroupResponse < Struct.new(
      nil,
      :dataset_group_arn,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name for the dataset import job.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The ARN of the dataset that receives the imported data.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The Amazon S3 bucket that contains the training data to import.</p>
    #   @return [Types::DataSource]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that has permissions to read from the Amazon S3
    #         data source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset import job.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute import_mode
    #   <p>Specify how to add the new records to an existing dataset. The default
    #         import mode is <code>FULL</code>. If you haven't imported bulk records into the dataset previously, you
    #         can only specify <code>FULL</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Specify <code>FULL</code> to overwrite all existing bulk data in
    #             your dataset. Data you imported individually is not replaced.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>INCREMENTAL</code> to append the new records to the
    #             existing data in your dataset. Amazon Personalize replaces any record with the
    #             same ID with the new one.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute publish_attribution_metrics_to_s3
    #   <p>If you created a metric attribution, specify whether to publish metrics for this import job to Amazon S3</p>
    #   @return [Boolean]
    class CreateDatasetImportJobRequest < Struct.new(
      nil,
      :job_name,
      :dataset_arn,
      :data_source,
      :role_arn,
      :tags,
      :import_mode,
      :publish_attribution_metrics_to_s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_arn
    #   <p>The ARN of the dataset import job.</p>
    #   @return [String]
    class CreateDatasetImportJobResponse < Struct.new(
      nil,
      :dataset_import_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the dataset.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN of the schema to associate with the dataset. The schema
    #         defines the dataset fields.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to add the dataset
    #         to.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of dataset.</p>
    #            <p>One of the following (case insensitive) values:</p>
    #            <ul>
    #               <li>
    #                  <p>Interactions</p>
    #               </li>
    #               <li>
    #                  <p>Items</p>
    #               </li>
    #               <li>
    #                  <p>Users</p>
    #               </li>
    #               <li>
    #                  <p>Actions</p>
    #               </li>
    #               <li>
    #                  <p>Action_Interactions</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the dataset.</p>
    #   @return [Array<Types::Tag>]
    class CreateDatasetRequest < Struct.new(
      nil,
      :name,
      :schema_arn,
      :dataset_group_arn,
      :dataset_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    class CreateDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the event tracker.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the event tracker.</p>
    #   @return [Array<Types::Tag>]
    class CreateEventTrackerRequest < Struct.new(
      nil,
      :name,
      :dataset_group_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_tracker_arn
    #   <p>The ARN of the event tracker.</p>
    #   @return [String]
    # @!attribute tracking_id
    #   <p>The ID of the event tracker. Include this ID in requests to the
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html">PutEvents</a> API.</p>
    #   @return [String]
    class CreateEventTrackerResponse < Struct.new(
      nil,
      :event_tracker_arn,
      :tracking_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the filter to create.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group that the filter will belong to.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>The filter expression defines which items are included or excluded from recommendations. Filter expression must follow specific format rules.
    #               For information about filter expression structure and syntax, see
    #               <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html">Filter expressions</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the filter.</p>
    #   @return [Array<Types::Tag>]
    class CreateFilterRequest < Struct.new(
      nil,
      :name,
      :dataset_group_arn,
      :filter_expression,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_arn
    #   <p>The ARN of the new filter.</p>
    #   @return [String]
    class CreateFilterResponse < Struct.new(
      nil,
      :filter_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the metric attribution.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination dataset group for the metric attribution.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>A list of metric attributes for the metric attribution. Each metric attribute specifies an event type to track and a function.
    #         Available functions are <code>SUM()</code> or <code>SAMPLECOUNT()</code>. For SUM() functions, provide the
    #         dataset type (either Interactions or Items) and column to sum as a parameter. For example SUM(Items.PRICE).</p>
    #   @return [Array<Types::MetricAttribute>]
    # @!attribute metrics_output_config
    #   <p>The output configuration details for the metric attribution.</p>
    #   @return [Types::MetricAttributionOutput]
    class CreateMetricAttributionRequest < Struct.new(
      nil,
      :name,
      :dataset_group_arn,
      :metrics,
      :metrics_output_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attribution_arn
    #   <p>The Amazon Resource Name (ARN) for the new metric attribution.</p>
    #   @return [String]
    class CreateMetricAttributionResponse < Struct.new(
      nil,
      :metric_attribution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination domain dataset group for the recommender.</p>
    #   @return [String]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe that the recommender will use. For a recommender, a recipe is a Domain dataset group
    #         use case. Only Domain dataset group use cases can be used to create a recommender. For information about use cases see <a href="https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html">Choosing recommender use cases</a>.
    #       </p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The configuration details of the recommender.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the recommender.</p>
    #   @return [Array<Types::Tag>]
    class CreateRecommenderRequest < Struct.new(
      nil,
      :name,
      :dataset_group_arn,
      :recipe_arn,
      :recommender_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender.</p>
    #   @return [String]
    class CreateRecommenderResponse < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the schema.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>A schema in Avro JSON format.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain for the schema. If you are creating a schema for a dataset in a Domain dataset group, specify
    #       the domain you chose when you created the Domain dataset group.</p>
    #   @return [String]
    class CreateSchemaRequest < Struct.new(
      nil,
      :name,
      :schema,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the created schema.</p>
    #   @return [String]
    class CreateSchemaResponse < Struct.new(
      nil,
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the solution.</p>
    #   @return [String]
    # @!attribute perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe.
    #         The default is <code>false</code>.</p>
    #            <p>When performing AutoML, this parameter is always <code>true</code> and you
    #         should not set it to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute perform_auto_ml
    #   <important>
    #               <p>We don't recommend enabling automated machine learning. Instead, match your use case to the available Amazon Personalize
    #           recipes. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html">Choosing a recipe</a>.</p>
    #            </important>
    #            <p>Whether to perform automated machine learning (AutoML). The default is <code>false</code>.
    #         For this case, you must specify <code>recipeArn</code>.</p>
    #            <p>When set to <code>true</code>, Amazon Personalize analyzes your training data and selects
    #         the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit
    #         <code>recipeArn</code>. Amazon Personalize determines the optimal recipe by running tests with
    #         different values for the hyperparameters.
    #         AutoML lengthens the training process as compared to selecting a specific recipe.</p>
    #   @return [Boolean]
    # @!attribute perform_auto_training
    #   <p>Whether the solution uses automatic training to create new solution versions (trained models). The default is
    #           <code>True</code> and the solution automatically creates new solution versions every 7 days. You can change the training
    #         frequency by specifying a <code>schedulingExpression</code> in the <code>AutoTrainingConfig</code> as part of solution
    #         configuration. For more information about automatic training,
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html">Configuring automatic training</a>.</p>
    #            <p>
    #         Automatic solution version creation starts within one hour after the solution is ACTIVE. If you manually create a solution version within
    #         the hour, the solution skips the first automatic training.
    #       </p>
    #            <p>
    #         After training starts, you can
    #         get the solution version's Amazon Resource Name (ARN) with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a> API operation.
    #         To get its status, use the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>.
    #       </p>
    #   @return [Boolean]
    # @!attribute perform_incremental_update
    #   <p>Whether to perform incremental training updates on your model. When enabled, this allows the model to learn from new data more frequently without requiring full retraining, which enables near real-time personalization. This parameter is supported only for solutions that use the semantic-similarity recipe.</p>
    #   @return [Boolean]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe to use for model training. This is required when
    #         <code>performAutoML</code> is false. For information about different Amazon Personalize recipes and their ARNs,
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html">Choosing a recipe</a>.
    #       </p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>When your have multiple event types (using an <code>EVENT_TYPE</code> schema field),
    #         this parameter specifies which event type (for example, 'click' or 'like') is used for
    #         training the model.</p>
    #            <p>If you do not provide an <code>eventType</code>, Amazon Personalize will use all interactions for training with
    #          equal weight regardless of type.</p>
    #   @return [String]
    # @!attribute solution_config
    #   <p>The configuration properties for the solution. When <code>performAutoML</code> is set to
    #         true, Amazon Personalize only evaluates the <code>autoMLConfig</code> section
    #         of the solution configuration.</p>
    #            <note>
    #               <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code>
    #           at this time.</p>
    #            </note>
    #   @return [Types::SolutionConfig]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the solution.</p>
    #   @return [Array<Types::Tag>]
    class CreateSolutionRequest < Struct.new(
      nil,
      :name,
      :perform_hpo,
      :perform_auto_ml,
      :perform_auto_training,
      :perform_incremental_update,
      :recipe_arn,
      :dataset_group_arn,
      :event_type,
      :solution_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The ARN of the solution.</p>
    #   @return [String]
    class CreateSolutionResponse < Struct.new(
      nil,
      :solution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the solution version.</p>
    #   @return [String]
    # @!attribute solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution containing the training configuration
    #         information.</p>
    #   @return [String]
    # @!attribute training_mode
    #   <p>The scope of training to be performed when creating the solution version.
    #         The default is <code>FULL</code>. This creates a completely new model based on the entirety
    #         of the training data from the datasets in your dataset group.
    #       </p>
    #            <p>If you use
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>,
    #         you can specify a training mode of <code>UPDATE</code>. This updates the model to consider new items for recommendations. It is not a full
    #           retraining. You should still complete a full retraining weekly.
    #           If you specify <code>UPDATE</code>, Amazon Personalize will stop automatic updates for the solution version. To resume updates, create a new solution with training mode set to <code>FULL</code>
    #           and deploy it in a campaign.
    #           For more information about automatic updates, see
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#maintaining-with-automatic-updates">Automatic updates</a>.
    #         </p>
    #            <p>The <code>UPDATE</code> option can only be used when you already have an active solution
    #           version created from the input solution using the <code>FULL</code> option and the input
    #           solution was trained with the
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>
    #           recipe or the legacy
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html">HRNN-Coldstart</a> recipe.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">tags</a> to apply to the solution version.</p>
    #   @return [Array<Types::Tag>]
    class CreateSolutionVersionRequest < Struct.new(
      nil,
      :name,
      :solution_arn,
      :training_mode,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The ARN of the new solution version.</p>
    #   @return [String]
    class CreateSolutionVersionResponse < Struct.new(
      nil,
      :solution_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a job that deletes all
    #       references to specific users from an Amazon Personalize dataset group in batches. For information about creating a data deletion job,
    #       see <a href="https://docs.aws.amazon.com/personalize/latest/dg/delete-records.html">Deleting users</a>.</p>
    # @!attribute job_name
    #   <p>The name of the data deletion job.</p>
    #   @return [String]
    # @!attribute data_deletion_job_arn
    #   <p>The Amazon Resource Name (ARN) of the data deletion job.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group the job deletes records from.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>Describes the data source that contains the data to upload to a dataset, or the list of
    #         records to delete from Amazon Personalize.</p>
    #   @return [Types::DataSource]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that has permissions to read from the Amazon S3
    #         data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data deletion job.</p>
    #            <p>A data deletion job can have one of the following statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING > IN_PROGRESS > COMPLETED -or- FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute num_deleted
    #   <p>The number of records deleted by a COMPLETED job.</p>
    #   @return [Integer]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the data deletion
    #         job.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) the data deletion job was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a data deletion job fails, provides the reason why.</p>
    #   @return [String]
    class DataDeletionJob < Struct.new(
      nil,
      :job_name,
      :data_deletion_job_arn,
      :dataset_group_arn,
      :data_source,
      :role_arn,
      :status,
      :num_deleted,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a data deletion job. For a complete listing, call the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataDeletionJob.html">DescribeDataDeletionJob</a>
    #       API operation.</p>
    # @!attribute data_deletion_job_arn
    #   <p>The Amazon Resource Name (ARN) of the data deletion job.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group the job deleted records from.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the data deletion job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data deletion job.</p>
    #            <p>A data deletion job can have one of the following statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING > IN_PROGRESS > COMPLETED -or- FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the data deletion
    #         job.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) the data deletion job was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a data deletion job fails, provides the reason why.</p>
    #   @return [String]
    class DataDeletionJobSummary < Struct.new(
      nil,
      :data_deletion_job_arn,
      :dataset_group_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data source that contains the data to upload to a dataset, or the list of
    #       records to delete from Amazon Personalize.</p>
    # @!attribute data_location
    #   <p>For dataset import jobs, the path to the Amazon S3 bucket where the data that you want to upload to
    #         your dataset is stored. For data deletion jobs, the path to the Amazon S3 bucket that stores the list of records to delete.
    #       </p>
    #            <p>
    #         For example: </p>
    #            <p>
    #               <code>s3://bucket-name/folder-name/fileName.csv</code>
    #            </p>
    #            <p>If your CSV files are in a folder in your Amazon S3 bucket and you want your import job or data deletion job
    #         to consider multiple files, you can specify the path to the folder.  With a data deletion job, Amazon Personalize uses all files in the folder and any sub folder. Use the following syntax with a <code>/</code> after the folder
    #         name:</p>
    #            <p>
    #               <code>s3://bucket-name/folder-name/</code>
    #            </p>
    #   @return [String]
    class DataSource < Struct.new(
      nil,
      :data_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides metadata for a dataset.</p>
    # @!attribute name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that you want metadata
    #         for.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>One of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Interactions</p>
    #               </li>
    #               <li>
    #                  <p>Items</p>
    #               </li>
    #               <li>
    #                  <p>Users</p>
    #               </li>
    #               <li>
    #                  <p>Actions</p>
    #               </li>
    #               <li>
    #                  <p>Action_Interactions</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN of the associated schema.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset.</p>
    #            <p>A dataset can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #             FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the dataset.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>A time stamp that shows when the dataset was updated.</p>
    #   @return [Time]
    # @!attribute latest_dataset_update
    #   <p>Describes the latest update to the dataset.</p>
    #   @return [Types::DatasetUpdateSummary]
    # @!attribute tracking_id
    #   <p>The ID of the event tracker for an Action interactions dataset.
    #         You specify the tracker's ID in the <code>PutActionInteractions</code> API operation. Amazon Personalize uses it to direct new data to the Action interactions dataset in your dataset group.</p>
    #   @return [String]
    class Dataset < Struct.new(
      nil,
      :name,
      :dataset_arn,
      :dataset_group_arn,
      :dataset_type,
      :schema_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :latest_dataset_update,
      :tracking_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a job that exports a dataset to an Amazon S3 bucket. For more
    #       information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html">CreateDatasetExportJob</a>.</p>
    #          <p>A dataset export job can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #           FAILED</p>
    #             </li>
    #          </ul>
    # @!attribute job_name
    #   <p>The name of the export job.</p>
    #   @return [String]
    # @!attribute dataset_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset export job.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to export.</p>
    #   @return [String]
    # @!attribute ingestion_mode
    #   <p>The data to export, based on how you imported the data. You can choose
    #         to export <code>BULK</code> data that you imported using a dataset import
    #         job, <code>PUT</code> data that you imported incrementally (using the
    #         console, PutEvents, PutUsers and PutItems operations), or <code>ALL</code>
    #         for both types. The default value is <code>PUT</code>. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that has
    #         permissions to add data to your output Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset export job.</p>
    #            <p>A dataset export job can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #             FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute job_output
    #   <p>The path to the Amazon S3 bucket where the job's output is stored. For
    #         example:</p>
    #            <p>
    #               <code>s3://bucket-name/folder-name/</code>
    #            </p>
    #   @return [Types::DatasetExportJobOutput]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the dataset export
    #         job.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) the status of the dataset export job
    #         was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a dataset export job fails, provides the reason why.</p>
    #   @return [String]
    class DatasetExportJob < Struct.new(
      nil,
      :job_name,
      :dataset_export_job_arn,
      :dataset_arn,
      :ingestion_mode,
      :role_arn,
      :status,
      :job_output,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration parameters of a dataset export job.</p>
    # @!attribute s3_data_destination
    #   <p>The configuration details of an Amazon S3 input or output bucket.</p>
    #   @return [Types::S3DataConfig]
    class DatasetExportJobOutput < Struct.new(
      nil,
      :s3_data_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a dataset export job. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html">DescribeDatasetExportJob</a> API.</p>
    # @!attribute dataset_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset export job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the dataset export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset export job.</p>
    #            <p>A dataset export job can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the dataset export job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the dataset export job status was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a dataset export job fails, the reason behind the failure.</p>
    #   @return [String]
    class DatasetExportJobSummary < Struct.new(
      nil,
      :dataset_export_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A dataset group is a collection of related datasets (Item interactions,
    #       Users, Items, Actions, Action interactions). You create a dataset group by calling <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>. You then create a dataset and add it to a
    #       dataset group by calling <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>. The dataset group is used to create and train a
    #       solution by calling <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>. A dataset group can contain only one of each
    #       type of dataset.</p>
    #          <p>You can specify an Key Management Service (KMS) key to encrypt the datasets in
    #       the group.</p>
    # @!attribute name
    #   <p>The name of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the dataset group.</p>
    #            <p>A dataset group can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #             FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role that has permissions to access
    #         the Key Management Service (KMS) key. Supplying an IAM role is only valid when also
    #         specifying a KMS key.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key used to
    #         encrypt the datasets.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the dataset group.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The last update date and time (in Unix time) of the dataset
    #         group.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If creating a dataset group fails, provides the reason why.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of a Domain dataset group.</p>
    #   @return [String]
    class DatasetGroup < Struct.new(
      nil,
      :name,
      :dataset_group_arn,
      :status,
      :role_arn,
      :kms_key_arn,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a dataset group. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a> API.</p>
    # @!attribute name
    #   <p>The name of the dataset group.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset group.</p>
    #            <p>A dataset group can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the dataset group was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the dataset group was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If creating a dataset group fails, the reason behind the failure.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of a Domain dataset group.</p>
    #   @return [String]
    class DatasetGroupSummary < Struct.new(
      nil,
      :name,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a job that imports training data from a data source (Amazon S3
    #       bucket) to an Amazon Personalize dataset. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>.</p>
    #          <p>A dataset import job can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #           FAILED</p>
    #             </li>
    #          </ul>
    # @!attribute job_name
    #   <p>The name of the import job.</p>
    #   @return [String]
    # @!attribute dataset_import_job_arn
    #   <p>The ARN of the dataset import job.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that receives the
    #         imported data.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The Amazon S3 bucket that contains the training data to import.</p>
    #   @return [Types::DataSource]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that has permissions to read from the Amazon S3
    #         data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset import job.</p>
    #            <p>A dataset import job can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
    #             FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the dataset import
    #         job.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) the dataset was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a dataset import job fails, provides the reason why.</p>
    #   @return [String]
    # @!attribute import_mode
    #   <p>The import mode used by the dataset import job to import new
    #         records.</p>
    #   @return [String]
    # @!attribute publish_attribution_metrics_to_s3
    #   <p>Whether the job publishes metrics to Amazon S3 for a metric attribution.</p>
    #   @return [Boolean]
    class DatasetImportJob < Struct.new(
      nil,
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
      :publish_attribution_metrics_to_s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a dataset import job. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a> API.</p>
    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the dataset import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset import job.</p>
    #            <p>A dataset import job can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the dataset import job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the dataset import job status was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a dataset import job fails, the reason behind the failure.</p>
    #   @return [String]
    # @!attribute import_mode
    #   <p>The import mode the dataset import job used to update the data in the dataset.
    #         For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dg/updating-existing-bulk-data.html">Updating existing bulk
    #         data</a>.
    #       </p>
    #   @return [String]
    class DatasetImportJobSummary < Struct.new(
      nil,
      :dataset_import_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :import_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the schema for a dataset. For more information on schemas, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    # @!attribute name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the schema was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the schema was last updated.</p>
    #   @return [Time]
    # @!attribute domain
    #   <p>The domain of a schema that you created for a dataset in a Domain dataset group.</p>
    #   @return [String]
    class DatasetSchema < Struct.new(
      nil,
      :name,
      :schema_arn,
      :schema,
      :creation_date_time,
      :last_updated_date_time,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a dataset schema. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html">DescribeSchema</a> API.</p>
    # @!attribute name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the schema was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the schema was last updated.</p>
    #   @return [Time]
    # @!attribute domain
    #   <p>The domain of a schema that you created for a dataset in a Domain dataset group.</p>
    #   @return [String]
    class DatasetSchemaSummary < Struct.new(
      nil,
      :name,
      :schema_arn,
      :creation_date_time,
      :last_updated_date_time,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a dataset. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html">DescribeDataset</a> API.</p>
    # @!attribute name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The dataset type. One of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Interactions</p>
    #               </li>
    #               <li>
    #                  <p>Items</p>
    #               </li>
    #               <li>
    #                  <p>Users</p>
    #               </li>
    #               <li>
    #                  <p>Event-Interactions</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset.</p>
    #            <p>A dataset can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the dataset was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the dataset was last updated.</p>
    #   @return [Time]
    class DatasetSummary < Struct.new(
      nil,
      :name,
      :dataset_arn,
      :dataset_type,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update to a dataset.</p>
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema that replaced the previous schema of the dataset.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the dataset update. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If updating a dataset fails, provides the reason why.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the dataset update.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The last update date and time (in Unix time) of the dataset.</p>
    #   @return [Time]
    class DatasetUpdateSummary < Struct.new(
      nil,
      :schema_arn,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the name and default range of a categorical hyperparameter
    #       and whether the hyperparameter is tunable. A tunable hyperparameter can
    #       have its value determined during hyperparameter optimization (HPO).</p>
    # @!attribute name
    #   <p>The name of the hyperparameter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of the categories for the hyperparameter.</p>
    #   @return [Array<String>]
    # @!attribute is_tunable
    #   <p>Whether the hyperparameter is tunable.</p>
    #   @return [Boolean]
    class DefaultCategoricalHyperParameterRange < Struct.new(
      nil,
      :name,
      :values,
      :is_tunable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_tunable] = false unless options.key?(:is_tunable)
        super
      end
    end

    # <p>Provides the name and default range of a continuous hyperparameter
    #       and whether the hyperparameter is tunable. A tunable hyperparameter can
    #       have its value determined during hyperparameter optimization (HPO).</p>
    # @!attribute name
    #   <p>The name of the hyperparameter.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>The minimum allowable value for the hyperparameter.</p>
    #   @return [Float]
    # @!attribute max_value
    #   <p>The maximum allowable value for the hyperparameter.</p>
    #   @return [Float]
    # @!attribute is_tunable
    #   <p>Whether the hyperparameter is tunable.</p>
    #   @return [Boolean]
    class DefaultContinuousHyperParameterRange < Struct.new(
      nil,
      :name,
      :min_value,
      :max_value,
      :is_tunable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_value] = 0 unless options.key?(:min_value)
        options[:max_value] = 0 unless options.key?(:max_value)
        options[:is_tunable] = false unless options.key?(:is_tunable)
        super
      end
    end

    # <p>Specifies the hyperparameters and their default ranges.
    #     Hyperparameters can be categorical, continuous, or integer-valued.</p>
    # @!attribute integer_hyper_parameter_ranges
    #   <p>The integer-valued hyperparameters and their default ranges.</p>
    #   @return [Array<Types::DefaultIntegerHyperParameterRange>]
    # @!attribute continuous_hyper_parameter_ranges
    #   <p>The continuous hyperparameters and their default ranges.</p>
    #   @return [Array<Types::DefaultContinuousHyperParameterRange>]
    # @!attribute categorical_hyper_parameter_ranges
    #   <p>The categorical hyperparameters and their default ranges.</p>
    #   @return [Array<Types::DefaultCategoricalHyperParameterRange>]
    class DefaultHyperParameterRanges < Struct.new(
      nil,
      :integer_hyper_parameter_ranges,
      :continuous_hyper_parameter_ranges,
      :categorical_hyper_parameter_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the name and default range of a integer-valued hyperparameter
    #       and whether the hyperparameter is tunable. A tunable hyperparameter can
    #       have its value determined during hyperparameter optimization (HPO).</p>
    # @!attribute name
    #   <p>The name of the hyperparameter.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>The minimum allowable value for the hyperparameter.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>The maximum allowable value for the hyperparameter.</p>
    #   @return [Integer]
    # @!attribute is_tunable
    #   <p>Indicates whether the hyperparameter is tunable.</p>
    #   @return [Boolean]
    class DefaultIntegerHyperParameterRange < Struct.new(
      nil,
      :name,
      :min_value,
      :max_value,
      :is_tunable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_value] = 0 unless options.key?(:min_value)
        options[:max_value] = 0 unless options.key?(:max_value)
        options[:is_tunable] = false unless options.key?(:is_tunable)
        super
      end
    end

    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to delete.</p>
    #   @return [String]
    class DeleteCampaignRequest < Struct.new(
      nil,
      :campaign_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group to delete.</p>
    #   @return [String]
    class DeleteDatasetGroupRequest < Struct.new(
      nil,
      :dataset_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to delete.</p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker to delete.</p>
    #   @return [String]
    class DeleteEventTrackerRequest < Struct.new(
      nil,
      :event_tracker_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_arn
    #   <p>The ARN of the filter to delete.</p>
    #   @return [String]
    class DeleteFilterRequest < Struct.new(
      nil,
      :filter_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attribution_arn
    #   <p>The metric attribution's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteMetricAttributionRequest < Struct.new(
      nil,
      :metric_attribution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to delete.</p>
    #   @return [String]
    class DeleteRecommenderRequest < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema to delete.</p>
    #   @return [String]
    class DeleteSchemaRequest < Struct.new(
      nil,
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The ARN of the solution to delete.</p>
    #   @return [String]
    class DeleteSolutionRequest < Struct.new(
      nil,
      :solution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm to describe.</p>
    #   @return [String]
    class DescribeAlgorithmRequest < Struct.new(
      nil,
      :algorithm_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute algorithm
    #   <p>A listing of the properties of the algorithm.</p>
    #   @return [Types::Algorithm]
    class DescribeAlgorithmResponse < Struct.new(
      nil,
      :algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_inference_job_arn
    #   <p>The ARN of the batch inference job to describe.</p>
    #   @return [String]
    class DescribeBatchInferenceJobRequest < Struct.new(
      nil,
      :batch_inference_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_inference_job
    #   <p>Information on the specified batch inference job.</p>
    #   @return [Types::BatchInferenceJob]
    class DescribeBatchInferenceJobResponse < Struct.new(
      nil,
      :batch_inference_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_segment_job_arn
    #   <p>The ARN of the batch segment job to describe.</p>
    #   @return [String]
    class DescribeBatchSegmentJobRequest < Struct.new(
      nil,
      :batch_segment_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_segment_job
    #   <p>Information on the specified batch segment job.</p>
    #   @return [Types::BatchSegmentJob]
    class DescribeBatchSegmentJobResponse < Struct.new(
      nil,
      :batch_segment_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #   @return [String]
    class DescribeCampaignRequest < Struct.new(
      nil,
      :campaign_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute campaign
    #   <note>
    #               <p>The <code>latestCampaignUpdate</code> field is only returned when the campaign has had
    #           at least one <code>UpdateCampaign</code> call. </p>
    #            </note>
    #            <p>The properties of the campaign.</p>
    #            <note>
    #               <p>The <code>latestCampaignUpdate</code> field is only returned when the campaign has had
    #           at least one <code>UpdateCampaign</code> call.</p>
    #            </note>
    #   @return [Types::Campaign]
    class DescribeCampaignResponse < Struct.new(
      nil,
      :campaign,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_deletion_job_arn
    #   <p>The Amazon Resource Name (ARN) of the data deletion job.</p>
    #   @return [String]
    class DescribeDataDeletionJobRequest < Struct.new(
      nil,
      :data_deletion_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_deletion_job
    #   <p>Information about the data deletion job, including the status.</p>
    #            <p>The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED</p>
    #               </li>
    #               <li>
    #                  <p>FAILED</p>
    #               </li>
    #            </ul>
    #   @return [Types::DataDeletionJob]
    class DescribeDataDeletionJobResponse < Struct.new(
      nil,
      :data_deletion_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset export job to
    #         describe.</p>
    #   @return [String]
    class DescribeDatasetExportJobRequest < Struct.new(
      nil,
      :dataset_export_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_export_job
    #   <p>Information about the dataset export job, including the status.</p>
    #            <p>The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING</p>
    #               </li>
    #               <li>
    #                  <p>CREATE IN_PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [Types::DatasetExportJob]
    class DescribeDatasetExportJobResponse < Struct.new(
      nil,
      :dataset_export_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to
    #         describe.</p>
    #   @return [String]
    class DescribeDatasetGroupRequest < Struct.new(
      nil,
      :dataset_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group
    #   <p>A listing of the dataset group's properties.</p>
    #   @return [Types::DatasetGroup]
    class DescribeDatasetGroupResponse < Struct.new(
      nil,
      :dataset_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job to
    #         describe.</p>
    #   @return [String]
    class DescribeDatasetImportJobRequest < Struct.new(
      nil,
      :dataset_import_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_job
    #   <p>Information about the dataset import job, including the status.</p>
    #            <p>The status is one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING</p>
    #               </li>
    #               <li>
    #                  <p>CREATE IN_PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [Types::DatasetImportJob]
    class DescribeDatasetImportJobResponse < Struct.new(
      nil,
      :dataset_import_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to describe.</p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset
    #   <p>A listing of the dataset's properties.</p>
    #   @return [Types::Dataset]
    class DescribeDatasetResponse < Struct.new(
      nil,
      :dataset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker to describe.</p>
    #   @return [String]
    class DescribeEventTrackerRequest < Struct.new(
      nil,
      :event_tracker_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_tracker
    #   <p>An object that describes the event tracker.</p>
    #   @return [Types::EventTracker]
    class DescribeEventTrackerResponse < Struct.new(
      nil,
      :event_tracker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature_transformation_arn
    #   <p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>
    #   @return [String]
    class DescribeFeatureTransformationRequest < Struct.new(
      nil,
      :feature_transformation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature_transformation
    #   <p>A listing of the FeatureTransformation properties.</p>
    #   @return [Types::FeatureTransformation]
    class DescribeFeatureTransformationResponse < Struct.new(
      nil,
      :feature_transformation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_arn
    #   <p>The ARN of the filter to describe.</p>
    #   @return [String]
    class DescribeFilterRequest < Struct.new(
      nil,
      :filter_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The filter's details.</p>
    #   @return [Types::Filter]
    class DescribeFilterResponse < Struct.new(
      nil,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attribution_arn
    #   <p>The metric attribution's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DescribeMetricAttributionRequest < Struct.new(
      nil,
      :metric_attribution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attribution
    #   <p>The details of the metric attribution.</p>
    #   @return [Types::MetricAttribution]
    class DescribeMetricAttributionResponse < Struct.new(
      nil,
      :metric_attribution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe to describe.</p>
    #   @return [String]
    class DescribeRecipeRequest < Struct.new(
      nil,
      :recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recipe
    #   <p>An object that describes the recipe.</p>
    #   @return [Types::Recipe]
    class DescribeRecipeResponse < Struct.new(
      nil,
      :recipe,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to describe.</p>
    #   @return [String]
    class DescribeRecommenderRequest < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender
    #   <p>The properties of the recommender.</p>
    #   @return [Types::Recommender]
    class DescribeRecommenderResponse < Struct.new(
      nil,
      :recommender,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema to retrieve.</p>
    #   @return [String]
    class DescribeSchemaRequest < Struct.new(
      nil,
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema
    #   <p>The requested schema.</p>
    #   @return [Types::DatasetSchema]
    class DescribeSchemaResponse < Struct.new(
      nil,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to describe.</p>
    #   @return [String]
    class DescribeSolutionRequest < Struct.new(
      nil,
      :solution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution
    #   <p>An object that describes the solution.</p>
    #   @return [Types::Solution]
    class DescribeSolutionResponse < Struct.new(
      nil,
      :solution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version.</p>
    #   @return [String]
    class DescribeSolutionVersionRequest < Struct.new(
      nil,
      :solution_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version
    #   <p>The solution version.</p>
    #   @return [Types::SolutionVersion]
    class DescribeSolutionVersionResponse < Struct.new(
      nil,
      :solution_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the parameters of events, which are used in solution creation.</p>
    # @!attribute event_type
    #   <p>The name of the event type to be considered for solution creation.</p>
    #   @return [String]
    # @!attribute event_value_threshold
    #   <p>The threshold of the event type. Only events with a value greater or equal to this threshold will be considered for solution creation.</p>
    #   @return [Float]
    # @!attribute weight
    #   <p>The weight of the event type. A higher weight means higher importance of the event type for the created solution.</p>
    #   @return [Float]
    class EventParameters < Struct.new(
      nil,
      :event_type,
      :event_value_threshold,
      :weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about an event tracker.</p>
    # @!attribute name
    #   <p>The name of the event tracker.</p>
    #   @return [String]
    # @!attribute event_tracker_arn
    #   <p>The ARN of the event tracker.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account that owns the event tracker.</p>
    #   @return [String]
    # @!attribute tracking_id
    #   <p>The ID of the event tracker. Include this ID in requests to the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html">PutEvents</a> API.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the event tracker.</p>
    #            <p>An event tracker can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the event tracker was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the event tracker was last updated.</p>
    #   @return [Time]
    class EventTracker < Struct.new(
      nil,
      :name,
      :event_tracker_arn,
      :account_id,
      :tracking_id,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of an event tracker. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html">DescribeEventTracker</a> API.</p>
    # @!attribute name
    #   <p>The name of the event tracker.</p>
    #   @return [String]
    # @!attribute event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the event tracker.</p>
    #            <p>An event tracker can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the event tracker was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the event tracker was last updated.</p>
    #   @return [Time]
    class EventTrackerSummary < Struct.new(
      nil,
      :name,
      :event_tracker_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of events, which are used in solution creation.</p>
    # @!attribute event_parameters_list
    #   <p>A list of event parameters, which includes event types and their event value thresholds and weights.</p>
    #   @return [Array<Types::EventParameters>]
    class EventsConfig < Struct.new(
      nil,
      :event_parameters_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides feature transformation information. Feature transformation is the process
    #       of modifying raw input data into a form more suitable for model training.</p>
    # @!attribute name
    #   <p>The name of the feature transformation.</p>
    #   @return [String]
    # @!attribute feature_transformation_arn
    #   <p>The Amazon Resource Name (ARN) of the FeatureTransformation object.</p>
    #   @return [String]
    # @!attribute default_parameters
    #   <p>Provides the default parameters for feature transformation.</p>
    #   @return [Hash<String, String>]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the feature transformation.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The last update date and time (in Unix time) of the feature transformation.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the feature transformation.</p>
    #            <p>A feature transformation can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class FeatureTransformation < Struct.new(
      nil,
      :name,
      :feature_transformation_arn,
      :default_parameters,
      :creation_date_time,
      :last_updated_date_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A string to string map of the configuration details for theme generation.</p>
    # @!attribute item_name
    #   <p>The name of the Items dataset column that stores the name of each item in the dataset.</p>
    #   @return [String]
    class FieldsForThemeGeneration < Struct.new(
      nil,
      :item_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a recommendation filter, including its ARN, status, and filter
    #             expression.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The ARN of the filter.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time at which the filter was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The time at which the filter was last updated.</p>
    #   @return [Time]
    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group to which the filter belongs.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the filter failed, the reason for its failure.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>Specifies the type of item interactions to filter out of recommendation results. The
    #               filter expression must follow specific format rules. For information about filter expression structure and syntax, see
    #               <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html">Filter expressions</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the filter.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :name,
      :filter_arn,
      :creation_date_time,
      :last_updated_date_time,
      :dataset_group_arn,
      :failure_reason,
      :filter_expression,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A short summary of a filter's attributes.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The ARN of the filter.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The time at which the filter was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The time at which the filter was last updated.</p>
    #   @return [Time]
    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group to which the filter belongs.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the filter failed, the reason for the failure.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the filter.</p>
    #   @return [String]
    class FilterSummary < Struct.new(
      nil,
      :name,
      :filter_arn,
      :creation_date_time,
      :last_updated_date_time,
      :dataset_group_arn,
      :failure_reason,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version for which to get metrics.</p>
    #   @return [String]
    class GetSolutionMetricsRequest < Struct.new(
      nil,
      :solution_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The same solution version ARN as specified in the request.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>The metrics for the solution version. For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/working-with-training-metrics.html">
    #           Evaluating a solution version with metrics
    #         </a>.</p>
    #   @return [Hash<String, Float>]
    class GetSolutionMetricsResponse < Struct.new(
      nil,
      :solution_version_arn,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties for hyperparameter optimization (HPO).</p>
    # @!attribute hpo_objective
    #   <p>The metric to optimize during HPO.</p>
    #            <note>
    #               <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code>
    #           at this time.</p>
    #            </note>
    #   @return [Types::HPOObjective]
    # @!attribute hpo_resource_config
    #   <p>Describes the resource configuration for HPO.</p>
    #   @return [Types::HPOResourceConfig]
    # @!attribute algorithm_hyper_parameter_ranges
    #   <p>The hyperparameters and their allowable ranges.</p>
    #   @return [Types::HyperParameterRanges]
    class HPOConfig < Struct.new(
      nil,
      :hpo_objective,
      :hpo_resource_config,
      :algorithm_hyper_parameter_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metric to optimize during hyperparameter optimization (HPO).</p>
    #          <note>
    #             <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code>
    #         at this time.</p>
    #          </note>
    # @!attribute type
    #   <p>The type of the metric. Valid values are <code>Maximize</code> and <code>Minimize</code>.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute metric_regex
    #   <p>A regular expression for finding the metric in the training job logs.</p>
    #   @return [String]
    class HPOObjective < Struct.new(
      nil,
      :type,
      :metric_name,
      :metric_regex,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the resource configuration for hyperparameter optimization (HPO).</p>
    # @!attribute max_number_of_training_jobs
    #   <p>The maximum number of training
    #         jobs when you create a
    #         solution
    #         version.
    #         The maximum value for <code>maxNumberOfTrainingJobs</code> is
    #         <code>40</code>.</p>
    #   @return [String]
    # @!attribute max_parallel_training_jobs
    #   <p>The maximum number of parallel training
    #         jobs when you create a
    #         solution
    #         version.
    #         The maximum value for <code>maxParallelTrainingJobs</code> is
    #         <code>10</code>.</p>
    #   @return [String]
    class HPOResourceConfig < Struct.new(
      nil,
      :max_number_of_training_jobs,
      :max_parallel_training_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the hyperparameters and their ranges.
    #     Hyperparameters can be categorical, continuous, or integer-valued.</p>
    # @!attribute integer_hyper_parameter_ranges
    #   <p>The integer-valued hyperparameters and their ranges.</p>
    #   @return [Array<Types::IntegerHyperParameterRange>]
    # @!attribute continuous_hyper_parameter_ranges
    #   <p>The continuous hyperparameters and their ranges.</p>
    #   @return [Array<Types::ContinuousHyperParameterRange>]
    # @!attribute categorical_hyper_parameter_ranges
    #   <p>The categorical hyperparameters and their ranges.</p>
    #   @return [Array<Types::CategoricalHyperParameterRange>]
    class HyperParameterRanges < Struct.new(
      nil,
      :integer_hyper_parameter_ranges,
      :continuous_hyper_parameter_ranges,
      :categorical_hyper_parameter_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the name and range of an integer-valued hyperparameter.</p>
    # @!attribute name
    #   <p>The name of the hyperparameter.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>The minimum allowable value for the hyperparameter.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>The maximum allowable value for the hyperparameter.</p>
    #   @return [Integer]
    class IntegerHyperParameterRange < Struct.new(
      nil,
      :name,
      :min_value,
      :max_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_value] = 0 unless options.key?(:min_value)
        options[:max_value] = 0 unless options.key?(:max_value)
        super
      end
    end

    # <p>Provide a valid value for the field or parameter.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The token is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs
    #         were created.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of batch inference job results to return in each page. The default
    #         value is 100.</p>
    #   @return [Integer]
    class ListBatchInferenceJobsRequest < Struct.new(
      nil,
      :solution_version_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_inference_jobs
    #   <p>A list containing information on each job that is returned.</p>
    #   @return [Array<Types::BatchInferenceJobSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is <code>null</code> when
    #         there are no more results to return.</p>
    #   @return [String]
    class ListBatchInferenceJobsResponse < Struct.new(
      nil,
      :batch_inference_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version that the batch segment jobs used to generate batch segments.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of batch segment job results to return in each page. The default
    #         value is 100.</p>
    #   @return [Integer]
    class ListBatchSegmentJobsRequest < Struct.new(
      nil,
      :solution_version_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_segment_jobs
    #   <p>A list containing information on each job that is returned.</p>
    #   @return [Array<Types::BatchSegmentJobSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is <code>null</code> when
    #         there are no more results to return.</p>
    #   @return [String]
    class ListBatchSegmentJobsResponse < Struct.new(
      nil,
      :batch_segment_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to list the campaigns for. When
    #         a solution is not specified, all the campaigns associated with the account are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a> for getting
    #         the next set of campaigns (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of campaigns to return.</p>
    #   @return [Integer]
    class ListCampaignsRequest < Struct.new(
      nil,
      :solution_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute campaigns
    #   <p>A list of the campaigns.</p>
    #   @return [Array<Types::CampaignSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of campaigns (if they exist).</p>
    #   @return [String]
    class ListCampaignsResponse < Struct.new(
      nil,
      :campaigns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to list data deletion jobs for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to
    #         <code>ListDataDeletionJobs</code> for getting the next set of jobs (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data deletion jobs to return.</p>
    #   @return [Integer]
    class ListDataDeletionJobsRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_deletion_jobs
    #   <p>The list of data deletion jobs.</p>
    #   @return [Array<Types::DataDeletionJobSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of data deletion jobs (if they
    #         exist).</p>
    #   @return [String]
    class ListDataDeletionJobsResponse < Struct.new(
      nil,
      :data_deletion_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to list the dataset
    #         export jobs for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasetExportJobs</code> for getting the next set of dataset
    #         export jobs (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of dataset export jobs to return.</p>
    #   @return [Integer]
    class ListDatasetExportJobsRequest < Struct.new(
      nil,
      :dataset_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_export_jobs
    #   <p>The list of dataset export jobs.</p>
    #   @return [Array<Types::DatasetExportJobSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of dataset export jobs (if they
    #         exist).</p>
    #   @return [String]
    class ListDatasetExportJobsResponse < Struct.new(
      nil,
      :dataset_export_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasetGroups</code> for getting the next set of dataset
    #         groups (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of dataset groups to return.</p>
    #   @return [Integer]
    class ListDatasetGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_groups
    #   <p>The list of your dataset groups.</p>
    #   @return [Array<Types::DatasetGroupSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of dataset groups (if they
    #         exist).</p>
    #   @return [String]
    class ListDatasetGroupsResponse < Struct.new(
      nil,
      :dataset_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to list the dataset
    #         import jobs for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasetImportJobs</code> for getting the next set of dataset
    #         import jobs (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of dataset import jobs to return.</p>
    #   @return [Integer]
    class ListDatasetImportJobsRequest < Struct.new(
      nil,
      :dataset_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_import_jobs
    #   <p>The list of dataset import jobs.</p>
    #   @return [Array<Types::DatasetImportJobSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of dataset import jobs (if they
    #         exist).</p>
    #   @return [String]
    class ListDatasetImportJobsResponse < Struct.new(
      nil,
      :dataset_import_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that contains the
    #         datasets to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to
    #           <code>ListDatasets</code> for getting the next set of dataset
    #         import jobs (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of datasets to return.</p>
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datasets
    #   <p>An array of <code>Dataset</code> objects. Each object provides
    #         metadata information.</p>
    #   @return [Array<Types::DatasetSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of datasets (if they exist).</p>
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      nil,
      :datasets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The ARN of a dataset group used to filter the response.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListEventTrackers</code> for getting
    #         the next set of event trackers (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of event trackers to return.</p>
    #   @return [Integer]
    class ListEventTrackersRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_trackers
    #   <p>A list of event trackers.</p>
    #   @return [Array<Types::EventTrackerSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of event trackers (if they exist).</p>
    #   @return [String]
    class ListEventTrackersResponse < Struct.new(
      nil,
      :event_trackers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The ARN of the dataset group that contains the filters.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListFilters</code> for getting the
    #               next set of filters (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of filters to return.</p>
    #   @return [Integer]
    class ListFiltersRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>A list of returned filters.</p>
    #   @return [Array<Types::FilterSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of filters (if they exist).</p>
    #   @return [String]
    class ListFiltersResponse < Struct.new(
      nil,
      :filters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attribution_arn
    #   <p>The Amazon Resource Name (ARN) of the metric attribution to retrieve attributes for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of metrics to return in one page of results.</p>
    #   @return [Integer]
    class ListMetricAttributionMetricsRequest < Struct.new(
      nil,
      :metric_attribution_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metrics
    #   <p>The metrics for the specified metric attribution.</p>
    #   @return [Array<Types::MetricAttribute>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous <code>ListMetricAttributionMetricsResponse</code> request to retrieve the next page of results.</p>
    #   @return [String]
    class ListMetricAttributionMetricsResponse < Struct.new(
      nil,
      :metrics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The metric attributions' dataset group Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of metric attributions to return in one page of results.</p>
    #   @return [Integer]
    class ListMetricAttributionsRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attributions
    #   <p>The list of metric attributions.</p>
    #   @return [Array<Types::MetricAttributionSummary>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListMetricAttributionsResponse < Struct.new(
      nil,
      :metric_attributions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recipe_provider
    #   <p>The default is <code>SERVICE</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListRecipes</code> for getting
    #         the next set of recipes (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recipes to return.</p>
    #   @return [Integer]
    # @!attribute domain
    #   <p>
    #         Filters returned recipes by domain for a Domain dataset group. Only recipes (Domain dataset group use cases)
    #         for this domain are included in the response. If you don't specify a domain, all recipes are returned.
    #       </p>
    #   @return [String]
    class ListRecipesRequest < Struct.new(
      nil,
      :recipe_provider,
      :next_token,
      :max_results,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recipes
    #   <p>The list of available recipes.</p>
    #   @return [Array<Types::RecipeSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of recipes.</p>
    #   @return [String]
    class ListRecipesResponse < Struct.new(
      nil,
      :recipes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Domain dataset group to list the recommenders for. When
    #         a Domain dataset group is not specified, all the recommenders associated with the account are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListRecommenders</code> for getting
    #         the next set of recommenders (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommenders to return.</p>
    #   @return [Integer]
    class ListRecommendersRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommenders
    #   <p>A list of the recommenders.</p>
    #   @return [Array<Types::RecommenderSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of recommenders (if they exist).</p>
    #   @return [String]
    class ListRecommendersResponse < Struct.new(
      nil,
      :recommenders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListSchemas</code> for getting
    #         the next set of schemas (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of schemas to return.</p>
    #   @return [Integer]
    class ListSchemasRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schemas
    #   <p>A list of schemas.</p>
    #   @return [Array<Types::DatasetSchemaSummary>]
    # @!attribute next_token
    #   <p>A token used to get the next set of schemas (if they exist).</p>
    #   @return [String]
    class ListSchemasResponse < Struct.new(
      nil,
      :schemas,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListSolutionVersions</code> for getting
    #         the next set of solution versions (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of solution versions to return.</p>
    #   @return [Integer]
    class ListSolutionVersionsRequest < Struct.new(
      nil,
      :solution_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_versions
    #   <p>A list of solution versions describing the version properties.</p>
    #   @return [Array<Types::SolutionVersionSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of solution versions (if they exist).</p>
    #   @return [String]
    class ListSolutionVersionsResponse < Struct.new(
      nil,
      :solution_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from the previous call to <code>ListSolutions</code> for getting
    #         the next set of solutions (if they exist).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of solutions to return.</p>
    #   @return [Integer]
    class ListSolutionsRequest < Struct.new(
      nil,
      :dataset_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solutions
    #   <p>A list of the current solutions.</p>
    #   @return [Array<Types::SolutionSummary>]
    # @!attribute next_token
    #   <p>A token for getting the next set of solutions (if they exist).</p>
    #   @return [String]
    class ListSolutionsResponse < Struct.new(
      nil,
      :solutions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The resource's tags.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a metric that a metric attribution reports on. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.</p>
    # @!attribute event_type
    #   <p>The metric's event type.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric's name. The name helps you identify the metric in Amazon CloudWatch or Amazon S3.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The attribute's expression. Available functions are <code>SUM()</code> or <code>SAMPLECOUNT()</code>. For SUM() functions, provide the
    #         dataset type (either Interactions or Items) and column to sum as a parameter. For example SUM(Items.PRICE).</p>
    #   @return [String]
    class MetricAttribute < Struct.new(
      nil,
      :event_type,
      :metric_name,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a metric attribution. A metric attribution creates reports on the data that you import into Amazon Personalize.
    #       Depending on how you import the data, you can view reports in Amazon CloudWatch or Amazon S3.
    #       For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.</p>
    # @!attribute name
    #   <p>The metric attribution's name.</p>
    #   @return [String]
    # @!attribute metric_attribution_arn
    #   <p>The metric attribution's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The metric attribution's dataset group Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute metrics_output_config
    #   <p>The metric attribution's output configuration.</p>
    #   @return [Types::MetricAttributionOutput]
    # @!attribute status
    #   <p>The metric attribution's status.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The metric attribution's creation date time.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The metric attribution's last updated date time.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The metric attribution's failure reason.</p>
    #   @return [String]
    class MetricAttribution < Struct.new(
      nil,
      :name,
      :metric_attribution_arn,
      :dataset_group_arn,
      :metrics_output_config,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration details for a metric attribution.</p>
    # @!attribute s3_data_destination
    #   <p>The configuration details of an Amazon S3 input or output bucket.</p>
    #   @return [Types::S3DataConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that has permissions to add data to your output Amazon S3 bucket and add metrics to Amazon CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html">Measuring impact of recommendations</a>.</p>
    #   @return [String]
    class MetricAttributionOutput < Struct.new(
      nil,
      :s3_data_destination,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a metric attribution. For a complete listing, call the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeMetricAttribution.html">DescribeMetricAttribution</a>.</p>
    # @!attribute name
    #   <p>The name of the metric attribution.</p>
    #   @return [String]
    # @!attribute metric_attribution_arn
    #   <p>The metric attribution's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The metric attribution's status.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The metric attribution's creation date time.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The metric attribution's last updated date time.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The metric attribution's failure reason.</p>
    #   @return [String]
    class MetricAttributionSummary < Struct.new(
      nil,
      :name,
      :metric_attribution_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the additional objective for the solution, such as maximizing streaming
    #       minutes or increasing revenue. For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html">Optimizing a solution</a>.</p>
    # @!attribute item_attribute
    #   <p>The numerical metadata column in an Items dataset related to the optimization objective. For example, VIDEO_LENGTH (to maximize streaming minutes), or PRICE (to maximize revenue).</p>
    #   @return [String]
    # @!attribute objective_sensitivity
    #   <p>Specifies how Amazon Personalize balances the importance of your optimization objective versus relevance.</p>
    #   @return [String]
    class OptimizationObjective < Struct.new(
      nil,
      :item_attribute,
      :objective_sensitivity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a recipe. Each recipe provides an algorithm
    #       that Amazon Personalize uses in model training when you use the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #       operation. </p>
    # @!attribute name
    #   <p>The name of the recipe.</p>
    #   @return [String]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe.</p>
    #   @return [String]
    # @!attribute algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm that Amazon Personalize uses to train
    #         the model.</p>
    #   @return [String]
    # @!attribute feature_transformation_arn
    #   <p>The ARN of the FeatureTransformation object.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the recipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recipe.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the recipe was created.</p>
    #   @return [Time]
    # @!attribute recipe_type
    #   <p>One of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PERSONALIZED_RANKING</p>
    #               </li>
    #               <li>
    #                  <p>RELATED_ITEMS</p>
    #               </li>
    #               <li>
    #                  <p>USER_PERSONALIZATION</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix format) that the recipe was last updated.</p>
    #   @return [Time]
    class Recipe < Struct.new(
      nil,
      :name,
      :recipe_arn,
      :algorithm_arn,
      :feature_transformation_arn,
      :status,
      :description,
      :creation_date_time,
      :recipe_type,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a recipe. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecipe.html">DescribeRecipe</a> API.</p>
    # @!attribute name
    #   <p>The name of the recipe.</p>
    #   @return [String]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the recipe.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the recipe was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the recipe was last updated.</p>
    #   @return [Time]
    # @!attribute domain
    #   <p>The domain of the recipe (if the recipe is a Domain dataset group use case).</p>
    #   @return [String]
    class RecipeSummary < Struct.new(
      nil,
      :name,
      :recipe_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a recommendation generator for a Domain dataset group. You create a recommender in a Domain dataset group
    #       for a specific domain use case (domain recipe), and specify the recommender in a <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a> request.</p>
    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Domain dataset group that contains the recommender.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe (Domain dataset group use case) that the recommender was created for.
    #   </p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The configuration details of the recommender.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the recommender was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix format) that the recommender was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the recommender.</p>
    #            <p>A recommender can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If a recommender fails, the reason behind the failure.</p>
    #   @return [String]
    # @!attribute latest_recommender_update
    #   <p>Provides a summary of the latest updates to the recommender. </p>
    #   @return [Types::RecommenderUpdateSummary]
    # @!attribute model_metrics
    #   <p>Provides evaluation metrics that help you determine the performance
    #       of a recommender. For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/evaluating-recommenders.html">
    #           Evaluating a recommender</a>.</p>
    #   @return [Hash<String, Float>]
    class Recommender < Struct.new(
      nil,
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
      :model_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of the recommender.</p>
    # @!attribute item_exploration_config
    #   <p>Specifies the exploration configuration hyperparameters, including <code>explorationWeight</code> and
    #         <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when
    #         recommending items. Provide <code>itemExplorationConfig</code> data only if your recommenders generate personalized recommendations for a user
    #         (not popular items or similar items).</p>
    #   @return [Hash<String, String>]
    # @!attribute min_recommendation_requests_per_second
    #   <p>Specifies the requested minimum provisioned recommendation requests per second that
    #         Amazon Personalize will support. A high <code>minRecommendationRequestsPerSecond</code> will increase your bill. We recommend starting with 1 for <code>minRecommendationRequestsPerSecond</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minRecommendationRequestsPerSecond</code>
    #         as necessary.</p>
    #   @return [Integer]
    # @!attribute training_data_config
    #   <p>
    #         Specifies the training data configuration to use when creating a domain recommender.
    #       </p>
    #   @return [Types::TrainingDataConfig]
    # @!attribute enable_metadata_with_recommendations
    #   <p>Whether metadata with recommendations is enabled for the recommender.
    #         If enabled, you can specify the columns from your Items dataset in your request for recommendations. Amazon Personalize returns this data for each item in the recommendation response.
    #         For information about enabling metadata for a recommender, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata">Enabling metadata in recommendations for a recommender</a>.</p>
    #            <p>
    #         If you enable metadata in recommendations, you will incur additional costs. For more information, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.
    #       </p>
    #   @return [Boolean]
    class RecommenderConfig < Struct.new(
      nil,
      :item_exploration_config,
      :min_recommendation_requests_per_second,
      :training_data_config,
      :enable_metadata_with_recommendations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of the recommender.</p>
    # @!attribute name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Domain dataset group that contains the recommender.</p>
    #   @return [String]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe (Domain dataset group use case) that the recommender was created for.</p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The configuration details of the recommender.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute status
    #   <p>The status of the recommender. A recommender can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the recommender was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix format) that the recommender was last updated.</p>
    #   @return [Time]
    class RecommenderSummary < Struct.new(
      nil,
      :name,
      :recommender_arn,
      :dataset_group_arn,
      :recipe_arn,
      :recommender_config,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a recommender update. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html">DescribeRecommender</a> API.</p>
    # @!attribute recommender_config
    #   <p>The configuration details of the recommender update.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the recommender update was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the recommender update was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the recommender update. A recommender update can be in one of the following states:</p>
    #            <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If a recommender update fails, the reason behind the failure.</p>
    #   @return [String]
    class RecommenderUpdateSummary < Struct.new(
      nil,
      :recommender_config,
      :creation_date_time,
      :last_updated_date_time,
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Could not find the specified resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of an Amazon S3 input or output bucket.</p>
    # @!attribute path
    #   <p>The file path of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key that Amazon Personalize uses to
    #         encrypt or decrypt the input and output files.</p>
    #   @return [String]
    class S3DataConfig < Struct.new(
      nil,
      :path,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <important>
    #             <p>By default, all new solutions use automatic training. With automatic training, you incur training costs while
    #            your solution is active. To avoid unnecessary costs, when you are finished you can
    #            <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateSolution.html">update the solution</a> to turn off automatic training.
    #            For information about training
    #   costs, see <a href="https://aws.amazon.com/personalize/pricing/">Amazon Personalize pricing</a>.</p>
    #          </important>
    #          <p>An object that provides information about a solution. A solution includes the custom recipe, customized parameters, and
    #       trained models (Solution Versions) that Amazon Personalize uses to generate recommendations. </p>
    #          <p>After you create a solution, you can’t change its configuration. If you need to make changes, you can <a href="https://docs.aws.amazon.com/personalize/latest/dg/cloning-solution.html">clone the solution</a> with the Amazon Personalize console
    #       or create a new one.</p>
    # @!attribute name
    #   <p>The name of the solution.</p>
    #   @return [String]
    # @!attribute solution_arn
    #   <p>The ARN of the solution.</p>
    #   @return [String]
    # @!attribute perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The
    #         default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute perform_auto_ml
    #   <important>
    #               <p>We don't recommend enabling automated machine learning. Instead, match your use case to the available Amazon Personalize
    #           recipes. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/determining-use-case.html">Determining your use case.</a>
    #               </p>
    #            </important>
    #            <p>When true, Amazon Personalize performs a search for the best USER_PERSONALIZATION recipe from
    #         the list specified in the solution configuration (<code>recipeArn</code> must not be specified).
    #         When false (the default), Amazon Personalize uses <code>recipeArn</code> for training.</p>
    #   @return [Boolean]
    # @!attribute perform_auto_training
    #   <p>Specifies whether the solution automatically creates solution versions. The default is <code>True</code>
    #         and the solution automatically creates new solution versions every 7 days.</p>
    #            <p>For more information about auto training, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html">Creating and configuring a solution</a>.</p>
    #   @return [Boolean]
    # @!attribute perform_incremental_update
    #   <p>A Boolean value that indicates whether incremental training updates are performed on the model. When enabled, this allows the model to learn from new data more frequently without requiring full retraining, which enables near real-time personalization. This parameter is supported only for solutions that use the semantic-similarity recipe</p>
    #   @return [Boolean]
    # @!attribute recipe_arn
    #   <p>The ARN of the recipe used to create the solution. This is required when
    #         <code>performAutoML</code> is false.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type (for example, 'click' or 'like') that is used for training the model.
    #         If no <code>eventType</code> is provided, Amazon Personalize uses all interactions for training with
    #         equal weight regardless of type.</p>
    #   @return [String]
    # @!attribute solution_config
    #   <p>Describes the configuration properties for the solution.</p>
    #   @return [Types::SolutionConfig]
    # @!attribute auto_ml_result
    #   <p>When <code>performAutoML</code> is true, specifies the best recipe found.</p>
    #   @return [Types::AutoMLResult]
    # @!attribute status
    #   <p>The status of the solution.</p>
    #            <p>A solution can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation date and time (in Unix time) of the solution.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the solution was last updated.</p>
    #   @return [Time]
    # @!attribute latest_solution_version
    #   <p>Describes the latest version of the solution, including the status and the ARN.</p>
    #   @return [Types::SolutionVersionSummary]
    # @!attribute latest_solution_update
    #   <p>Provides a summary of the latest updates to the solution.</p>
    #   @return [Types::SolutionUpdateSummary]
    class Solution < Struct.new(
      nil,
      :name,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :perform_auto_training,
      :perform_incremental_update,
      :recipe_arn,
      :dataset_group_arn,
      :event_type,
      :solution_config,
      :auto_ml_result,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :latest_solution_version,
      :latest_solution_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:perform_hpo] = false unless options.key?(:perform_hpo)
        options[:perform_auto_ml] = false unless options.key?(:perform_auto_ml)
        super
      end
    end

    # <p>Describes the configuration properties for the solution.</p>
    # @!attribute event_value_threshold
    #   <p>Only events with a value greater than or equal to this threshold are
    #         used for training a model.</p>
    #   @return [String]
    # @!attribute hpo_config
    #   <p>Describes the properties for hyperparameter optimization (HPO).</p>
    #   @return [Types::HPOConfig]
    # @!attribute algorithm_hyper_parameters
    #   <p>Lists the algorithm hyperparameters and their values.</p>
    #   @return [Hash<String, String>]
    # @!attribute feature_transformation_parameters
    #   <p>Lists the feature transformation parameters.</p>
    #   @return [Hash<String, String>]
    # @!attribute auto_ml_config
    #   <p>The <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html">AutoMLConfig</a> object containing a list of recipes to search
    #         when AutoML is performed.</p>
    #   @return [Types::AutoMLConfig]
    # @!attribute events_config
    #   <p>Describes the configuration of an event, which includes a list of event parameters. You can specify up to 10 event parameters. Events are used in solution creation.</p>
    #   @return [Types::EventsConfig]
    # @!attribute optimization_objective
    #   <p>Describes the additional objective for the solution, such as maximizing streaming
    #         minutes or increasing revenue. For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html">Optimizing a solution</a>.</p>
    #   @return [Types::OptimizationObjective]
    # @!attribute training_data_config
    #   <p>
    #        Specifies the training data configuration to use when creating a custom solution version (trained model).
    #       </p>
    #   @return [Types::TrainingDataConfig]
    # @!attribute auto_training_config
    #   <p>Specifies the automatic training configuration to use.</p>
    #   @return [Types::AutoTrainingConfig]
    class SolutionConfig < Struct.new(
      nil,
      :event_value_threshold,
      :hpo_config,
      :algorithm_hyper_parameters,
      :feature_transformation_parameters,
      :auto_ml_config,
      :events_config,
      :optimization_objective,
      :training_data_config,
      :auto_training_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a solution. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a> API.</p>
    # @!attribute name
    #   <p>The name of the solution.</p>
    #   @return [String]
    # @!attribute solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the solution.</p>
    #            <p>A solution can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that the solution was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the solution was last updated.</p>
    #   @return [Time]
    # @!attribute recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe used by the solution.</p>
    #   @return [String]
    class SolutionSummary < Struct.new(
      nil,
      :name,
      :solution_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of the solution update.</p>
    # @!attribute auto_training_config
    #   <p>The automatic training configuration to use when <code>performAutoTraining</code> is true.</p>
    #   @return [Types::AutoTrainingConfig]
    # @!attribute events_config
    #   <p>Describes the configuration of an event, which includes a list of event parameters. You can specify up to 10 event parameters. Events are used in solution creation.</p>
    #   @return [Types::EventsConfig]
    class SolutionUpdateConfig < Struct.new(
      nil,
      :auto_training_config,
      :events_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of the properties of a solution update. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a> API.</p>
    # @!attribute solution_update_config
    #   <p>The configuration details of the solution.</p>
    #   @return [Types::SolutionUpdateConfig]
    # @!attribute status
    #   <p>The status of the solution update. A solution update can be in one of the following states:</p>
    #            <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #   @return [String]
    # @!attribute perform_auto_training
    #   <p>Whether the solution automatically creates solution versions.</p>
    #   @return [Boolean]
    # @!attribute perform_incremental_update
    #   <p>A Boolean value that indicates whether incremental training updates are performed on the model. When enabled, this allows the model to learn from new data more frequently without requiring full retraining, which enables near real-time personalization. This parameter is supported only for solutions that use the semantic-similarity recipe.</p>
    #   @return [Boolean]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix format) that the solution update was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the solution update was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a solution update fails, the reason behind the failure.</p>
    #   @return [String]
    class SolutionUpdateSummary < Struct.new(
      nil,
      :solution_update_config,
      :status,
      :perform_auto_training,
      :perform_incremental_update,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that provides information about a specific version of a <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_Solution.html">Solution</a> in a Custom dataset group.</p>
    # @!attribute name
    #   <p>The name of the solution version.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The ARN of the solution version.</p>
    #   @return [String]
    # @!attribute solution_arn
    #   <p>The ARN of the solution.</p>
    #   @return [String]
    # @!attribute perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The default is
    #           <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute perform_auto_ml
    #   <p>When true, Amazon Personalize searches for the most optimal recipe according to the solution
    #         configuration. When false (the default), Amazon Personalize uses <code>recipeArn</code>.</p>
    #   @return [Boolean]
    # @!attribute perform_incremental_update
    #   <p>Whether the solution version should perform an incremental update. When set to true,
    #         the training will process only the data that has changed since the latest training, similar
    #         to when trainingMode is set to UPDATE. This can only be used with solution versions that
    #         use the User-Personalization recipe.</p>
    #   @return [Boolean]
    # @!attribute recipe_arn
    #   <p>The ARN of the recipe used in the solution.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type (for example, 'click' or 'like') that is used for training the
    #         model.</p>
    #   @return [String]
    # @!attribute dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group providing the training data.</p>
    #   @return [String]
    # @!attribute solution_config
    #   <p>Describes the configuration properties for the solution.</p>
    #   @return [Types::SolutionConfig]
    # @!attribute training_hours
    #   <p>The time used to train the model. You are billed for the time it takes to train a model.
    #         This field is visible only after Amazon Personalize successfully trains a model.</p>
    #   @return [Float]
    # @!attribute training_mode
    #   <p>The scope of training to be performed when creating the solution version. A
    #         <code>FULL</code> training considers all of the data in your dataset group.
    #         An <code>UPDATE</code> processes only the data that
    #         has changed since the latest training. Only solution versions created with the User-Personalization
    #         recipe can use <code>UPDATE</code>.
    #       </p>
    #   @return [String]
    # @!attribute tuned_hpo_params
    #   <p>If hyperparameter optimization was performed, contains the hyperparameter values of the
    #         best performing model.</p>
    #   @return [Types::TunedHPOParams]
    # @!attribute status
    #   <p>The status of the solution version.</p>
    #            <p>A solution version can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING</p>
    #               </li>
    #               <li>
    #                  <p>CREATE IN_PROGRESS</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE</p>
    #               </li>
    #               <li>
    #                  <p>CREATE FAILED</p>
    #               </li>
    #               <li>
    #                  <p>CREATE STOPPING</p>
    #               </li>
    #               <li>
    #                  <p>CREATE STOPPED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If training a solution version fails, the reason for the failure.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and
    #         time
    #         (in Unix time) that this version of the solution was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in
    #         Unix
    #         time) that the solution was last updated.</p>
    #   @return [Time]
    # @!attribute training_type
    #   <p>Whether the solution version was created automatically or manually.</p>
    #   @return [String]
    class SolutionVersion < Struct.new(
      nil,
      :name,
      :solution_version_arn,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :perform_incremental_update,
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
      :last_updated_date_time,
      :training_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:perform_hpo] = false unless options.key?(:perform_hpo)
        options[:perform_auto_ml] = false unless options.key?(:perform_auto_ml)
        super
      end
    end

    # <p>Provides a summary of the properties of a solution version. For a complete listing, call the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a> API.</p>
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the solution version.</p>
    #            <p>A solution version can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute training_mode
    #   <p>The scope of training to be performed when creating the solution version. A
    #         <code>FULL</code> training considers all of the data in your dataset group.
    #         An <code>UPDATE</code> processes only the data that
    #         has changed since the latest training. Only solution versions created with the User-Personalization
    #         recipe can use <code>UPDATE</code>.
    #       </p>
    #   @return [String]
    # @!attribute training_type
    #   <p>Whether the solution version was created automatically or manually.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time (in Unix time) that this version of a solution was created.</p>
    #   @return [Time]
    # @!attribute last_updated_date_time
    #   <p>The date and time (in Unix time) that the solution version was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If a solution version fails, the reason behind the failure.</p>
    #   @return [String]
    class SolutionVersionSummary < Struct.new(
      nil,
      :solution_version_arn,
      :status,
      :training_mode,
      :training_type,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to start.</p>
    #   @return [String]
    class StartRecommenderRequest < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender you started.</p>
    #   @return [String]
    class StartRecommenderResponse < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to stop.</p>
    #   @return [String]
    class StopRecommenderRequest < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender you stopped.</p>
    #   @return [String]
    class StopRecommenderResponse < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version you want to stop creating.</p>
    #   @return [String]
    class StopSolutionVersionCreationRequest < Struct.new(
      nil,
      :solution_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optional metadata that you apply to resources to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.
    #       For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">Tagging Amazon Personalize resources</a>.
    #     </p>
    # @!attribute tag_key
    #   <p>One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The optional part of a key-value pair that makes up a tag. A value acts as a descriptor within a tag category (key).</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :tag_key,
      :tag_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to apply to the resource. For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html">Tagging Amazon Personalize resources</a>.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for generating themes with a batch inference job.</p>
    # @!attribute fields_for_theme_generation
    #   <p>Fields used to generate descriptive themes for a batch inference job.</p>
    #   @return [Types::FieldsForThemeGeneration]
    class ThemeGenerationConfig < Struct.new(
      nil,
      :fields_for_theme_generation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains more tag keys than can be associated with a resource (50 tag keys per resource). </p>
    # @!attribute message
    #   @return [String]
    class TooManyTagKeysException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the maximum number of tags you can apply to this resource. </p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The training data configuration to use when creating a domain recommender or custom solution version (trained model).</p>
    # @!attribute excluded_dataset_columns
    #   <p>Specifies the columns to exclude from training. Each key is a dataset type, and each value is a list of columns.
    #         Exclude columns to control what data Amazon Personalize uses to generate recommendations.</p>
    #            <p>
    #         For example, you might have a column that you want to use only to filter recommendations. You can
    #         exclude this column from training and Amazon Personalize considers it only when filtering.
    #       </p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute included_dataset_columns
    #   <p>A map that specifies which columns to include from each dataset during training. The map can contain up to 3 entries, where each key is a dataset name (maximum length of 256 characters, must contain only letters and underscores) and each value is an array of up to 50 column names. Column names can be up to 150 characters long, must start with a letter or underscore, and can contain only letters, numbers, and underscores.</p>
    #   @return [Hash<String, Array<String>>]
    class TrainingDataConfig < Struct.new(
      nil,
      :excluded_dataset_columns,
      :included_dataset_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If hyperparameter optimization (HPO) was performed, contains the hyperparameter values of
    #       the best performing model.</p>
    # @!attribute algorithm_hyper_parameters
    #   <p>A list of the hyperparameter values of the best performing model.</p>
    #   @return [Hash<String, String>]
    class TunedHPOParams < Struct.new(
      nil,
      :algorithm_hyper_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #   @return [String]
    # @!attribute solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of a new model to deploy. To specify the latest solution version of your solution,
    #         specify the ARN of your <i>solution</i> in <code>SolutionArn/$LATEST</code> format.
    #         You must use this format if you set <code>syncWithLatestSolutionVersion</code> to <code>True</code> in the
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html">CampaignConfig</a>.
    #       </p>
    #            <p>
    #         To deploy a model that isn't the latest solution version of your solution, specify the ARN of the solution version.
    #       </p>
    #            <p>
    #         For more information about automatic campaign updates, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update">Enabling automatic campaign updates</a>.
    #       </p>
    #   @return [String]
    # @!attribute min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support. A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track
    #         your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code>
    #         as necessary.</p>
    #   @return [Integer]
    # @!attribute campaign_config
    #   <p>The configuration details of a campaign.</p>
    #   @return [Types::CampaignConfig]
    class UpdateCampaignRequest < Struct.new(
      nil,
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute campaign_arn
    #   <p>The same campaign ARN as given in the request.</p>
    #   @return [String]
    class UpdateCampaignResponse < Struct.new(
      nil,
      :campaign_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that you want to update.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the new schema you want use.</p>
    #   @return [String]
    class UpdateDatasetRequest < Struct.new(
      nil,
      :dataset_arn,
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset you updated.</p>
    #   @return [String]
    class UpdateDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute add_metrics
    #   <p>Add new metric attributes to the metric attribution.</p>
    #   @return [Array<Types::MetricAttribute>]
    # @!attribute remove_metrics
    #   <p>Remove metric attributes from the metric attribution.</p>
    #   @return [Array<String>]
    # @!attribute metrics_output_config
    #   <p>An output config for the metric attribution.</p>
    #   @return [Types::MetricAttributionOutput]
    # @!attribute metric_attribution_arn
    #   <p>The Amazon Resource Name (ARN) for the metric attribution to update.</p>
    #   @return [String]
    class UpdateMetricAttributionRequest < Struct.new(
      nil,
      :add_metrics,
      :remove_metrics,
      :metrics_output_config,
      :metric_attribution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_attribution_arn
    #   <p>The Amazon Resource Name (ARN) for the metric attribution that you updated.</p>
    #   @return [String]
    class UpdateMetricAttributionResponse < Struct.new(
      nil,
      :metric_attribution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to modify.</p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The configuration details of the recommender.</p>
    #   @return [Types::RecommenderConfig]
    class UpdateRecommenderRequest < Struct.new(
      nil,
      :recommender_arn,
      :recommender_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The same recommender Amazon Resource Name (ARN) as given in the request.</p>
    #   @return [String]
    class UpdateRecommenderResponse < Struct.new(
      nil,
      :recommender_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to update.</p>
    #   @return [String]
    # @!attribute perform_auto_training
    #   <p>Whether the solution uses automatic training to create new solution versions (trained models). You can change the training
    #         frequency by specifying a <code>schedulingExpression</code> in the <code>AutoTrainingConfig</code> as part of solution
    #         configuration. </p>
    #            <p>
    #         If you turn on automatic training, the first automatic training starts within one hour after the solution update
    #         completes. If you manually create a solution version within the hour, the solution skips the first automatic training.
    #         For more information about automatic training,
    #         see <a href="https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html">Configuring automatic training</a>.
    #       </p>
    #            <p>
    #         After training starts, you can
    #         get the solution version's Amazon Resource Name (ARN) with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a> API operation.
    #         To get its status, use the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>.
    #       </p>
    #   @return [Boolean]
    # @!attribute perform_incremental_update
    #   <p>Whether to perform incremental training updates on your model. When enabled, this allows the model to learn from new data more frequently without requiring full retraining, which enables near real-time personalization. This parameter is supported only for solutions that use the semantic-similarity recipe.</p>
    #   @return [Boolean]
    # @!attribute solution_update_config
    #   <p>The new configuration details of the solution.</p>
    #   @return [Types::SolutionUpdateConfig]
    class UpdateSolutionRequest < Struct.new(
      nil,
      :solution_arn,
      :perform_auto_training,
      :perform_incremental_update,
      :solution_update_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute solution_arn
    #   <p>The same solution Amazon Resource Name (ARN) as given in the request.</p>
    #   @return [String]
    class UpdateSolutionResponse < Struct.new(
      nil,
      :solution_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

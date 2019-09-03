# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
      include Aws::Structure
    end

    # When the solution performs AutoML (`performAutoML` is true in
    # CreateSolution), Amazon Personalize determines which recipe, from the
    # specified list, optimizes the given metric. Amazon Personalize then
    # uses that recipe for the solution.
    #
    # @note When making an API call, you may pass AutoMLConfig
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName",
    #         recipe_list: ["Arn"],
    #       }
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
      include Aws::Structure
    end

    # When the solution performs AutoML (`performAutoML` is true in
    # CreateSolution), specifies the recipe that best optimized the
    # specified metric.
    #
    # @!attribute [rw] best_recipe_arn
    #   The Amazon Resource Name (ARN) of the best recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AutoMLResult AWS API Documentation
    #
    class AutoMLResult < Struct.new(
      :best_recipe_arn)
      include Aws::Structure
    end

    # Describes a deployed solution version, otherwise known as a campaign.
    # For more information on campaigns, see CreateCampaign.
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
    #   (recommendations) per second.
    #   @return [Integer]
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
    #   complete listing, call the DescribeCampaign API.
    #   @return [Types::CampaignUpdateSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Campaign AWS API Documentation
    #
    class Campaign < Struct.new(
      :name,
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time,
      :latest_campaign_update)
      include Aws::Structure
    end

    # Provides a summary of the properties of a campaign. For a complete
    # listing, call the DescribeCampaign API.
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
      include Aws::Structure
    end

    # Provides a summary of the properties of a campaign update. For a
    # complete listing, call the DescribeCampaign API.
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
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # Provides the name and range of a categorical hyperparameter.
    #
    # @note When making an API call, you may pass CategoricalHyperParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         values: ["CategoricalValue"],
    #       }
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
      include Aws::Structure
    end

    # Provides the name and range of a continuous hyperparameter.
    #
    # @note When making an API call, you may pass ContinuousHyperParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         min_value: 1.0,
    #         max_value: 1.0,
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         solution_version_arn: "Arn", # required
    #         min_provisioned_tps: 1, # required
    #       }
    #
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
    #   (recommendations) per second that Amazon Personalize will support.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :name,
      :solution_version_arn,
      :min_provisioned_tps)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         role_arn: "RoleArn",
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name for the new dataset group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that has permissions to access the KMS key.
    #   Supplying an IAM role is only valid when also specifying a KMS key.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of a KMS key used to encrypt the
    #   datasets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroupRequest AWS API Documentation
    #
    class CreateDatasetGroupRequest < Struct.new(
      :name,
      :role_arn,
      :kms_key_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the new dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroupResponse AWS API Documentation
    #
    class CreateDatasetGroupResponse < Struct.new(
      :dataset_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "Name", # required
    #         dataset_arn: "Arn", # required
    #         data_source: { # required
    #           data_location: "S3Location",
    #         },
    #         role_arn: "RoleArn", # required
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJobRequest AWS API Documentation
    #
    class CreateDatasetImportJobRequest < Struct.new(
      :job_name,
      :dataset_arn,
      :data_source,
      :role_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         schema_arn: "Arn", # required
    #         dataset_group_arn: "Arn", # required
    #         dataset_type: "DatasetType", # required
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :name,
      :schema_arn,
      :dataset_group_arn,
      :dataset_type)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventTrackerRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name for the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that receives
    #   the event data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTrackerRequest AWS API Documentation
    #
    class CreateEventTrackerRequest < Struct.new(
      :name,
      :dataset_group_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSchemaRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         schema: "AvroSchema", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name for the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A schema in Avro JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchemaRequest AWS API Documentation
    #
    class CreateSchemaRequest < Struct.new(
      :name,
      :schema)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSolutionRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         perform_hpo: false,
    #         perform_auto_ml: false,
    #         recipe_arn: "Arn",
    #         dataset_group_arn: "Arn", # required
    #         event_type: "EventType",
    #         solution_config: {
    #           event_value_threshold: "EventValueThreshold",
    #           hpo_config: {
    #             hpo_objective: {
    #               type: "HPOObjectiveType",
    #               metric_name: "MetricName",
    #               metric_regex: "MetricRegex",
    #             },
    #             hpo_resource_config: {
    #               max_number_of_training_jobs: "HPOResource",
    #               max_parallel_training_jobs: "HPOResource",
    #             },
    #             algorithm_hyper_parameter_ranges: {
    #               integer_hyper_parameter_ranges: [
    #                 {
    #                   name: "ParameterName",
    #                   min_value: 1,
    #                   max_value: 1,
    #                 },
    #               ],
    #               continuous_hyper_parameter_ranges: [
    #                 {
    #                   name: "ParameterName",
    #                   min_value: 1.0,
    #                   max_value: 1.0,
    #                 },
    #               ],
    #               categorical_hyper_parameter_ranges: [
    #                 {
    #                   name: "ParameterName",
    #                   values: ["CategoricalValue"],
    #                 },
    #               ],
    #             },
    #           },
    #           algorithm_hyper_parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #           feature_transformation_parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #           auto_ml_config: {
    #             metric_name: "MetricName",
    #             recipe_list: ["Arn"],
    #           },
    #         },
    #       }
    #
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
    #   Whether to perform automated machine learning (AutoML). The default
    #   is `false`. For this case, you must specify `recipeArn`.
    #
    #   When set to `true`, Amazon Personalize analyzes your training data
    #   and selects the optimal USER\_PERSONALIZATION recipe and
    #   hyperparameters. In this case, you must omit `recipeArn`. Amazon
    #   Personalize determines the optimal recipe by running tests with
    #   different values for the hyperparameters. AutoML lengthens the
    #   training process as compared to selecting a specific recipe.
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   The ARN of the recipe to use for model training. Only specified when
    #   `performAutoML` is false.
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
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   The configuration to use with the solution. When `performAutoML` is
    #   set to true, Amazon Personalize only evaluates the `autoMLConfig`
    #   section of the solution configuration.
    #   @return [Types::SolutionConfig]
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
      :solution_config)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSolutionVersionRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution containing the
    #   training configuration information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersionRequest AWS API Documentation
    #
    class CreateSolutionVersionRequest < Struct.new(
      :solution_arn)
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
      include Aws::Structure
    end

    # Describes the data source that contains the data to upload to a
    # dataset.
    #
    # @note When making an API call, you may pass DataSource
    #   data as a hash:
    #
    #       {
    #         data_location: "S3Location",
    #       }
    #
    # @!attribute [rw] data_location
    #   The path to the Amazon S3 bucket where the data that you want to
    #   upload to your dataset is stored. For example:
    #
    #   `s3://bucket-name/training-data.csv`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :data_location)
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
      :last_updated_date_time)
      include Aws::Structure
    end

    # A dataset group is a collection of related datasets (Interactions,
    # User, and Item). You create a dataset group by calling
    # CreateDatasetGroup. You then create a dataset and add it to a dataset
    # group by calling CreateDataset. The dataset group is used to create
    # and train a solution by calling CreateSolution. A dataset group can
    # contain only one of each type of dataset.
    #
    # You can specify an AWS Key Management Service (KMS) key to encrypt the
    # datasets in the group.
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
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   datasets.
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
      :failure_reason)
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset group. For a
    # complete listing, call the DescribeDatasetGroup API.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetGroupSummary AWS API Documentation
    #
    class DatasetGroupSummary < Struct.new(
      :name,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # Describes a job that imports training data from a data source (Amazon
    # S3 bucket) to an Amazon Personalize dataset. For more information, see
    # CreateDatasetImportJob.
    #
    # A dataset import job can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # ^
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
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   has permissions to read from the Amazon S3 data source.
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
      :failure_reason)
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset import job. For a
    # complete listing, call the DescribeDatasetImportJob API.
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
    #   The date and time (in Unix time) that the dataset was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a dataset import job fails, the reason behind the failure.
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
      :failure_reason)
      include Aws::Structure
    end

    # Describes the schema for a dataset. For more information on schemas,
    # see CreateSchema.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSchema AWS API Documentation
    #
    class DatasetSchema < Struct.new(
      :name,
      :schema_arn,
      :schema,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset schema. For a
    # complete listing, call the DescribeSchema API.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSchemaSummary AWS API Documentation
    #
    class DatasetSchemaSummary < Struct.new(
      :name,
      :schema_arn,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset. For a complete
    # listing, call the DescribeDataset API.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :campaign_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetGroupRequest AWS API Documentation
    #
    class DeleteDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventTrackerRequest
    #   data as a hash:
    #
    #       {
    #         event_tracker_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteEventTrackerRequest AWS API Documentation
    #
    class DeleteEventTrackerRequest < Struct.new(
      :event_tracker_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSchemaRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSchemaRequest AWS API Documentation
    #
    class DeleteSchemaRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSolutionRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_arn
    #   The ARN of the solution to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSolutionRequest AWS API Documentation
    #
    class DeleteSolutionRequest < Struct.new(
      :solution_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlgorithmRequest
    #   data as a hash:
    #
    #       {
    #         algorithm_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithmRequest AWS API Documentation
    #
    class DescribeAlgorithmRequest < Struct.new(
      :algorithm_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaignRequest AWS API Documentation
    #
    class DescribeCampaignRequest < Struct.new(
      :campaign_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroupRequest AWS API Documentation
    #
    class DescribeDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_import_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJobRequest AWS API Documentation
    #
    class DescribeDatasetImportJobRequest < Struct.new(
      :dataset_import_job_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventTrackerRequest
    #   data as a hash:
    #
    #       {
    #         event_tracker_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTrackerRequest AWS API Documentation
    #
    class DescribeEventTrackerRequest < Struct.new(
      :event_tracker_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFeatureTransformationRequest
    #   data as a hash:
    #
    #       {
    #         feature_transformation_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] feature_transformation_arn
    #   The Amazon Resource Name (ARN) of the feature transformation to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformationRequest AWS API Documentation
    #
    class DescribeFeatureTransformationRequest < Struct.new(
      :feature_transformation_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecipeRequest
    #   data as a hash:
    #
    #       {
    #         recipe_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipeRequest AWS API Documentation
    #
    class DescribeRecipeRequest < Struct.new(
      :recipe_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSchemaRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchemaRequest AWS API Documentation
    #
    class DescribeSchemaRequest < Struct.new(
      :schema_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSolutionRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionRequest AWS API Documentation
    #
    class DescribeSolutionRequest < Struct.new(
      :solution_arn)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSolutionVersionRequest
    #   data as a hash:
    #
    #       {
    #         solution_version_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersionRequest AWS API Documentation
    #
    class DescribeSolutionVersionRequest < Struct.new(
      :solution_version_arn)
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
    #   The Amazon AWS account that owns the event tracker.
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
      include Aws::Structure
    end

    # Provides a summary of the properties of an event tracker. For a
    # complete listing, call the DescribeEventTracker API.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSolutionMetricsRequest
    #   data as a hash:
    #
    #       {
    #         solution_version_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version for which to
    #   get metrics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetricsRequest AWS API Documentation
    #
    class GetSolutionMetricsRequest < Struct.new(
      :solution_version_arn)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The same solution version ARN as specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The metrics for the solution version.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetricsResponse AWS API Documentation
    #
    class GetSolutionMetricsResponse < Struct.new(
      :solution_version_arn,
      :metrics)
      include Aws::Structure
    end

    # Describes the properties for hyperparameter optimization (HPO). For
    # use with the bring-your-own-recipe feature. Do not use for Amazon
    # Personalize native recipes.
    #
    # @note When making an API call, you may pass HPOConfig
    #   data as a hash:
    #
    #       {
    #         hpo_objective: {
    #           type: "HPOObjectiveType",
    #           metric_name: "MetricName",
    #           metric_regex: "MetricRegex",
    #         },
    #         hpo_resource_config: {
    #           max_number_of_training_jobs: "HPOResource",
    #           max_parallel_training_jobs: "HPOResource",
    #         },
    #         algorithm_hyper_parameter_ranges: {
    #           integer_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1,
    #               max_value: 1,
    #             },
    #           ],
    #           continuous_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1.0,
    #               max_value: 1.0,
    #             },
    #           ],
    #           categorical_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               values: ["CategoricalValue"],
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] hpo_objective
    #   The metric to optimize during HPO.
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
      include Aws::Structure
    end

    # The metric to optimize during hyperparameter optimization (HPO).
    #
    # @note When making an API call, you may pass HPOObjective
    #   data as a hash:
    #
    #       {
    #         type: "HPOObjectiveType",
    #         metric_name: "MetricName",
    #         metric_regex: "MetricRegex",
    #       }
    #
    # @!attribute [rw] type
    #   The data type of the metric.
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
      include Aws::Structure
    end

    # Describes the resource configuration for hyperparameter optimization
    # (HPO).
    #
    # @note When making an API call, you may pass HPOResourceConfig
    #   data as a hash:
    #
    #       {
    #         max_number_of_training_jobs: "HPOResource",
    #         max_parallel_training_jobs: "HPOResource",
    #       }
    #
    # @!attribute [rw] max_number_of_training_jobs
    #   The maximum number of training jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_parallel_training_jobs
    #   The maximum number of parallel training jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOResourceConfig AWS API Documentation
    #
    class HPOResourceConfig < Struct.new(
      :max_number_of_training_jobs,
      :max_parallel_training_jobs)
      include Aws::Structure
    end

    # Specifies the hyperparameters and their ranges. Hyperparameters can be
    # categorical, continuous, or integer-valued.
    #
    # @note When making an API call, you may pass HyperParameterRanges
    #   data as a hash:
    #
    #       {
    #         integer_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             min_value: 1,
    #             max_value: 1,
    #           },
    #         ],
    #         continuous_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #           },
    #         ],
    #         categorical_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             values: ["CategoricalValue"],
    #           },
    #         ],
    #       }
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
      include Aws::Structure
    end

    # Provides the name and range of an integer-valued hyperparameter.
    #
    # @note When making an API call, you may pass IntegerHyperParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         min_value: 1,
    #         max_value: 1,
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCampaignsRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution to list the campaigns
    #   for. When a solution is not specified, all the campaigns associated
    #   with the account are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListCampaigns` for
    #   getting the next set of campaigns (if they exist).
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventTrackersRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecipesRequest
    #   data as a hash:
    #
    #       {
    #         recipe_provider: "SERVICE", # accepts SERVICE
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipesRequest AWS API Documentation
    #
    class ListRecipesRequest < Struct.new(
      :recipe_provider,
      :next_token,
      :max_results)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchemasRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSolutionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSolutionsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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
      include Aws::Structure
    end

    # Provides information about a recipe. Each recipe provides an algorithm
    # that Amazon Personalize uses in model training when you use the
    # CreateSolution operation.
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
      include Aws::Structure
    end

    # Provides a summary of the properties of a recipe. For a complete
    # listing, call the DescribeRecipe API.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/RecipeSummary AWS API Documentation
    #
    class RecipeSummary < Struct.new(
      :name,
      :recipe_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
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
    #   When true, Amazon Personalize performs a search for the best
    #   USER\_PERSONALIZATION recipe from the list specified in the solution
    #   configuration (`recipeArn` must not be specified). When false (the
    #   default), Amazon Personalize uses `recipeArn` for training.
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   The ARN of the recipe used to create the solution.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that provides
    #   the training data.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type (for example, 'click' or 'like') that is used for
    #   training the model.
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
      include Aws::Structure
    end

    # Describes the configuration properties for the solution.
    #
    # @note When making an API call, you may pass SolutionConfig
    #   data as a hash:
    #
    #       {
    #         event_value_threshold: "EventValueThreshold",
    #         hpo_config: {
    #           hpo_objective: {
    #             type: "HPOObjectiveType",
    #             metric_name: "MetricName",
    #             metric_regex: "MetricRegex",
    #           },
    #           hpo_resource_config: {
    #             max_number_of_training_jobs: "HPOResource",
    #             max_parallel_training_jobs: "HPOResource",
    #           },
    #           algorithm_hyper_parameter_ranges: {
    #             integer_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1,
    #                 max_value: 1,
    #               },
    #             ],
    #             continuous_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1.0,
    #                 max_value: 1.0,
    #               },
    #             ],
    #             categorical_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 values: ["CategoricalValue"],
    #               },
    #             ],
    #           },
    #         },
    #         algorithm_hyper_parameters: {
    #           "ParameterName" => "ParameterValue",
    #         },
    #         feature_transformation_parameters: {
    #           "ParameterName" => "ParameterValue",
    #         },
    #         auto_ml_config: {
    #           metric_name: "MetricName",
    #           recipe_list: ["Arn"],
    #         },
    #       }
    #
    # @!attribute [rw] event_value_threshold
    #   Only events with a value greater than or equal to this threshold are
    #   used for training a model.
    #   @return [String]
    #
    # @!attribute [rw] hpo_config
    #   Describes the properties for hyperparameter optimization (HPO). For
    #   use with the bring-your-own-recipe feature. Not used with Amazon
    #   Personalize predefined recipes.
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
    #   The AutoMLConfig object containing a list of recipes to search when
    #   AutoML is performed.
    #   @return [Types::AutoMLConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionConfig AWS API Documentation
    #
    class SolutionConfig < Struct.new(
      :event_value_threshold,
      :hpo_config,
      :algorithm_hyper_parameters,
      :feature_transformation_parameters,
      :auto_ml_config)
      include Aws::Structure
    end

    # Provides a summary of the properties of a solution. For a complete
    # listing, call the DescribeSolution API.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionSummary AWS API Documentation
    #
    class SolutionSummary < Struct.new(
      :name,
      :solution_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # An object that provides information about a specific version of a
    # Solution.
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
    #   When true, Amazon Personalize performs a search for the most optimal
    #   recipe according to the solution configuration. When false (the
    #   default), Amazon Personalize uses `recipeArn`.
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
    # @!attribute [rw] failure_reason
    #   If training a solution version fails, the reason behind the failure.
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
      :solution_version_arn,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :event_type,
      :dataset_group_arn,
      :solution_config,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # Provides a summary of the properties of a solution version. For a
    # complete listing, call the DescribeSolutionVersion API.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #         solution_version_arn: "Arn",
    #         min_provisioned_tps: 1,
    #       }
    #
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
    #   (recommendations) per second that Amazon Personalize will support.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaignRequest AWS API Documentation
    #
    class UpdateCampaignRequest < Struct.new(
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps)
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
      include Aws::Structure
    end

  end
end

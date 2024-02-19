# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CleanRoomsML
  module Types

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
    # @!attribute [rw] create_time
    #   The time at which the audience export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the audience export job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience export job.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 bucket where the audience export is stored.
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
    # @!attribute [rw] update_time
    #   The most recent time at which the audience export job was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceExportJobSummary AWS API Documentation
    #
    class AudienceExportJobSummary < Struct.new(
      :audience_generation_job_arn,
      :audience_size,
      :create_time,
      :description,
      :name,
      :output_location,
      :status,
      :status_details,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Amazon S3 bucket where the training data for the
    # configured audience is stored.
    #
    # @!attribute [rw] data_source
    #   The Amazon S3 bucket where the training data for the configured
    #   audience is stored.
    #   @return [Types::S3ConfigMap]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that can read the Amazon S3 bucket where the
    #   training data is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceGenerationJobDataSource AWS API Documentation
    #
    class AudienceGenerationJobDataSource < Struct.new(
      :data_source,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the configured audience generation job.
    #
    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that contains this audience
    #   generation job.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the audience generation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   The AWS Account that submitted the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience generation job was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceGenerationJobSummary AWS API Documentation
    #
    class AudienceGenerationJobSummary < Struct.new(
      :audience_generation_job_arn,
      :collaboration_id,
      :configured_audience_model_arn,
      :create_time,
      :description,
      :name,
      :started_by,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audience model metrics.
    #
    # @!attribute [rw] for_top_k_item_predictions
    #   The number of users that were used to generate these model metrics.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The audience model metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the audience model metric
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceModelMetric AWS API Documentation
    #
    class AudienceModelMetric < Struct.new(
      :for_top_k_item_predictions,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the audience model.
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that was used
    #   for the audience model.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience model was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceModelSummary AWS API Documentation
    #
    class AudienceModelSummary < Struct.new(
      :audience_model_arn,
      :create_time,
      :description,
      :name,
      :status,
      :training_dataset_arn,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics that describe the quality of the generated audience.
    #
    # @!attribute [rw] relevance_metrics
    #   The relevance scores of the generated audience.
    #   @return [Array<Types::RelevanceMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceQualityMetrics AWS API Documentation
    #
    class AudienceQualityMetrics < Struct.new(
      :relevance_metrics)
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

    # Configure the list of audience output sizes that can be created. A
    # request to StartAudienceGenerationJob that uses this configured
    # audience model must have an `audienceSize` selected from this list.
    # You can use the `ABSOLUTE` AudienceSize to configure out audience
    # sizes using the count of identifiers in the output. You can use the
    # `Percentage` AudienceSize to configure sizes in the range 1-100
    # percent.
    #
    # @!attribute [rw] audience_size_bins
    #   An array of the different audience output sizes.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] audience_size_type
    #   Whether the audience output sizes are defined as an absolute number
    #   or a percentage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceSizeConfig AWS API Documentation
    #
    class AudienceSizeConfig < Struct.new(
      :audience_size_bins,
      :audience_size_type)
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
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that was used
    #   to create the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The output configuration of the configured audience model.
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ConfiguredAudienceModelSummary AWS API Documentation
    #
    class ConfiguredAudienceModelSummary < Struct.new(
      :audience_model_arn,
      :configured_audience_model_arn,
      :create_time,
      :description,
      :name,
      :output_config,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with that name already exists in this region.
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

    # @!attribute [rw] description
    #   The description of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   the associated data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience model resource.
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
    #     not, then Forecast considers it to be a user tag and will count
    #     against the limit of 50 tags. Tags with only the key prefix of aws
    #     do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_data_end_time
    #   The end date and time of the training window.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_start_time
    #   The start date and time of the training window.
    #   @return [Time]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset for this
    #   audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateAudienceModelRequest AWS API Documentation
    #
    class CreateAudienceModelRequest < Struct.new(
      :description,
      :kms_key_arn,
      :name,
      :tags,
      :training_data_end_time,
      :training_data_start_time,
      :training_dataset_arn)
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

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model to use for the
    #   configured audience model.
    #   @return [String]
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
    # @!attribute [rw] description
    #   The description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model.
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
    # @!attribute [rw] shared_audience_metrics
    #   Whether audience metrics are shared.
    #   @return [Array<String>]
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
    #     not, then Forecast considers it to be a user tag and will count
    #     against the limit of 50 tags. Tags with only the key prefix of aws
    #     do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredAudienceModelRequest AWS API Documentation
    #
    class CreateConfiguredAudienceModelRequest < Struct.new(
      :audience_model_arn,
      :audience_size_config,
      :child_resource_tag_on_create_policy,
      :description,
      :min_matching_seed_size,
      :name,
      :output_config,
      :shared_audience_metrics,
      :tags)
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

    # @!attribute [rw] description
    #   The description of the training dataset.
    #   @return [String]
    #
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
    # @!attribute [rw] training_data
    #   An array of information that lists the Dataset objects, which
    #   specifies the dataset type and details on its location and schema.
    #   You must provide a role that has read access to these tables.
    #   @return [Array<Types::Dataset>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainingDatasetRequest AWS API Documentation
    #
    class CreateTrainingDatasetRequest < Struct.new(
      :description,
      :name,
      :role_arn,
      :tags,
      :training_data)
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
    # @!attribute [rw] input_config
    #   A DatasetInputConfig object that defines the data source and schema
    #   mapping.
    #   @return [Types::DatasetInputConfig]
    #
    # @!attribute [rw] type
    #   What type of information is found in the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/Dataset AWS API Documentation
    #
    class Dataset < Struct.new(
      :input_config,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Glue data source and schema mapping information.
    #
    # @!attribute [rw] data_source
    #   A DataSource object that specifies the Glue data source for the
    #   training data.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] schema
    #   The schema information for the training data.
    #   @return [Array<Types::ColumnSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DatasetInputConfig AWS API Documentation
    #
    class DatasetInputConfig < Struct.new(
      :data_source,
      :schema)
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

    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that this audience generation
    #   job is associated with.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model used
    #   for this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the audience generation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the audience generation job.
    #   @return [String]
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
    # @!attribute [rw] metrics
    #   The relevance scores for different audience sizes.
    #   @return [Types::AudienceQualityMetrics]
    #
    # @!attribute [rw] name
    #   The name of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] seed_audience
    #   The seed audience that was used for this audience generation job.
    #   This field will be null if the account calling the API is the
    #   account that started this audience generation job.
    #   @return [Types::AudienceGenerationJobDataSource]
    #
    # @!attribute [rw] started_by
    #   The AWS account that started this audience generation job.
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
    # @!attribute [rw] tags
    #   The tags that are associated to this audience generation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience generation job was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceGenerationJobResponse AWS API Documentation
    #
    class GetAudienceGenerationJobResponse < Struct.new(
      :audience_generation_job_arn,
      :collaboration_id,
      :configured_audience_model_arn,
      :create_time,
      :description,
      :include_seed_in_output,
      :metrics,
      :name,
      :seed_audience,
      :started_by,
      :status,
      :status_details,
      :tags,
      :update_time)
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

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN used for the audience model.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Accuracy metrics for the model.
    #   @return [Array<Types::AudienceModelMetric>]
    #
    # @!attribute [rw] name
    #   The name of the audience model.
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
    # @!attribute [rw] tags
    #   The tags that are assigned to the audience model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_data_end_time
    #   The end date specified for the training window.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_start_time
    #   The start date specified for the training window.
    #   @return [Time]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that was used
    #   for this audience model.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience model was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceModelResponse AWS API Documentation
    #
    class GetAudienceModelResponse < Struct.new(
      :audience_model_arn,
      :create_time,
      :description,
      :kms_key_arn,
      :metrics,
      :name,
      :status,
      :status_details,
      :tags,
      :training_data_end_time,
      :training_data_start_time,
      :training_dataset_arn,
      :update_time)
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

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model used for this
    #   configured audience model.
    #   @return [String]
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
    # @!attribute [rw] child_resource_tag_on_create_policy
    #   Provides the `childResourceTagOnCreatePolicy` that was used for this
    #   configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The output configuration of the configured audience model
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] shared_audience_metrics
    #   Whether audience metrics are shared.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are associated to this configured audience model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelResponse AWS API Documentation
    #
    class GetConfiguredAudienceModelResponse < Struct.new(
      :audience_model_arn,
      :audience_size_config,
      :child_resource_tag_on_create_policy,
      :configured_audience_model_arn,
      :create_time,
      :description,
      :min_matching_seed_size,
      :name,
      :output_config,
      :shared_audience_metrics,
      :status,
      :tags,
      :update_time)
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
    # @!attribute [rw] description
    #   The description of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role used to read the training data.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are assigned to this training dataset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_data
    #   Metadata about the requested training data.
    #   @return [Array<Types::Dataset>]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the training dataset was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainingDatasetResponse AWS API Documentation
    #
    class GetTrainingDatasetResponse < Struct.new(
      :create_time,
      :description,
      :name,
      :role_arn,
      :status,
      :tags,
      :training_data,
      :training_dataset_arn,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Glue data source that contains the training data.
    #
    # @!attribute [rw] catalog_id
    #   The Glue catalog that contains the training data.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Glue database that contains the training data.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The Glue table that contains the training data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GlueDataSource AWS API Documentation
    #
    class GlueDataSource < Struct.new(
      :catalog_id,
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that
    #   you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceExportJobsRequest AWS API Documentation
    #
    class ListAudienceExportJobsRequest < Struct.new(
      :audience_generation_job_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_export_jobs
    #   The audience export jobs that match the request.
    #   @return [Array<Types::AudienceExportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceExportJobsResponse AWS API Documentation
    #
    class ListAudienceExportJobsResponse < Struct.new(
      :audience_export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation jobs that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for the audience generation jobs that you are interested
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceGenerationJobsRequest AWS API Documentation
    #
    class ListAudienceGenerationJobsRequest < Struct.new(
      :collaboration_id,
      :configured_audience_model_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_generation_jobs
    #   The audience generation jobs that match the request.
    #   @return [Array<Types::AudienceGenerationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceGenerationJobsResponse AWS API Documentation
    #
    class ListAudienceGenerationJobsResponse < Struct.new(
      :audience_generation_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceModelsRequest AWS API Documentation
    #
    class ListAudienceModelsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_models
    #   The audience models that match the request.
    #   @return [Array<Types::AudienceModelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceModelsResponse AWS API Documentation
    #
    class ListAudienceModelsResponse < Struct.new(
      :audience_models,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredAudienceModelsRequest AWS API Documentation
    #
    class ListConfiguredAudienceModelsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_models
    #   The configured audience models.
    #   @return [Array<Types::ConfiguredAudienceModelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredAudienceModelsResponse AWS API Documentation
    #
    class ListConfiguredAudienceModelsResponse < Struct.new(
      :configured_audience_models,
      :next_token)
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

    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainingDatasetsRequest AWS API Documentation
    #
    class ListTrainingDatasetsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   the resource policy will govern.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_policy
    #   The IAM resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_existence_condition
    #   Use this to prevent unexpected concurrent modification of the
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] previous_policy_hash
    #   A cryptographic hash of the contents of the policy used to prevent
    #   unexpected concurrent modification of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutConfiguredAudienceModelPolicyRequest AWS API Documentation
    #
    class PutConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn,
      :configured_audience_model_policy,
      :policy_existence_condition,
      :previous_policy_hash)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] name
    #   The name of the audience export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceExportJobRequest AWS API Documentation
    #
    class StartAudienceExportJobRequest < Struct.new(
      :audience_generation_job_arn,
      :audience_size,
      :description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation job.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   is used for this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] include_seed_in_output
    #   Whether the seed audience is included in the audience generation
    #   output.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] seed_audience
    #   The seed audience that is used to generate the audience.
    #   @return [Types::AudienceGenerationJobDataSource]
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
    #     not, then Forecast considers it to be a user tag and will count
    #     against the limit of 50 tags. Tags with only the key prefix of aws
    #     do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceGenerationJobRequest AWS API Documentation
    #
    class StartAudienceGenerationJobRequest < Struct.new(
      :collaboration_id,
      :configured_audience_model_arn,
      :description,
      :include_seed_in_output,
      :name,
      :seed_audience,
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

    # Details about the status of a resource.
    #
    # @!attribute [rw] message
    #   The error message that was returned. The message is intended for
    #   human consumption and can change at any time. Use the `statusCode`
    #   for programmatic error handling.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code that was returned. The status code is intended for
    #   programmatic error handling. Clean Rooms ML will not change the
    #   status code for existing error conditions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StatusDetails AWS API Documentation
    #
    class StatusDetails < Struct.new(
      :message,
      :status_code)
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
    #     not, then Forecast considers it to be a user tag and will count
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

    # Provides information about the training dataset.
    #
    # @!attribute [rw] create_time
    #   The time at which the training dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the training dataset.
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
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the training dataset was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainingDatasetSummary AWS API Documentation
    #
    class TrainingDatasetSummary < Struct.new(
      :create_time,
      :description,
      :name,
      :status,
      :training_dataset_arn,
      :update_time)
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

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the new audience model that you
    #   want to use.
    #   @return [String]
    #
    # @!attribute [rw] audience_size_config
    #   The new audience size configuration.
    #   @return [Types::AudienceSizeConfig]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #   @return [Integer]
    #
    # @!attribute [rw] output_config
    #   The new output configuration.
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] shared_audience_metrics
    #   The new value for whether to share audience metrics.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UpdateConfiguredAudienceModelRequest AWS API Documentation
    #
    class UpdateConfiguredAudienceModelRequest < Struct.new(
      :audience_model_arn,
      :audience_size_config,
      :configured_audience_model_arn,
      :description,
      :min_matching_seed_size,
      :output_config,
      :shared_audience_metrics)
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

  end
end

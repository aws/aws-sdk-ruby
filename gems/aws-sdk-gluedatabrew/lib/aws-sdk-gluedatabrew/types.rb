# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GlueDataBrew
  module Types

    # Access to the specified resource was denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteRecipeVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "RecipeName", # required
    #         recipe_versions: ["RecipeVersion"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the recipe whose versions are to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] recipe_versions
    #   An array of version identifiers, for the recipe versions to be
    #   deleted. You can specify numeric versions (`X.Y`) or
    #   `LATEST_WORKING`. `LATEST_PUBLISHED` is not supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/BatchDeleteRecipeVersionRequest AWS API Documentation
    #
    class BatchDeleteRecipeVersionRequest < Struct.new(
      :name,
      :recipe_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recipe that was modified.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Errors, if any, that occurred while attempting to delete the recipe
    #   versions.
    #   @return [Array<Types::RecipeVersionErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/BatchDeleteRecipeVersionResponse AWS API Documentation
    #
    class BatchDeleteRecipeVersionResponse < Struct.new(
      :name,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an individual condition that evaluates to true or false.
    #
    # Conditions are used with recipe actions: The action is only performed
    # for column values where the condition evaluates to true.
    #
    # If a recipe requires more than one condition, then the recipe must
    # specify multiple `ConditionExpression` elements. Each condition is
    # applied to the rows in a dataset first, before the recipe action is
    # performed.
    #
    # @note When making an API call, you may pass ConditionExpression
    #   data as a hash:
    #
    #       {
    #         condition: "Condition", # required
    #         value: "ConditionValue",
    #         target_column: "TargetColumn", # required
    #       }
    #
    # @!attribute [rw] condition
    #   A specific condition to apply to a recipe action. For more
    #   information, see [Recipe structure][1] in the *AWS Glue DataBrew
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/databrew/latest/dg/recipes.html#recipes.structure
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value that the condition must evaluate to for the condition to
    #   succeed.
    #   @return [String]
    #
    # @!attribute [rw] target_column
    #   A column to apply this condition to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ConditionExpression AWS API Documentation
    #
    class ConditionExpression < Struct.new(
      :condition,
      :value,
      :target_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         name: "DatasetName", # required
    #         format_options: {
    #           json: {
    #             multi_line: false,
    #           },
    #           excel: {
    #             sheet_names: ["SheetName"],
    #             sheet_indexes: [1],
    #           },
    #           csv: {
    #             delimiter: "Delimiter",
    #           },
    #         },
    #         input: { # required
    #           s3_input_definition: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #           },
    #           data_catalog_input_definition: {
    #             catalog_id: "CatalogId",
    #             database_name: "DatabaseName", # required
    #             table_name: "TableName", # required
    #             temp_directory: {
    #               bucket: "Bucket", # required
    #               key: "Key",
    #             },
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the dataset to be created. Valid characters are
    #   alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    #   @return [String]
    #
    # @!attribute [rw] format_options
    #   Options that define the structure of either Csv, Excel, or JSON
    #   input.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] input
    #   Information on how DataBrew can find data, in either the AWS Glue
    #   Data Catalog or Amazon S3.
    #   @return [Types::Input]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this dataset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :name,
      :format_options,
      :input,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the dataset that you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProfileJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         encryption_key_arn: "EncryptionKeyArn",
    #         encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #         name: "JobName", # required
    #         log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #         max_capacity: 1,
    #         max_retries: 1,
    #         output_location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #         role_arn: "Arn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         timeout: 1,
    #         job_sample: {
    #           mode: "FULL_DATASET", # accepts FULL_DATASET, CUSTOM_ROWS
    #           size: 1,
    #         },
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset that this job is to act upon.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - `SSE-KMS` - Server-side encryption with AWS
    #     KMS-managed keys.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job to be created. Valid characters are alphanumeric
    #   (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    #   @return [String]
    #
    # @!attribute [rw] log_subscription
    #   Enables or disables Amazon CloudWatch logging for the job. If
    #   logging is enabled, CloudWatch writes one log stream for each job
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of nodes that DataBrew can use when the job
    #   processes data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] output_location
    #   An Amazon S3 location (bucket name an object key) where DataBrew can
    #   read input data, or write output from a job.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed when DataBrew runs the job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] timeout
    #   The job's timeout in minutes. A job that attempts to run longer
    #   than this timeout period ends with a status of `TIMEOUT`.
    #   @return [Integer]
    #
    # @!attribute [rw] job_sample
    #   Sample configuration for profile jobs only. Determines the number of
    #   rows on which the profile job will be executed. If a JobSample value
    #   is not provided, the default value will be used. The default value
    #   is CUSTOM\_ROWS for the mode parameter and 20000 for the size
    #   parameter.
    #   @return [Types::JobSample]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateProfileJobRequest AWS API Documentation
    #
    class CreateProfileJobRequest < Struct.new(
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :output_location,
      :role_arn,
      :tags,
      :timeout,
      :job_sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the job that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateProfileJobResponse AWS API Documentation
    #
    class CreateProfileJobResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         name: "ProjectName", # required
    #         recipe_name: "RecipeName", # required
    #         sample: {
    #           size: 1,
    #           type: "FIRST_N", # required, accepts FIRST_N, LAST_N, RANDOM
    #         },
    #         role_arn: "Arn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of an existing dataset to associate this project with.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name for the new project. Valid characters are alphanumeric
    #   (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    #   @return [String]
    #
    # @!attribute [rw] recipe_name
    #   The name of an existing recipe to associate with the project.
    #   @return [String]
    #
    # @!attribute [rw] sample
    #   Represents the sample size and sampling type for DataBrew to use for
    #   interactive data analysis.
    #   @return [Types::Sample]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed for this request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :dataset_name,
      :name,
      :recipe_name,
      :sample,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the project that you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateProjectResponse AWS API Documentation
    #
    class CreateProjectResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRecipeJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName",
    #         encryption_key_arn: "EncryptionKeyArn",
    #         encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #         name: "JobName", # required
    #         log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #         max_capacity: 1,
    #         max_retries: 1,
    #         outputs: [ # required
    #           {
    #             compression_format: "GZIP", # accepts GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB
    #             format: "CSV", # accepts CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML
    #             partition_columns: ["ColumnName"],
    #             location: { # required
    #               bucket: "Bucket", # required
    #               key: "Key",
    #             },
    #             overwrite: false,
    #             format_options: {
    #               csv: {
    #                 delimiter: "Delimiter",
    #               },
    #             },
    #           },
    #         ],
    #         project_name: "ProjectName",
    #         recipe_reference: {
    #           name: "RecipeName", # required
    #           recipe_version: "RecipeVersion",
    #         },
    #         role_arn: "Arn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         timeout: 1,
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset that this job processes.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with keys managed by AWS KMS.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name for the job. Valid characters are alphanumeric (A-Z,
    #   a-z, 0-9), hyphen (-), period (.), and space.
    #   @return [String]
    #
    # @!attribute [rw] log_subscription
    #   Enables or disables Amazon CloudWatch logging for the job. If
    #   logging is enabled, CloudWatch writes one log stream for each job
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of nodes that DataBrew can consume when the job
    #   processes data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] outputs
    #   One or more artifacts that represent the output from running the
    #   job.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] project_name
    #   Either the name of an existing project, or a combination of a recipe
    #   and a dataset to associate with the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_reference
    #   Represents the name and version of a DataBrew recipe.
    #   @return [Types::RecipeReference]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed when DataBrew runs the job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] timeout
    #   The job's timeout in minutes. A job that attempts to run longer
    #   than this timeout period ends with a status of `TIMEOUT`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateRecipeJobRequest AWS API Documentation
    #
    class CreateRecipeJobRequest < Struct.new(
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :project_name,
      :recipe_reference,
      :role_arn,
      :tags,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the job that you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateRecipeJobResponse AWS API Documentation
    #
    class CreateRecipeJobResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRecipeRequest
    #   data as a hash:
    #
    #       {
    #         description: "RecipeDescription",
    #         name: "RecipeName", # required
    #         steps: [ # required
    #           {
    #             action: { # required
    #               operation: "Operation", # required
    #               parameters: {
    #                 "ParameterName" => "ParameterValue",
    #               },
    #             },
    #             condition_expressions: [
    #               {
    #                 condition: "Condition", # required
    #                 value: "ConditionValue",
    #                 target_column: "TargetColumn", # required
    #               },
    #             ],
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   A description for the recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name for the recipe. Valid characters are alphanumeric
    #   (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   An array containing the steps to be performed by the recipe. Each
    #   recipe step consists of one recipe action and (optionally) an array
    #   of condition expressions.
    #   @return [Array<Types::RecipeStep>]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this recipe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateRecipeRequest AWS API Documentation
    #
    class CreateRecipeRequest < Struct.new(
      :description,
      :name,
      :steps,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recipe that you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateRecipeResponse AWS API Documentation
    #
    class CreateRecipeResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateScheduleRequest
    #   data as a hash:
    #
    #       {
    #         job_names: ["JobName"],
    #         cron_expression: "CronExpression", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         name: "ScheduleName", # required
    #       }
    #
    # @!attribute [rw] job_names
    #   The name or names of one or more jobs to be run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cron_expression
    #   The date or dates and time or times when the jobs are to be run. For
    #   more information, see [Cron expressions][1] in the *AWS Glue
    #   DataBrew Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this schedule.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   A unique name for the schedule. Valid characters are alphanumeric
    #   (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateScheduleRequest AWS API Documentation
    #
    class CreateScheduleRequest < Struct.new(
      :job_names,
      :cron_expression,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the schedule that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CreateScheduleResponse AWS API Documentation
    #
    class CreateScheduleResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that define how DataBrew will read a Csv file when creating a
    # dataset from that file.
    #
    # @note When making an API call, you may pass CsvOptions
    #   data as a hash:
    #
    #       {
    #         delimiter: "Delimiter",
    #       }
    #
    # @!attribute [rw] delimiter
    #   A single character that specifies the delimiter being used in the
    #   Csv file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CsvOptions AWS API Documentation
    #
    class CsvOptions < Struct.new(
      :delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that define how DataBrew will write a Csv file.
    #
    # @note When making an API call, you may pass CsvOutputOptions
    #   data as a hash:
    #
    #       {
    #         delimiter: "Delimiter",
    #       }
    #
    # @!attribute [rw] delimiter
    #   A single character that specifies the delimiter used to create Csv
    #   job output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/CsvOutputOptions AWS API Documentation
    #
    class CsvOutputOptions < Struct.new(
      :delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents how metadata stored in the AWS Glue Data Catalog is defined
    # in a DataBrew dataset.
    #
    # @note When making an API call, you may pass DataCatalogInputDefinition
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The unique identifier of the AWS account that holds the Data Catalog
    #   that stores the data.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of a database in the Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of a database table in the Data Catalog. This table
    #   corresponds to a DataBrew dataset.
    #   @return [String]
    #
    # @!attribute [rw] temp_directory
    #   An Amazon location that AWS Glue Data Catalog can use as a temporary
    #   directory.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DataCatalogInputDefinition AWS API Documentation
    #
    class DataCatalogInputDefinition < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :temp_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a dataset that can be processed by DataBrew.
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account that owns the dataset.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the dataset.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The unique name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] format_options
    #   Options that define how DataBrew interprets the data in the dataset.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] input
    #   Information on how DataBrew can find the dataset, in either the AWS
    #   Glue Data Catalog or Amazon S3.
    #   @return [Types::Input]
    #
    # @!attribute [rw] last_modified_date
    #   The last modification date and time of the dataset.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last modified the
    #   dataset.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The location of the data for the dataset, either Amazon S3 or the
    #   AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags that have been applied to the dataset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_arn
    #   The unique Amazon Resource Name (ARN) for the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Dataset AWS API Documentation
    #
    class Dataset < Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :name,
      :format_options,
      :input,
      :last_modified_date,
      :last_modified_by,
      :source,
      :tags,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetRequest
    #   data as a hash:
    #
    #       {
    #         name: "DatasetName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the dataset to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the dataset that you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteDatasetResponse AWS API Documentation
    #
    class DeleteDatasetResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteJobRequest
    #   data as a hash:
    #
    #       {
    #         name: "JobName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the job that you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProjectRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the project to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteProjectRequest AWS API Documentation
    #
    class DeleteProjectRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the project that you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteProjectResponse AWS API Documentation
    #
    class DeleteProjectResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRecipeVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "RecipeName", # required
    #         recipe_version: "RecipeVersion", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The version of the recipe to be deleted. You can specify a numeric
    #   versions (`X.Y`) or `LATEST_WORKING`. `LATEST_PUBLISHED` is not
    #   supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteRecipeVersionRequest AWS API Documentation
    #
    class DeleteRecipeVersionRequest < Struct.new(
      :name,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recipe that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The version of the recipe that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteRecipeVersionResponse AWS API Documentation
    #
    class DeleteRecipeVersionResponse < Struct.new(
      :name,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteScheduleRequest
    #   data as a hash:
    #
    #       {
    #         name: "ScheduleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the schedule to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteScheduleRequest AWS API Documentation
    #
    class DeleteScheduleRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the schedule that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DeleteScheduleResponse AWS API Documentation
    #
    class DeleteScheduleResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetRequest
    #   data as a hash:
    #
    #       {
    #         name: "DatasetName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the dataset to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_by
    #   The identifier (user name) of the user who created the dataset.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] format_options
    #   Options that define the structure of either Csv, Excel, or JSON
    #   input.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] input
    #   Information on how DataBrew can find data, in either the AWS Glue
    #   Data Catalog or Amazon S3.
    #   @return [Types::Input]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time that the dataset was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier (user name) of the user who last modified the
    #   dataset.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The location of the data for this dataset, Amazon S3 or the AWS Glue
    #   Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags associated with this dataset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :created_by,
      :create_date,
      :name,
      :format_options,
      :input,
      :last_modified_date,
      :last_modified_by,
      :source,
      :tags,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobRequest
    #   data as a hash:
    #
    #       {
    #         name: "JobName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeJobRequest AWS API Documentation
    #
    class DescribeJobRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_date
    #   The date and time that the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier (user name) of the user associated with the creation
    #   of the job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The dataset that the job acts upon.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with keys managed by AWS KMS.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The job type, which must be one of the following:
    #
    #   * `PROFILE` - The job analyzes the dataset to determine its size,
    #     data types, data distribution, and more.
    #
    #   * `RECIPE` - The job applies one or more transformations to a
    #     dataset.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier (user name) of the user who last modified the job.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time that the job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] log_subscription
    #   Indicates whether Amazon CloudWatch logging is enabled for this job.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of compute nodes that DataBrew can consume when
    #   the job processes data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] outputs
    #   One or more artifacts that represent the output from running the
    #   job.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] project_name
    #   The DataBrew project associated with this job.
    #   @return [String]
    #
    # @!attribute [rw] recipe_reference
    #   Represents the name and version of a DataBrew recipe.
    #   @return [Types::RecipeReference]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the job.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role to be
    #   assumed when DataBrew runs the job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags associated with this job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] timeout
    #   The job's timeout in minutes. A job that attempts to run longer
    #   than this timeout period ends with a status of `TIMEOUT`.
    #   @return [Integer]
    #
    # @!attribute [rw] job_sample
    #   Sample configuration for profile jobs only. Determines the number of
    #   rows on which the profile job will be executed.
    #   @return [Types::JobSample]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeJobResponse AWS API Documentation
    #
    class DescribeJobResponse < Struct.new(
      :create_date,
      :created_by,
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :type,
      :last_modified_by,
      :last_modified_date,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :project_name,
      :recipe_reference,
      :resource_arn,
      :role_arn,
      :tags,
      :timeout,
      :job_sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "JobName", # required
    #         run_id: "JobRunId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job being processed during this run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeJobRunRequest AWS API Documentation
    #
    class DescribeJobRunRequest < Struct.new(
      :name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attempt
    #   The number of times that DataBrew has attempted to run the job.
    #   @return [Integer]
    #
    # @!attribute [rw] completed_on
    #   The date and time when the job completed processing.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset for the job to process.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message indicating an error (if any) that was encountered when the
    #   job ran.
    #   @return [String]
    #
    # @!attribute [rw] execution_time
    #   The amount of time, in seconds, during which the job run consumed
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] job_name
    #   The name of the job being processed during this run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the job run.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the job run entity itself.
    #   @return [String]
    #
    # @!attribute [rw] log_subscription
    #   The current status of Amazon CloudWatch logging for the job run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of an Amazon CloudWatch log group, where the job writes
    #   diagnostic messages when it runs.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   One or more output artifacts from a job run.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] recipe_reference
    #   Represents the name and version of a DataBrew recipe.
    #   @return [Types::RecipeReference]
    #
    # @!attribute [rw] started_by
    #   The Amazon Resource Name (ARN) of the user who started the job run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when the job run began.
    #   @return [Time]
    #
    # @!attribute [rw] job_sample
    #   Sample configuration for profile jobs only. Determines the number of
    #   rows on which the profile job will be executed. If a JobSample value
    #   is not provided, the default value will be used. The default value
    #   is CUSTOM\_ROWS for the mode parameter and 20000 for the size
    #   parameter.
    #   @return [Types::JobSample]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeJobRunResponse AWS API Documentation
    #
    class DescribeJobRunResponse < Struct.new(
      :attempt,
      :completed_on,
      :dataset_name,
      :error_message,
      :execution_time,
      :job_name,
      :run_id,
      :state,
      :log_subscription,
      :log_group_name,
      :outputs,
      :recipe_reference,
      :started_by,
      :started_on,
      :job_sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProjectRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the project to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeProjectRequest AWS API Documentation
    #
    class DescribeProjectRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_date
    #   The date and time that the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier (user name) of the user who created the project.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The dataset associated with the project.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time that the project was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier (user name) of the user who last modified the
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] recipe_name
    #   The recipe associated with this job.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @!attribute [rw] sample
    #   Represents the sample size and sampling type for DataBrew to use for
    #   interactive data analysis.
    #   @return [Types::Sample]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role to be
    #   assumed when DataBrew runs the job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags associated with this project.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_status
    #   Describes the current state of the session:
    #
    #   * `PROVISIONING` - allocating resources for the session.
    #
    #   * `INITIALIZING` - getting the session ready for first use.
    #
    #   * `ASSIGNED` - the session is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] opened_by
    #   The identifier (user name) of the user that opened the project for
    #   use.
    #   @return [String]
    #
    # @!attribute [rw] open_date
    #   The date and time when the project was opened.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeProjectResponse AWS API Documentation
    #
    class DescribeProjectResponse < Struct.new(
      :create_date,
      :created_by,
      :dataset_name,
      :last_modified_date,
      :last_modified_by,
      :name,
      :recipe_name,
      :resource_arn,
      :sample,
      :role_arn,
      :tags,
      :session_status,
      :opened_by,
      :open_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecipeRequest
    #   data as a hash:
    #
    #       {
    #         name: "RecipeName", # required
    #         recipe_version: "RecipeVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the recipe to be described.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The recipe version identifier. If this parameter isn't specified,
    #   then the latest published version is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeRecipeRequest AWS API Documentation
    #
    class DescribeRecipeRequest < Struct.new(
      :name,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_by
    #   The identifier (user name) of the user who created the recipe.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the recipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier (user name) of the user who last modified the recipe.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time that the recipe was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] project_name
    #   The name of the project associated with this recipe.
    #   @return [String]
    #
    # @!attribute [rw] published_by
    #   The identifier (user name) of the user who last published the
    #   recipe.
    #   @return [String]
    #
    # @!attribute [rw] published_date
    #   The date and time when the recipe was last published.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   One or more steps to be performed by the recipe. Each step consists
    #   of an action, and the conditions under which the action should
    #   succeed.
    #   @return [Array<Types::RecipeStep>]
    #
    # @!attribute [rw] tags
    #   Metadata tags associated with this project.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The recipe version identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeRecipeResponse AWS API Documentation
    #
    class DescribeRecipeResponse < Struct.new(
      :created_by,
      :create_date,
      :last_modified_by,
      :last_modified_date,
      :project_name,
      :published_by,
      :published_date,
      :description,
      :name,
      :steps,
      :tags,
      :resource_arn,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeScheduleRequest
    #   data as a hash:
    #
    #       {
    #         name: "ScheduleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the schedule to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeScheduleRequest AWS API Documentation
    #
    class DescribeScheduleRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_date
    #   The date and time that the schedule was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier (user name) of the user who created the schedule.
    #   @return [String]
    #
    # @!attribute [rw] job_names
    #   The name or names of one or more jobs to be run by using the
    #   schedule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_by
    #   The identifier (user name) of the user who last modified the
    #   schedule.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time that the schedule was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] cron_expression
    #   The date or dates and time or times when the jobs are to be run for
    #   the schedule. For more information, see [Cron expressions][1] in the
    #   *AWS Glue DataBrew Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags associated with this schedule.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/DescribeScheduleResponse AWS API Documentation
    #
    class DescribeScheduleResponse < Struct.new(
      :create_date,
      :created_by,
      :job_names,
      :last_modified_by,
      :last_modified_date,
      :resource_arn,
      :cron_expression,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that define how DataBrew will interpret a Microsoft Excel
    # file, when creating a dataset from that file.
    #
    # @note When making an API call, you may pass ExcelOptions
    #   data as a hash:
    #
    #       {
    #         sheet_names: ["SheetName"],
    #         sheet_indexes: [1],
    #       }
    #
    # @!attribute [rw] sheet_names
    #   Specifies one or more named sheets in the Excel file, which will be
    #   included in the dataset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sheet_indexes
    #   Specifies one or more sheet numbers in the Excel file, which will be
    #   included in the dataset.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ExcelOptions AWS API Documentation
    #
    class ExcelOptions < Struct.new(
      :sheet_names,
      :sheet_indexes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that define the structure of either Csv, Excel, or JSON input.
    #
    # @note When making an API call, you may pass FormatOptions
    #   data as a hash:
    #
    #       {
    #         json: {
    #           multi_line: false,
    #         },
    #         excel: {
    #           sheet_names: ["SheetName"],
    #           sheet_indexes: [1],
    #         },
    #         csv: {
    #           delimiter: "Delimiter",
    #         },
    #       }
    #
    # @!attribute [rw] json
    #   Options that define how JSON input is to be interpreted by DataBrew.
    #   @return [Types::JsonOptions]
    #
    # @!attribute [rw] excel
    #   Options that define how Excel input is to be interpreted by
    #   DataBrew.
    #   @return [Types::ExcelOptions]
    #
    # @!attribute [rw] csv
    #   Options that define how Csv input is to be interpreted by DataBrew.
    #   @return [Types::CsvOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/FormatOptions AWS API Documentation
    #
    class FormatOptions < Struct.new(
      :json,
      :excel,
      :csv)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on how DataBrew can find data, in either the AWS Glue Data
    # Catalog or Amazon S3.
    #
    # @note When making an API call, you may pass Input
    #   data as a hash:
    #
    #       {
    #         s3_input_definition: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #         data_catalog_input_definition: {
    #           catalog_id: "CatalogId",
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] s3_input_definition
    #   The Amazon S3 location where the data is stored.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] data_catalog_input_definition
    #   The AWS Glue Data Catalog parameters for the data.
    #   @return [Types::DataCatalogInputDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Input AWS API Documentation
    #
    class Input < Struct.new(
      :s3_input_definition,
      :data_catalog_input_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service failure occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents all of the attributes of a DataBrew job.
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account that owns the job.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the job.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_name
    #   A dataset that the job is to process.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job output. For more information, see [Encrypting data
    #   written by DataBrew jobs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/databrew/latest/dg/encryption-security-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with AWS KMS-managed keys.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the job.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The job type of the job, which must be one of the following:
    #
    #   * `PROFILE` - A job to analyze a dataset, to determine its size,
    #     data types, data distribution, and more.
    #
    #   * `RECIPE` - A job to apply one or more transformations to a
    #     dataset.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last modified the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The modification date and time of the job.
    #   @return [Time]
    #
    # @!attribute [rw] log_subscription
    #   The current status of Amazon CloudWatch logging for the job.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of nodes that can be consumed when the job
    #   processes data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] outputs
    #   One or more artifacts that represent output from running the job.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] project_name
    #   The name of the project that the job is associated with.
    #   @return [String]
    #
    # @!attribute [rw] recipe_reference
    #   A set of steps that the job runs.
    #   @return [Types::RecipeReference]
    #
    # @!attribute [rw] resource_arn
    #   The unique Amazon Resource Name (ARN) for the job.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that will be assumed for
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The job's timeout in minutes. A job that attempts to run longer
    #   than this timeout period ends with a status of `TIMEOUT`.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Metadata tags that have been applied to the job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_sample
    #   Sample configuration for profile jobs only. Determines the number of
    #   rows on which the profile job will be executed. If a JobSample value
    #   is not provided, the default value will be used. The default value
    #   is CUSTOM\_ROWS for the mode parameter and 20000 for the size
    #   parameter.
    #   @return [Types::JobSample]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Job AWS API Documentation
    #
    class Job < Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :type,
      :last_modified_by,
      :last_modified_date,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :project_name,
      :recipe_reference,
      :resource_arn,
      :role_arn,
      :timeout,
      :tags,
      :job_sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one run of a DataBrew job.
    #
    # @!attribute [rw] attempt
    #   The number of times that DataBrew has attempted to run the job.
    #   @return [Integer]
    #
    # @!attribute [rw] completed_on
    #   The date and time when the job completed processing.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset for the job to process.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message indicating an error (if any) that was encountered when the
    #   job ran.
    #   @return [String]
    #
    # @!attribute [rw] execution_time
    #   The amount of time, in seconds, during which a job run consumed
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] job_name
    #   The name of the job being processed during this run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the job run.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the job run entity itself.
    #   @return [String]
    #
    # @!attribute [rw] log_subscription
    #   The current status of Amazon CloudWatch logging for the job run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of an Amazon CloudWatch log group, where the job writes
    #   diagnostic messages when it runs.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   One or more output artifacts from a job run.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] recipe_reference
    #   The set of steps processed by the job.
    #   @return [Types::RecipeReference]
    #
    # @!attribute [rw] started_by
    #   The Amazon Resource Name (ARN) of the user who initiated the job
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when the job run began.
    #   @return [Time]
    #
    # @!attribute [rw] job_sample
    #   Sample configuration for profile jobs only. Determines the number of
    #   rows on which the profile job will be executed. If a JobSample value
    #   is not provided, the default value will be used. The default value
    #   is CUSTOM\_ROWS for the mode parameter and 20000 for the size
    #   parameter.
    #   @return [Types::JobSample]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/JobRun AWS API Documentation
    #
    class JobRun < Struct.new(
      :attempt,
      :completed_on,
      :dataset_name,
      :error_message,
      :execution_time,
      :job_name,
      :run_id,
      :state,
      :log_subscription,
      :log_group_name,
      :outputs,
      :recipe_reference,
      :started_by,
      :started_on,
      :job_sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sample configuration for Profile Jobs only. Determines the number of
    # rows on which the Profile job will be executed. If a JobSample value
    # is not provided for profile jobs, the default value will be used. The
    # default value is CUSTOM\_ROWS for the mode parameter and 20000 for the
    # size parameter.
    #
    # @note When making an API call, you may pass JobSample
    #   data as a hash:
    #
    #       {
    #         mode: "FULL_DATASET", # accepts FULL_DATASET, CUSTOM_ROWS
    #         size: 1,
    #       }
    #
    # @!attribute [rw] mode
    #   Determines whether the profile job will be executed on the entire
    #   dataset or on a specified number of rows. Must be one of the
    #   following:
    #
    #   * FULL\_DATASET: Profile job will be executed on the entire dataset.
    #
    #   * CUSTOM\_ROWS: Profile job will be executed on the number of rows
    #     specified in the Size parameter.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   Size parameter is only required when the mode is CUSTOM\_ROWS.
    #   Profile job will be executed on the the specified number of rows.
    #   The maximum value for size is Long.MAX\_VALUE.
    #
    #   Long.MAX\_VALUE = 9223372036854775807
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/JobSample AWS API Documentation
    #
    class JobSample < Struct.new(
      :mode,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the JSON-specific options that define how input is to be
    # interpreted by AWS Glue DataBrew.
    #
    # @note When making an API call, you may pass JsonOptions
    #   data as a hash:
    #
    #       {
    #         multi_line: false,
    #       }
    #
    # @!attribute [rw] multi_line
    #   A value that specifies whether JSON input contains embedded new line
    #   characters.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/JsonOptions AWS API Documentation
    #
    class JsonOptions < Struct.new(
      :multi_line)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datasets
    #   A list of datasets that are defined.
    #   @return [Array<Types::Dataset>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobRunsRequest
    #   data as a hash:
    #
    #       {
    #         name: "JobName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListJobRunsRequest AWS API Documentation
    #
    class ListJobRunsRequest < Struct.new(
      :name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_runs
    #   A list of job runs that have occurred for the specified job.
    #   @return [Array<Types::JobRun>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListJobRunsResponse AWS API Documentation
    #
    class ListJobRunsResponse < Struct.new(
      :job_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         project_name: "ProjectName",
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of a dataset. Using this parameter indicates to return only
    #   those jobs that act on the specified dataset.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token generated by DataBrew that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set
    #   of pages, pass in the NextToken value from the response object of
    #   the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of a project. Using this parameter indicates to return only
    #   those jobs that are associated with the specified project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :dataset_name,
      :max_results,
      :next_token,
      :project_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of jobs that are defined.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProjectsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] projects
    #   A list of projects that are defined .
    #   @return [Array<Types::Project>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListProjectsResponse AWS API Documentation
    #
    class ListProjectsResponse < Struct.new(
      :projects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecipeVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         name: "RecipeName", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recipe for which to return version information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListRecipeVersionsRequest AWS API Documentation
    #
    class ListRecipeVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] recipes
    #   A list of versions for the specified recipe.
    #   @return [Array<Types::Recipe>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListRecipeVersionsResponse AWS API Documentation
    #
    class ListRecipeVersionsResponse < Struct.new(
      :next_token,
      :recipes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecipesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         recipe_version: "RecipeVersion",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   Return only those recipes with a version identifier of
    #   `LATEST_WORKING` or `LATEST_PUBLISHED`. If `RecipeVersion` is
    #   omitted, `ListRecipes` returns all of the `LATEST_PUBLISHED` recipe
    #   versions.
    #
    #   Valid values: `LATEST_WORKING` \| `LATEST_PUBLISHED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListRecipesRequest AWS API Documentation
    #
    class ListRecipesRequest < Struct.new(
      :max_results,
      :next_token,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipes
    #   A list of recipes that are defined.
    #   @return [Array<Types::Recipe>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListRecipesResponse AWS API Documentation
    #
    class ListRecipesResponse < Struct.new(
      :recipes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchedulesRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job that these schedules apply to.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListSchedulesRequest AWS API Documentation
    #
    class ListSchedulesRequest < Struct.new(
      :job_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schedules
    #   A list of schedules that are defined.
    #   @return [Array<Types::Schedule>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListSchedulesResponse AWS API Documentation
    #
    class ListSchedulesResponse < Struct.new(
      :schedules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   DataBrew resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with the DataBrew resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that specify how and where DataBrew will write the output
    # generated by recipe jobs or profile jobs.
    #
    # @note When making an API call, you may pass Output
    #   data as a hash:
    #
    #       {
    #         compression_format: "GZIP", # accepts GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB
    #         format: "CSV", # accepts CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: "Delimiter",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] compression_format
    #   The compression algorithm used to compress the output text of the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The data format of the output of the job.
    #   @return [String]
    #
    # @!attribute [rw] partition_columns
    #   The names of one or more partition columns for the output of the
    #   job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] location
    #   The location in Amazon S3 where the job writes its output.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] overwrite
    #   A value that, if true, means that any data in the location specified
    #   for output is overwritten with new output.
    #   @return [Boolean]
    #
    # @!attribute [rw] format_options
    #   Options that define how DataBrew formats job output files.
    #   @return [Types::OutputFormatOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Output AWS API Documentation
    #
    class Output < Struct.new(
      :compression_format,
      :format,
      :partition_columns,
      :location,
      :overwrite,
      :format_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that define the structure of Csv job output.
    #
    # @note When making an API call, you may pass OutputFormatOptions
    #   data as a hash:
    #
    #       {
    #         csv: {
    #           delimiter: "Delimiter",
    #         },
    #       }
    #
    # @!attribute [rw] csv
    #   Options that define how DataBrew writes Csv output.
    #   @return [Types::CsvOutputOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/OutputFormatOptions AWS API Documentation
    #
    class OutputFormatOptions < Struct.new(
      :csv)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents all of the attributes of a DataBrew project.
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account that owns the project.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who crated the project.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The dataset that the project is to act upon.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last modification date and time for the project.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last modified the
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of a project.
    #   @return [String]
    #
    # @!attribute [rw] recipe_name
    #   The name of a recipe that will be developed during a project
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the project.
    #   @return [String]
    #
    # @!attribute [rw] sample
    #   The sample size and sampling type to apply to the data. If this
    #   parameter isn't specified, then the sample will consiste of the
    #   first 500 rows from the dataset.
    #   @return [Types::Sample]
    #
    # @!attribute [rw] tags
    #   Metadata tags that have been applied to the project.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that will be assumed for
    #   this project.
    #   @return [String]
    #
    # @!attribute [rw] opened_by
    #   The Amazon Resource Name (ARN) of the user that opened the project
    #   for use.
    #   @return [String]
    #
    # @!attribute [rw] open_date
    #   The date and time when the project was opened.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Project AWS API Documentation
    #
    class Project < Struct.new(
      :account_id,
      :create_date,
      :created_by,
      :dataset_name,
      :last_modified_date,
      :last_modified_by,
      :name,
      :recipe_name,
      :resource_arn,
      :sample,
      :tags,
      :role_arn,
      :opened_by,
      :open_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublishRecipeRequest
    #   data as a hash:
    #
    #       {
    #         description: "RecipeDescription",
    #         name: "RecipeName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description of the recipe to be published, for this version of the
    #   recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recipe to be published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/PublishRecipeRequest AWS API Documentation
    #
    class PublishRecipeRequest < Struct.new(
      :description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recipe that you published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/PublishRecipeResponse AWS API Documentation
    #
    class PublishRecipeResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one or more actions to be performed on a DataBrew dataset.
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the recipe.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the recipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last modified the
    #   recipe.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last modification date and time of the recipe.
    #   @return [Time]
    #
    # @!attribute [rw] project_name
    #   The name of the project that the recipe is associated with.
    #   @return [String]
    #
    # @!attribute [rw] published_by
    #   The Amazon Resource Name (ARN) of the user who published the recipe.
    #   @return [String]
    #
    # @!attribute [rw] published_date
    #   The date and time when the recipe was published.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name for the recipe.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the recipe.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   A list of steps that are defined by the recipe.
    #   @return [Array<Types::RecipeStep>]
    #
    # @!attribute [rw] tags
    #   Metadata tags that have been applied to the recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] recipe_version
    #   The identifier for the version for the recipe. Must be one of the
    #   following:
    #
    #   * Numeric version (`X.Y`) - `X` and `Y` stand for major and minor
    #     version numbers. The maximum length of each is 6 digits, and
    #     neither can be negative values. Both `X` and `Y` are required, and
    #     "0.0" is not a valid version.
    #
    #   * `LATEST_WORKING` - the most recent valid version being developed
    #     in a DataBrew project.
    #
    #   * `LATEST_PUBLISHED` - the most recent published version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Recipe AWS API Documentation
    #
    class Recipe < Struct.new(
      :created_by,
      :create_date,
      :last_modified_by,
      :last_modified_date,
      :project_name,
      :published_by,
      :published_date,
      :description,
      :name,
      :resource_arn,
      :steps,
      :tags,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a transformation and associated parameters that are used to
    # apply a change to a DataBrew dataset. For more information, see
    # [Recipe structure][1] and [Recipe actions reference][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/databrew/latest/dg/recipe-structure.html
    # [2]: https://docs.aws.amazon.com/databrew/latest/dg/recipe-actions-reference.html
    #
    # @note When making an API call, you may pass RecipeAction
    #   data as a hash:
    #
    #       {
    #         operation: "Operation", # required
    #         parameters: {
    #           "ParameterName" => "ParameterValue",
    #         },
    #       }
    #
    # @!attribute [rw] operation
    #   The name of a valid DataBrew transformation to be performed on the
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Contextual parameters for the transformation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/RecipeAction AWS API Documentation
    #
    class RecipeAction < Struct.new(
      :operation,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the name and version of a DataBrew recipe.
    #
    # @note When making an API call, you may pass RecipeReference
    #   data as a hash:
    #
    #       {
    #         name: "RecipeName", # required
    #         recipe_version: "RecipeVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The identifier for the version for the recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/RecipeReference AWS API Documentation
    #
    class RecipeReference < Struct.new(
      :name,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single step from a DataBrew recipe to be performed.
    #
    # @note When making an API call, you may pass RecipeStep
    #   data as a hash:
    #
    #       {
    #         action: { # required
    #           operation: "Operation", # required
    #           parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #         },
    #         condition_expressions: [
    #           {
    #             condition: "Condition", # required
    #             value: "ConditionValue",
    #             target_column: "TargetColumn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] action
    #   The particular action to be performed in the recipe step.
    #   @return [Types::RecipeAction]
    #
    # @!attribute [rw] condition_expressions
    #   One or more conditions that must be met, in order for the recipe
    #   step to succeed.
    #
    #   <note markdown="1"> All of the conditions in the array must be met. In other words, all
    #   of the conditions must be combined using a logical AND operation.
    #
    #    </note>
    #   @return [Array<Types::ConditionExpression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/RecipeStep AWS API Documentation
    #
    class RecipeStep < Struct.new(
      :action,
      :condition_expressions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents any errors encountered when attempting to delete multiple
    # recipe versions.
    #
    # @!attribute [rw] error_code
    #   The HTTP status code for the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message.
    #   @return [String]
    #
    # @!attribute [rw] recipe_version
    #   The identifier for the recipe version associated with this error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/RecipeVersionErrorDetail AWS API Documentation
    #
    class RecipeVersionErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :recipe_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon S3 location (bucket name an object key) where DataBrew can
    # read input data, or write output from a job.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket: "Bucket", # required
    #         key: "Key",
    #       }
    #
    # @!attribute [rw] bucket
    #   The S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The unique name of the object in the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the sample size and sampling type for DataBrew to use for
    # interactive data analysis.
    #
    # @note When making an API call, you may pass Sample
    #   data as a hash:
    #
    #       {
    #         size: 1,
    #         type: "FIRST_N", # required, accepts FIRST_N, LAST_N, RANDOM
    #       }
    #
    # @!attribute [rw] size
    #   The number of rows in the sample.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The way in which DataBrew obtains rows from a dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Sample AWS API Documentation
    #
    class Sample < Struct.new(
      :size,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents one or more dates and times when a job is to run.
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account that owns the schedule.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the schedule.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the schedule was created.
    #   @return [Time]
    #
    # @!attribute [rw] job_names
    #   A list of jobs to be run, according to the schedule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last modified the
    #   schedule.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the schedule was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] cron_expression
    #   The date(s) and time(s) when the job will run. For more information,
    #   see [Cron expressions][1] in the *AWS Glue DataBrew Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata tags that have been applied to the schedule.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :job_names,
      :last_modified_by,
      :last_modified_date,
      :resource_arn,
      :cron_expression,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendProjectSessionActionRequest
    #   data as a hash:
    #
    #       {
    #         preview: false,
    #         name: "ProjectName", # required
    #         recipe_step: {
    #           action: { # required
    #             operation: "Operation", # required
    #             parameters: {
    #               "ParameterName" => "ParameterValue",
    #             },
    #           },
    #           condition_expressions: [
    #             {
    #               condition: "Condition", # required
    #               value: "ConditionValue",
    #               target_column: "TargetColumn", # required
    #             },
    #           ],
    #         },
    #         step_index: 1,
    #         client_session_id: "ClientSessionId",
    #         view_frame: {
    #           start_column_index: 1, # required
    #           column_range: 1,
    #           hidden_columns: ["ColumnName"],
    #         },
    #       }
    #
    # @!attribute [rw] preview
    #   If true, the result of the recipe step will be returned, but not
    #   applied.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the project to apply the action to.
    #   @return [String]
    #
    # @!attribute [rw] recipe_step
    #   Represents a single step from a DataBrew recipe to be performed.
    #   @return [Types::RecipeStep]
    #
    # @!attribute [rw] step_index
    #   The index from which to preview a step. This index is used to
    #   preview the result of steps that have already been applied, so that
    #   the resulting view frame is from earlier in the view frame stack.
    #   @return [Integer]
    #
    # @!attribute [rw] client_session_id
    #   A unique identifier for an interactive session that's currently
    #   open and ready for work. The action will be performed on this
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] view_frame
    #   Represents the data being being transformed during an action.
    #   @return [Types::ViewFrame]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/SendProjectSessionActionRequest AWS API Documentation
    #
    class SendProjectSessionActionRequest < Struct.new(
      :preview,
      :name,
      :recipe_step,
      :step_index,
      :client_session_id,
      :view_frame)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   A message indicating the result of performing the action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project that was affected by the action.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   A unique identifier for the action that was performed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/SendProjectSessionActionResponse AWS API Documentation
    #
    class SendProjectSessionActionResponse < Struct.new(
      :result,
      :name,
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service quota is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartJobRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "JobName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job to be run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   A system-generated identifier for this particular job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StartJobRunResponse AWS API Documentation
    #
    class StartJobRunResponse < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartProjectSessionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #         assume_control: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the project to act upon.
    #   @return [String]
    #
    # @!attribute [rw] assume_control
    #   A value that, if true, enables you to take control of a session,
    #   even if a different client is currently accessing the project.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StartProjectSessionRequest AWS API Documentation
    #
    class StartProjectSessionRequest < Struct.new(
      :name,
      :assume_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the project to be acted upon.
    #   @return [String]
    #
    # @!attribute [rw] client_session_id
    #   A system-generated identifier for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StartProjectSessionResponse AWS API Documentation
    #
    class StartProjectSessionResponse < Struct.new(
      :name,
      :client_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopJobRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "JobName", # required
    #         run_id: "JobRunId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job to be stopped.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the job run to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StopJobRunRequest AWS API Documentation
    #
    class StopJobRunRequest < Struct.new(
      :name,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The ID of the job run that you stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/StopJobRunResponse AWS API Documentation
    #
    class StopJobRunResponse < Struct.new(
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The DataBrew resource to which tags should be added. The value for
    #   this parameter is an Amazon Resource Name (ARN). For DataBrew, you
    #   can tag a dataset, a job, a project, or a recipe.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   A DataBrew resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys (names) of one or more tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         name: "DatasetName", # required
    #         format_options: {
    #           json: {
    #             multi_line: false,
    #           },
    #           excel: {
    #             sheet_names: ["SheetName"],
    #             sheet_indexes: [1],
    #           },
    #           csv: {
    #             delimiter: "Delimiter",
    #           },
    #         },
    #         input: { # required
    #           s3_input_definition: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #           },
    #           data_catalog_input_definition: {
    #             catalog_id: "CatalogId",
    #             database_name: "DatabaseName", # required
    #             table_name: "TableName", # required
    #             temp_directory: {
    #               bucket: "Bucket", # required
    #               key: "Key",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the dataset to be updated.
    #   @return [String]
    #
    # @!attribute [rw] format_options
    #   Options that define the structure of either Csv, Excel, or JSON
    #   input.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] input
    #   Information on how DataBrew can find data, in either the AWS Glue
    #   Data Catalog or Amazon S3.
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateDatasetRequest AWS API Documentation
    #
    class UpdateDatasetRequest < Struct.new(
      :name,
      :format_options,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the dataset that you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateDatasetResponse AWS API Documentation
    #
    class UpdateDatasetResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProfileJobRequest
    #   data as a hash:
    #
    #       {
    #         encryption_key_arn: "EncryptionKeyArn",
    #         encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #         name: "JobName", # required
    #         log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #         max_capacity: 1,
    #         max_retries: 1,
    #         output_location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #         },
    #         role_arn: "Arn", # required
    #         timeout: 1,
    #         job_sample: {
    #           mode: "FULL_DATASET", # accepts FULL_DATASET, CUSTOM_ROWS
    #           size: 1,
    #         },
    #       }
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with keys managed by AWS KMS.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job to be updated.
    #   @return [String]
    #
    # @!attribute [rw] log_subscription
    #   Enables or disables Amazon CloudWatch logging for the job. If
    #   logging is enabled, CloudWatch writes one log stream for each job
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of compute nodes that DataBrew can use when the
    #   job processes data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] output_location
    #   An Amazon S3 location (bucket name an object key) where DataBrew can
    #   read input data, or write output from a job.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed when DataBrew runs the job.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The job's timeout in minutes. A job that attempts to run longer
    #   than this timeout period ends with a status of `TIMEOUT`.
    #   @return [Integer]
    #
    # @!attribute [rw] job_sample
    #   Sample configuration for Profile Jobs only. Determines the number of
    #   rows on which the Profile job will be executed. If a JobSample value
    #   is not provided for profile jobs, the default value will be used.
    #   The default value is CUSTOM\_ROWS for the mode parameter and 20000
    #   for the size parameter.
    #   @return [Types::JobSample]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateProfileJobRequest AWS API Documentation
    #
    class UpdateProfileJobRequest < Struct.new(
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :output_location,
      :role_arn,
      :timeout,
      :job_sample)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the job that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateProfileJobResponse AWS API Documentation
    #
    class UpdateProfileJobResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProjectRequest
    #   data as a hash:
    #
    #       {
    #         sample: {
    #           size: 1,
    #           type: "FIRST_N", # required, accepts FIRST_N, LAST_N, RANDOM
    #         },
    #         role_arn: "Arn", # required
    #         name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] sample
    #   Represents the sample size and sampling type for DataBrew to use for
    #   interactive data analysis.
    #   @return [Types::Sample]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed for
    #   this request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateProjectRequest AWS API Documentation
    #
    class UpdateProjectRequest < Struct.new(
      :sample,
      :role_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_modified_date
    #   The date and time that the project was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the project that you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateProjectResponse AWS API Documentation
    #
    class UpdateProjectResponse < Struct.new(
      :last_modified_date,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRecipeJobRequest
    #   data as a hash:
    #
    #       {
    #         encryption_key_arn: "EncryptionKeyArn",
    #         encryption_mode: "SSE-KMS", # accepts SSE-KMS, SSE-S3
    #         name: "JobName", # required
    #         log_subscription: "ENABLE", # accepts ENABLE, DISABLE
    #         max_capacity: 1,
    #         max_retries: 1,
    #         outputs: [ # required
    #           {
    #             compression_format: "GZIP", # accepts GZIP, LZ4, SNAPPY, BZIP2, DEFLATE, LZO, BROTLI, ZSTD, ZLIB
    #             format: "CSV", # accepts CSV, JSON, PARQUET, GLUEPARQUET, AVRO, ORC, XML
    #             partition_columns: ["ColumnName"],
    #             location: { # required
    #               bucket: "Bucket", # required
    #               key: "Key",
    #             },
    #             overwrite: false,
    #             format_options: {
    #               csv: {
    #                 delimiter: "Delimiter",
    #               },
    #             },
    #           },
    #         ],
    #         role_arn: "Arn", # required
    #         timeout: 1,
    #       }
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of an encryption key that is used to
    #   protect the job.
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The encryption mode for the job, which can be one of the following:
    #
    #   * `SSE-KMS` - Server-side encryption with keys managed by AWS KMS.
    #
    #   * `SSE-S3` - Server-side encryption with keys managed by Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job to update.
    #   @return [String]
    #
    # @!attribute [rw] log_subscription
    #   Enables or disables Amazon CloudWatch logging for the job. If
    #   logging is enabled, CloudWatch writes one log stream for each job
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of nodes that DataBrew can consume when the job
    #   processes data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry the job after a job run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] outputs
    #   One or more artifacts that represent the output from running the
    #   job.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role to be assumed when DataBrew runs the job.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The job's timeout in minutes. A job that attempts to run longer
    #   than this timeout period ends with a status of `TIMEOUT`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateRecipeJobRequest AWS API Documentation
    #
    class UpdateRecipeJobRequest < Struct.new(
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :role_arn,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the job that you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateRecipeJobResponse AWS API Documentation
    #
    class UpdateRecipeJobResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRecipeRequest
    #   data as a hash:
    #
    #       {
    #         description: "RecipeDescription",
    #         name: "RecipeName", # required
    #         steps: [
    #           {
    #             action: { # required
    #               operation: "Operation", # required
    #               parameters: {
    #                 "ParameterName" => "ParameterValue",
    #               },
    #             },
    #             condition_expressions: [
    #               {
    #                 condition: "Condition", # required
    #                 value: "ConditionValue",
    #                 target_column: "TargetColumn", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   A description of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recipe to be updated.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   One or more steps to be performed by the recipe. Each step consists
    #   of an action, and the conditions under which the action should
    #   succeed.
    #   @return [Array<Types::RecipeStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateRecipeRequest AWS API Documentation
    #
    class UpdateRecipeRequest < Struct.new(
      :description,
      :name,
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recipe that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateRecipeResponse AWS API Documentation
    #
    class UpdateRecipeResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateScheduleRequest
    #   data as a hash:
    #
    #       {
    #         job_names: ["JobName"],
    #         cron_expression: "CronExpression", # required
    #         name: "ScheduleName", # required
    #       }
    #
    # @!attribute [rw] job_names
    #   The name or names of one or more jobs to be run for this schedule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cron_expression
    #   The date or dates and time or times when the jobs are to be run. For
    #   more information, see [Cron expressions][1] in the *AWS Glue
    #   DataBrew Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateScheduleRequest AWS API Documentation
    #
    class UpdateScheduleRequest < Struct.new(
      :job_names,
      :cron_expression,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the schedule that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/UpdateScheduleResponse AWS API Documentation
    #
    class UpdateScheduleResponse < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters for this request failed validation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data being being transformed during an action.
    #
    # @note When making an API call, you may pass ViewFrame
    #   data as a hash:
    #
    #       {
    #         start_column_index: 1, # required
    #         column_range: 1,
    #         hidden_columns: ["ColumnName"],
    #       }
    #
    # @!attribute [rw] start_column_index
    #   The starting index for the range of columns to return in the view
    #   frame.
    #   @return [Integer]
    #
    # @!attribute [rw] column_range
    #   The number of columns to include in the view frame, beginning with
    #   the `StartColumnIndex` value and ignoring any columns in the
    #   `HiddenColumns` list.
    #   @return [Integer]
    #
    # @!attribute [rw] hidden_columns
    #   A list of columns to hide in the view frame.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/databrew-2017-07-25/ViewFrame AWS API Documentation
    #
    class ViewFrame < Struct.new(
      :start_column_index,
      :column_range,
      :hidden_columns)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

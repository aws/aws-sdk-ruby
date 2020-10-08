# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMaker
  module Types

    # @note When making an API call, you may pass AddTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of `Tag` objects. Each tag is a key-value pair. Only the
    #   `key` parameter is required. If you don't specify a value, Amazon
    #   SageMaker sets the value to an empty string.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AddTagsInput AWS API Documentation
    #
    class AddTagsInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with the Amazon SageMaker resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AddTagsOutput AWS API Documentation
    #
    class AddTagsOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the training algorithm to use in a CreateTrainingJob
    # request.
    #
    # For more information about algorithms provided by Amazon SageMaker,
    # see [Algorithms][1]. For information about using your own algorithms,
    # see [Using Your Own Algorithms with Amazon SageMaker][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    # [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #
    # @note When making an API call, you may pass AlgorithmSpecification
    #   data as a hash:
    #
    #       {
    #         training_image: "AlgorithmImage",
    #         algorithm_name: "ArnOrName",
    #         training_input_mode: "Pipe", # required, accepts Pipe, File
    #         metric_definitions: [
    #           {
    #             name: "MetricName", # required
    #             regex: "MetricRegex", # required
    #           },
    #         ],
    #         enable_sage_maker_metrics_time_series: false,
    #       }
    #
    # @!attribute [rw] training_image
    #   The registry path of the Docker image that contains the training
    #   algorithm. For information about docker registry paths for built-in
    #   algorithms, see [Algorithms Provided by Amazon SageMaker: Common
    #   Parameters][1]. Amazon SageMaker supports both
    #   `registry/repository[:tag]` and `registry/repository[@digest]` image
    #   path formats. For more information, see [Using Your Own Algorithms
    #   with Amazon SageMaker][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #   @return [String]
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm resource to use for the training job. This
    #   must be an algorithm resource that you created or subscribe to on
    #   AWS Marketplace. If you specify a value for this parameter, you
    #   can't specify a value for `TrainingImage`.
    #   @return [String]
    #
    # @!attribute [rw] training_input_mode
    #   The input mode that the algorithm supports. For the input modes that
    #   Amazon SageMaker algorithms support, see [Algorithms][1]. If an
    #   algorithm supports the `File` input mode, Amazon SageMaker downloads
    #   the training data from S3 to the provisioned ML storage Volume, and
    #   mounts the directory to docker volume for training container. If an
    #   algorithm supports the `Pipe` input mode, Amazon SageMaker streams
    #   data directly from S3 to the container.
    #
    #   In File mode, make sure you provision ML storage volume with
    #   sufficient capacity to accommodate the data download from S3. In
    #   addition to the training data, the ML storage volume also stores the
    #   output model. The algorithm container use ML storage volume to also
    #   store intermediate information, if any.
    #
    #   For distributed algorithms using File mode, training data is
    #   distributed uniformly, and your training duration is predictable if
    #   the input data objects size is approximately same. Amazon SageMaker
    #   does not split the files any further for model training. If the
    #   object sizes are skewed, training won't be optimal as the data
    #   distribution is also skewed where one host in a training cluster is
    #   overloaded, thus becoming bottleneck in training.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   @return [String]
    #
    # @!attribute [rw] metric_definitions
    #   A list of metric definition objects. Each object specifies the
    #   metric name and regular expressions used to parse algorithm logs.
    #   Amazon SageMaker publishes each metric to Amazon CloudWatch.
    #   @return [Array<Types::MetricDefinition>]
    #
    # @!attribute [rw] enable_sage_maker_metrics_time_series
    #   To generate and save time-series metrics during training, set to
    #   `true`. The default is `false` and time-series metrics aren't
    #   generated except in the following cases:
    #
    #   * You use one of the Amazon SageMaker built-in algorithms
    #
    #   * You use one of the following [Prebuilt Amazon SageMaker Docker
    #     Images][1]\:
    #
    #     * Tensorflow (version &gt;= 1.15)
    #
    #     * MXNet (version &gt;= 1.6)
    #
    #     * PyTorch (version &gt;= 1.3)
    #
    #   * You specify at least one MetricDefinition
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-containers-frameworks-deep-learning.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmSpecification AWS API Documentation
    #
    class AlgorithmSpecification < Struct.new(
      :training_image,
      :algorithm_name,
      :training_input_mode,
      :metric_definitions,
      :enable_sage_maker_metrics_time_series)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the validation and image scan statuses of the algorithm.
    #
    # @!attribute [rw] validation_statuses
    #   The status of algorithm validation.
    #   @return [Array<Types::AlgorithmStatusItem>]
    #
    # @!attribute [rw] image_scan_statuses
    #   The status of the scan of the algorithm's Docker image container.
    #   @return [Array<Types::AlgorithmStatusItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmStatusDetails AWS API Documentation
    #
    class AlgorithmStatusDetails < Struct.new(
      :validation_statuses,
      :image_scan_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the overall status of an algorithm.
    #
    # @!attribute [rw] name
    #   The name of the algorithm for which the overall status is being
    #   reported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   if the overall status is `Failed`, the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmStatusItem AWS API Documentation
    #
    class AlgorithmStatusItem < Struct.new(
      :name,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an algorithm.
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm that is described by the summary.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_description
    #   A brief description of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the algorithm was created.
    #   @return [Time]
    #
    # @!attribute [rw] algorithm_status
    #   The overall status of the algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmSummary AWS API Documentation
    #
    class AlgorithmSummary < Struct.new(
      :algorithm_name,
      :algorithm_arn,
      :algorithm_description,
      :creation_time,
      :algorithm_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a training job and a batch transform job that Amazon SageMaker
    # runs to validate your algorithm.
    #
    # The data provided in the validation profile is made available to your
    # buyers on AWS Marketplace.
    #
    # @note When making an API call, you may pass AlgorithmValidationProfile
    #   data as a hash:
    #
    #       {
    #         profile_name: "EntityName", # required
    #         training_job_definition: { # required
    #           training_input_mode: "Pipe", # required, accepts Pipe, File
    #           hyper_parameters: {
    #             "ParameterKey" => "ParameterValue",
    #           },
    #           input_data_config: [ # required
    #             {
    #               channel_name: "ChannelName", # required
    #               data_source: { # required
    #                 s3_data_source: {
    #                   s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                   s3_uri: "S3Uri", # required
    #                   s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                   attribute_names: ["AttributeName"],
    #                 },
    #                 file_system_data_source: {
    #                   file_system_id: "FileSystemId", # required
    #                   file_system_access_mode: "rw", # required, accepts rw, ro
    #                   file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                   directory_path: "DirectoryPath", # required
    #                 },
    #               },
    #               content_type: "ContentType",
    #               compression_type: "None", # accepts None, Gzip
    #               record_wrapper_type: "None", # accepts None, RecordIO
    #               input_mode: "Pipe", # accepts Pipe, File
    #               shuffle_config: {
    #                 seed: 1, # required
    #               },
    #             },
    #           ],
    #           output_data_config: { # required
    #             kms_key_id: "KmsKeyId",
    #             s3_output_path: "S3Uri", # required
    #           },
    #           resource_config: { # required
    #             instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #             instance_count: 1, # required
    #             volume_size_in_gb: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #           stopping_condition: { # required
    #             max_runtime_in_seconds: 1,
    #             max_wait_time_in_seconds: 1,
    #           },
    #         },
    #         transform_job_definition: {
    #           max_concurrent_transforms: 1,
    #           max_payload_in_mb: 1,
    #           batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #           environment: {
    #             "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #           },
    #           transform_input: { # required
    #             data_source: { # required
    #               s3_data_source: { # required
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                 s3_uri: "S3Uri", # required
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #           },
    #           transform_output: { # required
    #             s3_output_path: "S3Uri", # required
    #             accept: "Accept",
    #             assemble_with: "None", # accepts None, Line
    #             kms_key_id: "KmsKeyId",
    #           },
    #           transform_resources: { # required
    #             instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #             instance_count: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] profile_name
    #   The name of the profile for the algorithm. The name must have 1 to
    #   63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] training_job_definition
    #   The `TrainingJobDefinition` object that describes the training job
    #   that Amazon SageMaker runs to validate your algorithm.
    #   @return [Types::TrainingJobDefinition]
    #
    # @!attribute [rw] transform_job_definition
    #   The `TransformJobDefinition` object that describes the transform job
    #   that Amazon SageMaker runs to validate your algorithm.
    #   @return [Types::TransformJobDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmValidationProfile AWS API Documentation
    #
    class AlgorithmValidationProfile < Struct.new(
      :profile_name,
      :training_job_definition,
      :transform_job_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configurations for one or more training jobs that Amazon
    # SageMaker runs to test the algorithm.
    #
    # @note When making an API call, you may pass AlgorithmValidationSpecification
    #   data as a hash:
    #
    #       {
    #         validation_role: "RoleArn", # required
    #         validation_profiles: [ # required
    #           {
    #             profile_name: "EntityName", # required
    #             training_job_definition: { # required
    #               training_input_mode: "Pipe", # required, accepts Pipe, File
    #               hyper_parameters: {
    #                 "ParameterKey" => "ParameterValue",
    #               },
    #               input_data_config: [ # required
    #                 {
    #                   channel_name: "ChannelName", # required
    #                   data_source: { # required
    #                     s3_data_source: {
    #                       s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                       s3_uri: "S3Uri", # required
    #                       s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                       attribute_names: ["AttributeName"],
    #                     },
    #                     file_system_data_source: {
    #                       file_system_id: "FileSystemId", # required
    #                       file_system_access_mode: "rw", # required, accepts rw, ro
    #                       file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                       directory_path: "DirectoryPath", # required
    #                     },
    #                   },
    #                   content_type: "ContentType",
    #                   compression_type: "None", # accepts None, Gzip
    #                   record_wrapper_type: "None", # accepts None, RecordIO
    #                   input_mode: "Pipe", # accepts Pipe, File
    #                   shuffle_config: {
    #                     seed: 1, # required
    #                   },
    #                 },
    #               ],
    #               output_data_config: { # required
    #                 kms_key_id: "KmsKeyId",
    #                 s3_output_path: "S3Uri", # required
    #               },
    #               resource_config: { # required
    #                 instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #                 instance_count: 1, # required
    #                 volume_size_in_gb: 1, # required
    #                 volume_kms_key_id: "KmsKeyId",
    #               },
    #               stopping_condition: { # required
    #                 max_runtime_in_seconds: 1,
    #                 max_wait_time_in_seconds: 1,
    #               },
    #             },
    #             transform_job_definition: {
    #               max_concurrent_transforms: 1,
    #               max_payload_in_mb: 1,
    #               batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #               environment: {
    #                 "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #               },
    #               transform_input: { # required
    #                 data_source: { # required
    #                   s3_data_source: { # required
    #                     s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                     s3_uri: "S3Uri", # required
    #                   },
    #                 },
    #                 content_type: "ContentType",
    #                 compression_type: "None", # accepts None, Gzip
    #                 split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #               },
    #               transform_output: { # required
    #                 s3_output_path: "S3Uri", # required
    #                 accept: "Accept",
    #                 assemble_with: "None", # accepts None, Line
    #                 kms_key_id: "KmsKeyId",
    #               },
    #               transform_resources: { # required
    #                 instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #                 instance_count: 1, # required
    #                 volume_kms_key_id: "KmsKeyId",
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] validation_role
    #   The IAM roles that Amazon SageMaker uses to run the training jobs.
    #   @return [String]
    #
    # @!attribute [rw] validation_profiles
    #   An array of `AlgorithmValidationProfile` objects, each of which
    #   specifies a training job and batch transform job that Amazon
    #   SageMaker runs to validate your algorithm.
    #   @return [Array<Types::AlgorithmValidationProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmValidationSpecification AWS API Documentation
    #
    class AlgorithmValidationSpecification < Struct.new(
      :validation_role,
      :validation_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures how labels are consolidated across human workers and
    # processes output data.
    #
    # @note When making an API call, you may pass AnnotationConsolidationConfig
    #   data as a hash:
    #
    #       {
    #         annotation_consolidation_lambda_arn: "LambdaFunctionArn", # required
    #       }
    #
    # @!attribute [rw] annotation_consolidation_lambda_arn
    #   The Amazon Resource Name (ARN) of a Lambda function implements the
    #   logic for [annotation consolidation][1] and to process output data.
    #
    #   This parameter is required for all labeling jobs. For [built-in task
    #   types][2], use one of the following Amazon SageMaker Ground Truth
    #   Lambda function ARNs for `AnnotationConsolidationLambdaArn`. For
    #   custom labeling workflows, see [Post-annotation Lambda][3].
    #
    #   **Bounding box** - Finds the most similar boxes from different
    #   workers based on the Jaccard index of the boxes.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-BoundingBox`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-BoundingBox`
    #
    #   **Image classification** - Uses a variant of the Expectation
    #   Maximization approach to estimate the true class of an image based
    #   on annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClass`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClass`
    #
    #   **Multi-label image classification** - Uses a variant of the
    #   Expectation Maximization approach to estimate the true classes of an
    #   image based on annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClassMultiLabel`
    #
    #   **Semantic segmentation** - Treats each pixel in an image as a
    #   multi-class classification and treats pixel annotations from workers
    #   as "votes" for the correct label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-SemanticSegmentation`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-SemanticSegmentation`
    #
    #   **Text classification** - Uses a variant of the Expectation
    #   Maximization approach to estimate the true class of text based on
    #   annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClass`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClass`
    #
    #   **Multi-label text classification** - Uses a variant of the
    #   Expectation Maximization approach to estimate the true classes of
    #   text based on annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClassMultiLabel`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClassMultiLabel`
    #
    #   **Named entity recognition** - Groups similar selections and
    #   calculates aggregate boundaries, resolving to most-assigned label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-NamedEntityRecognition`
    #
    #   **Named entity recognition** - Groups similar selections and
    #   calculates aggregate boundaries, resolving to most-assigned label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-NamedEntityRecognition`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-NamedEntityRecognition`
    #
    #   **Video Classification** - Use this task type when you need workers
    #   to classify videos using predefined labels that you specify. Workers
    #   are shown videos and are asked to choose one label for each video.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VideoMultiClass`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-VideoMultiClass`
    #
    #   **Video Frame Object Detection** - Use this task type to have
    #   workers identify and locate objects in a sequence of video frames
    #   (images extracted from a video) using bounding boxes. For example,
    #   you can use this task to ask workers to identify and localize
    #   various objects in a series of video frames, such as cars, bikes,
    #   and pedestrians.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VideoObjectDetection`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-VideoObjectDetection`
    #
    #   **Video Frame Object Tracking** - Use this task type to have workers
    #   track the movement of objects in a sequence of video frames (images
    #   extracted from a video) using bounding boxes. For example, you can
    #   use this task to ask workers to track the movement of objects, such
    #   as cars, bikes, and pedestrians.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VideoObjectTracking`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-VideoObjectTracking`
    #
    #   **3D point cloud object detection** - Use this task type when you
    #   want workers to classify objects in a 3D point cloud by drawing 3D
    #   cuboids around objects. For example, you can use this task type to
    #   ask workers to identify different types of objects in a point cloud,
    #   such as cars, bikes, and pedestrians.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-3DPointCloudObjectDetection`
    #
    #   **3D point cloud object tracking** - Use this task type when you
    #   want workers to draw 3D cuboids around objects that appear in a
    #   sequence of 3D point cloud frames. For example, you can use this
    #   task type to ask workers to track the movement of vehicles across
    #   multiple point cloud frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-3DPointCloudObjectTracking`
    #
    #   **3D point cloud semantic segmentation** - Use this task type when
    #   you want workers to create a point-level semantic segmentation masks
    #   by painting objects in a 3D point cloud using different colors where
    #   each color is assigned to one of the classes you specify.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-3DPointCloudSemanticSegmentation`
    #
    #   **Use the following ARNs for Label Verification and Adjustment
    #   Jobs**
    #
    #   Use label verification and adjustment jobs to review and adjust
    #   labels. To learn more, see [Verify and Adjust Labels ][4].
    #
    #   **Semantic segmentation adjustment** - Treats each pixel in an image
    #   as a multi-class classification and treats pixel adjusted
    #   annotations from workers as "votes" for the correct label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentSemanticSegmentation`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentSemanticSegmentation`
    #
    #   **Semantic segmentation verification** - Uses a variant of the
    #   Expectation Maximization approach to estimate the true class of
    #   verification judgment for semantic segmentation labels based on
    #   annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationSemanticSegmentation`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationSemanticSegmentation`
    #
    #   **Bounding box verification** - Uses a variant of the Expectation
    #   Maximization approach to estimate the true class of verification
    #   judgement for bounding box labels based on annotations from
    #   individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationBoundingBox`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationBoundingBox`
    #
    #   **Bounding box adjustment** - Finds the most similar boxes from
    #   different workers based on the Jaccard index of the adjusted
    #   annotations.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentBoundingBox`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentBoundingBox`
    #
    #   **Video Frame Object Detection Adjustment** - Use this task type
    #   when you want workers to adjust bounding boxes that workers have
    #   added to video frames to classify and localize objects in a sequence
    #   of video frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentVideoObjectDetection`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentVideoObjectDetection`
    #
    #   **Video Frame Object Tracking Adjustment** - Use this task type when
    #   you want workers to adjust bounding boxes that workers have added to
    #   video frames to track object movement across a sequence of video
    #   frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentVideoObjectTracking`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentVideoObjectTracking`
    #
    #   **3D point cloud object detection adjustment** - Use this task type
    #   when you want workers to adjust 3D cuboids around objects in a 3D
    #   point cloud.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-Adjustment3DPointCloudObjectDetection`
    #
    #   **3D point cloud object tracking adjustment** - Use this task type
    #   when you want workers to adjust 3D cuboids around objects that
    #   appear in a sequence of 3D point cloud frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-Adjustment3DPointCloudObjectTracking`
    #
    #   **3D point cloud semantic segmentation adjustment** - Use this task
    #   type when you want workers to adjust a point-level semantic
    #   segmentation masks using a paint tool.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-east-2:266458841044:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:us-west-2:081040173940:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-1:568282634449:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-south-1:565803892007:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-central-1:203001061592:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:eu-west-2:487402164563:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #     `arn:aws:lambda:ca-central-1:918755190332:function:ACS-Adjustment3DPointCloudSemanticSegmentation`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates-step3.html#sms-custom-templates-step3-postlambda
    #   [4]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-verification-data.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AnnotationConsolidationConfig AWS API Documentation
    #
    class AnnotationConsolidationConfig < Struct.new(
      :annotation_consolidation_lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The app's details.
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] app_type
    #   The type of app.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AppDetails AWS API Documentation
    #
    class AppDetails < Struct.new(
      :domain_id,
      :user_profile_name,
      :app_type,
      :app_name,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration to run a processing job in a specified container image.
    #
    # @note When making an API call, you may pass AppSpecification
    #   data as a hash:
    #
    #       {
    #         image_uri: "ImageUri", # required
    #         container_entrypoint: ["ContainerEntrypointString"],
    #         container_arguments: ["ContainerArgument"],
    #       }
    #
    # @!attribute [rw] image_uri
    #   The container image to be run by the processing job.
    #   @return [String]
    #
    # @!attribute [rw] container_entrypoint
    #   The entrypoint for a container used to run a processing job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] container_arguments
    #   The arguments for a container used to run a processing job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AppSpecification AWS API Documentation
    #
    class AppSpecification < Struct.new(
      :image_uri,
      :container_entrypoint,
      :container_arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateTrialComponentRequest
    #   data as a hash:
    #
    #       {
    #         trial_component_name: "ExperimentEntityName", # required
    #         trial_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] trial_component_name
    #   The name of the component to associated with the trial.
    #   @return [String]
    #
    # @!attribute [rw] trial_name
    #   The name of the trial to associate with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AssociateTrialComponentRequest AWS API Documentation
    #
    class AssociateTrialComponentRequest < Struct.new(
      :trial_component_name,
      :trial_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_arn
    #   The ARN of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AssociateTrialComponentResponse AWS API Documentation
    #
    class AssociateTrialComponentResponse < Struct.new(
      :trial_component_arn,
      :trial_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Autopilot job returns recommendations, or candidates. Each
    # candidate has futher details about the steps involed, and the status.
    #
    # @!attribute [rw] candidate_name
    #   The candidate name.
    #   @return [String]
    #
    # @!attribute [rw] final_auto_ml_job_objective_metric
    #   The best candidate result from an AutoML training job.
    #   @return [Types::FinalAutoMLJobObjectiveMetric]
    #
    # @!attribute [rw] objective_status
    #   The objective status.
    #   @return [String]
    #
    # @!attribute [rw] candidate_steps
    #   The candidate's steps.
    #   @return [Array<Types::AutoMLCandidateStep>]
    #
    # @!attribute [rw] candidate_status
    #   The candidate's status.
    #   @return [String]
    #
    # @!attribute [rw] inference_containers
    #   The inference containers.
    #   @return [Array<Types::AutoMLContainerDefinition>]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLCandidate AWS API Documentation
    #
    class AutoMLCandidate < Struct.new(
      :candidate_name,
      :final_auto_ml_job_objective_metric,
      :objective_status,
      :candidate_steps,
      :candidate_status,
      :inference_containers,
      :creation_time,
      :end_time,
      :last_modified_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the steps for a Candidate, and what step it is
    # working on.
    #
    # @!attribute [rw] candidate_step_type
    #   Whether the Candidate is at the transform, training, or processing
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] candidate_step_arn
    #   The ARN for the Candidate's step.
    #   @return [String]
    #
    # @!attribute [rw] candidate_step_name
    #   The name for the Candidate's step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLCandidateStep AWS API Documentation
    #
    class AutoMLCandidateStep < Struct.new(
      :candidate_step_type,
      :candidate_step_arn,
      :candidate_step_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Similar to Channel. A channel is a named input source that training
    # algorithms can consume. Refer to Channel for detailed descriptions.
    #
    # @note When making an API call, you may pass AutoMLChannel
    #   data as a hash:
    #
    #       {
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #             s3_uri: "S3Uri", # required
    #           },
    #         },
    #         compression_type: "None", # accepts None, Gzip
    #         target_attribute_name: "TargetAttributeName", # required
    #       }
    #
    # @!attribute [rw] data_source
    #   The data source.
    #   @return [Types::AutoMLDataSource]
    #
    # @!attribute [rw] compression_type
    #   You can use Gzip or None. The default value is None.
    #   @return [String]
    #
    # @!attribute [rw] target_attribute_name
    #   The name of the target variable in supervised learning, a.k.a.
    #   'y'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLChannel AWS API Documentation
    #
    class AutoMLChannel < Struct.new(
      :data_source,
      :compression_type,
      :target_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of container definitions that describe the different containers
    # that make up one AutoML candidate. Refer to ContainerDefinition for
    # more details.
    #
    # @!attribute [rw] image
    #   The ECR path of the container. Refer to ContainerDefinition for more
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] model_data_url
    #   The location of the model artifacts. Refer to ContainerDefinition
    #   for more details.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   Environment variables to set in the container. Refer to
    #   ContainerDefinition for more details.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLContainerDefinition AWS API Documentation
    #
    class AutoMLContainerDefinition < Struct.new(
      :image,
      :model_data_url,
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data source for the Autopilot job.
    #
    # @note When making an API call, you may pass AutoMLDataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_source: { # required
    #           s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #           s3_uri: "S3Uri", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3_data_source
    #   The Amazon S3 location of the input data.
    #
    #   <note markdown="1"> The input data must be in CSV format and contain at least 500 rows.
    #
    #    </note>
    #   @return [Types::AutoMLS3DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLDataSource AWS API Documentation
    #
    class AutoMLDataSource < Struct.new(
      :s3_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Artifacts that are generation during a job.
    #
    # @!attribute [rw] candidate_definition_notebook_location
    #   The URL to the notebook location.
    #   @return [String]
    #
    # @!attribute [rw] data_exploration_notebook_location
    #   The URL to the notebook location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLJobArtifacts AWS API Documentation
    #
    class AutoMLJobArtifacts < Struct.new(
      :candidate_definition_notebook_location,
      :data_exploration_notebook_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # How long a job is allowed to run, or how many candidates a job is
    # allowed to generate.
    #
    # @note When making an API call, you may pass AutoMLJobCompletionCriteria
    #   data as a hash:
    #
    #       {
    #         max_candidates: 1,
    #         max_runtime_per_training_job_in_seconds: 1,
    #         max_auto_ml_job_runtime_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] max_candidates
    #   The maximum number of times a training job is allowed to run.
    #   @return [Integer]
    #
    # @!attribute [rw] max_runtime_per_training_job_in_seconds
    #   The maximum time, in seconds, a job is allowed to run.
    #   @return [Integer]
    #
    # @!attribute [rw] max_auto_ml_job_runtime_in_seconds
    #   The maximum time, in seconds, an AutoML job is allowed to wait for a
    #   trial to complete. It must be equal to or greater than
    #   MaxRuntimePerTrainingJobInSeconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLJobCompletionCriteria AWS API Documentation
    #
    class AutoMLJobCompletionCriteria < Struct.new(
      :max_candidates,
      :max_runtime_per_training_job_in_seconds,
      :max_auto_ml_job_runtime_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of settings used for a job.
    #
    # @note When making an API call, you may pass AutoMLJobConfig
    #   data as a hash:
    #
    #       {
    #         completion_criteria: {
    #           max_candidates: 1,
    #           max_runtime_per_training_job_in_seconds: 1,
    #           max_auto_ml_job_runtime_in_seconds: 1,
    #         },
    #         security_config: {
    #           volume_kms_key_id: "KmsKeyId",
    #           enable_inter_container_traffic_encryption: false,
    #           vpc_config: {
    #             security_group_ids: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] completion_criteria
    #   How long a job is allowed to run, or how many candidates a job is
    #   allowed to generate.
    #   @return [Types::AutoMLJobCompletionCriteria]
    #
    # @!attribute [rw] security_config
    #   Security configuration for traffic encryption or Amazon VPC
    #   settings.
    #   @return [Types::AutoMLSecurityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLJobConfig AWS API Documentation
    #
    class AutoMLJobConfig < Struct.new(
      :completion_criteria,
      :security_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a metric to minimize or maximize as the objective of a job.
    #
    # @note When making an API call, you may pass AutoMLJobObjective
    #   data as a hash:
    #
    #       {
    #         metric_name: "Accuracy", # required, accepts Accuracy, MSE, F1, F1macro, AUC
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the objective metric used to measure the predictive
    #   quality of a machine learning system. This metric is optimized
    #   during training to provide the best estimate for model parameter
    #   values from data.
    #
    #   Here are the options:
    #
    #   * `MSE`\: The mean squared error (MSE) is the average of the squared
    #     differences between the predicted and actual values. It is used
    #     for regression. MSE values are always positive, the better a model
    #     is at predicting the actual values the smaller the MSE value. When
    #     the data contains outliers, they tend to dominate the MSE which
    #     might cause subpar prediction performance.
    #
    #   * `Accuracy`\: The ratio of the number correctly classified items to
    #     the total number (correctly and incorrectly) classified. It is
    #     used for binary and multiclass classification. Measures how close
    #     the predicted class values are to the actual values. Accuracy
    #     values vary between zero and one, one being perfect accuracy and
    #     zero perfect inaccuracy.
    #
    #   * `F1`\: The F1 score is the harmonic mean of the precision and
    #     recall. It is used for binary classification into classes
    #     traditionally referred to as positive and negative. Predictions
    #     are said to be true when they match their actual (correct) class;
    #     false when they do not. Precision is the ratio of the true
    #     positive predictions to all positive predictions (including the
    #     false positives) in a data set and measures the quality of the
    #     prediction when it predicts the positive class. Recall (or
    #     sensitivity) is the ratio of the true positive predictions to all
    #     actual positive instances and measures how completely a model
    #     predicts the actual class members in a data set. The standard F1
    #     score weighs precision and recall equally. But which metric is
    #     paramount typically depends on specific aspects of a problem. F1
    #     scores vary between zero and one, one being the best possible
    #     performance and zero the worst.
    #
    #   * `AUC`\: The area under the curve (AUC) metric is used to compare
    #     and evaluate binary classification by algorithms such as logistic
    #     regression that return probabilities. A threshold is needed to map
    #     the probabilities into classifications. The relevant curve is the
    #     receiver operating characteristic curve that plots the true
    #     positive rate (TPR) of predictions (or recall) against the false
    #     positive rate (FPR) as a function of the threshold value, above
    #     which a prediction is considered positive. Increasing the
    #     threshold results in fewer false positives but more false
    #     negatives. AUC is the area under this receiver operating
    #     characteristic curve and so provides an aggregated measure of the
    #     model performance across all possible classification thresholds.
    #     The AUC score can also be interpreted as the probability that a
    #     randomly selected positive data point is more likely to be
    #     predicted positive than a randomly selected negative example. AUC
    #     scores vary between zero and one, one being perfect accuracy and
    #     one half not better than a random classifier. Values less that one
    #     half predict worse than a random predictor and such consistently
    #     bad predictors can be inverted to obtain better than random
    #     predictors.
    #
    #   * `F1macro`\: The F1macro score applies F1 scoring to multiclass
    #     classification. In this context, you have multiple classes to
    #     predict. You just calculate the precision and recall for each
    #     class as you did for the positive class in binary classification.
    #     Then used these values to calculate the F1 score for each class
    #     and average them to obtain the F1macro score. F1macro scores vary
    #     between zero and one, one being the best possible performance and
    #     zero the worst.
    #
    #   If you do not specify a metric explicitly, the default behavior is
    #   to automatically use:
    #
    #   * `MSE`\: for regression.
    #
    #   * `F1`\: for binary classification
    #
    #   * `Accuracy`\: for multiclass classification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLJobObjective AWS API Documentation
    #
    class AutoMLJobObjective < Struct.new(
      :metric_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary about a job.
    #
    # @!attribute [rw] auto_ml_job_name
    #   The name of the object you are requesting.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The ARN of the job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_secondary_status
    #   The job's secondary status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of an AutoML job.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason of a job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLJobSummary AWS API Documentation
    #
    class AutoMLJobSummary < Struct.new(
      :auto_ml_job_name,
      :auto_ml_job_arn,
      :auto_ml_job_status,
      :auto_ml_job_secondary_status,
      :creation_time,
      :end_time,
      :last_modified_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output data configuration.
    #
    # @note When making an API call, you may pass AutoMLOutputDataConfig
    #   data as a hash:
    #
    #       {
    #         kms_key_id: "KmsKeyId",
    #         s3_output_path: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS encryption key ID.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 output path. Must be 128 characters or less.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLOutputDataConfig AWS API Documentation
    #
    class AutoMLOutputDataConfig < Struct.new(
      :kms_key_id,
      :s3_output_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 data source.
    #
    # @note When making an API call, you may pass AutoMLS3DataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #         s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] s3_data_type
    #   The data type.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URL to the Amazon S3 data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLS3DataSource AWS API Documentation
    #
    class AutoMLS3DataSource < Struct.new(
      :s3_data_type,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Security options.
    #
    # @note When making an API call, you may pass AutoMLSecurityConfig
    #   data as a hash:
    #
    #       {
    #         volume_kms_key_id: "KmsKeyId",
    #         enable_inter_container_traffic_encryption: false,
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] volume_kms_key_id
    #   The key used to encrypt stored data.
    #   @return [String]
    #
    # @!attribute [rw] enable_inter_container_traffic_encryption
    #   Whether to use traffic encryption between the container layers.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AutoMLSecurityConfig AWS API Documentation
    #
    class AutoMLSecurityConfig < Struct.new(
      :volume_kms_key_id,
      :enable_inter_container_traffic_encryption,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CaptureContentTypeHeader
    #   data as a hash:
    #
    #       {
    #         csv_content_types: ["CsvContentType"],
    #         json_content_types: ["JsonContentType"],
    #       }
    #
    # @!attribute [rw] csv_content_types
    #   @return [Array<String>]
    #
    # @!attribute [rw] json_content_types
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CaptureContentTypeHeader AWS API Documentation
    #
    class CaptureContentTypeHeader < Struct.new(
      :csv_content_types,
      :json_content_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CaptureOption
    #   data as a hash:
    #
    #       {
    #         capture_mode: "Input", # required, accepts Input, Output
    #       }
    #
    # @!attribute [rw] capture_mode
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CaptureOption AWS API Documentation
    #
    class CaptureOption < Struct.new(
      :capture_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of categorical hyperparameters to tune.
    #
    # @note When making an API call, you may pass CategoricalParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterKey", # required
    #         values: ["ParameterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the categorical hyperparameter to tune.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of the categories for the hyperparameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CategoricalParameterRange AWS API Documentation
    #
    class CategoricalParameterRange < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the possible values for a categorical hyperparameter.
    #
    # @note When making an API call, you may pass CategoricalParameterRangeSpecification
    #   data as a hash:
    #
    #       {
    #         values: ["ParameterValue"], # required
    #       }
    #
    # @!attribute [rw] values
    #   The allowed categories for the hyperparameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CategoricalParameterRangeSpecification AWS API Documentation
    #
    class CategoricalParameterRangeSpecification < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A channel is a named input source that training algorithms can
    # consume.
    #
    # @note When making an API call, you may pass Channel
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         data_source: { # required
    #           s3_data_source: {
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #             s3_uri: "S3Uri", # required
    #             s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #             attribute_names: ["AttributeName"],
    #           },
    #           file_system_data_source: {
    #             file_system_id: "FileSystemId", # required
    #             file_system_access_mode: "rw", # required, accepts rw, ro
    #             file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #             directory_path: "DirectoryPath", # required
    #           },
    #         },
    #         content_type: "ContentType",
    #         compression_type: "None", # accepts None, Gzip
    #         record_wrapper_type: "None", # accepts None, RecordIO
    #         input_mode: "Pipe", # accepts Pipe, File
    #         shuffle_config: {
    #           seed: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The location of the channel data.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the data.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   If training data is compressed, the compression type. The default
    #   value is `None`. `CompressionType` is used only in Pipe input mode.
    #   In File mode, leave this field unset or set it to None.
    #   @return [String]
    #
    # @!attribute [rw] record_wrapper_type
    #   Specify RecordIO as the value when input data is in raw format but
    #   the training algorithm requires the RecordIO format. In this case,
    #   Amazon SageMaker wraps each individual S3 object in a RecordIO
    #   record. If the input data is already in RecordIO format, you don't
    #   need to set this attribute. For more information, see [Create a
    #   Dataset Using RecordIO][1].
    #
    #   In File mode, leave this field unset or set it to None.
    #
    #
    #
    #   [1]: https://mxnet.apache.org/api/architecture/note_data_loading#data-format
    #   @return [String]
    #
    # @!attribute [rw] input_mode
    #   (Optional) The input mode to use for the data channel in a training
    #   job. If you don't set a value for `InputMode`, Amazon SageMaker
    #   uses the value set for `TrainingInputMode`. Use this parameter to
    #   override the `TrainingInputMode` setting in a AlgorithmSpecification
    #   request when you have a channel that needs a different input mode
    #   from the training job's general setting. To download the data from
    #   Amazon Simple Storage Service (Amazon S3) to the provisioned ML
    #   storage volume, and mount the directory to a Docker volume, use
    #   `File` input mode. To stream data directly from Amazon S3 to the
    #   container, choose `Pipe` input mode.
    #
    #   To use a model for incremental training, choose `File` input model.
    #   @return [String]
    #
    # @!attribute [rw] shuffle_config
    #   A configuration for a shuffle option for input data in a channel. If
    #   you use `S3Prefix` for `S3DataType`, this shuffles the results of
    #   the S3 key prefix matches. If you use `ManifestFile`, the order of
    #   the S3 object references in the `ManifestFile` is shuffled. If you
    #   use `AugmentedManifestFile`, the order of the JSON lines in the
    #   `AugmentedManifestFile` is shuffled. The shuffling order is
    #   determined using the `Seed` value.
    #
    #   For Pipe input mode, shuffling is done at the start of every epoch.
    #   With large datasets this ensures that the order of the training data
    #   is different for each epoch, it helps reduce bias and possible
    #   overfitting. In a multi-node training job when ShuffleConfig is
    #   combined with `S3DataDistributionType` of `ShardedByS3Key`, the data
    #   is shuffled across nodes so that the content sent to a particular
    #   node on the first epoch might be sent to a different node on the
    #   second epoch.
    #   @return [Types::ShuffleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :channel_name,
      :data_source,
      :content_type,
      :compression_type,
      :record_wrapper_type,
      :input_mode,
      :shuffle_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a named input source, called a channel, to be used by an
    # algorithm.
    #
    # @note When making an API call, you may pass ChannelSpecification
    #   data as a hash:
    #
    #       {
    #         name: "ChannelName", # required
    #         description: "EntityDescription",
    #         is_required: false,
    #         supported_content_types: ["ContentType"], # required
    #         supported_compression_types: ["None"], # accepts None, Gzip
    #         supported_input_modes: ["Pipe"], # required, accepts Pipe, File
    #       }
    #
    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the channel.
    #   @return [String]
    #
    # @!attribute [rw] is_required
    #   Indicates whether the channel is required by the algorithm.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_content_types
    #   The supported MIME types for the data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_compression_types
    #   The allowed compression types, if data compression is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_input_modes
    #   The allowed input mode, either FILE or PIPE.
    #
    #   In FILE mode, Amazon SageMaker copies the data from the input source
    #   onto the local Amazon Elastic Block Store (Amazon EBS) volumes
    #   before starting your training algorithm. This is the most commonly
    #   used input mode.
    #
    #   In PIPE mode, Amazon SageMaker streams input data from the source
    #   directly to your algorithm without using the EBS volume.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ChannelSpecification AWS API Documentation
    #
    class ChannelSpecification < Struct.new(
      :name,
      :description,
      :is_required,
      :supported_content_types,
      :supported_compression_types,
      :supported_input_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the output location for managed spot
    # training checkpoint data.
    #
    # @note When making an API call, you may pass CheckpointConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         local_path: "DirectoryPath",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   Identifies the S3 path where you want Amazon SageMaker to store
    #   checkpoints. For example, `s3://bucket-name/key-name-prefix`.
    #   @return [String]
    #
    # @!attribute [rw] local_path
    #   (Optional) The local directory where checkpoints are written. The
    #   default directory is `/opt/ml/checkpoints/`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CheckpointConfig AWS API Documentation
    #
    class CheckpointConfig < Struct.new(
      :s3_uri,
      :local_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies summary information about a Git repository.
    #
    # @!attribute [rw] code_repository_name
    #   The name of the Git repository.
    #   @return [String]
    #
    # @!attribute [rw] code_repository_arn
    #   The Amazon Resource Name (ARN) of the Git repository.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the Git repository was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the Git repository was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] git_config
    #   Configuration details for the Git repository, including the URL
    #   where it is located and the ARN of the AWS Secrets Manager secret
    #   that contains the credentials used to access the repository.
    #   @return [Types::GitConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CodeRepositorySummary AWS API Documentation
    #
    class CodeRepositorySummary < Struct.new(
      :code_repository_name,
      :code_repository_arn,
      :creation_time,
      :last_modified_time,
      :git_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this parameter to configure your Amazon Cognito workforce. A
    # single Cognito workforce is created using and corresponds to a single
    # [ Amazon Cognito user pool][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #
    # @note When making an API call, you may pass CognitoConfig
    #   data as a hash:
    #
    #       {
    #         user_pool: "CognitoUserPool", # required
    #         client_id: "ClientId", # required
    #       }
    #
    # @!attribute [rw] user_pool
    #   A [ user pool][1] is a user directory in Amazon Cognito. With a user
    #   pool, your users can sign in to your web or mobile app through
    #   Amazon Cognito. Your users can also sign in through social identity
    #   providers like Google, Facebook, Amazon, or Apple, and through SAML
    #   identity providers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID for your Amazon Cognito user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CognitoConfig AWS API Documentation
    #
    class CognitoConfig < Struct.new(
      :user_pool,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a Amazon Cognito user group. A user group can be used in on
    # or more work teams.
    #
    # @note When making an API call, you may pass CognitoMemberDefinition
    #   data as a hash:
    #
    #       {
    #         user_pool: "CognitoUserPool", # required
    #         user_group: "CognitoUserGroup", # required
    #         client_id: "ClientId", # required
    #       }
    #
    # @!attribute [rw] user_pool
    #   An identifier for a user pool. The user pool must be in the same
    #   region as the service that you are calling.
    #   @return [String]
    #
    # @!attribute [rw] user_group
    #   An identifier for a user group.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   An identifier for an application client. You must create the app
    #   client ID using Amazon Cognito.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CognitoMemberDefinition AWS API Documentation
    #
    class CognitoMemberDefinition < Struct.new(
      :user_pool,
      :user_group,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for tensor collections.
    #
    # @note When making an API call, you may pass CollectionConfiguration
    #   data as a hash:
    #
    #       {
    #         collection_name: "CollectionName",
    #         collection_parameters: {
    #           "ConfigKey" => "ConfigValue",
    #         },
    #       }
    #
    # @!attribute [rw] collection_name
    #   The name of the tensor collection. The name must be unique relative
    #   to other rule configuration names.
    #   @return [String]
    #
    # @!attribute [rw] collection_parameters
    #   Parameter values for the tensor collection. The allowed parameters
    #   are `"name"`, `"include_regex"`, `"reduction_config"`,
    #   `"save_config"`, `"tensor_names"`, and `"save_histogram"`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CollectionConfiguration AWS API Documentation
    #
    class CollectionConfiguration < Struct.new(
      :collection_name,
      :collection_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a model compilation job.
    #
    # @!attribute [rw] compilation_job_name
    #   The name of the model compilation job that you want a summary for.
    #   @return [String]
    #
    # @!attribute [rw] compilation_job_arn
    #   The Amazon Resource Name (ARN) of the model compilation job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the model compilation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] compilation_start_time
    #   The time when the model compilation job started.
    #   @return [Time]
    #
    # @!attribute [rw] compilation_end_time
    #   The time when the model compilation job completed.
    #   @return [Time]
    #
    # @!attribute [rw] compilation_target_device
    #   The type of device that the model will run on after the compilation
    #   job has completed.
    #   @return [String]
    #
    # @!attribute [rw] compilation_target_platform_os
    #   The type of OS that the model will run on after the compilation job
    #   has completed.
    #   @return [String]
    #
    # @!attribute [rw] compilation_target_platform_arch
    #   The type of architecture that the model will run on after the
    #   compilation job has completed.
    #   @return [String]
    #
    # @!attribute [rw] compilation_target_platform_accelerator
    #   The type of accelerator that the model will run on after the
    #   compilation job has completed.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time when the model compilation job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] compilation_job_status
    #   The status of the model compilation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CompilationJobSummary AWS API Documentation
    #
    class CompilationJobSummary < Struct.new(
      :compilation_job_name,
      :compilation_job_arn,
      :creation_time,
      :compilation_start_time,
      :compilation_end_time,
      :compilation_target_device,
      :compilation_target_platform_os,
      :compilation_target_platform_arch,
      :compilation_target_platform_accelerator,
      :last_modified_time,
      :compilation_job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict when you attempted to modify an experiment,
    # trial, or trial component.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the container, as part of model definition.
    #
    # @note When making an API call, you may pass ContainerDefinition
    #   data as a hash:
    #
    #       {
    #         container_hostname: "ContainerHostname",
    #         image: "ContainerImage",
    #         image_config: {
    #           repository_access_mode: "Platform", # required, accepts Platform, Vpc
    #         },
    #         mode: "SingleModel", # accepts SingleModel, MultiModel
    #         model_data_url: "Url",
    #         environment: {
    #           "EnvironmentKey" => "EnvironmentValue",
    #         },
    #         model_package_name: "ArnOrName",
    #       }
    #
    # @!attribute [rw] container_hostname
    #   This parameter is ignored for models that contain only a
    #   `PrimaryContainer`.
    #
    #   When a `ContainerDefinition` is part of an inference pipeline, the
    #   value of the parameter uniquely identifies the container for the
    #   purposes of logging and metrics. For information, see [Use Logs and
    #   Metrics to Monitor an Inference Pipeline][1]. If you don't specify
    #   a value for this parameter for a `ContainerDefinition` that is part
    #   of an inference pipeline, a unique name is automatically assigned
    #   based on the position of the `ContainerDefinition` in the pipeline.
    #   If you specify a value for the `ContainerHostName` for any
    #   `ContainerDefinition` that is part of an inference pipeline, you
    #   must specify a value for the `ContainerHostName` parameter of every
    #   `ContainerDefinition` in that pipeline.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/inference-pipeline-logs-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The path where inference code is stored. This can be either in
    #   Amazon EC2 Container Registry or in a Docker registry that is
    #   accessible from the same VPC that you configure for your endpoint.
    #   If you are using your own custom algorithm instead of an algorithm
    #   provided by Amazon SageMaker, the inference code must meet Amazon
    #   SageMaker requirements. Amazon SageMaker supports both
    #   `registry/repository[:tag]` and `registry/repository[@digest]` image
    #   path formats. For more information, see [Using Your Own Algorithms
    #   with Amazon SageMaker][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #   @return [String]
    #
    # @!attribute [rw] image_config
    #   Specifies whether the model container is in Amazon ECR or a private
    #   Docker registry accessible from your Amazon Virtual Private Cloud
    #   (VPC). For information about storing containers in a private Docker
    #   registry, see [Use a Private Docker Registry for Real-Time Inference
    #   Containers][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html
    #   @return [Types::ImageConfig]
    #
    # @!attribute [rw] mode
    #   Whether the container hosts a single model or multiple models.
    #   @return [String]
    #
    # @!attribute [rw] model_data_url
    #   The S3 path where the model artifacts, which result from model
    #   training, are stored. This path must point to a single gzip
    #   compressed tar archive (.tar.gz suffix). The S3 path is required for
    #   Amazon SageMaker built-in algorithms, but not if you use your own
    #   algorithms. For more information on built-in algorithms, see [Common
    #   Parameters][1].
    #
    #   <note markdown="1"> The model artifacts must be in an S3 bucket that is in the same
    #   region as the model or endpoint you are creating.
    #
    #    </note>
    #
    #   If you provide a value for this parameter, Amazon SageMaker uses AWS
    #   Security Token Service to download model artifacts from the S3 path
    #   you provide. AWS STS is activated in your IAM user account by
    #   default. If you previously deactivated AWS STS for a region, you
    #   need to reactivate AWS STS for that region. For more information,
    #   see [Activating and Deactivating AWS STS in an AWS Region][2] in the
    #   *AWS Identity and Access Management User Guide*.
    #
    #   If you use a built-in algorithm to create a model, Amazon SageMaker
    #   requires that you provide a S3 path to the model artifacts in
    #   `ModelDataUrl`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. Each key
    #   and value in the `Environment` string to string map can have length
    #   of up to 1024. We support up to 16 entries in the map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] model_package_name
    #   The name or Amazon Resource Name (ARN) of the model package to use
    #   to create the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContainerDefinition AWS API Documentation
    #
    class ContainerDefinition < Struct.new(
      :container_hostname,
      :image,
      :image_config,
      :mode,
      :model_data_url,
      :environment,
      :model_package_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of continuous hyperparameters to tune.
    #
    # @note When making an API call, you may pass ContinuousParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterKey", # required
    #         min_value: "ParameterValue", # required
    #         max_value: "ParameterValue", # required
    #         scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #       }
    #
    # @!attribute [rw] name
    #   The name of the continuous hyperparameter to tune.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum value for the hyperparameter. The tuning job uses
    #   floating-point values between this value and `MaxValue`for tuning.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum value for the hyperparameter. The tuning job uses
    #   floating-point values between `MinValue` value and this value for
    #   tuning.
    #   @return [String]
    #
    # @!attribute [rw] scaling_type
    #   The scale that hyperparameter tuning uses to search the
    #   hyperparameter range. For information about choosing a
    #   hyperparameter scale, see [Hyperparameter Scaling][1]. One of the
    #   following values:
    #
    #   Auto
    #
    #   : Amazon SageMaker hyperparameter tuning chooses the best scale for
    #     the hyperparameter.
    #
    #   Linear
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a linear scale.
    #
    #   Logarithmic
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a logarithmic scale.
    #
    #     Logarithmic scaling works only for ranges that have only values
    #     greater than 0.
    #
    #   ReverseLogarithmic
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a reverse logarithmic scale.
    #
    #     Reverse logarithmic scaling works only for ranges that are
    #     entirely within the range 0&lt;=x&lt;1.0.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContinuousParameterRange AWS API Documentation
    #
    class ContinuousParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :scaling_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the possible values for a continuous hyperparameter.
    #
    # @note When making an API call, you may pass ContinuousParameterRangeSpecification
    #   data as a hash:
    #
    #       {
    #         min_value: "ParameterValue", # required
    #         max_value: "ParameterValue", # required
    #       }
    #
    # @!attribute [rw] min_value
    #   The minimum floating-point value allowed.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum floating-point value allowed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContinuousParameterRangeSpecification AWS API Documentation
    #
    class ContinuousParameterRangeSpecification < Struct.new(
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAlgorithmInput
    #   data as a hash:
    #
    #       {
    #         algorithm_name: "EntityName", # required
    #         algorithm_description: "EntityDescription",
    #         training_specification: { # required
    #           training_image: "ContainerImage", # required
    #           training_image_digest: "ImageDigest",
    #           supported_hyper_parameters: [
    #             {
    #               name: "ParameterName", # required
    #               description: "EntityDescription",
    #               type: "Integer", # required, accepts Integer, Continuous, Categorical, FreeText
    #               range: {
    #                 integer_parameter_range_specification: {
    #                   min_value: "ParameterValue", # required
    #                   max_value: "ParameterValue", # required
    #                 },
    #                 continuous_parameter_range_specification: {
    #                   min_value: "ParameterValue", # required
    #                   max_value: "ParameterValue", # required
    #                 },
    #                 categorical_parameter_range_specification: {
    #                   values: ["ParameterValue"], # required
    #                 },
    #               },
    #               is_tunable: false,
    #               is_required: false,
    #               default_value: "ParameterValue",
    #             },
    #           ],
    #           supported_training_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #           supports_distributed_training: false,
    #           metric_definitions: [
    #             {
    #               name: "MetricName", # required
    #               regex: "MetricRegex", # required
    #             },
    #           ],
    #           training_channels: [ # required
    #             {
    #               name: "ChannelName", # required
    #               description: "EntityDescription",
    #               is_required: false,
    #               supported_content_types: ["ContentType"], # required
    #               supported_compression_types: ["None"], # accepts None, Gzip
    #               supported_input_modes: ["Pipe"], # required, accepts Pipe, File
    #             },
    #           ],
    #           supported_tuning_job_objective_metrics: [
    #             {
    #               type: "Maximize", # required, accepts Maximize, Minimize
    #               metric_name: "MetricName", # required
    #             },
    #           ],
    #         },
    #         inference_specification: {
    #           containers: [ # required
    #             {
    #               container_hostname: "ContainerHostname",
    #               image: "ContainerImage", # required
    #               image_digest: "ImageDigest",
    #               model_data_url: "Url",
    #               product_id: "ProductId",
    #             },
    #           ],
    #           supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #           supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
    #           supported_content_types: ["ContentType"], # required
    #           supported_response_mime_types: ["ResponseMIMEType"], # required
    #         },
    #         validation_specification: {
    #           validation_role: "RoleArn", # required
    #           validation_profiles: [ # required
    #             {
    #               profile_name: "EntityName", # required
    #               training_job_definition: { # required
    #                 training_input_mode: "Pipe", # required, accepts Pipe, File
    #                 hyper_parameters: {
    #                   "ParameterKey" => "ParameterValue",
    #                 },
    #                 input_data_config: [ # required
    #                   {
    #                     channel_name: "ChannelName", # required
    #                     data_source: { # required
    #                       s3_data_source: {
    #                         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                         s3_uri: "S3Uri", # required
    #                         s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                         attribute_names: ["AttributeName"],
    #                       },
    #                       file_system_data_source: {
    #                         file_system_id: "FileSystemId", # required
    #                         file_system_access_mode: "rw", # required, accepts rw, ro
    #                         file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                         directory_path: "DirectoryPath", # required
    #                       },
    #                     },
    #                     content_type: "ContentType",
    #                     compression_type: "None", # accepts None, Gzip
    #                     record_wrapper_type: "None", # accepts None, RecordIO
    #                     input_mode: "Pipe", # accepts Pipe, File
    #                     shuffle_config: {
    #                       seed: 1, # required
    #                     },
    #                   },
    #                 ],
    #                 output_data_config: { # required
    #                   kms_key_id: "KmsKeyId",
    #                   s3_output_path: "S3Uri", # required
    #                 },
    #                 resource_config: { # required
    #                   instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #                   instance_count: 1, # required
    #                   volume_size_in_gb: 1, # required
    #                   volume_kms_key_id: "KmsKeyId",
    #                 },
    #                 stopping_condition: { # required
    #                   max_runtime_in_seconds: 1,
    #                   max_wait_time_in_seconds: 1,
    #                 },
    #               },
    #               transform_job_definition: {
    #                 max_concurrent_transforms: 1,
    #                 max_payload_in_mb: 1,
    #                 batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #                 environment: {
    #                   "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #                 },
    #                 transform_input: { # required
    #                   data_source: { # required
    #                     s3_data_source: { # required
    #                       s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                       s3_uri: "S3Uri", # required
    #                     },
    #                   },
    #                   content_type: "ContentType",
    #                   compression_type: "None", # accepts None, Gzip
    #                   split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #                 },
    #                 transform_output: { # required
    #                   s3_output_path: "S3Uri", # required
    #                   accept: "Accept",
    #                   assemble_with: "None", # accepts None, Line
    #                   kms_key_id: "KmsKeyId",
    #                 },
    #                 transform_resources: { # required
    #                   instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #                   instance_count: 1, # required
    #                   volume_kms_key_id: "KmsKeyId",
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         certify_for_marketplace: false,
    #       }
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_description
    #   A description of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] training_specification
    #   Specifies details about training jobs run by this algorithm,
    #   including the following:
    #
    #   * The Amazon ECR path of the container and the version digest of the
    #     algorithm.
    #
    #   * The hyperparameters that the algorithm supports.
    #
    #   * The instance types that the algorithm supports for training.
    #
    #   * Whether the algorithm supports distributed training.
    #
    #   * The metrics that the algorithm emits to Amazon CloudWatch.
    #
    #   * Which metrics that the algorithm emits can be used as the
    #     objective metric for hyperparameter tuning jobs.
    #
    #   * The input channels that the algorithm supports for training data.
    #     For example, an algorithm might support `train`, `validation`, and
    #     `test` channels.
    #   @return [Types::TrainingSpecification]
    #
    # @!attribute [rw] inference_specification
    #   Specifies details about inference jobs that the algorithm runs,
    #   including the following:
    #
    #   * The Amazon ECR paths of containers that contain the inference code
    #     and model artifacts.
    #
    #   * The instance types that the algorithm supports for transform jobs
    #     and real-time endpoints used for inference.
    #
    #   * The input and output content formats that the algorithm supports
    #     for inference.
    #   @return [Types::InferenceSpecification]
    #
    # @!attribute [rw] validation_specification
    #   Specifies configurations for one or more training jobs and that
    #   Amazon SageMaker runs to test the algorithm's training code and,
    #   optionally, one or more batch transform jobs that Amazon SageMaker
    #   runs to test the algorithm's inference code.
    #   @return [Types::AlgorithmValidationSpecification]
    #
    # @!attribute [rw] certify_for_marketplace
    #   Whether to certify the algorithm so that it can be listed in AWS
    #   Marketplace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAlgorithmInput AWS API Documentation
    #
    class CreateAlgorithmInput < Struct.new(
      :algorithm_name,
      :algorithm_description,
      :training_specification,
      :inference_specification,
      :validation_specification,
      :certify_for_marketplace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the new algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAlgorithmOutput AWS API Documentation
    #
    class CreateAlgorithmOutput < Struct.new(
      :algorithm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #         app_type: "JupyterServer", # required, accepts JupyterServer, KernelGateway, TensorBoard
    #         app_name: "AppName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         resource_spec: {
    #           sage_maker_image_arn: "ImageArn",
    #           instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #         },
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] app_type
    #   The type of app.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and an optional value. Tag keys must be
    #   unique per resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_spec
    #   The instance type and the Amazon Resource Name (ARN) of the
    #   SageMaker image created on the instance.
    #   @return [Types::ResourceSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :domain_id,
      :user_profile_name,
      :app_type,
      :app_name,
      :tags,
      :resource_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   The App's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAppResponse AWS API Documentation
    #
    class CreateAppResponse < Struct.new(
      :app_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAutoMLJobRequest
    #   data as a hash:
    #
    #       {
    #         auto_ml_job_name: "AutoMLJobName", # required
    #         input_data_config: [ # required
    #           {
    #             data_source: { # required
    #               s3_data_source: { # required
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #                 s3_uri: "S3Uri", # required
    #               },
    #             },
    #             compression_type: "None", # accepts None, Gzip
    #             target_attribute_name: "TargetAttributeName", # required
    #           },
    #         ],
    #         output_data_config: { # required
    #           kms_key_id: "KmsKeyId",
    #           s3_output_path: "S3Uri", # required
    #         },
    #         problem_type: "BinaryClassification", # accepts BinaryClassification, MulticlassClassification, Regression
    #         auto_ml_job_objective: {
    #           metric_name: "Accuracy", # required, accepts Accuracy, MSE, F1, F1macro, AUC
    #         },
    #         auto_ml_job_config: {
    #           completion_criteria: {
    #             max_candidates: 1,
    #             max_runtime_per_training_job_in_seconds: 1,
    #             max_auto_ml_job_runtime_in_seconds: 1,
    #           },
    #           security_config: {
    #             volume_kms_key_id: "KmsKeyId",
    #             enable_inter_container_traffic_encryption: false,
    #             vpc_config: {
    #               security_group_ids: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #             },
    #           },
    #         },
    #         role_arn: "RoleArn", # required
    #         generate_candidate_definitions_only: false,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] auto_ml_job_name
    #   Identifies an Autopilot job. Must be unique to your account and is
    #   case-insensitive.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Similar to InputDataConfig supported by Tuning. Format(s) supported:
    #   CSV. Minimum of 500 rows.
    #   @return [Array<Types::AutoMLChannel>]
    #
    # @!attribute [rw] output_data_config
    #   Similar to OutputDataConfig supported by Tuning. Format(s)
    #   supported: CSV.
    #   @return [Types::AutoMLOutputDataConfig]
    #
    # @!attribute [rw] problem_type
    #   Defines the kind of preprocessing and algorithms intended for the
    #   candidates. Options include: BinaryClassification,
    #   MulticlassClassification, and Regression.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_objective
    #   Defines the objective of a an AutoML job. You provide a
    #   AutoMLJobObjective$MetricName and Autopilot infers whether to
    #   minimize or maximize it. If a metric is not specified, the most
    #   commonly used ObjectiveMetric for problem type is automaically
    #   selected.
    #   @return [Types::AutoMLJobObjective]
    #
    # @!attribute [rw] auto_ml_job_config
    #   Contains CompletionCriteria and SecurityConfig.
    #   @return [Types::AutoMLJobConfig]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that is used to access the data.
    #   @return [String]
    #
    # @!attribute [rw] generate_candidate_definitions_only
    #   Generates possible candidates without training a model. A candidate
    #   is a combination of data preprocessors, algorithms, and algorithm
    #   parameter settings.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and an optional value. Tag keys must be
    #   unique per resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAutoMLJobRequest AWS API Documentation
    #
    class CreateAutoMLJobRequest < Struct.new(
      :auto_ml_job_name,
      :input_data_config,
      :output_data_config,
      :problem_type,
      :auto_ml_job_objective,
      :auto_ml_job_config,
      :role_arn,
      :generate_candidate_definitions_only,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_ml_job_arn
    #   When a job is created, it is assigned a unique ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateAutoMLJobResponse AWS API Documentation
    #
    class CreateAutoMLJobResponse < Struct.new(
      :auto_ml_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCodeRepositoryInput
    #   data as a hash:
    #
    #       {
    #         code_repository_name: "EntityName", # required
    #         git_config: { # required
    #           repository_url: "GitConfigUrl", # required
    #           branch: "Branch",
    #           secret_arn: "SecretArn",
    #         },
    #       }
    #
    # @!attribute [rw] code_repository_name
    #   The name of the Git repository. The name must have 1 to 63
    #   characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] git_config
    #   Specifies details about the repository, including the URL where the
    #   repository is located, the default branch, and credentials to use to
    #   access the repository.
    #   @return [Types::GitConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateCodeRepositoryInput AWS API Documentation
    #
    class CreateCodeRepositoryInput < Struct.new(
      :code_repository_name,
      :git_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_repository_arn
    #   The Amazon Resource Name (ARN) of the new repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateCodeRepositoryOutput AWS API Documentation
    #
    class CreateCodeRepositoryOutput < Struct.new(
      :code_repository_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCompilationJobRequest
    #   data as a hash:
    #
    #       {
    #         compilation_job_name: "EntityName", # required
    #         role_arn: "RoleArn", # required
    #         input_config: { # required
    #           s3_uri: "S3Uri", # required
    #           data_input_config: "DataInputConfig", # required
    #           framework: "TENSORFLOW", # required, accepts TENSORFLOW, KERAS, MXNET, ONNX, PYTORCH, XGBOOST, TFLITE
    #         },
    #         output_config: { # required
    #           s3_output_location: "S3Uri", # required
    #           target_device: "lambda", # accepts lambda, ml_m4, ml_m5, ml_c4, ml_c5, ml_p2, ml_p3, ml_g4dn, ml_inf1, jetson_tx1, jetson_tx2, jetson_nano, jetson_xavier, rasp3b, imx8qm, deeplens, rk3399, rk3288, aisage, sbe_c, qcs605, qcs603, sitara_am57x, amba_cv22, x86_win32, x86_win64, coreml
    #           target_platform: {
    #             os: "ANDROID", # required, accepts ANDROID, LINUX
    #             arch: "X86_64", # required, accepts X86_64, X86, ARM64, ARM_EABI, ARM_EABIHF
    #             accelerator: "INTEL_GRAPHICS", # accepts INTEL_GRAPHICS, MALI, NVIDIA
    #           },
    #           compiler_options: "CompilerOptions",
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
    #           max_wait_time_in_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] compilation_job_name
    #   A name for the model compilation job. The name must be unique within
    #   the AWS Region and within your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that enables Amazon
    #   SageMaker to perform tasks on your behalf.
    #
    #   During model compilation, Amazon SageMaker needs your permission to:
    #
    #   * Read input data from an S3 bucket
    #
    #   * Write model artifacts to an S3 bucket
    #
    #   * Write logs to Amazon CloudWatch Logs
    #
    #   * Publish metrics to Amazon CloudWatch
    #
    #   You grant permissions for all of these tasks to an IAM role. To pass
    #   this role to Amazon SageMaker, the caller of this API must have the
    #   `iam:PassRole` permission. For more information, see [Amazon
    #   SageMaker Roles.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Provides information about the location of input model artifacts,
    #   the name and shape of the expected data inputs, and the framework in
    #   which the model was trained.
    #   @return [Types::InputConfig]
    #
    # @!attribute [rw] output_config
    #   Provides information about the output location for the compiled
    #   model and the target device the model runs on.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model compilation job can run. When
    #   the job reaches the time limit, Amazon SageMaker ends the
    #   compilation job. Use this API to cap model training costs.
    #   @return [Types::StoppingCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateCompilationJobRequest AWS API Documentation
    #
    class CreateCompilationJobRequest < Struct.new(
      :compilation_job_name,
      :role_arn,
      :input_config,
      :output_config,
      :stopping_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compilation_job_arn
    #   If the action is successful, the service sends back an HTTP 200
    #   response. Amazon SageMaker returns the following data in JSON
    #   format:
    #
    #   * `CompilationJobArn`\: The Amazon Resource Name (ARN) of the
    #     compiled job.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateCompilationJobResponse AWS API Documentation
    #
    class CreateCompilationJobResponse < Struct.new(
      :compilation_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         auth_mode: "SSO", # required, accepts SSO, IAM
    #         default_user_settings: { # required
    #           execution_role: "RoleArn",
    #           security_groups: ["SecurityGroupId"],
    #           sharing_settings: {
    #             notebook_output_option: "Allowed", # accepts Allowed, Disabled
    #             s3_output_path: "S3Uri",
    #             s3_kms_key_id: "KmsKeyId",
    #           },
    #           jupyter_server_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           kernel_gateway_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           tensor_board_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #         },
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "VpcId", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         home_efs_file_system_kms_key_id: "KmsKeyId",
    #         app_network_access_type: "PublicInternetOnly", # accepts PublicInternetOnly, VpcOnly
    #       }
    #
    # @!attribute [rw] domain_name
    #   A name for the domain.
    #   @return [String]
    #
    # @!attribute [rw] auth_mode
    #   The mode of authentication that members use to access the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_user_settings
    #   The default user settings.
    #   @return [Types::UserSettings]
    #
    # @!attribute [rw] subnet_ids
    #   The VPC subnets that Studio uses for communication.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses
    #   for communication.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associated with the Domain. Each tag consists of a key and
    #   an optional value. Tag keys must be unique per resource. Tags are
    #   searchable using the Search API.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] home_efs_file_system_kms_key_id
    #   The AWS Key Management Service (KMS) encryption key ID. Encryption
    #   with a customer master key (CMK) is not supported.
    #   @return [String]
    #
    # @!attribute [rw] app_network_access_type
    #   Specifies the VPC used for non-EFS traffic. The default value is
    #   `PublicInternetOnly`.
    #
    #   * `PublicInternetOnly` - Non-EFS traffic is through a VPC managed by
    #     Amazon SageMaker, which allows direct internet access
    #
    #   * `VpcOnly` - All Studio traffic is through the specified VPC and
    #     subnets
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :auth_mode,
      :default_user_settings,
      :subnet_ids,
      :vpc_id,
      :tags,
      :home_efs_file_system_kms_key_id,
      :app_network_access_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the created domain.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to the created domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEndpointConfigInput
    #   data as a hash:
    #
    #       {
    #         endpoint_config_name: "EndpointConfigName", # required
    #         production_variants: [ # required
    #           {
    #             variant_name: "VariantName", # required
    #             model_name: "ModelName", # required
    #             initial_instance_count: 1, # required
    #             instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
    #             initial_variant_weight: 1.0,
    #             accelerator_type: "ml.eia1.medium", # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge
    #           },
    #         ],
    #         data_capture_config: {
    #           enable_capture: false,
    #           initial_sampling_percentage: 1, # required
    #           destination_s3_uri: "DestinationS3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #           capture_options: [ # required
    #             {
    #               capture_mode: "Input", # required, accepts Input, Output
    #             },
    #           ],
    #           capture_content_type_header: {
    #             csv_content_types: ["CsvContentType"],
    #             json_content_types: ["JsonContentType"],
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of the endpoint configuration. You specify this name in a
    #   CreateEndpoint request.
    #   @return [String]
    #
    # @!attribute [rw] production_variants
    #   An list of `ProductionVariant` objects, one for each model that you
    #   want to host at this endpoint.
    #   @return [Array<Types::ProductionVariant>]
    #
    # @!attribute [rw] data_capture_config
    #   @return [Types::DataCaptureConfig]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the <i> AWS Billing and Cost Management User
    #   Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to the ML compute instance that hosts the endpoint.
    #
    #   The KmsKeyId can be any of the following formats:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias name ARN:
    #     `arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias`
    #
    #   The KMS key policy must grant permission to the IAM role that you
    #   specify in your `CreateEndpoint`, `UpdateEndpoint` requests. For
    #   more information, refer to the AWS Key Management Service section[
    #   Using Key Policies in AWS KMS ][1]
    #
    #   <note markdown="1"> Certain Nitro-based instances include local storage, dependent on
    #   the instance type. Local storage volumes are encrypted using a
    #   hardware module on the instance. You can't request a `KmsKeyId`
    #   when using an instance type with local storage. If any of the models
    #   that you specify in the `ProductionVariants` parameter use
    #   nitro-based instances with local storage, do not specify a value for
    #   the `KmsKeyId` parameter. If you specify a value for `KmsKeyId` when
    #   using any nitro-based instances with local storage, the call to
    #   `CreateEndpointConfig` fails.
    #
    #    For a list of instance types that support local instance storage,
    #   see [Instance Store Volumes][2].
    #
    #    For more information about local instance storage encryption, see
    #   [SSD Instance Store Volumes][3].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#instance-store-volumes
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssd-instance-store.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointConfigInput AWS API Documentation
    #
    class CreateEndpointConfigInput < Struct.new(
      :endpoint_config_name,
      :production_variants,
      :data_capture_config,
      :tags,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_config_arn
    #   The Amazon Resource Name (ARN) of the endpoint configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointConfigOutput AWS API Documentation
    #
    class CreateEndpointConfigOutput < Struct.new(
      :endpoint_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #         endpoint_config_name: "EndpointConfigName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint. The name must be unique within an AWS
    #   Region in your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of an endpoint configuration. For more information, see
    #   CreateEndpointConfig.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1]in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointInput AWS API Documentation
    #
    class CreateEndpointInput < Struct.new(
      :endpoint_name,
      :endpoint_config_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointOutput AWS API Documentation
    #
    class CreateEndpointOutput < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExperimentRequest
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName", # required
    #         display_name: "ExperimentEntityName",
    #         description: "ExperimentDescription",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment. The name must be unique in your AWS
    #   account and is not case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the experiment as displayed. The name doesn't need to
    #   be unique. If you don't specify `DisplayName`, the value in
    #   `ExperimentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the experiment. You can use Search
    #   API to search on the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateExperimentRequest AWS API Documentation
    #
    class CreateExperimentRequest < Struct.new(
      :experiment_name,
      :display_name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateExperimentResponse AWS API Documentation
    #
    class CreateExperimentResponse < Struct.new(
      :experiment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFlowDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         flow_definition_name: "FlowDefinitionName", # required
    #         human_loop_request_source: {
    #           aws_managed_human_loop_request_source: "AWS/Rekognition/DetectModerationLabels/Image/V3", # required, accepts AWS/Rekognition/DetectModerationLabels/Image/V3, AWS/Textract/AnalyzeDocument/Forms/V1
    #         },
    #         human_loop_activation_config: {
    #           human_loop_activation_conditions_config: { # required
    #             human_loop_activation_conditions: "HumanLoopActivationConditions", # required
    #           },
    #         },
    #         human_loop_config: { # required
    #           workteam_arn: "WorkteamArn", # required
    #           human_task_ui_arn: "HumanTaskUiArn", # required
    #           task_title: "FlowDefinitionTaskTitle", # required
    #           task_description: "FlowDefinitionTaskDescription", # required
    #           task_count: 1, # required
    #           task_availability_lifetime_in_seconds: 1,
    #           task_time_limit_in_seconds: 1,
    #           task_keywords: ["FlowDefinitionTaskKeyword"],
    #           public_workforce_task_price: {
    #             amount_in_usd: {
    #               dollars: 1,
    #               cents: 1,
    #               tenth_fractions_of_a_cent: 1,
    #             },
    #           },
    #         },
    #         output_config: { # required
    #           s3_output_path: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] flow_definition_name
    #   The name of your flow definition.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_request_source
    #   Container for configuring the source of human task requests. Use to
    #   specify if Amazon Rekognition or Amazon Textract is used as an
    #   integration source.
    #   @return [Types::HumanLoopRequestSource]
    #
    # @!attribute [rw] human_loop_activation_config
    #   An object containing information about the events that trigger a
    #   human workflow.
    #   @return [Types::HumanLoopActivationConfig]
    #
    # @!attribute [rw] human_loop_config
    #   An object containing information about the tasks the human reviewers
    #   will perform.
    #   @return [Types::HumanLoopConfig]
    #
    # @!attribute [rw] output_config
    #   An object containing information about where the human review
    #   results will be uploaded.
    #   @return [Types::FlowDefinitionOutputConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role needed to call other
    #   services on your behalf. For example,
    #   `arn:aws:iam::1234567890:role/service-role/AmazonSageMaker-ExecutionRole-20180111T151298`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs that contain metadata to help you
    #   categorize and organize a flow definition. Each tag consists of a
    #   key and a value, both of which you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateFlowDefinitionRequest AWS API Documentation
    #
    class CreateFlowDefinitionRequest < Struct.new(
      :flow_definition_name,
      :human_loop_request_source,
      :human_loop_activation_config,
      :human_loop_config,
      :output_config,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateFlowDefinitionResponse AWS API Documentation
    #
    class CreateFlowDefinitionResponse < Struct.new(
      :flow_definition_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHumanTaskUiRequest
    #   data as a hash:
    #
    #       {
    #         human_task_ui_name: "HumanTaskUiName", # required
    #         ui_template: { # required
    #           content: "TemplateContent", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] human_task_ui_name
    #   The name of the user interface you are creating.
    #   @return [String]
    #
    # @!attribute [rw] ui_template
    #   The Liquid template for the worker user interface.
    #   @return [Types::UiTemplate]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs that contain metadata to help you
    #   categorize and organize a human review workflow user interface. Each
    #   tag consists of a key and a value, both of which you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHumanTaskUiRequest AWS API Documentation
    #
    class CreateHumanTaskUiRequest < Struct.new(
      :human_task_ui_name,
      :ui_template,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] human_task_ui_arn
    #   The Amazon Resource Name (ARN) of the human review workflow user
    #   interface you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHumanTaskUiResponse AWS API Documentation
    #
    class CreateHumanTaskUiResponse < Struct.new(
      :human_task_ui_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHyperParameterTuningJobRequest
    #   data as a hash:
    #
    #       {
    #         hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #         hyper_parameter_tuning_job_config: { # required
    #           strategy: "Bayesian", # required, accepts Bayesian, Random
    #           hyper_parameter_tuning_job_objective: {
    #             type: "Maximize", # required, accepts Maximize, Minimize
    #             metric_name: "MetricName", # required
    #           },
    #           resource_limits: { # required
    #             max_number_of_training_jobs: 1, # required
    #             max_parallel_training_jobs: 1, # required
    #           },
    #           parameter_ranges: {
    #             integer_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #                 scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #               },
    #             ],
    #             continuous_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #                 scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #               },
    #             ],
    #             categorical_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 values: ["ParameterValue"], # required
    #               },
    #             ],
    #           },
    #           training_job_early_stopping_type: "Off", # accepts Off, Auto
    #           tuning_job_completion_criteria: {
    #             target_objective_metric_value: 1.0, # required
    #           },
    #         },
    #         training_job_definition: {
    #           definition_name: "HyperParameterTrainingJobDefinitionName",
    #           tuning_objective: {
    #             type: "Maximize", # required, accepts Maximize, Minimize
    #             metric_name: "MetricName", # required
    #           },
    #           hyper_parameter_ranges: {
    #             integer_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #                 scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #               },
    #             ],
    #             continuous_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #                 scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #               },
    #             ],
    #             categorical_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 values: ["ParameterValue"], # required
    #               },
    #             ],
    #           },
    #           static_hyper_parameters: {
    #             "ParameterKey" => "ParameterValue",
    #           },
    #           algorithm_specification: { # required
    #             training_image: "AlgorithmImage",
    #             training_input_mode: "Pipe", # required, accepts Pipe, File
    #             algorithm_name: "ArnOrName",
    #             metric_definitions: [
    #               {
    #                 name: "MetricName", # required
    #                 regex: "MetricRegex", # required
    #               },
    #             ],
    #           },
    #           role_arn: "RoleArn", # required
    #           input_data_config: [
    #             {
    #               channel_name: "ChannelName", # required
    #               data_source: { # required
    #                 s3_data_source: {
    #                   s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                   s3_uri: "S3Uri", # required
    #                   s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                   attribute_names: ["AttributeName"],
    #                 },
    #                 file_system_data_source: {
    #                   file_system_id: "FileSystemId", # required
    #                   file_system_access_mode: "rw", # required, accepts rw, ro
    #                   file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                   directory_path: "DirectoryPath", # required
    #                 },
    #               },
    #               content_type: "ContentType",
    #               compression_type: "None", # accepts None, Gzip
    #               record_wrapper_type: "None", # accepts None, RecordIO
    #               input_mode: "Pipe", # accepts Pipe, File
    #               shuffle_config: {
    #                 seed: 1, # required
    #               },
    #             },
    #           ],
    #           vpc_config: {
    #             security_group_ids: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #           },
    #           output_data_config: { # required
    #             kms_key_id: "KmsKeyId",
    #             s3_output_path: "S3Uri", # required
    #           },
    #           resource_config: { # required
    #             instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #             instance_count: 1, # required
    #             volume_size_in_gb: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #           stopping_condition: { # required
    #             max_runtime_in_seconds: 1,
    #             max_wait_time_in_seconds: 1,
    #           },
    #           enable_network_isolation: false,
    #           enable_inter_container_traffic_encryption: false,
    #           enable_managed_spot_training: false,
    #           checkpoint_config: {
    #             s3_uri: "S3Uri", # required
    #             local_path: "DirectoryPath",
    #           },
    #         },
    #         training_job_definitions: [
    #           {
    #             definition_name: "HyperParameterTrainingJobDefinitionName",
    #             tuning_objective: {
    #               type: "Maximize", # required, accepts Maximize, Minimize
    #               metric_name: "MetricName", # required
    #             },
    #             hyper_parameter_ranges: {
    #               integer_parameter_ranges: [
    #                 {
    #                   name: "ParameterKey", # required
    #                   min_value: "ParameterValue", # required
    #                   max_value: "ParameterValue", # required
    #                   scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #                 },
    #               ],
    #               continuous_parameter_ranges: [
    #                 {
    #                   name: "ParameterKey", # required
    #                   min_value: "ParameterValue", # required
    #                   max_value: "ParameterValue", # required
    #                   scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #                 },
    #               ],
    #               categorical_parameter_ranges: [
    #                 {
    #                   name: "ParameterKey", # required
    #                   values: ["ParameterValue"], # required
    #                 },
    #               ],
    #             },
    #             static_hyper_parameters: {
    #               "ParameterKey" => "ParameterValue",
    #             },
    #             algorithm_specification: { # required
    #               training_image: "AlgorithmImage",
    #               training_input_mode: "Pipe", # required, accepts Pipe, File
    #               algorithm_name: "ArnOrName",
    #               metric_definitions: [
    #                 {
    #                   name: "MetricName", # required
    #                   regex: "MetricRegex", # required
    #                 },
    #               ],
    #             },
    #             role_arn: "RoleArn", # required
    #             input_data_config: [
    #               {
    #                 channel_name: "ChannelName", # required
    #                 data_source: { # required
    #                   s3_data_source: {
    #                     s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                     s3_uri: "S3Uri", # required
    #                     s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                     attribute_names: ["AttributeName"],
    #                   },
    #                   file_system_data_source: {
    #                     file_system_id: "FileSystemId", # required
    #                     file_system_access_mode: "rw", # required, accepts rw, ro
    #                     file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                     directory_path: "DirectoryPath", # required
    #                   },
    #                 },
    #                 content_type: "ContentType",
    #                 compression_type: "None", # accepts None, Gzip
    #                 record_wrapper_type: "None", # accepts None, RecordIO
    #                 input_mode: "Pipe", # accepts Pipe, File
    #                 shuffle_config: {
    #                   seed: 1, # required
    #                 },
    #               },
    #             ],
    #             vpc_config: {
    #               security_group_ids: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #             },
    #             output_data_config: { # required
    #               kms_key_id: "KmsKeyId",
    #               s3_output_path: "S3Uri", # required
    #             },
    #             resource_config: { # required
    #               instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #               instance_count: 1, # required
    #               volume_size_in_gb: 1, # required
    #               volume_kms_key_id: "KmsKeyId",
    #             },
    #             stopping_condition: { # required
    #               max_runtime_in_seconds: 1,
    #               max_wait_time_in_seconds: 1,
    #             },
    #             enable_network_isolation: false,
    #             enable_inter_container_traffic_encryption: false,
    #             enable_managed_spot_training: false,
    #             checkpoint_config: {
    #               s3_uri: "S3Uri", # required
    #               local_path: "DirectoryPath",
    #             },
    #           },
    #         ],
    #         warm_start_config: {
    #           parent_hyper_parameter_tuning_jobs: [ # required
    #             {
    #               hyper_parameter_tuning_job_name: "HyperParameterTuningJobName",
    #             },
    #           ],
    #           warm_start_type: "IdenticalDataAndAlgorithm", # required, accepts IdenticalDataAndAlgorithm, TransferLearning
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the tuning job. This name is the prefix for the names of
    #   all training jobs that this tuning job launches. The name must be
    #   unique within the same AWS account and AWS Region. The name must
    #   have \\\{ \\} to \\\{ \\} characters. Valid characters are a-z, A-Z,
    #   0-9, and : + = @ \_ % - (hyphen). The name is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_config
    #   The HyperParameterTuningJobConfig object that describes the tuning
    #   job, including the search strategy, the objective metric used to
    #   evaluate training jobs, ranges of parameters to search, and resource
    #   limits for the tuning job. For more information, see [How
    #   Hyperparameter Tuning Works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html
    #   @return [Types::HyperParameterTuningJobConfig]
    #
    # @!attribute [rw] training_job_definition
    #   The HyperParameterTrainingJobDefinition object that describes the
    #   training jobs that this tuning job launches, including static
    #   hyperparameters, input data configuration, output data
    #   configuration, resource configuration, and stopping condition.
    #   @return [Types::HyperParameterTrainingJobDefinition]
    #
    # @!attribute [rw] training_job_definitions
    #   A list of the HyperParameterTrainingJobDefinition objects launched
    #   for this tuning job.
    #   @return [Array<Types::HyperParameterTrainingJobDefinition>]
    #
    # @!attribute [rw] warm_start_config
    #   Specifies the configuration for starting the hyperparameter tuning
    #   job using one or more previous tuning jobs as a starting point. The
    #   results of previous tuning jobs are used to inform which
    #   combinations of hyperparameters to search over in the new tuning
    #   job.
    #
    #   All training jobs launched by the new hyperparameter tuning job are
    #   evaluated by using the objective metric. If you specify
    #   `IDENTICAL_DATA_AND_ALGORITHM` as the `WarmStartType` value for the
    #   warm start configuration, the training job that performs the best in
    #   the new tuning job is compared to the best training jobs from the
    #   parent tuning jobs. From these, the training job that performs the
    #   best as measured by the objective metric is returned as the overall
    #   best training job.
    #
    #   <note markdown="1"> All training jobs launched by parent hyperparameter tuning jobs and
    #   the new hyperparameter tuning jobs count against the limit of
    #   training jobs for the tuning job.
    #
    #    </note>
    #   @return [Types::HyperParameterTuningJobWarmStartConfig]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. You can use tags to categorize your AWS
    #   resources in different ways, for example, by purpose, owner, or
    #   environment. For more information, see [AWS Tagging Strategies][1].
    #
    #   Tags that you specify for the tuning job are also added to all
    #   training jobs that the tuning job launches.
    #
    #
    #
    #   [1]: https://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHyperParameterTuningJobRequest AWS API Documentation
    #
    class CreateHyperParameterTuningJobRequest < Struct.new(
      :hyper_parameter_tuning_job_name,
      :hyper_parameter_tuning_job_config,
      :training_job_definition,
      :training_job_definitions,
      :warm_start_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hyper_parameter_tuning_job_arn
    #   The Amazon Resource Name (ARN) of the tuning job. Amazon SageMaker
    #   assigns an ARN to a hyperparameter tuning job when you create it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHyperParameterTuningJobResponse AWS API Documentation
    #
    class CreateHyperParameterTuningJobResponse < Struct.new(
      :hyper_parameter_tuning_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLabelingJobRequest
    #   data as a hash:
    #
    #       {
    #         labeling_job_name: "LabelingJobName", # required
    #         label_attribute_name: "LabelAttributeName", # required
    #         input_config: { # required
    #           data_source: { # required
    #             s3_data_source: {
    #               manifest_s3_uri: "S3Uri", # required
    #             },
    #             sns_data_source: {
    #               sns_topic_arn: "SnsTopicArn", # required
    #             },
    #           },
    #           data_attributes: {
    #             content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #           },
    #         },
    #         output_config: { # required
    #           s3_output_path: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #           sns_topic_arn: "SnsTopicArn",
    #         },
    #         role_arn: "RoleArn", # required
    #         label_category_config_s3_uri: "S3Uri",
    #         stopping_conditions: {
    #           max_human_labeled_object_count: 1,
    #           max_percentage_of_input_dataset_labeled: 1,
    #         },
    #         labeling_job_algorithms_config: {
    #           labeling_job_algorithm_specification_arn: "LabelingJobAlgorithmSpecificationArn", # required
    #           initial_active_learning_model_arn: "ModelArn",
    #           labeling_job_resource_config: {
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #         },
    #         human_task_config: { # required
    #           workteam_arn: "WorkteamArn", # required
    #           ui_config: { # required
    #             ui_template_s3_uri: "S3Uri",
    #             human_task_ui_arn: "HumanTaskUiArn",
    #           },
    #           pre_human_task_lambda_arn: "LambdaFunctionArn", # required
    #           task_keywords: ["TaskKeyword"],
    #           task_title: "TaskTitle", # required
    #           task_description: "TaskDescription", # required
    #           number_of_human_workers_per_data_object: 1, # required
    #           task_time_limit_in_seconds: 1, # required
    #           task_availability_lifetime_in_seconds: 1,
    #           max_concurrent_task_count: 1,
    #           annotation_consolidation_config: { # required
    #             annotation_consolidation_lambda_arn: "LambdaFunctionArn", # required
    #           },
    #           public_workforce_task_price: {
    #             amount_in_usd: {
    #               dollars: 1,
    #               cents: 1,
    #               tenth_fractions_of_a_cent: 1,
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] labeling_job_name
    #   The name of the labeling job. This name is used to identify the job
    #   in a list of labeling jobs.
    #   @return [String]
    #
    # @!attribute [rw] label_attribute_name
    #   The attribute name to use for the label in the output manifest file.
    #   This is the key for the key/value pair formed with the label that a
    #   worker assigns to the object. The name can't end with
    #   "-metadata". If you are running a semantic segmentation labeling
    #   job, the attribute name must end with "-ref". If you are running
    #   any other kind of labeling job, the attribute name must not end with
    #   "-ref".
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input data for the labeling job, such as the Amazon S3 location of
    #   the data objects and the location of the manifest file that
    #   describes the data objects.
    #   @return [Types::LabelingJobInputConfig]
    #
    # @!attribute [rw] output_config
    #   The location of the output data and the AWS Key Management Service
    #   key ID for the key used to encrypt the output data, if any.
    #   @return [Types::LabelingJobOutputConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Number (ARN) that Amazon SageMaker assumes to
    #   perform tasks on your behalf during data labeling. You must grant
    #   this role the necessary permissions so that Amazon SageMaker can
    #   successfully complete data labeling.
    #   @return [String]
    #
    # @!attribute [rw] label_category_config_s3_uri
    #   The S3 URL of the file that defines the categories used to label the
    #   data objects.
    #
    #   For 3D point cloud task types, see [Create a Labeling Category
    #   Configuration File for 3D Point Cloud Labeling Jobs][1].
    #
    #   For all other [built-in task types][2] and [custom tasks][3], your
    #   label category configuration file must be a JSON file in the
    #   following format. Identify the labels you want to use by replacing
    #   `label_1`, `label_2`,`...`,`label_n` with your label categories.
    #
    #   `\{`
    #
    #   ` "document-version": "2018-11-28"`
    #
    #   ` "labels": [`
    #
    #   ` \{`
    #
    #   ` "label": "label_1"`
    #
    #   ` \},`
    #
    #   ` \{`
    #
    #   ` "label": "label_2"`
    #
    #   ` \},`
    #
    #   ` ...`
    #
    #   ` \{`
    #
    #   ` "label": "label_n"`
    #
    #   ` \}`
    #
    #   ` ]`
    #
    #   `\}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-point-cloud-label-category-config.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates.html
    #   @return [String]
    #
    # @!attribute [rw] stopping_conditions
    #   A set of conditions for stopping the labeling job. If any of the
    #   conditions are met, the job is automatically stopped. You can use
    #   these conditions to control the cost of data labeling.
    #   @return [Types::LabelingJobStoppingConditions]
    #
    # @!attribute [rw] labeling_job_algorithms_config
    #   Configures the information required to perform automated data
    #   labeling.
    #   @return [Types::LabelingJobAlgorithmsConfig]
    #
    # @!attribute [rw] human_task_config
    #   Configures the labeling task and how it is presented to workers;
    #   including, but not limited to price, keywords, and batch size (task
    #   count).
    #   @return [Types::HumanTaskConfig]
    #
    # @!attribute [rw] tags
    #   An array of key/value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateLabelingJobRequest AWS API Documentation
    #
    class CreateLabelingJobRequest < Struct.new(
      :labeling_job_name,
      :label_attribute_name,
      :input_config,
      :output_config,
      :role_arn,
      :label_category_config_s3_uri,
      :stopping_conditions,
      :labeling_job_algorithms_config,
      :human_task_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) of the labeling job. You use this ARN
    #   to identify the labeling job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateLabelingJobResponse AWS API Documentation
    #
    class CreateLabelingJobResponse < Struct.new(
      :labeling_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelInput
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #         primary_container: {
    #           container_hostname: "ContainerHostname",
    #           image: "ContainerImage",
    #           image_config: {
    #             repository_access_mode: "Platform", # required, accepts Platform, Vpc
    #           },
    #           mode: "SingleModel", # accepts SingleModel, MultiModel
    #           model_data_url: "Url",
    #           environment: {
    #             "EnvironmentKey" => "EnvironmentValue",
    #           },
    #           model_package_name: "ArnOrName",
    #         },
    #         containers: [
    #           {
    #             container_hostname: "ContainerHostname",
    #             image: "ContainerImage",
    #             image_config: {
    #               repository_access_mode: "Platform", # required, accepts Platform, Vpc
    #             },
    #             mode: "SingleModel", # accepts SingleModel, MultiModel
    #             model_data_url: "Url",
    #             environment: {
    #               "EnvironmentKey" => "EnvironmentValue",
    #             },
    #             model_package_name: "ArnOrName",
    #           },
    #         ],
    #         execution_role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         enable_network_isolation: false,
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the new model.
    #   @return [String]
    #
    # @!attribute [rw] primary_container
    #   The location of the primary docker image containing inference code,
    #   associated artifacts, and custom environment map that the inference
    #   code uses when the model is deployed for predictions.
    #   @return [Types::ContainerDefinition]
    #
    # @!attribute [rw] containers
    #   Specifies the containers in the inference pipeline.
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
    #   can assume to access model artifacts and docker image for deployment
    #   on ML compute instances or for batch transform jobs. Deploying on ML
    #   compute instances is part of model hosting. For more information,
    #   see [Amazon SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that you want your model
    #   to connect to. Control access to and from your model container by
    #   configuring the VPC. `VpcConfig` is used in hosting services and in
    #   batch transform. For more information, see [Protect Endpoints by
    #   Using an Amazon Virtual Private Cloud][1] and [Protect Data in Batch
    #   Transform Jobs by Using an Amazon Virtual Private Cloud][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] enable_network_isolation
    #   Isolates the model container. No inbound or outbound network calls
    #   can be made to or from the model container.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModelInput AWS API Documentation
    #
    class CreateModelInput < Struct.new(
      :model_name,
      :primary_container,
      :containers,
      :execution_role_arn,
      :tags,
      :vpc_config,
      :enable_network_isolation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The ARN of the model created in Amazon SageMaker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModelOutput AWS API Documentation
    #
    class CreateModelOutput < Struct.new(
      :model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelPackageInput
    #   data as a hash:
    #
    #       {
    #         model_package_name: "EntityName", # required
    #         model_package_description: "EntityDescription",
    #         inference_specification: {
    #           containers: [ # required
    #             {
    #               container_hostname: "ContainerHostname",
    #               image: "ContainerImage", # required
    #               image_digest: "ImageDigest",
    #               model_data_url: "Url",
    #               product_id: "ProductId",
    #             },
    #           ],
    #           supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #           supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
    #           supported_content_types: ["ContentType"], # required
    #           supported_response_mime_types: ["ResponseMIMEType"], # required
    #         },
    #         validation_specification: {
    #           validation_role: "RoleArn", # required
    #           validation_profiles: [ # required
    #             {
    #               profile_name: "EntityName", # required
    #               transform_job_definition: { # required
    #                 max_concurrent_transforms: 1,
    #                 max_payload_in_mb: 1,
    #                 batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #                 environment: {
    #                   "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #                 },
    #                 transform_input: { # required
    #                   data_source: { # required
    #                     s3_data_source: { # required
    #                       s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                       s3_uri: "S3Uri", # required
    #                     },
    #                   },
    #                   content_type: "ContentType",
    #                   compression_type: "None", # accepts None, Gzip
    #                   split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #                 },
    #                 transform_output: { # required
    #                   s3_output_path: "S3Uri", # required
    #                   accept: "Accept",
    #                   assemble_with: "None", # accepts None, Line
    #                   kms_key_id: "KmsKeyId",
    #                 },
    #                 transform_resources: { # required
    #                   instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #                   instance_count: 1, # required
    #                   volume_kms_key_id: "KmsKeyId",
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         source_algorithm_specification: {
    #           source_algorithms: [ # required
    #             {
    #               model_data_url: "Url",
    #               algorithm_name: "ArnOrName", # required
    #             },
    #           ],
    #         },
    #         certify_for_marketplace: false,
    #       }
    #
    # @!attribute [rw] model_package_name
    #   The name of the model package. The name must have 1 to 63
    #   characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] model_package_description
    #   A description of the model package.
    #   @return [String]
    #
    # @!attribute [rw] inference_specification
    #   Specifies details about inference jobs that can be run with models
    #   based on this model package, including the following:
    #
    #   * The Amazon ECR paths of containers that contain the inference code
    #     and model artifacts.
    #
    #   * The instance types that the model package supports for transform
    #     jobs and real-time endpoints used for inference.
    #
    #   * The input and output content formats that the model package
    #     supports for inference.
    #   @return [Types::InferenceSpecification]
    #
    # @!attribute [rw] validation_specification
    #   Specifies configurations for one or more transform jobs that Amazon
    #   SageMaker runs to test the model package.
    #   @return [Types::ModelPackageValidationSpecification]
    #
    # @!attribute [rw] source_algorithm_specification
    #   Details about the algorithm that was used to create the model
    #   package.
    #   @return [Types::SourceAlgorithmSpecification]
    #
    # @!attribute [rw] certify_for_marketplace
    #   Whether to certify the model package for listing on AWS Marketplace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModelPackageInput AWS API Documentation
    #
    class CreateModelPackageInput < Struct.new(
      :model_package_name,
      :model_package_description,
      :inference_specification,
      :validation_specification,
      :source_algorithm_specification,
      :certify_for_marketplace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_package_arn
    #   The Amazon Resource Name (ARN) of the new model package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModelPackageOutput AWS API Documentation
    #
    class CreateModelPackageOutput < Struct.new(
      :model_package_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMonitoringScheduleRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName", # required
    #         monitoring_schedule_config: { # required
    #           schedule_config: {
    #             schedule_expression: "ScheduleExpression", # required
    #           },
    #           monitoring_job_definition: { # required
    #             baseline_config: {
    #               constraints_resource: {
    #                 s3_uri: "S3Uri",
    #               },
    #               statistics_resource: {
    #                 s3_uri: "S3Uri",
    #               },
    #             },
    #             monitoring_inputs: [ # required
    #               {
    #                 endpoint_input: { # required
    #                   endpoint_name: "EndpointName", # required
    #                   local_path: "ProcessingLocalPath", # required
    #                   s3_input_mode: "Pipe", # accepts Pipe, File
    #                   s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                 },
    #               },
    #             ],
    #             monitoring_output_config: { # required
    #               monitoring_outputs: [ # required
    #                 {
    #                   s3_output: { # required
    #                     s3_uri: "MonitoringS3Uri", # required
    #                     local_path: "ProcessingLocalPath", # required
    #                     s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #                   },
    #                 },
    #               ],
    #               kms_key_id: "KmsKeyId",
    #             },
    #             monitoring_resources: { # required
    #               cluster_config: { # required
    #                 instance_count: 1, # required
    #                 instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #                 volume_size_in_gb: 1, # required
    #                 volume_kms_key_id: "KmsKeyId",
    #               },
    #             },
    #             monitoring_app_specification: { # required
    #               image_uri: "ImageUri", # required
    #               container_entrypoint: ["ContainerEntrypointString"],
    #               container_arguments: ["ContainerArgument"],
    #               record_preprocessor_source_uri: "S3Uri",
    #               post_analytics_processor_source_uri: "S3Uri",
    #             },
    #             stopping_condition: {
    #               max_runtime_in_seconds: 1, # required
    #             },
    #             environment: {
    #               "ProcessingEnvironmentKey" => "ProcessingEnvironmentValue",
    #             },
    #             network_config: {
    #               enable_inter_container_traffic_encryption: false,
    #               enable_network_isolation: false,
    #               vpc_config: {
    #                 security_group_ids: ["SecurityGroupId"], # required
    #                 subnets: ["SubnetId"], # required
    #               },
    #             },
    #             role_arn: "RoleArn", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the monitoring schedule. The name must be unique within
    #   an AWS Region within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_schedule_config
    #   The configuration object that specifies the monitoring schedule and
    #   defines the monitoring job.
    #   @return [Types::MonitoringScheduleConfig]
    #
    # @!attribute [rw] tags
    #   (Optional) An array of key-value pairs. For more information, see
    #   [Using Cost Allocation Tags](
    #   https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL)
    #   in the *AWS Billing and Cost Management User Guide*.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateMonitoringScheduleRequest AWS API Documentation
    #
    class CreateMonitoringScheduleRequest < Struct.new(
      :monitoring_schedule_name,
      :monitoring_schedule_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_schedule_arn
    #   The Amazon Resource Name (ARN) of the monitoring schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateMonitoringScheduleResponse AWS API Documentation
    #
    class CreateMonitoringScheduleResponse < Struct.new(
      :monitoring_schedule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #         instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge
    #         subnet_id: "SubnetId",
    #         security_group_ids: ["SecurityGroupId"],
    #         role_arn: "RoleArn", # required
    #         kms_key_id: "KmsKeyId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         lifecycle_config_name: "NotebookInstanceLifecycleConfigName",
    #         direct_internet_access: "Enabled", # accepts Enabled, Disabled
    #         volume_size_in_gb: 1,
    #         accelerator_types: ["ml.eia1.medium"], # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge
    #         default_code_repository: "CodeRepositoryNameOrUrl",
    #         additional_code_repositories: ["CodeRepositoryNameOrUrl"],
    #         root_access: "Enabled", # accepts Enabled, Disabled
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the new notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of ML compute instance to launch for the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in a VPC to which you would like to have a
    #   connectivity from your ML compute instance.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security group IDs, in the form sg-xxxxxxxx. The security
    #   groups must be for the same VPC as specified in the subnet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   When you send any requests to AWS resources from the notebook
    #   instance, Amazon SageMaker assumes this role to perform tasks on
    #   your behalf. You must grant this role necessary permissions so
    #   Amazon SageMaker can perform these tasks. The policy must allow the
    #   Amazon SageMaker service principal (sagemaker.amazonaws.com)
    #   permissions to assume this role. For more information, see [Amazon
    #   SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to your notebook instance. The KMS key you provide must be
    #   enabled. For information, see [Enabling and Disabling Keys][1] in
    #   the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the notebook instance. You can add
    #   tags later by using the `CreateTags` API.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see [Step
    #   2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #   @return [String]
    #
    # @!attribute [rw] direct_internet_access
    #   Sets whether Amazon SageMaker provides internet access to the
    #   notebook instance. If you set this to `Disabled` this notebook
    #   instance will be able to access resources only in your VPC, and will
    #   not be able to connect to Amazon SageMaker training and endpoint
    #   services unless your configure a NAT Gateway in your VPC.
    #
    #   For more information, see [Notebook Instances Are Internet-Enabled
    #   by Default][1]. You can set the value of this parameter to
    #   `Disabled` only if you set a value for the `SubnetId` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size, in GB, of the ML storage volume to attach to the notebook
    #   instance. The default value is 5 GB.
    #   @return [Integer]
    #
    # @!attribute [rw] accelerator_types
    #   A list of Elastic Inference (EI) instance types to associate with
    #   this notebook instance. Currently, only one instance type can be
    #   associated with a notebook instance. For more information, see
    #   [Using Elastic Inference in Amazon SageMaker][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_code_repository
    #   A Git repository to associate with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [AWS CodeCommit][1] or in any other Git repository.
    #   When you open a notebook instance, it opens in the directory that
    #   contains this repository. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [String]
    #
    # @!attribute [rw] additional_code_repositories
    #   An array of up to three Git repositories to associate with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories
    #   in [AWS CodeCommit][1] or in any other Git repository. These
    #   repositories are cloned at the same level as the default repository
    #   of your notebook instance. For more information, see [Associating
    #   Git Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] root_access
    #   Whether root access is enabled or disabled for users of the notebook
    #   instance. The default value is `Enabled`.
    #
    #   <note markdown="1"> Lifecycle configurations need root access to be able to set up a
    #   notebook instance. Because of this, lifecycle configurations
    #   associated with a notebook instance always run with root access even
    #   if you disable root access for users.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceInput AWS API Documentation
    #
    class CreateNotebookInstanceInput < Struct.new(
      :notebook_instance_name,
      :instance_type,
      :subnet_id,
      :security_group_ids,
      :role_arn,
      :kms_key_id,
      :tags,
      :lifecycle_config_name,
      :direct_internet_access,
      :volume_size_in_gb,
      :accelerator_types,
      :default_code_repository,
      :additional_code_repositories,
      :root_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNotebookInstanceLifecycleConfigInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #         on_create: [
    #           {
    #             content: "NotebookInstanceLifecycleConfigContent",
    #           },
    #         ],
    #         on_start: [
    #           {
    #             content: "NotebookInstanceLifecycleConfigContent",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] on_create
    #   A shell script that runs only once, when you create a notebook
    #   instance. The shell script must be a base64-encoded string.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @!attribute [rw] on_start
    #   A shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance. The shell script
    #   must be a base64-encoded string.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceLifecycleConfigInput AWS API Documentation
    #
    class CreateNotebookInstanceLifecycleConfigInput < Struct.new(
      :notebook_instance_lifecycle_config_name,
      :on_create,
      :on_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_instance_lifecycle_config_arn
    #   The Amazon Resource Name (ARN) of the lifecycle configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceLifecycleConfigOutput AWS API Documentation
    #
    class CreateNotebookInstanceLifecycleConfigOutput < Struct.new(
      :notebook_instance_lifecycle_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_instance_arn
    #   The Amazon Resource Name (ARN) of the notebook instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceOutput AWS API Documentation
    #
    class CreateNotebookInstanceOutput < Struct.new(
      :notebook_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePresignedDomainUrlRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #         session_expiration_duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The name of the UserProfile to sign-in as.
    #   @return [String]
    #
    # @!attribute [rw] session_expiration_duration_in_seconds
    #   The session expiration duration in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedDomainUrlRequest AWS API Documentation
    #
    class CreatePresignedDomainUrlRequest < Struct.new(
      :domain_id,
      :user_profile_name,
      :session_expiration_duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_url
    #   The presigned URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedDomainUrlResponse AWS API Documentation
    #
    class CreatePresignedDomainUrlResponse < Struct.new(
      :authorized_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePresignedNotebookInstanceUrlInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #         session_expiration_duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] session_expiration_duration_in_seconds
    #   The duration of the session, in seconds. The default is 12 hours.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedNotebookInstanceUrlInput AWS API Documentation
    #
    class CreatePresignedNotebookInstanceUrlInput < Struct.new(
      :notebook_instance_name,
      :session_expiration_duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_url
    #   A JSON object that contains the URL string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedNotebookInstanceUrlOutput AWS API Documentation
    #
    class CreatePresignedNotebookInstanceUrlOutput < Struct.new(
      :authorized_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProcessingJobRequest
    #   data as a hash:
    #
    #       {
    #         processing_inputs: [
    #           {
    #             input_name: "String", # required
    #             s3_input: { # required
    #               s3_uri: "S3Uri", # required
    #               local_path: "ProcessingLocalPath", # required
    #               s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #               s3_input_mode: "Pipe", # required, accepts Pipe, File
    #               s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #               s3_compression_type: "None", # accepts None, Gzip
    #             },
    #           },
    #         ],
    #         processing_output_config: {
    #           outputs: [ # required
    #             {
    #               output_name: "String", # required
    #               s3_output: { # required
    #                 s3_uri: "S3Uri", # required
    #                 local_path: "ProcessingLocalPath", # required
    #                 s3_upload_mode: "Continuous", # required, accepts Continuous, EndOfJob
    #               },
    #             },
    #           ],
    #           kms_key_id: "KmsKeyId",
    #         },
    #         processing_job_name: "ProcessingJobName", # required
    #         processing_resources: { # required
    #           cluster_config: { # required
    #             instance_count: 1, # required
    #             instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #             volume_size_in_gb: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #         },
    #         stopping_condition: {
    #           max_runtime_in_seconds: 1, # required
    #         },
    #         app_specification: { # required
    #           image_uri: "ImageUri", # required
    #           container_entrypoint: ["ContainerEntrypointString"],
    #           container_arguments: ["ContainerArgument"],
    #         },
    #         environment: {
    #           "ProcessingEnvironmentKey" => "ProcessingEnvironmentValue",
    #         },
    #         network_config: {
    #           enable_inter_container_traffic_encryption: false,
    #           enable_network_isolation: false,
    #           vpc_config: {
    #             security_group_ids: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #           },
    #         },
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         experiment_config: {
    #           experiment_name: "ExperimentEntityName",
    #           trial_name: "ExperimentEntityName",
    #           trial_component_display_name: "ExperimentEntityName",
    #         },
    #       }
    #
    # @!attribute [rw] processing_inputs
    #   For each input, data is downloaded from S3 into the processing
    #   container before the processing job begins running if
    #   "S3InputMode" is set to `File`.
    #   @return [Array<Types::ProcessingInput>]
    #
    # @!attribute [rw] processing_output_config
    #   Output configuration for the processing job.
    #   @return [Types::ProcessingOutputConfig]
    #
    # @!attribute [rw] processing_job_name
    #   The name of the processing job. The name must be unique within an
    #   AWS Region in the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] processing_resources
    #   Identifies the resources, ML compute instances, and ML storage
    #   volumes to deploy for a processing job. In distributed training, you
    #   specify more than one instance.
    #   @return [Types::ProcessingResources]
    #
    # @!attribute [rw] stopping_condition
    #   The time limit for how long the processing job is allowed to run.
    #   @return [Types::ProcessingStoppingCondition]
    #
    # @!attribute [rw] app_specification
    #   Configures the processing job to run a specified Docker container
    #   image.
    #   @return [Types::AppSpecification]
    #
    # @!attribute [rw] environment
    #   Sets the environment variables in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] network_config
    #   Networking options for a processing job.
    #   @return [Types::NetworkConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   can assume to perform tasks on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   (Optional) An array of key-value pairs. For more information, see
    #   [Using Cost Allocation Tags][1] in the *AWS Billing and Cost
    #   Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateProcessingJobRequest AWS API Documentation
    #
    class CreateProcessingJobRequest < Struct.new(
      :processing_inputs,
      :processing_output_config,
      :processing_job_name,
      :processing_resources,
      :stopping_condition,
      :app_specification,
      :environment,
      :network_config,
      :role_arn,
      :tags,
      :experiment_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processing_job_arn
    #   The Amazon Resource Name (ARN) of the processing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateProcessingJobResponse AWS API Documentation
    #
    class CreateProcessingJobResponse < Struct.new(
      :processing_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTrainingJobRequest
    #   data as a hash:
    #
    #       {
    #         training_job_name: "TrainingJobName", # required
    #         hyper_parameters: {
    #           "ParameterKey" => "ParameterValue",
    #         },
    #         algorithm_specification: { # required
    #           training_image: "AlgorithmImage",
    #           algorithm_name: "ArnOrName",
    #           training_input_mode: "Pipe", # required, accepts Pipe, File
    #           metric_definitions: [
    #             {
    #               name: "MetricName", # required
    #               regex: "MetricRegex", # required
    #             },
    #           ],
    #           enable_sage_maker_metrics_time_series: false,
    #         },
    #         role_arn: "RoleArn", # required
    #         input_data_config: [
    #           {
    #             channel_name: "ChannelName", # required
    #             data_source: { # required
    #               s3_data_source: {
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                 s3_uri: "S3Uri", # required
    #                 s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                 attribute_names: ["AttributeName"],
    #               },
    #               file_system_data_source: {
    #                 file_system_id: "FileSystemId", # required
    #                 file_system_access_mode: "rw", # required, accepts rw, ro
    #                 file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                 directory_path: "DirectoryPath", # required
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             record_wrapper_type: "None", # accepts None, RecordIO
    #             input_mode: "Pipe", # accepts Pipe, File
    #             shuffle_config: {
    #               seed: 1, # required
    #             },
    #           },
    #         ],
    #         output_data_config: { # required
    #           kms_key_id: "KmsKeyId",
    #           s3_output_path: "S3Uri", # required
    #         },
    #         resource_config: { # required
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #           instance_count: 1, # required
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
    #           max_wait_time_in_seconds: 1,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         enable_network_isolation: false,
    #         enable_inter_container_traffic_encryption: false,
    #         enable_managed_spot_training: false,
    #         checkpoint_config: {
    #           s3_uri: "S3Uri", # required
    #           local_path: "DirectoryPath",
    #         },
    #         debug_hook_config: {
    #           local_path: "DirectoryPath",
    #           s3_output_path: "S3Uri", # required
    #           hook_parameters: {
    #             "ConfigKey" => "ConfigValue",
    #           },
    #           collection_configurations: [
    #             {
    #               collection_name: "CollectionName",
    #               collection_parameters: {
    #                 "ConfigKey" => "ConfigValue",
    #               },
    #             },
    #           ],
    #         },
    #         debug_rule_configurations: [
    #           {
    #             rule_configuration_name: "RuleConfigurationName", # required
    #             local_path: "DirectoryPath",
    #             s3_output_path: "S3Uri",
    #             rule_evaluator_image: "AlgorithmImage", # required
    #             instance_type: "ml.t3.medium", # accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #             volume_size_in_gb: 1,
    #             rule_parameters: {
    #               "ConfigKey" => "ConfigValue",
    #             },
    #           },
    #         ],
    #         tensor_board_output_config: {
    #           local_path: "DirectoryPath",
    #           s3_output_path: "S3Uri", # required
    #         },
    #         experiment_config: {
    #           experiment_name: "ExperimentEntityName",
    #           trial_name: "ExperimentEntityName",
    #           trial_component_display_name: "ExperimentEntityName",
    #         },
    #       }
    #
    # @!attribute [rw] training_job_name
    #   The name of the training job. The name must be unique within an AWS
    #   Region in an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters that influence the quality of the
    #   model. You set hyperparameters before you start the learning
    #   process. For a list of hyperparameters for each training algorithm
    #   provided by Amazon SageMaker, see [Algorithms][1].
    #
    #   You can specify a maximum of 100 hyperparameters. Each
    #   hyperparameter is a key-value pair. Each key and value is limited to
    #   256 characters, as specified by the `Length Constraint`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] algorithm_specification
    #   The registry path of the Docker image that contains the training
    #   algorithm and algorithm-specific metadata, including the input mode.
    #   For more information about algorithms provided by Amazon SageMaker,
    #   see [Algorithms][1]. For information about providing your own
    #   algorithms, see [Using Your Own Algorithms with Amazon
    #   SageMaker][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   can assume to perform tasks on your behalf.
    #
    #   During model training, Amazon SageMaker needs your permission to
    #   read input data from an S3 bucket, download a Docker image that
    #   contains training code, write model artifacts to an S3 bucket, write
    #   logs to Amazon CloudWatch Logs, and publish metrics to Amazon
    #   CloudWatch. You grant permissions for all of these tasks to an IAM
    #   role. For more information, see [Amazon SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   An array of `Channel` objects. Each channel is a named input source.
    #   `InputDataConfig` describes the input data and its location.
    #
    #   Algorithms can accept input data from one or more channels. For
    #   example, an algorithm might have two channels of input data,
    #   `training_data` and `validation_data`. The configuration for each
    #   channel provides the S3, EFS, or FSx location where the input data
    #   is stored. It also provides information about the stored data: the
    #   MIME type, compression method, and whether the data is wrapped in
    #   RecordIO format.
    #
    #   Depending on the input mode that the algorithm supports, Amazon
    #   SageMaker either copies input data files from an S3 bucket to a
    #   local directory in the Docker container, or makes it available as
    #   input streams. For example, if you specify an EFS location, input
    #   data files will be made available as input streams. They do not need
    #   to be downloaded.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] output_data_config
    #   Specifies the path to the S3 location where you want to store model
    #   artifacts. Amazon SageMaker creates subfolders for the artifacts.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] resource_config
    #   The resources, including the ML compute instances and ML storage
    #   volumes, to use for model training.
    #
    #   ML storage volumes store model artifacts and incremental states.
    #   Training algorithms might also use ML storage volumes for scratch
    #   space. If you want Amazon SageMaker to use the ML storage volume to
    #   store the training data, choose `File` as the `TrainingInputMode` in
    #   the algorithm specification. For distributed training algorithms,
    #   specify an instance count greater than 1.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that you want your
    #   training job to connect to. Control access to and from your training
    #   container by configuring the VPC. For more information, see [Protect
    #   Training Jobs by Using an Amazon Virtual Private Cloud][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model training job can run. When the
    #   job reaches the time limit, Amazon SageMaker ends the training job.
    #   Use this API to cap model training costs.
    #
    #   To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM`
    #   signal, which delays job termination for 120 seconds. Algorithms can
    #   use this 120-second window to save the model artifacts, so the
    #   results of training are not lost.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] enable_network_isolation
    #   Isolates the training container. No inbound or outbound network
    #   calls can be made, except for calls between peers within a training
    #   cluster for distributed training. If you enable network isolation
    #   for training jobs that are configured to use a VPC, Amazon SageMaker
    #   downloads and uploads customer data and model artifacts through the
    #   specified VPC, but the training container does not have network
    #   access.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_inter_container_traffic_encryption
    #   To encrypt all communications between ML compute instances in
    #   distributed training, choose `True`. Encryption provides greater
    #   security for distributed training, but training might take longer.
    #   How long it takes depends on the amount of communication between
    #   compute instances, especially if you use a deep learning algorithm
    #   in distributed training. For more information, see [Protect
    #   Communications Between ML Compute Instances in a Distributed
    #   Training Job][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-encrypt.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_managed_spot_training
    #   To train models using managed spot training, choose `True`. Managed
    #   spot training provides a fully managed and scalable infrastructure
    #   for training machine learning models. this option is useful when
    #   training jobs can be interrupted and when there is flexibility when
    #   the training job is run.
    #
    #   The complete and intermediate results of jobs are stored in an
    #   Amazon S3 bucket, and can be used as a starting point to train
    #   models incrementally. Amazon SageMaker provides metrics and logs in
    #   CloudWatch. They can be used to see when managed spot training jobs
    #   are running, interrupted, resumed, or completed.
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_config
    #   Contains information about the output location for managed spot
    #   training checkpoint data.
    #   @return [Types::CheckpointConfig]
    #
    # @!attribute [rw] debug_hook_config
    #   Configuration information for the debug hook parameters, collection
    #   configuration, and storage paths.
    #   @return [Types::DebugHookConfig]
    #
    # @!attribute [rw] debug_rule_configurations
    #   Configuration information for debugging rules.
    #   @return [Array<Types::DebugRuleConfiguration>]
    #
    # @!attribute [rw] tensor_board_output_config
    #   Configuration of storage locations for TensorBoard output.
    #   @return [Types::TensorBoardOutputConfig]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrainingJobRequest AWS API Documentation
    #
    class CreateTrainingJobRequest < Struct.new(
      :training_job_name,
      :hyper_parameters,
      :algorithm_specification,
      :role_arn,
      :input_data_config,
      :output_data_config,
      :resource_config,
      :vpc_config,
      :stopping_condition,
      :tags,
      :enable_network_isolation,
      :enable_inter_container_traffic_encryption,
      :enable_managed_spot_training,
      :checkpoint_config,
      :debug_hook_config,
      :debug_rule_configurations,
      :tensor_board_output_config,
      :experiment_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_job_arn
    #   The Amazon Resource Name (ARN) of the training job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrainingJobResponse AWS API Documentation
    #
    class CreateTrainingJobResponse < Struct.new(
      :training_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTransformJobRequest
    #   data as a hash:
    #
    #       {
    #         transform_job_name: "TransformJobName", # required
    #         model_name: "ModelName", # required
    #         max_concurrent_transforms: 1,
    #         model_client_config: {
    #           invocations_timeout_in_seconds: 1,
    #           invocations_max_retries: 1,
    #         },
    #         max_payload_in_mb: 1,
    #         batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #         environment: {
    #           "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #         },
    #         transform_input: { # required
    #           data_source: { # required
    #             s3_data_source: { # required
    #               s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #               s3_uri: "S3Uri", # required
    #             },
    #           },
    #           content_type: "ContentType",
    #           compression_type: "None", # accepts None, Gzip
    #           split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #         },
    #         transform_output: { # required
    #           s3_output_path: "S3Uri", # required
    #           accept: "Accept",
    #           assemble_with: "None", # accepts None, Line
    #           kms_key_id: "KmsKeyId",
    #         },
    #         transform_resources: { # required
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #           instance_count: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #         data_processing: {
    #           input_filter: "JsonPath",
    #           output_filter: "JsonPath",
    #           join_source: "Input", # accepts Input, None
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         experiment_config: {
    #           experiment_name: "ExperimentEntityName",
    #           trial_name: "ExperimentEntityName",
    #           trial_component_display_name: "ExperimentEntityName",
    #         },
    #       }
    #
    # @!attribute [rw] transform_job_name
    #   The name of the transform job. The name must be unique within an AWS
    #   Region in an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model that you want to use for the transform job.
    #   `ModelName` must be the name of an existing Amazon SageMaker model
    #   within an AWS Region in an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrent_transforms
    #   The maximum number of parallel requests that can be sent to each
    #   instance in a transform job. If `MaxConcurrentTransforms` is set to
    #   `0` or left unset, Amazon SageMaker checks the optional
    #   execution-parameters to determine the settings for your chosen
    #   algorithm. If the execution-parameters endpoint is not enabled, the
    #   default value is `1`. For more information on execution-parameters,
    #   see [How Containers Serve Requests][1]. For built-in algorithms, you
    #   don't need to set a value for `MaxConcurrentTransforms`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-batch-code.html#your-algorithms-batch-code-how-containe-serves-requests
    #   @return [Integer]
    #
    # @!attribute [rw] model_client_config
    #   Configures the timeout and maximum number of retries for processing
    #   a transform job invocation.
    #   @return [Types::ModelClientConfig]
    #
    # @!attribute [rw] max_payload_in_mb
    #   The maximum allowed size of the payload, in MB. A *payload* is the
    #   data portion of a record (without metadata). The value in
    #   `MaxPayloadInMB` must be greater than, or equal to, the size of a
    #   single record. To estimate the size of a record in MB, divide the
    #   size of your dataset by the number of records. To ensure that the
    #   records fit within the maximum payload size, we recommend using a
    #   slightly larger value. The default value is `6` MB.
    #
    #   For cases where the payload might be arbitrarily large and is
    #   transmitted using HTTP chunked encoding, set the value to `0`. This
    #   feature works only in supported algorithms. Currently, Amazon
    #   SageMaker built-in algorithms do not support HTTP chunked encoding.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_strategy
    #   Specifies the number of records to include in a mini-batch for an
    #   HTTP inference request. A *record* ** is a single unit of input data
    #   that inference can be made on. For example, a single line in a CSV
    #   file is a record.
    #
    #   To enable the batch strategy, you must set the `SplitType` property
    #   to `Line`, `RecordIO`, or `TFRecord`.
    #
    #   To use only one record when making an HTTP invocation request to a
    #   container, set `BatchStrategy` to `SingleRecord` and `SplitType` to
    #   `Line`.
    #
    #   To fit as many records in a mini-batch as can fit within the
    #   `MaxPayloadInMB` limit, set `BatchStrategy` to `MultiRecord` and
    #   `SplitType` to `Line`.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. We support
    #   up to 16 key and values entries in the map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transform_input
    #   Describes the input source and the way the transform job consumes
    #   it.
    #   @return [Types::TransformInput]
    #
    # @!attribute [rw] transform_output
    #   Describes the results of the transform job.
    #   @return [Types::TransformOutput]
    #
    # @!attribute [rw] transform_resources
    #   Describes the resources, including ML instance types and ML instance
    #   count, to use for the transform job.
    #   @return [Types::TransformResources]
    #
    # @!attribute [rw] data_processing
    #   The data structure used to specify the data to be used for inference
    #   in a batch transform job and to associate the data that is relevant
    #   to the prediction results in the output. The input filter provided
    #   allows you to exclude input data that is not needed for inference in
    #   a batch transform job. The output filter provided allows you to
    #   include input data relevant to interpreting the predictions in the
    #   output from the job. For more information, see [Associate Prediction
    #   Results with their Corresponding Input Records][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html
    #   @return [Types::DataProcessing]
    #
    # @!attribute [rw] tags
    #   (Optional) An array of key-value pairs. For more information, see
    #   [Using Cost Allocation Tags][1] in the *AWS Billing and Cost
    #   Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTransformJobRequest AWS API Documentation
    #
    class CreateTransformJobRequest < Struct.new(
      :transform_job_name,
      :model_name,
      :max_concurrent_transforms,
      :model_client_config,
      :max_payload_in_mb,
      :batch_strategy,
      :environment,
      :transform_input,
      :transform_output,
      :transform_resources,
      :data_processing,
      :tags,
      :experiment_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_job_arn
    #   The Amazon Resource Name (ARN) of the transform job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTransformJobResponse AWS API Documentation
    #
    class CreateTransformJobResponse < Struct.new(
      :transform_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTrialComponentRequest
    #   data as a hash:
    #
    #       {
    #         trial_component_name: "ExperimentEntityName", # required
    #         display_name: "ExperimentEntityName",
    #         status: {
    #           primary_status: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #           message: "TrialComponentStatusMessage",
    #         },
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         parameters: {
    #           "TrialComponentKey256" => {
    #             string_value: "StringParameterValue",
    #             number_value: 1.0,
    #           },
    #         },
    #         input_artifacts: {
    #           "TrialComponentKey64" => {
    #             media_type: "MediaType",
    #             value: "TrialComponentArtifactValue", # required
    #           },
    #         },
    #         output_artifacts: {
    #           "TrialComponentKey64" => {
    #             media_type: "MediaType",
    #             value: "TrialComponentArtifactValue", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] trial_component_name
    #   The name of the component. The name must be unique in your AWS
    #   account and is not case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the component as displayed. The name doesn't need to be
    #   unique. If `DisplayName` isn't specified, `TrialComponentName` is
    #   displayed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the component. States include:
    #
    #   * InProgress
    #
    #   * Completed
    #
    #   * Failed
    #   @return [Types::TrialComponentStatus]
    #
    # @!attribute [rw] start_time
    #   When the component started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the component ended.
    #   @return [Time]
    #
    # @!attribute [rw] parameters
    #   The hyperparameters for the component.
    #   @return [Hash<String,Types::TrialComponentParameterValue>]
    #
    # @!attribute [rw] input_artifacts
    #   The input artifacts for the component. Examples of input artifacts
    #   are datasets, algorithms, hyperparameters, source code, and instance
    #   types.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] output_artifacts
    #   The output artifacts for the component. Examples of output artifacts
    #   are metrics, snapshots, logs, and images.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the component. You can use Search
    #   API to search on the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrialComponentRequest AWS API Documentation
    #
    class CreateTrialComponentRequest < Struct.new(
      :trial_component_name,
      :display_name,
      :status,
      :start_time,
      :end_time,
      :parameters,
      :input_artifacts,
      :output_artifacts,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_arn
    #   The Amazon Resource Name (ARN) of the trial component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrialComponentResponse AWS API Documentation
    #
    class CreateTrialComponentResponse < Struct.new(
      :trial_component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTrialRequest
    #   data as a hash:
    #
    #       {
    #         trial_name: "ExperimentEntityName", # required
    #         display_name: "ExperimentEntityName",
    #         experiment_name: "ExperimentEntityName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] trial_name
    #   The name of the trial. The name must be unique in your AWS account
    #   and is not case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the trial as displayed. The name doesn't need to be
    #   unique. If `DisplayName` isn't specified, `TrialName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment to associate the trial with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the trial. You can use Search API
    #   to search on the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrialRequest AWS API Documentation
    #
    class CreateTrialRequest < Struct.new(
      :trial_name,
      :display_name,
      :experiment_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrialResponse AWS API Documentation
    #
    class CreateTrialResponse < Struct.new(
      :trial_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #         single_sign_on_user_identifier: "SingleSignOnUserIdentifier",
    #         single_sign_on_user_value: "String256",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         user_settings: {
    #           execution_role: "RoleArn",
    #           security_groups: ["SecurityGroupId"],
    #           sharing_settings: {
    #             notebook_output_option: "Allowed", # accepts Allowed, Disabled
    #             s3_output_path: "S3Uri",
    #             s3_kms_key_id: "KmsKeyId",
    #           },
    #           jupyter_server_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           kernel_gateway_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           tensor_board_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_id
    #   The ID of the associated Domain.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   A name for the UserProfile.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on_user_identifier
    #   A specifier for the type of value specified in
    #   SingleSignOnUserValue. Currently, the only supported value is
    #   "UserName". If the Domain's AuthMode is SSO, this field is
    #   required. If the Domain's AuthMode is not SSO, this field cannot be
    #   specified.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on_user_value
    #   The username of the associated AWS Single Sign-On User for this
    #   UserProfile. If the Domain's AuthMode is SSO, this field is
    #   required, and must match a valid username of a user in your
    #   directory. If the Domain's AuthMode is not SSO, this field cannot
    #   be specified.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and an optional value. Tag keys must be
    #   unique per resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_settings
    #   A collection of settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateUserProfileRequest AWS API Documentation
    #
    class CreateUserProfileRequest < Struct.new(
      :domain_id,
      :user_profile_name,
      :single_sign_on_user_identifier,
      :single_sign_on_user_value,
      :tags,
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_profile_arn
    #   The user profile Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateUserProfileResponse AWS API Documentation
    #
    class CreateUserProfileResponse < Struct.new(
      :user_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorkforceRequest
    #   data as a hash:
    #
    #       {
    #         cognito_config: {
    #           user_pool: "CognitoUserPool", # required
    #           client_id: "ClientId", # required
    #         },
    #         oidc_config: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           issuer: "OidcEndpoint", # required
    #           authorization_endpoint: "OidcEndpoint", # required
    #           token_endpoint: "OidcEndpoint", # required
    #           user_info_endpoint: "OidcEndpoint", # required
    #           logout_endpoint: "OidcEndpoint", # required
    #           jwks_uri: "OidcEndpoint", # required
    #         },
    #         source_ip_config: {
    #           cidrs: ["Cidr"], # required
    #         },
    #         workforce_name: "WorkforceName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cognito_config
    #   Use this parameter to configure an Amazon Cognito private workforce.
    #   A single Cognito workforce is created using and corresponds to a
    #   single [ Amazon Cognito user pool][1].
    #
    #   Do not use `OidcConfig` if you specify values for `CognitoConfig`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #   @return [Types::CognitoConfig]
    #
    # @!attribute [rw] oidc_config
    #   Use this parameter to configure a private workforce using your own
    #   OIDC Identity Provider.
    #
    #   Do not use `CognitoConfig` if you specify values for `OidcConfig`.
    #   @return [Types::OidcConfig]
    #
    # @!attribute [rw] source_ip_config
    #   A list of IP address ranges ([CIDRs][1]). Used to create an allow
    #   list of IP addresses for a private workforce. Workers will only be
    #   able to login to their worker portal from an IP address within this
    #   range. By default, a workforce isn't restricted to specific IP
    #   addresses.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Types::SourceIpConfig]
    #
    # @!attribute [rw] workforce_name
    #   The name of the private workforce.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs that contain metadata to help you
    #   categorize and organize our workforce. Each tag consists of a key
    #   and a value, both of which you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateWorkforceRequest AWS API Documentation
    #
    class CreateWorkforceRequest < Struct.new(
      :cognito_config,
      :oidc_config,
      :source_ip_config,
      :workforce_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workforce_arn
    #   The Amazon Resource Name (ARN) of the workforce.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateWorkforceResponse AWS API Documentation
    #
    class CreateWorkforceResponse < Struct.new(
      :workforce_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_name: "WorkteamName", # required
    #         workforce_name: "WorkforceName",
    #         member_definitions: [ # required
    #           {
    #             cognito_member_definition: {
    #               user_pool: "CognitoUserPool", # required
    #               user_group: "CognitoUserGroup", # required
    #               client_id: "ClientId", # required
    #             },
    #             oidc_member_definition: {
    #               groups: ["Group"], # required
    #             },
    #           },
    #         ],
    #         description: "String200", # required
    #         notification_configuration: {
    #           notification_topic_arn: "NotificationTopicArn",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] workteam_name
    #   The name of the work team. Use this name to identify the work team.
    #   @return [String]
    #
    # @!attribute [rw] workforce_name
    #   The name of the workforce.
    #   @return [String]
    #
    # @!attribute [rw] member_definitions
    #   A list of `MemberDefinition` objects that contains objects that
    #   identify the workers that make up the work team.
    #
    #   Workforces can be created using Amazon Cognito or your own OIDC
    #   Identity Provider (IdP). For private workforces created using Amazon
    #   Cognito use `CognitoMemberDefinition`. For workforces created using
    #   your own OIDC identity provider (IdP) use `OidcMemberDefinition`. Do
    #   not provide input for both of these parameters in a single request.
    #
    #   For workforces created using Amazon Cognito, private work teams
    #   correspond to Amazon Cognito *user groups* within the user pool used
    #   to create a workforce. All of the `CognitoMemberDefinition` objects
    #   that make up the member definition must have the same `ClientId` and
    #   `UserPool` values. To add a Amazon Cognito user group to an existing
    #   worker pool, see [Adding groups to a User Pool](). For more
    #   information about user pools, see [Amazon Cognito User Pools][1].
    #
    #   For workforces created using your own OIDC IdP, specify the user
    #   groups that you want to include in your private work team in
    #   `OidcMemberDefinition` by listing those groups in `Groups`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #   @return [Array<Types::MemberDefinition>]
    #
    # @!attribute [rw] description
    #   A description of the work team.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration
    #   Configures notification of workers regarding available or expiring
    #   work items.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs.
    #
    #   For more information, see [Resource Tag][1] and [Using Cost
    #   Allocation Tags][2] in the <i> AWS Billing and Cost Management User
    #   Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html
    #   [2]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateWorkteamRequest AWS API Documentation
    #
    class CreateWorkteamRequest < Struct.new(
      :workteam_name,
      :workforce_name,
      :member_definitions,
      :description,
      :notification_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) of the work team. You can use this
    #   ARN to identify the work team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateWorkteamResponse AWS API Documentation
    #
    class CreateWorkteamResponse < Struct.new(
      :workteam_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DataCaptureConfig
    #   data as a hash:
    #
    #       {
    #         enable_capture: false,
    #         initial_sampling_percentage: 1, # required
    #         destination_s3_uri: "DestinationS3Uri", # required
    #         kms_key_id: "KmsKeyId",
    #         capture_options: [ # required
    #           {
    #             capture_mode: "Input", # required, accepts Input, Output
    #           },
    #         ],
    #         capture_content_type_header: {
    #           csv_content_types: ["CsvContentType"],
    #           json_content_types: ["JsonContentType"],
    #         },
    #       }
    #
    # @!attribute [rw] enable_capture
    #   @return [Boolean]
    #
    # @!attribute [rw] initial_sampling_percentage
    #   @return [Integer]
    #
    # @!attribute [rw] destination_s3_uri
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   @return [String]
    #
    # @!attribute [rw] capture_options
    #   @return [Array<Types::CaptureOption>]
    #
    # @!attribute [rw] capture_content_type_header
    #   @return [Types::CaptureContentTypeHeader]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DataCaptureConfig AWS API Documentation
    #
    class DataCaptureConfig < Struct.new(
      :enable_capture,
      :initial_sampling_percentage,
      :destination_s3_uri,
      :kms_key_id,
      :capture_options,
      :capture_content_type_header)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enable_capture
    #   @return [Boolean]
    #
    # @!attribute [rw] capture_status
    #   @return [String]
    #
    # @!attribute [rw] current_sampling_percentage
    #   @return [Integer]
    #
    # @!attribute [rw] destination_s3_uri
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DataCaptureConfigSummary AWS API Documentation
    #
    class DataCaptureConfigSummary < Struct.new(
      :enable_capture,
      :capture_status,
      :current_sampling_percentage,
      :destination_s3_uri,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data structure used to specify the data to be used for inference
    # in a batch transform job and to associate the data that is relevant to
    # the prediction results in the output. The input filter provided allows
    # you to exclude input data that is not needed for inference in a batch
    # transform job. The output filter provided allows you to include input
    # data relevant to interpreting the predictions in the output from the
    # job. For more information, see [Associate Prediction Results with
    # their Corresponding Input Records][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html
    #
    # @note When making an API call, you may pass DataProcessing
    #   data as a hash:
    #
    #       {
    #         input_filter: "JsonPath",
    #         output_filter: "JsonPath",
    #         join_source: "Input", # accepts Input, None
    #       }
    #
    # @!attribute [rw] input_filter
    #   A [JSONPath][1] expression used to select a portion of the input
    #   data to pass to the algorithm. Use the `InputFilter` parameter to
    #   exclude fields, such as an ID column, from the input. If you want
    #   Amazon SageMaker to pass the entire input dataset to the algorithm,
    #   accept the default value `$`.
    #
    #   Examples: `"$"`, `"$[1:]"`, `"$.features"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators
    #   @return [String]
    #
    # @!attribute [rw] output_filter
    #   A [JSONPath][1] expression used to select a portion of the joined
    #   dataset to save in the output file for a batch transform job. If you
    #   want Amazon SageMaker to store the entire input dataset in the
    #   output file, leave the default value, `$`. If you specify indexes
    #   that aren't within the dimension size of the joined dataset, you
    #   get an error.
    #
    #   Examples: `"$"`, `"$[0,5:]"`, `"$['id','SageMakerOutput']"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators
    #   @return [String]
    #
    # @!attribute [rw] join_source
    #   Specifies the source of the data to join with the transformed data.
    #   The valid values are `None` and `Input`. The default value is
    #   `None`, which specifies not to join the input with the transformed
    #   data. If you want the batch transform job to join the original input
    #   data with the transformed data, set `JoinSource` to `Input`.
    #
    #   For JSON or JSONLines objects, such as a JSON array, Amazon
    #   SageMaker adds the transformed data to the input JSON object in an
    #   attribute called `SageMakerOutput`. The joined result for JSON must
    #   be a key-value pair object. If the input is not a key-value pair
    #   object, Amazon SageMaker creates a new JSON file. In the new JSON
    #   file, and the input data is stored under the `SageMakerInput` key
    #   and the results are stored in `SageMakerOutput`.
    #
    #   For CSV files, Amazon SageMaker combines the transformed data with
    #   the input data at the end of the input data and stores it in the
    #   output file. The joined data has the joined input data followed by
    #   the transformed data and the output is a CSV file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DataProcessing AWS API Documentation
    #
    class DataProcessing < Struct.new(
      :input_filter,
      :output_filter,
      :join_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the location of the channel data.
    #
    # @note When making an API call, you may pass DataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_source: {
    #           s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #           s3_uri: "S3Uri", # required
    #           s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #           attribute_names: ["AttributeName"],
    #         },
    #         file_system_data_source: {
    #           file_system_id: "FileSystemId", # required
    #           file_system_access_mode: "rw", # required, accepts rw, ro
    #           file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #           directory_path: "DirectoryPath", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3_data_source
    #   The S3 location of the data source that is associated with a
    #   channel.
    #   @return [Types::S3DataSource]
    #
    # @!attribute [rw] file_system_data_source
    #   The file system that is associated with a channel.
    #   @return [Types::FileSystemDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :s3_data_source,
      :file_system_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the debug hook parameters, collection
    # configuration, and storage paths.
    #
    # @note When making an API call, you may pass DebugHookConfig
    #   data as a hash:
    #
    #       {
    #         local_path: "DirectoryPath",
    #         s3_output_path: "S3Uri", # required
    #         hook_parameters: {
    #           "ConfigKey" => "ConfigValue",
    #         },
    #         collection_configurations: [
    #           {
    #             collection_name: "CollectionName",
    #             collection_parameters: {
    #               "ConfigKey" => "ConfigValue",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] local_path
    #   Path to local storage location for tensors. Defaults to
    #   `/opt/ml/output/tensors/`.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   Path to Amazon S3 storage location for tensors.
    #   @return [String]
    #
    # @!attribute [rw] hook_parameters
    #   Configuration information for the debug hook parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] collection_configurations
    #   Configuration information for tensor collections.
    #   @return [Array<Types::CollectionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DebugHookConfig AWS API Documentation
    #
    class DebugHookConfig < Struct.new(
      :local_path,
      :s3_output_path,
      :hook_parameters,
      :collection_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for debugging rules.
    #
    # @note When making an API call, you may pass DebugRuleConfiguration
    #   data as a hash:
    #
    #       {
    #         rule_configuration_name: "RuleConfigurationName", # required
    #         local_path: "DirectoryPath",
    #         s3_output_path: "S3Uri",
    #         rule_evaluator_image: "AlgorithmImage", # required
    #         instance_type: "ml.t3.medium", # accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #         volume_size_in_gb: 1,
    #         rule_parameters: {
    #           "ConfigKey" => "ConfigValue",
    #         },
    #       }
    #
    # @!attribute [rw] rule_configuration_name
    #   The name of the rule configuration. It must be unique relative to
    #   other rule configuration names.
    #   @return [String]
    #
    # @!attribute [rw] local_path
    #   Path to local storage location for output of rules. Defaults to
    #   `/opt/ml/processing/output/rule/`.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   Path to Amazon S3 storage location for rules.
    #   @return [String]
    #
    # @!attribute [rw] rule_evaluator_image
    #   The Amazon Elastic Container (ECR) Image for the managed rule
    #   evaluation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to deploy for a training job.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size, in GB, of the ML storage volume attached to the processing
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_parameters
    #   Runtime configuration for rule container.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DebugRuleConfiguration AWS API Documentation
    #
    class DebugRuleConfiguration < Struct.new(
      :rule_configuration_name,
      :local_path,
      :s3_output_path,
      :rule_evaluator_image,
      :instance_type,
      :volume_size_in_gb,
      :rule_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of the rule evaluation.
    #
    # @!attribute [rw] rule_configuration_name
    #   The name of the rule configuration
    #   @return [String]
    #
    # @!attribute [rw] rule_evaluation_job_arn
    #   The Amazon Resource Name (ARN) of the rule evaluation job.
    #   @return [String]
    #
    # @!attribute [rw] rule_evaluation_status
    #   Status of the rule evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details from the rule evaluation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   Timestamp when the rule evaluation status was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DebugRuleEvaluationStatus AWS API Documentation
    #
    class DebugRuleEvaluationStatus < Struct.new(
      :rule_configuration_name,
      :rule_evaluation_job_arn,
      :rule_evaluation_status,
      :status_details,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAlgorithmInput
    #   data as a hash:
    #
    #       {
    #         algorithm_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteAlgorithmInput AWS API Documentation
    #
    class DeleteAlgorithmInput < Struct.new(
      :algorithm_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #         app_type: "JupyterServer", # required, accepts JupyterServer, KernelGateway, TensorBoard
    #         app_name: "AppName", # required
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] app_type
    #   The type of app.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :domain_id,
      :user_profile_name,
      :app_type,
      :app_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCodeRepositoryInput
    #   data as a hash:
    #
    #       {
    #         code_repository_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] code_repository_name
    #   The name of the Git repository to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteCodeRepositoryInput AWS API Documentation
    #
    class DeleteCodeRepositoryInput < Struct.new(
      :code_repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         retention_policy: {
    #           home_efs_file_system: "Retain", # accepts Retain, Delete
    #         },
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] retention_policy
    #   The retention policy for this domain, which specifies whether
    #   resources will be retained after the Domain is deleted. By default,
    #   all resources are retained (not automatically deleted).
    #   @return [Types::RetentionPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_id,
      :retention_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEndpointConfigInput
    #   data as a hash:
    #
    #       {
    #         endpoint_config_name: "EndpointConfigName", # required
    #       }
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of the endpoint configuration that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpointConfigInput AWS API Documentation
    #
    class DeleteEndpointConfigInput < Struct.new(
      :endpoint_config_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpointInput AWS API Documentation
    #
    class DeleteEndpointInput < Struct.new(
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteExperimentRequest
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteExperimentRequest AWS API Documentation
    #
    class DeleteExperimentRequest < Struct.new(
      :experiment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_arn
    #   The Amazon Resource Name (ARN) of the experiment that is being
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteExperimentResponse AWS API Documentation
    #
    class DeleteExperimentResponse < Struct.new(
      :experiment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFlowDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         flow_definition_name: "FlowDefinitionName", # required
    #       }
    #
    # @!attribute [rw] flow_definition_name
    #   The name of the flow definition you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteFlowDefinitionRequest AWS API Documentation
    #
    class DeleteFlowDefinitionRequest < Struct.new(
      :flow_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteFlowDefinitionResponse AWS API Documentation
    #
    class DeleteFlowDefinitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteHumanTaskUiRequest
    #   data as a hash:
    #
    #       {
    #         human_task_ui_name: "HumanTaskUiName", # required
    #       }
    #
    # @!attribute [rw] human_task_ui_name
    #   The name of the human task user interface (work task template) you
    #   want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteHumanTaskUiRequest AWS API Documentation
    #
    class DeleteHumanTaskUiRequest < Struct.new(
      :human_task_ui_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteHumanTaskUiResponse AWS API Documentation
    #
    class DeleteHumanTaskUiResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteModelInput
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the model to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteModelInput AWS API Documentation
    #
    class DeleteModelInput < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteModelPackageInput
    #   data as a hash:
    #
    #       {
    #         model_package_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] model_package_name
    #   The name of the model package. The name must have 1 to 63
    #   characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteModelPackageInput AWS API Documentation
    #
    class DeleteModelPackageInput < Struct.new(
      :model_package_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMonitoringScheduleRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName", # required
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the monitoring schedule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteMonitoringScheduleRequest AWS API Documentation
    #
    class DeleteMonitoringScheduleRequest < Struct.new(
      :monitoring_schedule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the Amazon SageMaker notebook instance to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstanceInput AWS API Documentation
    #
    class DeleteNotebookInstanceInput < Struct.new(
      :notebook_instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNotebookInstanceLifecycleConfigInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #       }
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstanceLifecycleConfigInput AWS API Documentation
    #
    class DeleteNotebookInstanceLifecycleConfigInput < Struct.new(
      :notebook_instance_lifecycle_config_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   An array or one or more tag keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTagsInput AWS API Documentation
    #
    class DeleteTagsInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTagsOutput AWS API Documentation
    #
    class DeleteTagsOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTrialComponentRequest
    #   data as a hash:
    #
    #       {
    #         trial_component_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] trial_component_name
    #   The name of the component to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTrialComponentRequest AWS API Documentation
    #
    class DeleteTrialComponentRequest < Struct.new(
      :trial_component_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_arn
    #   The Amazon Resource Name (ARN) of the component is being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTrialComponentResponse AWS API Documentation
    #
    class DeleteTrialComponentResponse < Struct.new(
      :trial_component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTrialRequest
    #   data as a hash:
    #
    #       {
    #         trial_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] trial_name
    #   The name of the trial to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTrialRequest AWS API Documentation
    #
    class DeleteTrialRequest < Struct.new(
      :trial_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial that is being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTrialResponse AWS API Documentation
    #
    class DeleteTrialResponse < Struct.new(
      :trial_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteUserProfileRequest AWS API Documentation
    #
    class DeleteUserProfileRequest < Struct.new(
      :domain_id,
      :user_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteWorkforceRequest
    #   data as a hash:
    #
    #       {
    #         workforce_name: "WorkforceName", # required
    #       }
    #
    # @!attribute [rw] workforce_name
    #   The name of the workforce.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteWorkforceRequest AWS API Documentation
    #
    class DeleteWorkforceRequest < Struct.new(
      :workforce_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteWorkforceResponse AWS API Documentation
    #
    class DeleteWorkforceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_name: "WorkteamName", # required
    #       }
    #
    # @!attribute [rw] workteam_name
    #   The name of the work team to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteWorkteamRequest AWS API Documentation
    #
    class DeleteWorkteamRequest < Struct.new(
      :workteam_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] success
    #   Returns `true` if the work team was successfully deleted; otherwise,
    #   returns `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteWorkteamResponse AWS API Documentation
    #
    class DeleteWorkteamResponse < Struct.new(
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the Amazon EC2 Container Registry path of the docker image of the
    # model that is hosted in this ProductionVariant.
    #
    # If you used the `registry/repository[:tag]` form to specify the image
    # path of the primary container when you created the model hosted in
    # this `ProductionVariant`, the path resolves to a path of the form
    # `registry/repository[@digest]`. A digest is a hash value that
    # identifies a specific version of an image. For information about
    # Amazon ECR paths, see [Pulling an Image][1] in the *Amazon ECR User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html
    #
    # @!attribute [rw] specified_image
    #   The image path you specified when you created the model.
    #   @return [String]
    #
    # @!attribute [rw] resolved_image
    #   The specific digest path of the image hosted in this
    #   `ProductionVariant`.
    #   @return [String]
    #
    # @!attribute [rw] resolution_time
    #   The date and time when the image path for the model resolved to the
    #   `ResolvedImage`
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeployedImage AWS API Documentation
    #
    class DeployedImage < Struct.new(
      :specified_image,
      :resolved_image,
      :resolution_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlgorithmInput
    #   data as a hash:
    #
    #       {
    #         algorithm_name: "ArnOrName", # required
    #       }
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAlgorithmInput AWS API Documentation
    #
    class DescribeAlgorithmInput < Struct.new(
      :algorithm_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] algorithm_name
    #   The name of the algorithm being described.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_description
    #   A brief summary about the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp specifying when the algorithm was created.
    #   @return [Time]
    #
    # @!attribute [rw] training_specification
    #   Details about training jobs run by this algorithm.
    #   @return [Types::TrainingSpecification]
    #
    # @!attribute [rw] inference_specification
    #   Details about inference jobs that the algorithm runs.
    #   @return [Types::InferenceSpecification]
    #
    # @!attribute [rw] validation_specification
    #   Details about configurations for one or more training jobs that
    #   Amazon SageMaker runs to test the algorithm.
    #   @return [Types::AlgorithmValidationSpecification]
    #
    # @!attribute [rw] algorithm_status
    #   The current status of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_status_details
    #   Details about the current status of the algorithm.
    #   @return [Types::AlgorithmStatusDetails]
    #
    # @!attribute [rw] product_id
    #   The product identifier of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] certify_for_marketplace
    #   Whether the algorithm is certified to be listed in AWS Marketplace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAlgorithmOutput AWS API Documentation
    #
    class DescribeAlgorithmOutput < Struct.new(
      :algorithm_name,
      :algorithm_arn,
      :algorithm_description,
      :creation_time,
      :training_specification,
      :inference_specification,
      :validation_specification,
      :algorithm_status,
      :algorithm_status_details,
      :product_id,
      :certify_for_marketplace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAppRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #         app_type: "JupyterServer", # required, accepts JupyterServer, KernelGateway, TensorBoard
    #         app_name: "AppName", # required
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] app_type
    #   The type of app.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAppRequest AWS API Documentation
    #
    class DescribeAppRequest < Struct.new(
      :domain_id,
      :user_profile_name,
      :app_type,
      :app_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   The app's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] app_type
    #   The type of app.
    #   @return [String]
    #
    # @!attribute [rw] app_name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] last_health_check_timestamp
    #   The timestamp of the last health check.
    #   @return [Time]
    #
    # @!attribute [rw] last_user_activity_timestamp
    #   The timestamp of the last user's activity.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason.
    #   @return [String]
    #
    # @!attribute [rw] resource_spec
    #   The instance type and the Amazon Resource Name (ARN) of the
    #   SageMaker image created on the instance.
    #   @return [Types::ResourceSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAppResponse AWS API Documentation
    #
    class DescribeAppResponse < Struct.new(
      :app_arn,
      :app_type,
      :app_name,
      :domain_id,
      :user_profile_name,
      :status,
      :last_health_check_timestamp,
      :last_user_activity_timestamp,
      :creation_time,
      :failure_reason,
      :resource_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAutoMLJobRequest
    #   data as a hash:
    #
    #       {
    #         auto_ml_job_name: "AutoMLJobName", # required
    #       }
    #
    # @!attribute [rw] auto_ml_job_name
    #   Request information about a job using that job's unique name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAutoMLJobRequest AWS API Documentation
    #
    class DescribeAutoMLJobRequest < Struct.new(
      :auto_ml_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_ml_job_name
    #   Returns the name of a job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   Returns the job's ARN.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Returns the job's input data config.
    #   @return [Array<Types::AutoMLChannel>]
    #
    # @!attribute [rw] output_data_config
    #   Returns the job's output data config.
    #   @return [Types::AutoMLOutputDataConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that has read permission to the input data
    #   location and write permission to the output data location in Amazon
    #   S3.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_objective
    #   Returns the job's objective.
    #   @return [Types::AutoMLJobObjective]
    #
    # @!attribute [rw] problem_type
    #   Returns the job's problem type.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_config
    #   Returns the job's config.
    #   @return [Types::AutoMLJobConfig]
    #
    # @!attribute [rw] creation_time
    #   Returns the job's creation time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Returns the job's end time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Returns the job's last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   Returns the job's FailureReason.
    #   @return [String]
    #
    # @!attribute [rw] best_candidate
    #   Returns the job's BestCandidate.
    #   @return [Types::AutoMLCandidate]
    #
    # @!attribute [rw] auto_ml_job_status
    #   Returns the job's AutoMLJobStatus.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_secondary_status
    #   Returns the job's AutoMLJobSecondaryStatus.
    #   @return [String]
    #
    # @!attribute [rw] generate_candidate_definitions_only
    #   Returns the job's output from GenerateCandidateDefinitionsOnly.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_ml_job_artifacts
    #   Returns information on the job's artifacts found in
    #   AutoMLJobArtifacts.
    #   @return [Types::AutoMLJobArtifacts]
    #
    # @!attribute [rw] resolved_attributes
    #   This contains ProblemType, AutoMLJobObjective and
    #   CompletionCriteria. They're auto-inferred values, if not provided
    #   by you. If you do provide them, then they'll be the same as
    #   provided.
    #   @return [Types::ResolvedAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeAutoMLJobResponse AWS API Documentation
    #
    class DescribeAutoMLJobResponse < Struct.new(
      :auto_ml_job_name,
      :auto_ml_job_arn,
      :input_data_config,
      :output_data_config,
      :role_arn,
      :auto_ml_job_objective,
      :problem_type,
      :auto_ml_job_config,
      :creation_time,
      :end_time,
      :last_modified_time,
      :failure_reason,
      :best_candidate,
      :auto_ml_job_status,
      :auto_ml_job_secondary_status,
      :generate_candidate_definitions_only,
      :auto_ml_job_artifacts,
      :resolved_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCodeRepositoryInput
    #   data as a hash:
    #
    #       {
    #         code_repository_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] code_repository_name
    #   The name of the Git repository to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeCodeRepositoryInput AWS API Documentation
    #
    class DescribeCodeRepositoryInput < Struct.new(
      :code_repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_repository_name
    #   The name of the Git repository.
    #   @return [String]
    #
    # @!attribute [rw] code_repository_arn
    #   The Amazon Resource Name (ARN) of the Git repository.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the repository was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the repository was last changed.
    #   @return [Time]
    #
    # @!attribute [rw] git_config
    #   Configuration details about the repository, including the URL where
    #   the repository is located, the default branch, and the Amazon
    #   Resource Name (ARN) of the AWS Secrets Manager secret that contains
    #   the credentials used to access the repository.
    #   @return [Types::GitConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeCodeRepositoryOutput AWS API Documentation
    #
    class DescribeCodeRepositoryOutput < Struct.new(
      :code_repository_name,
      :code_repository_arn,
      :creation_time,
      :last_modified_time,
      :git_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCompilationJobRequest
    #   data as a hash:
    #
    #       {
    #         compilation_job_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] compilation_job_name
    #   The name of the model compilation job that you want information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeCompilationJobRequest AWS API Documentation
    #
    class DescribeCompilationJobRequest < Struct.new(
      :compilation_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compilation_job_name
    #   The name of the model compilation job.
    #   @return [String]
    #
    # @!attribute [rw] compilation_job_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   assumes to perform the model compilation job.
    #   @return [String]
    #
    # @!attribute [rw] compilation_job_status
    #   The status of the model compilation job.
    #   @return [String]
    #
    # @!attribute [rw] compilation_start_time
    #   The time when the model compilation job started the `CompilationJob`
    #   instances.
    #
    #   You are billed for the time between this timestamp and the timestamp
    #   in the DescribeCompilationJobResponse$CompilationEndTime field. In
    #   Amazon CloudWatch Logs, the start time might be later than this
    #   time. That's because it takes time to download the compilation job,
    #   which depends on the size of the compilation job container.
    #   @return [Time]
    #
    # @!attribute [rw] compilation_end_time
    #   The time when the model compilation job on a compilation job
    #   instance ended. For a successful or stopped job, this is when the
    #   job's model artifacts have finished uploading. For a failed job,
    #   this is when Amazon SageMaker detected that the job failed.
    #   @return [Time]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model compilation job can run. When
    #   the job reaches the time limit, Amazon SageMaker ends the
    #   compilation job. Use this API to cap model training costs.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] creation_time
    #   The time that the model compilation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time that the status of the model compilation job was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a model compilation job failed, the reason it failed.
    #   @return [String]
    #
    # @!attribute [rw] model_artifacts
    #   Information about the location in Amazon S3 that has been configured
    #   for storing the model artifacts used in the compilation job.
    #   @return [Types::ModelArtifacts]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the model compilation job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Information about the location in Amazon S3 of the input model
    #   artifacts, the name and shape of the expected data inputs, and the
    #   framework in which the model was trained.
    #   @return [Types::InputConfig]
    #
    # @!attribute [rw] output_config
    #   Information about the output location for the compiled model and the
    #   target device that the model runs on.
    #   @return [Types::OutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeCompilationJobResponse AWS API Documentation
    #
    class DescribeCompilationJobResponse < Struct.new(
      :compilation_job_name,
      :compilation_job_arn,
      :compilation_job_status,
      :compilation_start_time,
      :compilation_end_time,
      :stopping_condition,
      :creation_time,
      :last_modified_time,
      :failure_reason,
      :model_artifacts,
      :role_arn,
      :input_config,
      :output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeDomainRequest AWS API Documentation
    #
    class DescribeDomainRequest < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_arn
    #   The domain's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] home_efs_file_system_id
    #   The ID of the Amazon Elastic File System (EFS) managed by this
    #   Domain.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on_managed_application_instance_id
    #   The SSO managed application instance ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason.
    #   @return [String]
    #
    # @!attribute [rw] auth_mode
    #   The domain's authentication mode.
    #   @return [String]
    #
    # @!attribute [rw] default_user_settings
    #   Settings which are applied to all UserProfile in this domain, if
    #   settings are not explicitly specified in a given UserProfile.
    #   @return [Types::UserSettings]
    #
    # @!attribute [rw] home_efs_file_system_kms_key_id
    #   The AWS Key Management Service encryption key ID.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The VPC subnets that Studio uses for communication.
    #   @return [Array<String>]
    #
    # @!attribute [rw] url
    #   The domain's URL.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses
    #   for communication.
    #   @return [String]
    #
    # @!attribute [rw] app_network_access_type
    #   Specifies the VPC used for non-EFS traffic. The default value is
    #   `PublicInternetOnly`.
    #
    #   * `PublicInternetOnly` - Non-EFS traffic is through a VPC managed by
    #     Amazon SageMaker, which allows direct internet access
    #
    #   * `VpcOnly` - All Studio traffic is through the specified VPC and
    #     subnets
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeDomainResponse AWS API Documentation
    #
    class DescribeDomainResponse < Struct.new(
      :domain_arn,
      :domain_id,
      :domain_name,
      :home_efs_file_system_id,
      :single_sign_on_managed_application_instance_id,
      :status,
      :creation_time,
      :last_modified_time,
      :failure_reason,
      :auth_mode,
      :default_user_settings,
      :home_efs_file_system_kms_key_id,
      :subnet_ids,
      :url,
      :vpc_id,
      :app_network_access_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEndpointConfigInput
    #   data as a hash:
    #
    #       {
    #         endpoint_config_name: "EndpointConfigName", # required
    #       }
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of the endpoint configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointConfigInput AWS API Documentation
    #
    class DescribeEndpointConfigInput < Struct.new(
      :endpoint_config_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_config_name
    #   Name of the Amazon SageMaker endpoint configuration.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config_arn
    #   The Amazon Resource Name (ARN) of the endpoint configuration.
    #   @return [String]
    #
    # @!attribute [rw] production_variants
    #   An array of `ProductionVariant` objects, one for each model that you
    #   want to host at this endpoint.
    #   @return [Array<Types::ProductionVariant>]
    #
    # @!attribute [rw] data_capture_config
    #   @return [Types::DataCaptureConfig]
    #
    # @!attribute [rw] kms_key_id
    #   AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it
    #   on the ML storage volume attached to the instance.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the endpoint configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointConfigOutput AWS API Documentation
    #
    class DescribeEndpointConfigOutput < Struct.new(
      :endpoint_config_name,
      :endpoint_config_arn,
      :production_variants,
      :data_capture_config,
      :kms_key_id,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointInput AWS API Documentation
    #
    class DescribeEndpointInput < Struct.new(
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   Name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of the endpoint configuration associated with this
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] production_variants
    #   An array of ProductionVariantSummary objects, one for each model
    #   hosted behind this endpoint.
    #   @return [Array<Types::ProductionVariantSummary>]
    #
    # @!attribute [rw] data_capture_config
    #   @return [Types::DataCaptureConfigSummary]
    #
    # @!attribute [rw] endpoint_status
    #   The status of the endpoint.
    #
    #   * `OutOfService`\: Endpoint is not available to take incoming
    #     requests.
    #
    #   * `Creating`\: CreateEndpoint is executing.
    #
    #   * `Updating`\: UpdateEndpoint or UpdateEndpointWeightsAndCapacities
    #     is executing.
    #
    #   * `SystemUpdating`\: Endpoint is undergoing maintenance and cannot
    #     be updated or deleted or re-scaled until it has completed. This
    #     maintenance operation does not change any customer-specified
    #     values such as VPC config, KMS encryption, model, instance type,
    #     or instance count.
    #
    #   * `RollingBack`\: Endpoint fails to scale up or down or change its
    #     variant weight and is in the process of rolling back to its
    #     previous configuration. Once the rollback completes, endpoint
    #     returns to an `InService` status. This transitional status only
    #     applies to an endpoint that has autoscaling enabled and is
    #     undergoing variant weight or capacity changes as part of an
    #     UpdateEndpointWeightsAndCapacities call or when the
    #     UpdateEndpointWeightsAndCapacities operation is called explicitly.
    #
    #   * `InService`\: Endpoint is available to process incoming requests.
    #
    #   * `Deleting`\: DeleteEndpoint is executing.
    #
    #   * `Failed`\: Endpoint could not be created, updated, or re-scaled.
    #     Use DescribeEndpointOutput$FailureReason for information about the
    #     failure. DeleteEndpoint is the only operation that can be
    #     performed on a failed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the status of the endpoint is `Failed`, the reason why it failed.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that shows when the endpoint was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointOutput AWS API Documentation
    #
    class DescribeEndpointOutput < Struct.new(
      :endpoint_name,
      :endpoint_arn,
      :endpoint_config_name,
      :production_variants,
      :data_capture_config,
      :endpoint_status,
      :failure_reason,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExperimentRequest
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeExperimentRequest AWS API Documentation
    #
    class DescribeExperimentRequest < Struct.new(
      :experiment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_name
    #   The name of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the experiment as displayed. If `DisplayName` isn't
    #   specified, `ExperimentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The ARN of the source and, optionally, the type.
    #   @return [Types::ExperimentSource]
    #
    # @!attribute [rw] description
    #   The description of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Who created the experiment.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   When the experiment was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Who last modified the experiment.
    #   @return [Types::UserContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeExperimentResponse AWS API Documentation
    #
    class DescribeExperimentResponse < Struct.new(
      :experiment_name,
      :experiment_arn,
      :display_name,
      :source,
      :description,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFlowDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         flow_definition_name: "FlowDefinitionName", # required
    #       }
    #
    # @!attribute [rw] flow_definition_name
    #   The name of the flow definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeFlowDefinitionRequest AWS API Documentation
    #
    class DescribeFlowDefinitionRequest < Struct.new(
      :flow_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow defintion.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_name
    #   The Amazon Resource Name (ARN) of the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_status
    #   The status of the flow definition. Valid values are listed below.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the flow definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] human_loop_request_source
    #   Container for configuring the source of human task requests. Used to
    #   specify if Amazon Rekognition or Amazon Textract is used as an
    #   integration source.
    #   @return [Types::HumanLoopRequestSource]
    #
    # @!attribute [rw] human_loop_activation_config
    #   An object containing information about what triggers a human review
    #   workflow.
    #   @return [Types::HumanLoopActivationConfig]
    #
    # @!attribute [rw] human_loop_config
    #   An object containing information about who works on the task, the
    #   workforce task price, and other task details.
    #   @return [Types::HumanLoopConfig]
    #
    # @!attribute [rw] output_config
    #   An object containing information about the output file.
    #   @return [Types::FlowDefinitionOutputConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) execution role for the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason your flow definition failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeFlowDefinitionResponse AWS API Documentation
    #
    class DescribeFlowDefinitionResponse < Struct.new(
      :flow_definition_arn,
      :flow_definition_name,
      :flow_definition_status,
      :creation_time,
      :human_loop_request_source,
      :human_loop_activation_config,
      :human_loop_config,
      :output_config,
      :role_arn,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHumanTaskUiRequest
    #   data as a hash:
    #
    #       {
    #         human_task_ui_name: "HumanTaskUiName", # required
    #       }
    #
    # @!attribute [rw] human_task_ui_name
    #   The name of the human task user interface (worker task template) you
    #   want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHumanTaskUiRequest AWS API Documentation
    #
    class DescribeHumanTaskUiRequest < Struct.new(
      :human_task_ui_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] human_task_ui_arn
    #   The Amazon Resource Name (ARN) of the human task user interface
    #   (worker task template).
    #   @return [String]
    #
    # @!attribute [rw] human_task_ui_name
    #   The name of the human task user interface (worker task template).
    #   @return [String]
    #
    # @!attribute [rw] human_task_ui_status
    #   The status of the human task user interface (worker task template).
    #   Valid values are listed below.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the human task user interface was created.
    #   @return [Time]
    #
    # @!attribute [rw] ui_template
    #   Container for user interface template information.
    #   @return [Types::UiTemplateInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHumanTaskUiResponse AWS API Documentation
    #
    class DescribeHumanTaskUiResponse < Struct.new(
      :human_task_ui_arn,
      :human_task_ui_name,
      :human_task_ui_status,
      :creation_time,
      :ui_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHyperParameterTuningJobRequest
    #   data as a hash:
    #
    #       {
    #         hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #       }
    #
    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the tuning job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHyperParameterTuningJobRequest AWS API Documentation
    #
    class DescribeHyperParameterTuningJobRequest < Struct.new(
      :hyper_parameter_tuning_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the tuning job.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_arn
    #   The Amazon Resource Name (ARN) of the tuning job.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_config
    #   The HyperParameterTuningJobConfig object that specifies the
    #   configuration of the tuning job.
    #   @return [Types::HyperParameterTuningJobConfig]
    #
    # @!attribute [rw] training_job_definition
    #   The HyperParameterTrainingJobDefinition object that specifies the
    #   definition of the training jobs that this tuning job launches.
    #   @return [Types::HyperParameterTrainingJobDefinition]
    #
    # @!attribute [rw] training_job_definitions
    #   A list of the HyperParameterTrainingJobDefinition objects launched
    #   for this tuning job.
    #   @return [Array<Types::HyperParameterTrainingJobDefinition>]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_status
    #   The status of the tuning job: InProgress, Completed, Failed,
    #   Stopping, or Stopped.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the tuning job started.
    #   @return [Time]
    #
    # @!attribute [rw] hyper_parameter_tuning_end_time
    #   The date and time that the tuning job ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the status of the tuning job was modified.
    #   @return [Time]
    #
    # @!attribute [rw] training_job_status_counters
    #   The TrainingJobStatusCounters object that specifies the number of
    #   training jobs, categorized by status, that this tuning job launched.
    #   @return [Types::TrainingJobStatusCounters]
    #
    # @!attribute [rw] objective_status_counters
    #   The ObjectiveStatusCounters object that specifies the number of
    #   training jobs, categorized by the status of their final objective
    #   metric, that this tuning job launched.
    #   @return [Types::ObjectiveStatusCounters]
    #
    # @!attribute [rw] best_training_job
    #   A TrainingJobSummary object that describes the training job that
    #   completed with the best current HyperParameterTuningJobObjective.
    #   @return [Types::HyperParameterTrainingJobSummary]
    #
    # @!attribute [rw] overall_best_training_job
    #   If the hyperparameter tuning job is an warm start tuning job with a
    #   `WarmStartType` of `IDENTICAL_DATA_AND_ALGORITHM`, this is the
    #   TrainingJobSummary for the training job with the best objective
    #   metric value of all training jobs launched by this tuning job and
    #   all parent jobs specified for the warm start tuning job.
    #   @return [Types::HyperParameterTrainingJobSummary]
    #
    # @!attribute [rw] warm_start_config
    #   The configuration for starting the hyperparameter parameter tuning
    #   job using one or more previous tuning jobs as a starting point. The
    #   results of previous tuning jobs are used to inform which
    #   combinations of hyperparameters to search over in the new tuning
    #   job.
    #   @return [Types::HyperParameterTuningJobWarmStartConfig]
    #
    # @!attribute [rw] failure_reason
    #   If the tuning job failed, the reason it failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHyperParameterTuningJobResponse AWS API Documentation
    #
    class DescribeHyperParameterTuningJobResponse < Struct.new(
      :hyper_parameter_tuning_job_name,
      :hyper_parameter_tuning_job_arn,
      :hyper_parameter_tuning_job_config,
      :training_job_definition,
      :training_job_definitions,
      :hyper_parameter_tuning_job_status,
      :creation_time,
      :hyper_parameter_tuning_end_time,
      :last_modified_time,
      :training_job_status_counters,
      :objective_status_counters,
      :best_training_job,
      :overall_best_training_job,
      :warm_start_config,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLabelingJobRequest
    #   data as a hash:
    #
    #       {
    #         labeling_job_name: "LabelingJobName", # required
    #       }
    #
    # @!attribute [rw] labeling_job_name
    #   The name of the labeling job to return information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeLabelingJobRequest AWS API Documentation
    #
    class DescribeLabelingJobRequest < Struct.new(
      :labeling_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labeling_job_status
    #   The processing status of the labeling job.
    #   @return [String]
    #
    # @!attribute [rw] label_counters
    #   Provides a breakdown of the number of data objects labeled by
    #   humans, the number of objects labeled by machine, the number of
    #   objects than couldn't be labeled, and the total number of objects
    #   labeled.
    #   @return [Types::LabelCounters]
    #
    # @!attribute [rw] failure_reason
    #   If the job failed, the reason that it failed.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the labeling job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the labeling job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] job_reference_code
    #   A unique identifier for work done as part of a labeling job.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_name
    #   The name assigned to the labeling job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) of the labeling job.
    #   @return [String]
    #
    # @!attribute [rw] label_attribute_name
    #   The attribute used as the label in the output manifest file.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input configuration information for the labeling job, such as the
    #   Amazon S3 location of the data objects and the location of the
    #   manifest file that describes the data objects.
    #   @return [Types::LabelingJobInputConfig]
    #
    # @!attribute [rw] output_config
    #   The location of the job's output data and the AWS Key Management
    #   Service key ID for the key used to encrypt the output data, if any.
    #   @return [Types::LabelingJobOutputConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) that Amazon SageMaker assumes to
    #   perform tasks on your behalf during data labeling.
    #   @return [String]
    #
    # @!attribute [rw] label_category_config_s3_uri
    #   The S3 location of the JSON file that defines the categories used to
    #   label data objects. Please note the following label-category limits:
    #
    #   * Semantic segmentation labeling jobs using automated labeling: 20
    #     labels
    #
    #   * Box bounding labeling jobs (all): 10 labels
    #
    #   The file is a JSON structure in the following format:
    #
    #   `\{`
    #
    #   ` "document-version": "2018-11-28"`
    #
    #   ` "labels": [`
    #
    #   ` \{`
    #
    #   ` "label": "label 1"`
    #
    #   ` \},`
    #
    #   ` \{`
    #
    #   ` "label": "label 2"`
    #
    #   ` \},`
    #
    #   ` ...`
    #
    #   ` \{`
    #
    #   ` "label": "label n"`
    #
    #   ` \}`
    #
    #   ` ]`
    #
    #   `\}`
    #   @return [String]
    #
    # @!attribute [rw] stopping_conditions
    #   A set of conditions for stopping a labeling job. If any of the
    #   conditions are met, the job is automatically stopped.
    #   @return [Types::LabelingJobStoppingConditions]
    #
    # @!attribute [rw] labeling_job_algorithms_config
    #   Configuration information for automated data labeling.
    #   @return [Types::LabelingJobAlgorithmsConfig]
    #
    # @!attribute [rw] human_task_config
    #   Configuration information required for human workers to complete a
    #   labeling task.
    #   @return [Types::HumanTaskConfig]
    #
    # @!attribute [rw] tags
    #   An array of key/value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] labeling_job_output
    #   The location of the output produced by the labeling job.
    #   @return [Types::LabelingJobOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeLabelingJobResponse AWS API Documentation
    #
    class DescribeLabelingJobResponse < Struct.new(
      :labeling_job_status,
      :label_counters,
      :failure_reason,
      :creation_time,
      :last_modified_time,
      :job_reference_code,
      :labeling_job_name,
      :labeling_job_arn,
      :label_attribute_name,
      :input_config,
      :output_config,
      :role_arn,
      :label_category_config_s3_uri,
      :stopping_conditions,
      :labeling_job_algorithms_config,
      :human_task_config,
      :tags,
      :labeling_job_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeModelInput
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModelInput AWS API Documentation
    #
    class DescribeModelInput < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   Name of the Amazon SageMaker model.
    #   @return [String]
    #
    # @!attribute [rw] primary_container
    #   The location of the primary inference code, associated artifacts,
    #   and custom environment map that the inference code uses when it is
    #   deployed in production.
    #   @return [Types::ContainerDefinition]
    #
    # @!attribute [rw] containers
    #   The containers in the inference pipeline.
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the model.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that this model has access
    #   to. For more information, see [Protect Endpoints by Using an Amazon
    #   Virtual Private Cloud][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the model was created.
    #   @return [Time]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model.
    #   @return [String]
    #
    # @!attribute [rw] enable_network_isolation
    #   If `True`, no inbound or outbound network calls can be made to or
    #   from the model container.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModelOutput AWS API Documentation
    #
    class DescribeModelOutput < Struct.new(
      :model_name,
      :primary_container,
      :containers,
      :execution_role_arn,
      :vpc_config,
      :creation_time,
      :model_arn,
      :enable_network_isolation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeModelPackageInput
    #   data as a hash:
    #
    #       {
    #         model_package_name: "ArnOrName", # required
    #       }
    #
    # @!attribute [rw] model_package_name
    #   The name of the model package to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModelPackageInput AWS API Documentation
    #
    class DescribeModelPackageInput < Struct.new(
      :model_package_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_package_name
    #   The name of the model package being described.
    #   @return [String]
    #
    # @!attribute [rw] model_package_arn
    #   The Amazon Resource Name (ARN) of the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_package_description
    #   A brief summary of the model package.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp specifying when the model package was created.
    #   @return [Time]
    #
    # @!attribute [rw] inference_specification
    #   Details about inference jobs that can be run with models based on
    #   this model package.
    #   @return [Types::InferenceSpecification]
    #
    # @!attribute [rw] source_algorithm_specification
    #   Details about the algorithm that was used to create the model
    #   package.
    #   @return [Types::SourceAlgorithmSpecification]
    #
    # @!attribute [rw] validation_specification
    #   Configurations for one or more transform jobs that Amazon SageMaker
    #   runs to test the model package.
    #   @return [Types::ModelPackageValidationSpecification]
    #
    # @!attribute [rw] model_package_status
    #   The current status of the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_package_status_details
    #   Details about the current status of the model package.
    #   @return [Types::ModelPackageStatusDetails]
    #
    # @!attribute [rw] certify_for_marketplace
    #   Whether the model package is certified for listing on AWS
    #   Marketplace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModelPackageOutput AWS API Documentation
    #
    class DescribeModelPackageOutput < Struct.new(
      :model_package_name,
      :model_package_arn,
      :model_package_description,
      :creation_time,
      :inference_specification,
      :source_algorithm_specification,
      :validation_specification,
      :model_package_status,
      :model_package_status_details,
      :certify_for_marketplace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMonitoringScheduleRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName", # required
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   Name of a previously created monitoring schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeMonitoringScheduleRequest AWS API Documentation
    #
    class DescribeMonitoringScheduleRequest < Struct.new(
      :monitoring_schedule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_schedule_arn
    #   The Amazon Resource Name (ARN) of the monitoring schedule.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_schedule_name
    #   Name of the monitoring schedule.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_schedule_status
    #   The status of an monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   A string, up to one KB in size, that contains the reason a
    #   monitoring job failed, if it failed.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the monitoring job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the monitoring job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] monitoring_schedule_config
    #   The configuration object that specifies the monitoring schedule and
    #   defines the monitoring job.
    #   @return [Types::MonitoringScheduleConfig]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint for the monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] last_monitoring_execution_summary
    #   Describes metadata on the last execution to run, if there was one.
    #   @return [Types::MonitoringExecutionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeMonitoringScheduleResponse AWS API Documentation
    #
    class DescribeMonitoringScheduleResponse < Struct.new(
      :monitoring_schedule_arn,
      :monitoring_schedule_name,
      :monitoring_schedule_status,
      :failure_reason,
      :creation_time,
      :last_modified_time,
      :monitoring_schedule_config,
      :endpoint_name,
      :last_monitoring_execution_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the notebook instance that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceInput AWS API Documentation
    #
    class DescribeNotebookInstanceInput < Struct.new(
      :notebook_instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNotebookInstanceLifecycleConfigInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #       }
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceLifecycleConfigInput AWS API Documentation
    #
    class DescribeNotebookInstanceLifecycleConfigInput < Struct.new(
      :notebook_instance_lifecycle_config_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_instance_lifecycle_config_arn
    #   The Amazon Resource Name (ARN) of the lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] on_create
    #   The shell script that runs only once, when you create a notebook
    #   instance.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @!attribute [rw] on_start
    #   The shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that tells when the lifecycle configuration was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that tells when the lifecycle configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceLifecycleConfigOutput AWS API Documentation
    #
    class DescribeNotebookInstanceLifecycleConfigOutput < Struct.new(
      :notebook_instance_lifecycle_config_arn,
      :notebook_instance_lifecycle_config_name,
      :on_create,
      :on_start,
      :last_modified_time,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_instance_arn
    #   The Amazon Resource Name (ARN) of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the Amazon SageMaker notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_status
    #   The status of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If status is `Failed`, the reason it failed.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL that you use to connect to the Jupyter notebook that is
    #   running in your notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of ML compute instance running on the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the VPC subnet.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the VPC security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID Amazon SageMaker uses to encrypt data when
    #   storing it on the ML storage volume attached to the instance.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface IDs that Amazon SageMaker created at the time
    #   of creating the instance.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp. Use this parameter to retrieve the time when the
    #   notebook instance was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   A timestamp. Use this parameter to return the time when the notebook
    #   instance was created
    #   @return [Time]
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   Returns the name of a notebook instance lifecycle configuration.
    #
    #   For information about notebook instance lifestyle configurations,
    #   see [Step 2.1: (Optional) Customize a Notebook Instance][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #   @return [String]
    #
    # @!attribute [rw] direct_internet_access
    #   Describes whether Amazon SageMaker provides internet access to the
    #   notebook instance. If this value is set to *Disabled*, the notebook
    #   instance does not have internet access, and cannot connect to Amazon
    #   SageMaker training and endpoint services.
    #
    #   For more information, see [Notebook Instances Are Internet-Enabled
    #   by Default][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size, in GB, of the ML storage volume attached to the notebook
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] accelerator_types
    #   A list of the Elastic Inference (EI) instance types associated with
    #   this notebook instance. Currently only one EI instance type can be
    #   associated with a notebook instance. For more information, see
    #   [Using Elastic Inference in Amazon SageMaker][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_code_repository
    #   The Git repository associated with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [AWS CodeCommit][1] or in any other Git repository.
    #   When you open a notebook instance, it opens in the directory that
    #   contains this repository. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [String]
    #
    # @!attribute [rw] additional_code_repositories
    #   An array of up to three Git repositories associated with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories
    #   in [AWS CodeCommit][1] or in any other Git repository. These
    #   repositories are cloned at the same level as the default repository
    #   of your notebook instance. For more information, see [Associating
    #   Git Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] root_access
    #   Whether root access is enabled or disabled for users of the notebook
    #   instance.
    #
    #   <note markdown="1"> Lifecycle configurations need root access to be able to set up a
    #   notebook instance. Because of this, lifecycle configurations
    #   associated with a notebook instance always run with root access even
    #   if you disable root access for users.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceOutput AWS API Documentation
    #
    class DescribeNotebookInstanceOutput < Struct.new(
      :notebook_instance_arn,
      :notebook_instance_name,
      :notebook_instance_status,
      :failure_reason,
      :url,
      :instance_type,
      :subnet_id,
      :security_groups,
      :role_arn,
      :kms_key_id,
      :network_interface_id,
      :last_modified_time,
      :creation_time,
      :notebook_instance_lifecycle_config_name,
      :direct_internet_access,
      :volume_size_in_gb,
      :accelerator_types,
      :default_code_repository,
      :additional_code_repositories,
      :root_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProcessingJobRequest
    #   data as a hash:
    #
    #       {
    #         processing_job_name: "ProcessingJobName", # required
    #       }
    #
    # @!attribute [rw] processing_job_name
    #   The name of the processing job. The name must be unique within an
    #   AWS Region in the AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeProcessingJobRequest AWS API Documentation
    #
    class DescribeProcessingJobRequest < Struct.new(
      :processing_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processing_inputs
    #   The inputs for a processing job.
    #   @return [Array<Types::ProcessingInput>]
    #
    # @!attribute [rw] processing_output_config
    #   Output configuration for the processing job.
    #   @return [Types::ProcessingOutputConfig]
    #
    # @!attribute [rw] processing_job_name
    #   The name of the processing job. The name must be unique within an
    #   AWS Region in the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] processing_resources
    #   Identifies the resources, ML compute instances, and ML storage
    #   volumes to deploy for a processing job. In distributed training, you
    #   specify more than one instance.
    #   @return [Types::ProcessingResources]
    #
    # @!attribute [rw] stopping_condition
    #   The time limit for how long the processing job is allowed to run.
    #   @return [Types::ProcessingStoppingCondition]
    #
    # @!attribute [rw] app_specification
    #   Configures the processing job to run a specified container image.
    #   @return [Types::AppSpecification]
    #
    # @!attribute [rw] environment
    #   The environment variables set in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] network_config
    #   Networking options for a processing job.
    #   @return [Types::NetworkConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   can assume to perform tasks on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] experiment_config
    #   The configuration information used to create an experiment.
    #   @return [Types::ExperimentConfig]
    #
    # @!attribute [rw] processing_job_arn
    #   The Amazon Resource Name (ARN) of the processing job.
    #   @return [String]
    #
    # @!attribute [rw] processing_job_status
    #   Provides the status of a processing job.
    #   @return [String]
    #
    # @!attribute [rw] exit_message
    #   An optional string, up to one KB in size, that contains metadata
    #   from the processing container when the processing job exits.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   A string, up to one KB in size, that contains the reason a
    #   processing job failed, if it failed.
    #   @return [String]
    #
    # @!attribute [rw] processing_end_time
    #   The time at which the processing job completed.
    #   @return [Time]
    #
    # @!attribute [rw] processing_start_time
    #   The time at which the processing job started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the processing job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time at which the processing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] monitoring_schedule_arn
    #   The ARN of a monitoring schedule for an endpoint associated with
    #   this processing job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The ARN of an AutoML job associated with this processing job.
    #   @return [String]
    #
    # @!attribute [rw] training_job_arn
    #   The ARN of a training job associated with this processing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeProcessingJobResponse AWS API Documentation
    #
    class DescribeProcessingJobResponse < Struct.new(
      :processing_inputs,
      :processing_output_config,
      :processing_job_name,
      :processing_resources,
      :stopping_condition,
      :app_specification,
      :environment,
      :network_config,
      :role_arn,
      :experiment_config,
      :processing_job_arn,
      :processing_job_status,
      :exit_message,
      :failure_reason,
      :processing_end_time,
      :processing_start_time,
      :last_modified_time,
      :creation_time,
      :monitoring_schedule_arn,
      :auto_ml_job_arn,
      :training_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSubscribedWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_arn: "WorkteamArn", # required
    #       }
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) of the subscribed work team to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeSubscribedWorkteamRequest AWS API Documentation
    #
    class DescribeSubscribedWorkteamRequest < Struct.new(
      :workteam_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscribed_workteam
    #   A `Workteam` instance that contains information about the work team.
    #   @return [Types::SubscribedWorkteam]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeSubscribedWorkteamResponse AWS API Documentation
    #
    class DescribeSubscribedWorkteamResponse < Struct.new(
      :subscribed_workteam)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrainingJobRequest
    #   data as a hash:
    #
    #       {
    #         training_job_name: "TrainingJobName", # required
    #       }
    #
    # @!attribute [rw] training_job_name
    #   The name of the training job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJobRequest AWS API Documentation
    #
    class DescribeTrainingJobRequest < Struct.new(
      :training_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_job_name
    #   Name of the model training job.
    #   @return [String]
    #
    # @!attribute [rw] training_job_arn
    #   The Amazon Resource Name (ARN) of the training job.
    #   @return [String]
    #
    # @!attribute [rw] tuning_job_arn
    #   The Amazon Resource Name (ARN) of the associated hyperparameter
    #   tuning job if the training job was launched by a hyperparameter
    #   tuning job.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth
    #   labeling job that created the transform or training job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The Amazon Resource Name (ARN) of an AutoML job.
    #   @return [String]
    #
    # @!attribute [rw] model_artifacts
    #   Information about the Amazon S3 location that is configured for
    #   storing model artifacts.
    #   @return [Types::ModelArtifacts]
    #
    # @!attribute [rw] training_job_status
    #   The status of the training job.
    #
    #   Amazon SageMaker provides the following training job statuses:
    #
    #   * `InProgress` - The training is in progress.
    #
    #   * `Completed` - The training job has completed.
    #
    #   * `Failed` - The training job has failed. To see the reason for the
    #     failure, see the `FailureReason` field in the response to a
    #     `DescribeTrainingJobResponse` call.
    #
    #   * `Stopping` - The training job is stopping.
    #
    #   * `Stopped` - The training job has stopped.
    #
    #   For more detailed information, see `SecondaryStatus`.
    #   @return [String]
    #
    # @!attribute [rw] secondary_status
    #   Provides detailed information about the state of the training job.
    #   For detailed information on the secondary status of the training
    #   job, see `StatusMessage` under SecondaryStatusTransition.
    #
    #   Amazon SageMaker provides primary statuses and secondary statuses
    #   that apply to each of them:
    #
    #   InProgress
    #   : * `Starting` - Starting the training job.
    #
    #     * `Downloading` - An optional stage for algorithms that support
    #       `File` training input mode. It indicates that data is being
    #       downloaded to the ML storage volumes.
    #
    #     * `Training` - Training is in progress.
    #
    #     * `Interrupted` - The job stopped because the managed spot
    #       training instances were interrupted.
    #
    #     * `Uploading` - Training is complete and the model artifacts are
    #       being uploaded to the S3 location.
    #
    #   Completed
    #   : * `Completed` - The training job has completed.
    #
    #     ^
    #
    #   Failed
    #   : * `Failed` - The training job has failed. The reason for the
    #       failure is returned in the `FailureReason` field of
    #       `DescribeTrainingJobResponse`.
    #
    #     ^
    #
    #   Stopped
    #   : * `MaxRuntimeExceeded` - The job stopped because it exceeded the
    #       maximum allowed runtime.
    #
    #     * `MaxWaitTimeExceeded` - The job stopped because it exceeded the
    #       maximum allowed wait time.
    #
    #     * `Stopped` - The training job has stopped.
    #
    #   Stopping
    #   : * `Stopping` - Stopping the training job.
    #
    #     ^
    #
    #   Valid values for `SecondaryStatus` are subject to change.
    #
    #   We no longer support the following secondary statuses:
    #
    #   * `LaunchingMLInstances`
    #
    #   * `PreparingTrainingStack`
    #
    #   * `DownloadingTrainingImage`
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the training job failed, the reason it failed.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] algorithm_specification
    #   Information about the algorithm used for training, and algorithm
    #   metadata.
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] role_arn
    #   The AWS Identity and Access Management (IAM) role configured for the
    #   training job.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   An array of `Channel` objects that describes each data input
    #   channel.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] output_data_config
    #   The S3 path where model artifacts that you configured when creating
    #   the job are stored. Amazon SageMaker creates subfolders for model
    #   artifacts.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] resource_config
    #   Resources, including ML compute instances and ML storage volumes,
    #   that are configured for model training.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that this training job has
    #   access to. For more information, see [Protect Training Jobs by Using
    #   an Amazon Virtual Private Cloud][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model training job can run. It also
    #   specifies the maximum time to wait for a spot instance. When the job
    #   reaches the time limit, Amazon SageMaker ends the training job. Use
    #   this API to cap model training costs.
    #
    #   To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM`
    #   signal, which delays job termination for 120 seconds. Algorithms can
    #   use this 120-second window to save the model artifacts, so the
    #   results of training are not lost.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that indicates when the training job was created.
    #   @return [Time]
    #
    # @!attribute [rw] training_start_time
    #   Indicates the time when the training job starts on training
    #   instances. You are billed for the time interval between this time
    #   and the value of `TrainingEndTime`. The start time in CloudWatch
    #   Logs might be later than this time. The difference is due to the
    #   time it takes to download the training data and to the size of the
    #   training container.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   Indicates the time when the training job ends on training instances.
    #   You are billed for the time interval between the value of
    #   `TrainingStartTime` and this time. For successful jobs and stopped
    #   jobs, this is the time after model artifacts are uploaded. For
    #   failed jobs, this is the time when Amazon SageMaker detects a job
    #   failure.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that indicates when the status of the training job was
    #   last modified.
    #   @return [Time]
    #
    # @!attribute [rw] secondary_status_transitions
    #   A history of all of the secondary statuses that the training job has
    #   transitioned through.
    #   @return [Array<Types::SecondaryStatusTransition>]
    #
    # @!attribute [rw] final_metric_data_list
    #   A collection of `MetricData` objects that specify the names, values,
    #   and dates and times that the training algorithm emitted to Amazon
    #   CloudWatch.
    #   @return [Array<Types::MetricData>]
    #
    # @!attribute [rw] enable_network_isolation
    #   If you want to allow inbound or outbound network calls, except for
    #   calls between peers within a training cluster for distributed
    #   training, choose `True`. If you enable network isolation for
    #   training jobs that are configured to use a VPC, Amazon SageMaker
    #   downloads and uploads customer data and model artifacts through the
    #   specified VPC, but the training container does not have network
    #   access.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_inter_container_traffic_encryption
    #   To encrypt all communications between ML compute instances in
    #   distributed training, choose `True`. Encryption provides greater
    #   security for distributed training, but training might take longer.
    #   How long it takes depends on the amount of communication between
    #   compute instances, especially if you use a deep learning algorithms
    #   in distributed training.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_managed_spot_training
    #   A Boolean indicating whether managed spot training is enabled
    #   (`True`) or not (`False`).
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_config
    #   Contains information about the output location for managed spot
    #   training checkpoint data.
    #   @return [Types::CheckpointConfig]
    #
    # @!attribute [rw] training_time_in_seconds
    #   The training time in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] billable_time_in_seconds
    #   The billable time in seconds.
    #
    #   You can calculate the savings from using managed spot training using
    #   the formula `(1 - BillableTimeInSeconds / TrainingTimeInSeconds) *
    #   100`. For example, if `BillableTimeInSeconds` is 100 and
    #   `TrainingTimeInSeconds` is 500, the savings is 80%.
    #   @return [Integer]
    #
    # @!attribute [rw] debug_hook_config
    #   Configuration information for the debug hook parameters, collection
    #   configuration, and storage paths.
    #   @return [Types::DebugHookConfig]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @!attribute [rw] debug_rule_configurations
    #   Configuration information for debugging rules.
    #   @return [Array<Types::DebugRuleConfiguration>]
    #
    # @!attribute [rw] tensor_board_output_config
    #   Configuration of storage locations for TensorBoard output.
    #   @return [Types::TensorBoardOutputConfig]
    #
    # @!attribute [rw] debug_rule_evaluation_statuses
    #   Status about the debug rule evaluation.
    #   @return [Array<Types::DebugRuleEvaluationStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJobResponse AWS API Documentation
    #
    class DescribeTrainingJobResponse < Struct.new(
      :training_job_name,
      :training_job_arn,
      :tuning_job_arn,
      :labeling_job_arn,
      :auto_ml_job_arn,
      :model_artifacts,
      :training_job_status,
      :secondary_status,
      :failure_reason,
      :hyper_parameters,
      :algorithm_specification,
      :role_arn,
      :input_data_config,
      :output_data_config,
      :resource_config,
      :vpc_config,
      :stopping_condition,
      :creation_time,
      :training_start_time,
      :training_end_time,
      :last_modified_time,
      :secondary_status_transitions,
      :final_metric_data_list,
      :enable_network_isolation,
      :enable_inter_container_traffic_encryption,
      :enable_managed_spot_training,
      :checkpoint_config,
      :training_time_in_seconds,
      :billable_time_in_seconds,
      :debug_hook_config,
      :experiment_config,
      :debug_rule_configurations,
      :tensor_board_output_config,
      :debug_rule_evaluation_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTransformJobRequest
    #   data as a hash:
    #
    #       {
    #         transform_job_name: "TransformJobName", # required
    #       }
    #
    # @!attribute [rw] transform_job_name
    #   The name of the transform job that you want to view details of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTransformJobRequest AWS API Documentation
    #
    class DescribeTransformJobRequest < Struct.new(
      :transform_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_job_name
    #   The name of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] transform_job_arn
    #   The Amazon Resource Name (ARN) of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] transform_job_status
    #   The status of the transform job. If the transform job failed, the
    #   reason is returned in the `FailureReason` field.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the transform job failed, `FailureReason` describes why it
    #   failed. A transform job creates a log file, which includes error
    #   messages, and stores it as an Amazon S3 object. For more
    #   information, see [Log Amazon SageMaker Events with Amazon
    #   CloudWatch][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model used in the transform job.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrent_transforms
    #   The maximum number of parallel requests on each instance node that
    #   can be launched in a transform job. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] model_client_config
    #   The timeout and maximum number of retries for processing a transform
    #   job invocation.
    #   @return [Types::ModelClientConfig]
    #
    # @!attribute [rw] max_payload_in_mb
    #   The maximum payload size, in MB, used in the transform job.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_strategy
    #   Specifies the number of records to include in a mini-batch for an
    #   HTTP inference request. A *record* ** is a single unit of input data
    #   that inference can be made on. For example, a single line in a CSV
    #   file is a record.
    #
    #   To enable the batch strategy, you must set `SplitType` to `Line`,
    #   `RecordIO`, or `TFRecord`.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. We support
    #   up to 16 key and values entries in the map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transform_input
    #   Describes the dataset to be transformed and the Amazon S3 location
    #   where it is stored.
    #   @return [Types::TransformInput]
    #
    # @!attribute [rw] transform_output
    #   Identifies the Amazon S3 location where you want Amazon SageMaker to
    #   save the results from the transform job.
    #   @return [Types::TransformOutput]
    #
    # @!attribute [rw] transform_resources
    #   Describes the resources, including ML instance types and ML instance
    #   count, to use for the transform job.
    #   @return [Types::TransformResources]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the transform Job was created.
    #   @return [Time]
    #
    # @!attribute [rw] transform_start_time
    #   Indicates when the transform job starts on ML instances. You are
    #   billed for the time interval between this time and the value of
    #   `TransformEndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] transform_end_time
    #   Indicates when the transform job has been completed, or has stopped
    #   or failed. You are billed for the time interval between this time
    #   and the value of `TransformStartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth
    #   labeling job that created the transform or training job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The Amazon Resource Name (ARN) of the AutoML transform job.
    #   @return [String]
    #
    # @!attribute [rw] data_processing
    #   The data structure used to specify the data to be used for inference
    #   in a batch transform job and to associate the data that is relevant
    #   to the prediction results in the output. The input filter provided
    #   allows you to exclude input data that is not needed for inference in
    #   a batch transform job. The output filter provided allows you to
    #   include input data relevant to interpreting the predictions in the
    #   output from the job. For more information, see [Associate Prediction
    #   Results with their Corresponding Input Records][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html
    #   @return [Types::DataProcessing]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTransformJobResponse AWS API Documentation
    #
    class DescribeTransformJobResponse < Struct.new(
      :transform_job_name,
      :transform_job_arn,
      :transform_job_status,
      :failure_reason,
      :model_name,
      :max_concurrent_transforms,
      :model_client_config,
      :max_payload_in_mb,
      :batch_strategy,
      :environment,
      :transform_input,
      :transform_output,
      :transform_resources,
      :creation_time,
      :transform_start_time,
      :transform_end_time,
      :labeling_job_arn,
      :auto_ml_job_arn,
      :data_processing,
      :experiment_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrialComponentRequest
    #   data as a hash:
    #
    #       {
    #         trial_component_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] trial_component_name
    #   The name of the trial component to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrialComponentRequest AWS API Documentation
    #
    class DescribeTrialComponentRequest < Struct.new(
      :trial_component_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_name
    #   The name of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_arn
    #   The Amazon Resource Name (ARN) of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the component as displayed. If `DisplayName` isn't
    #   specified, `TrialComponentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon Resource Name (ARN) of the source and, optionally, the
    #   job type.
    #   @return [Types::TrialComponentSource]
    #
    # @!attribute [rw] status
    #   The status of the component. States include:
    #
    #   * InProgress
    #
    #   * Completed
    #
    #   * Failed
    #   @return [Types::TrialComponentStatus]
    #
    # @!attribute [rw] start_time
    #   When the component started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the component ended.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   When the component was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Who created the component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   When the component was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Who last modified the component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] parameters
    #   The hyperparameters of the component.
    #   @return [Hash<String,Types::TrialComponentParameterValue>]
    #
    # @!attribute [rw] input_artifacts
    #   The input artifacts of the component.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] output_artifacts
    #   The output artifacts of the component.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] metrics
    #   The metrics for the component.
    #   @return [Array<Types::TrialComponentMetricSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrialComponentResponse AWS API Documentation
    #
    class DescribeTrialComponentResponse < Struct.new(
      :trial_component_name,
      :trial_component_arn,
      :display_name,
      :source,
      :status,
      :start_time,
      :end_time,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      :parameters,
      :input_artifacts,
      :output_artifacts,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrialRequest
    #   data as a hash:
    #
    #       {
    #         trial_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] trial_name
    #   The name of the trial to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrialRequest AWS API Documentation
    #
    class DescribeTrialRequest < Struct.new(
      :trial_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_name
    #   The name of the trial.
    #   @return [String]
    #
    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the trial as displayed. If `DisplayName` isn't
    #   specified, `TrialName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment the trial is part of.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon Resource Name (ARN) of the source and, optionally, the
    #   job type.
    #   @return [Types::TrialSource]
    #
    # @!attribute [rw] creation_time
    #   When the trial was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Who created the trial.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   When the trial was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Who last modified the trial.
    #   @return [Types::UserContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrialResponse AWS API Documentation
    #
    class DescribeTrialResponse < Struct.new(
      :trial_name,
      :trial_arn,
      :display_name,
      :experiment_name,
      :source,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeUserProfileRequest AWS API Documentation
    #
    class DescribeUserProfileRequest < Struct.new(
      :domain_id,
      :user_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The ID of the domain that contains the profile.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_arn
    #   The user profile Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] home_efs_file_system_uid
    #   The ID of the user's profile in the Amazon Elastic File System
    #   (EFS) volume.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on_user_identifier
    #   The SSO user identifier.
    #   @return [String]
    #
    # @!attribute [rw] single_sign_on_user_value
    #   The SSO user value.
    #   @return [String]
    #
    # @!attribute [rw] user_settings
    #   A collection of settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeUserProfileResponse AWS API Documentation
    #
    class DescribeUserProfileResponse < Struct.new(
      :domain_id,
      :user_profile_arn,
      :user_profile_name,
      :home_efs_file_system_uid,
      :status,
      :last_modified_time,
      :creation_time,
      :failure_reason,
      :single_sign_on_user_identifier,
      :single_sign_on_user_value,
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkforceRequest
    #   data as a hash:
    #
    #       {
    #         workforce_name: "WorkforceName", # required
    #       }
    #
    # @!attribute [rw] workforce_name
    #   The name of the private workforce whose access you want to restrict.
    #   `WorkforceName` is automatically set to `default` when a workforce
    #   is created and cannot be modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeWorkforceRequest AWS API Documentation
    #
    class DescribeWorkforceRequest < Struct.new(
      :workforce_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workforce
    #   A single private workforce, which is automatically created when you
    #   create your first private work team. You can create one private work
    #   force in each AWS Region. By default, any workforce-related API
    #   operation used in a specific region will apply to the workforce
    #   created in that region. To learn how to create a private workforce,
    #   see [Create a Private Workforce][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html
    #   @return [Types::Workforce]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeWorkforceResponse AWS API Documentation
    #
    class DescribeWorkforceResponse < Struct.new(
      :workforce)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_name: "WorkteamName", # required
    #       }
    #
    # @!attribute [rw] workteam_name
    #   The name of the work team to return a description of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeWorkteamRequest AWS API Documentation
    #
    class DescribeWorkteamRequest < Struct.new(
      :workteam_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workteam
    #   A `Workteam` instance that contains information about the work team.
    #   @return [Types::Workteam]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeWorkteamResponse AWS API Documentation
    #
    class DescribeWorkteamResponse < Struct.new(
      :workteam)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies weight and capacity values for a production variant.
    #
    # @note When making an API call, you may pass DesiredWeightAndCapacity
    #   data as a hash:
    #
    #       {
    #         variant_name: "VariantName", # required
    #         desired_weight: 1.0,
    #         desired_instance_count: 1,
    #       }
    #
    # @!attribute [rw] variant_name
    #   The name of the variant to update.
    #   @return [String]
    #
    # @!attribute [rw] desired_weight
    #   The variant's weight.
    #   @return [Float]
    #
    # @!attribute [rw] desired_instance_count
    #   The variant's capacity.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DesiredWeightAndCapacity AWS API Documentation
    #
    class DesiredWeightAndCapacity < Struct.new(
      :variant_name,
      :desired_weight,
      :desired_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateTrialComponentRequest
    #   data as a hash:
    #
    #       {
    #         trial_component_name: "ExperimentEntityName", # required
    #         trial_name: "ExperimentEntityName", # required
    #       }
    #
    # @!attribute [rw] trial_component_name
    #   The name of the component to disassociate from the trial.
    #   @return [String]
    #
    # @!attribute [rw] trial_name
    #   The name of the trial to disassociate from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DisassociateTrialComponentRequest AWS API Documentation
    #
    class DisassociateTrialComponentRequest < Struct.new(
      :trial_component_name,
      :trial_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_arn
    #   The ARN of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DisassociateTrialComponentResponse AWS API Documentation
    #
    class DisassociateTrialComponentResponse < Struct.new(
      :trial_component_arn,
      :trial_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The domain's details.
    #
    # @!attribute [rw] domain_arn
    #   The domain's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] url
    #   The domain's URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DomainDetails AWS API Documentation
    #
    class DomainDetails < Struct.new(
      :domain_arn,
      :domain_id,
      :domain_name,
      :status,
      :creation_time,
      :last_modified_time,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for an endpoint configuration.
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of the endpoint configuration.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config_arn
    #   The Amazon Resource Name (ARN) of the endpoint configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the endpoint configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/EndpointConfigSummary AWS API Documentation
    #
    class EndpointConfigSummary < Struct.new(
      :endpoint_config_name,
      :endpoint_config_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input object for the endpoint
    #
    # @note When making an API call, you may pass EndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #         local_path: "ProcessingLocalPath", # required
    #         s3_input_mode: "Pipe", # accepts Pipe, File
    #         s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   An endpoint in customer's account which has enabled
    #   `DataCaptureConfig` enabled.
    #   @return [String]
    #
    # @!attribute [rw] local_path
    #   Path to the filesystem where the endpoint data is available to the
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] s3_input_mode
    #   Whether the `Pipe` or `File` is used as the input mode for
    #   transfering data for the monitoring job. `Pipe` mode is recommended
    #   for large datasets. `File` mode is useful for small files that fit
    #   in memory. Defaults to `File`.
    #   @return [String]
    #
    # @!attribute [rw] s3_data_distribution_type
    #   Whether input data distributed in Amazon S3 is fully replicated or
    #   sharded by an S3 key. Defauts to `FullyReplicated`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/EndpointInput AWS API Documentation
    #
    class EndpointInput < Struct.new(
      :endpoint_name,
      :local_path,
      :s3_input_mode,
      :s3_data_distribution_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for an endpoint.
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that shows when the endpoint was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint_status
    #   The status of the endpoint.
    #
    #   * `OutOfService`\: Endpoint is not available to take incoming
    #     requests.
    #
    #   * `Creating`\: CreateEndpoint is executing.
    #
    #   * `Updating`\: UpdateEndpoint or UpdateEndpointWeightsAndCapacities
    #     is executing.
    #
    #   * `SystemUpdating`\: Endpoint is undergoing maintenance and cannot
    #     be updated or deleted or re-scaled until it has completed. This
    #     maintenance operation does not change any customer-specified
    #     values such as VPC config, KMS encryption, model, instance type,
    #     or instance count.
    #
    #   * `RollingBack`\: Endpoint fails to scale up or down or change its
    #     variant weight and is in the process of rolling back to its
    #     previous configuration. Once the rollback completes, endpoint
    #     returns to an `InService` status. This transitional status only
    #     applies to an endpoint that has autoscaling enabled and is
    #     undergoing variant weight or capacity changes as part of an
    #     UpdateEndpointWeightsAndCapacities call or when the
    #     UpdateEndpointWeightsAndCapacities operation is called explicitly.
    #
    #   * `InService`\: Endpoint is available to process incoming requests.
    #
    #   * `Deleting`\: DeleteEndpoint is executing.
    #
    #   * `Failed`\: Endpoint could not be created, updated, or re-scaled.
    #     Use DescribeEndpointOutput$FailureReason for information about the
    #     failure. DeleteEndpoint is the only operation that can be
    #     performed on a failed endpoint.
    #
    #   To get a list of endpoints with a specified status, use the
    #   ListEndpointsInput$StatusEquals filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/EndpointSummary AWS API Documentation
    #
    class EndpointSummary < Struct.new(
      :endpoint_name,
      :endpoint_arn,
      :creation_time,
      :last_modified_time,
      :endpoint_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of an experiment as returned by the Search API.
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the experiment as displayed. If `DisplayName` isn't
    #   specified, `ExperimentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the experiment.
    #   @return [Types::ExperimentSource]
    #
    # @!attribute [rw] description
    #   The description of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   When the experiment was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] tags
    #   The list of tags that are associated with the experiment. You can
    #   use Search API to search on the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Experiment AWS API Documentation
    #
    class Experiment < Struct.new(
      :experiment_name,
      :experiment_arn,
      :display_name,
      :source,
      :description,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a SageMaker job as a trial component with an experiment and
    # trial. Specified when you call the following APIs:
    #
    # * CreateProcessingJob
    #
    # * CreateTrainingJob
    #
    # * CreateTransformJob
    #
    # @note When making an API call, you may pass ExperimentConfig
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName",
    #         trial_name: "ExperimentEntityName",
    #         trial_component_display_name: "ExperimentEntityName",
    #       }
    #
    # @!attribute [rw] experiment_name
    #   The name of an existing experiment to associate the trial component
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] trial_name
    #   The name of an existing trial to associate the trial component with.
    #   If not specified, a new trial is created.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_display_name
    #   The display name for the trial component. If this key isn't
    #   specified, the display name is the trial component name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ExperimentConfig AWS API Documentation
    #
    class ExperimentConfig < Struct.new(
      :experiment_name,
      :trial_name,
      :trial_component_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the experiment.
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the source.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ExperimentSource AWS API Documentation
    #
    class ExperimentSource < Struct.new(
      :source_arn,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the properties of an experiment. To get the complete set
    # of properties, call the DescribeExperiment API and provide the
    # `ExperimentName`.
    #
    # @!attribute [rw] experiment_arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the experiment as displayed. If `DisplayName` isn't
    #   specified, `ExperimentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] experiment_source
    #   The source of the experiment.
    #   @return [Types::ExperimentSource]
    #
    # @!attribute [rw] creation_time
    #   When the experiment was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the experiment was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ExperimentSummary AWS API Documentation
    #
    class ExperimentSummary < Struct.new(
      :experiment_arn,
      :experiment_name,
      :display_name,
      :experiment_source,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a file system data source for a channel.
    #
    # @note When making an API call, you may pass FileSystemDataSource
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         file_system_access_mode: "rw", # required, accepts rw, ro
    #         file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #         directory_path: "DirectoryPath", # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The file system id.
    #   @return [String]
    #
    # @!attribute [rw] file_system_access_mode
    #   The access mode of the mount of the directory associated with the
    #   channel. A directory can be mounted either in `ro` (read-only) or
    #   `rw` (read-write) mode.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   The file system type.
    #   @return [String]
    #
    # @!attribute [rw] directory_path
    #   The full path to the directory to associate with the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/FileSystemDataSource AWS API Documentation
    #
    class FileSystemDataSource < Struct.new(
      :file_system_id,
      :file_system_access_mode,
      :file_system_type,
      :directory_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conditional statement for a search expression that includes a
    # resource property, a Boolean operator, and a value. Resources that
    # match the statement are returned in the results from the Search API.
    #
    # If you specify a `Value`, but not an `Operator`, Amazon SageMaker uses
    # the equals operator.
    #
    # In search, there are several property types:
    #
    # Metrics
    #
    # : To define a metric filter, enter a value using the form
    #   `"Metrics.<name>"`, where `<name>` is a metric name. For example,
    #   the following filter searches for training jobs with an `"accuracy"`
    #   metric greater than `"0.9"`\:
    #
    #   `\{`
    #
    #   `"Name": "Metrics.accuracy",`
    #
    #   `"Operator": "GreaterThan",`
    #
    #   `"Value": "0.9"`
    #
    #   `\}`
    #
    # HyperParameters
    #
    # : To define a hyperparameter filter, enter a value with the form
    #   `"HyperParameters.<name>"`. Decimal hyperparameter values are
    #   treated as a decimal in a comparison if the specified `Value` is
    #   also a decimal value. If the specified `Value` is an integer, the
    #   decimal hyperparameter values are treated as integers. For example,
    #   the following filter is satisfied by training jobs with a
    #   `"learning_rate"` hyperparameter that is less than `"0.5"`\:
    #
    #   ` \{`
    #
    #   ` "Name": "HyperParameters.learning_rate",`
    #
    #   ` "Operator": "LessThan",`
    #
    #   ` "Value": "0.5"`
    #
    #   ` \}`
    #
    # Tags
    #
    # : To define a tag filter, enter a value with the form `Tags.<key>`.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "ResourcePropertyName", # required
    #         operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #         value: "FilterValue",
    #       }
    #
    # @!attribute [rw] name
    #   A resource property name. For example, `TrainingJobName`. For valid
    #   property names, see SearchRecord. You must specify a valid property
    #   for the resource.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   A Boolean binary operator that is used to evaluate the filter. The
    #   operator field contains one of the following values:
    #
    #   Equals
    #
    #   : The value of `Name` equals `Value`.
    #
    #   NotEquals
    #
    #   : The value of `Name` doesn't equal `Value`.
    #
    #   Exists
    #
    #   : The `Name` property exists.
    #
    #   NotExists
    #
    #   : The `Name` property does not exist.
    #
    #   GreaterThan
    #
    #   : The value of `Name` is greater than `Value`. Not supported for
    #     text properties.
    #
    #   GreaterThanOrEqualTo
    #
    #   : The value of `Name` is greater than or equal to `Value`. Not
    #     supported for text properties.
    #
    #   LessThan
    #
    #   : The value of `Name` is less than `Value`. Not supported for text
    #     properties.
    #
    #   LessThanOrEqualTo
    #
    #   : The value of `Name` is less than or equal to `Value`. Not
    #     supported for text properties.
    #
    #   In
    #
    #   : The value of `Name` is one of the comma delimited strings in
    #     `Value`. Only supported for text properties.
    #
    #   Contains
    #
    #   : The value of `Name` contains the string `Value`. Only supported
    #     for text properties.
    #
    #     A `SearchExpression` can include the `Contains` operator multiple
    #     times when the value of `Name` is one of the following:
    #
    #     * `Experiment.DisplayName`
    #
    #     * `Experiment.ExperimentName`
    #
    #     * `Experiment.Tags`
    #
    #     * `Trial.DisplayName`
    #
    #     * `Trial.TrialName`
    #
    #     * `Trial.Tags`
    #
    #     * `TrialComponent.DisplayName`
    #
    #     * `TrialComponent.TrialComponentName`
    #
    #     * `TrialComponent.Tags`
    #
    #     * `TrialComponent.InputArtifacts`
    #
    #     * `TrialComponent.OutputArtifacts`
    #
    #     A `SearchExpression` can include only one `Contains` operator for
    #     all other values of `Name`. In these cases, if you include
    #     multiple `Contains` operators in the `SearchExpression`, the
    #     result is the following error message: "`'CONTAINS' operator
    #     usage limit of 1 exceeded.`"
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value used with `Name` and `Operator` to determine which resources
    #   satisfy the filter's condition. For numerical properties, `Value`
    #   must be an integer or floating-point decimal. For timestamp
    #   properties, `Value` must be an ISO 8601 date-time string of the
    #   following format: `YYYY-mm-dd'T'HH:MM:SS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The best candidate result from an AutoML training job.
    #
    # @!attribute [rw] type
    #   The type of metric with the best result.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric with the best result. For a description of
    #   the possible objective metrics, see AutoMLJobObjective$MetricName.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the metric with the best result.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/FinalAutoMLJobObjectiveMetric AWS API Documentation
    #
    class FinalAutoMLJobObjectiveMetric < Struct.new(
      :type,
      :metric_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the final value for the objective metric for a training job that
    # was launched by a hyperparameter tuning job. You define the objective
    # metric in the `HyperParameterTuningJobObjective` parameter of
    # HyperParameterTuningJobConfig.
    #
    # @!attribute [rw] type
    #   Whether to minimize or maximize the objective metric. Valid values
    #   are Minimize and Maximize.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the objective metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the objective metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/FinalHyperParameterTuningJobObjectiveMetric AWS API Documentation
    #
    class FinalHyperParameterTuningJobObjectiveMetric < Struct.new(
      :type,
      :metric_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about where human output will be stored.
    #
    # @note When making an API call, you may pass FlowDefinitionOutputConfig
    #   data as a hash:
    #
    #       {
    #         s3_output_path: "S3Uri", # required
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 path where the object containing human output will be
    #   made available.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Key Management Service (KMS) key ID for server-side
    #   encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/FlowDefinitionOutputConfig AWS API Documentation
    #
    class FlowDefinitionOutputConfig < Struct.new(
      :s3_output_path,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about the flow definition.
    #
    # @!attribute [rw] flow_definition_name
    #   The name of the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_status
    #   The status of the flow definition. Valid values:
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when SageMaker created the flow definition.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the flow definition creation failed. A failure reason
    #   is returned only when the flow definition status is `Failed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/FlowDefinitionSummary AWS API Documentation
    #
    class FlowDefinitionSummary < Struct.new(
      :flow_definition_name,
      :flow_definition_arn,
      :flow_definition_status,
      :creation_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSearchSuggestionsRequest
    #   data as a hash:
    #
    #       {
    #         resource: "TrainingJob", # required, accepts TrainingJob, Experiment, ExperimentTrial, ExperimentTrialComponent
    #         suggestion_query: {
    #           property_name_query: {
    #             property_name_hint: "PropertyNameHint", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] resource
    #   The name of the Amazon SageMaker resource to search for.
    #   @return [String]
    #
    # @!attribute [rw] suggestion_query
    #   Limits the property names that are included in the response.
    #   @return [Types::SuggestionQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/GetSearchSuggestionsRequest AWS API Documentation
    #
    class GetSearchSuggestionsRequest < Struct.new(
      :resource,
      :suggestion_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] property_name_suggestions
    #   A list of property names for a `Resource` that match a
    #   `SuggestionQuery`.
    #   @return [Array<Types::PropertyNameSuggestion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/GetSearchSuggestionsResponse AWS API Documentation
    #
    class GetSearchSuggestionsResponse < Struct.new(
      :property_name_suggestions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration details for a Git repository in your AWS
    # account.
    #
    # @note When making an API call, you may pass GitConfig
    #   data as a hash:
    #
    #       {
    #         repository_url: "GitConfigUrl", # required
    #         branch: "Branch",
    #         secret_arn: "SecretArn",
    #       }
    #
    # @!attribute [rw] repository_url
    #   The URL where the Git repository is located.
    #   @return [String]
    #
    # @!attribute [rw] branch
    #   The default branch for the Git repository.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   that contains the credentials used to access the git repository. The
    #   secret must have a staging label of `AWSCURRENT` and must be in the
    #   following format:
    #
    #   `\{"username": UserName, "password": Password\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/GitConfig AWS API Documentation
    #
    class GitConfig < Struct.new(
      :repository_url,
      :branch,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration details for a Git repository when the
    # repository is updated.
    #
    # @note When making an API call, you may pass GitConfigForUpdate
    #   data as a hash:
    #
    #       {
    #         secret_arn: "SecretArn",
    #       }
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   that contains the credentials used to access the git repository. The
    #   secret must have a staging label of `AWSCURRENT` and must be in the
    #   following format:
    #
    #   `\{"username": UserName, "password": Password\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/GitConfigForUpdate AWS API Documentation
    #
    class GitConfigForUpdate < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines under what conditions SageMaker creates a human loop. Used
    # within . See for the required format of activation conditions.
    #
    # @note When making an API call, you may pass HumanLoopActivationConditionsConfig
    #   data as a hash:
    #
    #       {
    #         human_loop_activation_conditions: "HumanLoopActivationConditions", # required
    #       }
    #
    # @!attribute [rw] human_loop_activation_conditions
    #   JSON expressing use-case specific conditions declaratively. If any
    #   condition is matched, atomic tasks are created against the
    #   configured work team. The set of conditions is different for
    #   Rekognition and Textract. For more information about how to
    #   structure the JSON, see [JSON Schema for Human Loop Activation
    #   Conditions in Amazon Augmented AI][1] in the *Amazon SageMaker
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-human-fallback-conditions-json-schema.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HumanLoopActivationConditionsConfig AWS API Documentation
    #
    class HumanLoopActivationConditionsConfig < Struct.new(
      :human_loop_activation_conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about how and under what conditions SageMaker
    # creates a human loop. If `HumanLoopActivationConfig` is not given,
    # then all requests go to humans.
    #
    # @note When making an API call, you may pass HumanLoopActivationConfig
    #   data as a hash:
    #
    #       {
    #         human_loop_activation_conditions_config: { # required
    #           human_loop_activation_conditions: "HumanLoopActivationConditions", # required
    #         },
    #       }
    #
    # @!attribute [rw] human_loop_activation_conditions_config
    #   Container structure for defining under what conditions SageMaker
    #   creates a human loop.
    #   @return [Types::HumanLoopActivationConditionsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HumanLoopActivationConfig AWS API Documentation
    #
    class HumanLoopActivationConfig < Struct.new(
      :human_loop_activation_conditions_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the work to be performed by human workers.
    #
    # @note When making an API call, you may pass HumanLoopConfig
    #   data as a hash:
    #
    #       {
    #         workteam_arn: "WorkteamArn", # required
    #         human_task_ui_arn: "HumanTaskUiArn", # required
    #         task_title: "FlowDefinitionTaskTitle", # required
    #         task_description: "FlowDefinitionTaskDescription", # required
    #         task_count: 1, # required
    #         task_availability_lifetime_in_seconds: 1,
    #         task_time_limit_in_seconds: 1,
    #         task_keywords: ["FlowDefinitionTaskKeyword"],
    #         public_workforce_task_price: {
    #           amount_in_usd: {
    #             dollars: 1,
    #             cents: 1,
    #             tenth_fractions_of_a_cent: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] workteam_arn
    #   Amazon Resource Name (ARN) of a team of workers.
    #   @return [String]
    #
    # @!attribute [rw] human_task_ui_arn
    #   The Amazon Resource Name (ARN) of the human task user interface.
    #   @return [String]
    #
    # @!attribute [rw] task_title
    #   A title for the human worker task.
    #   @return [String]
    #
    # @!attribute [rw] task_description
    #   A description for the human worker task.
    #   @return [String]
    #
    # @!attribute [rw] task_count
    #   The number of distinct workers who will perform the same task on
    #   each object. For example, if `TaskCount` is set to `3` for an image
    #   classification labeling job, three workers will classify each input
    #   image. Increasing `TaskCount` can improve label accuracy.
    #   @return [Integer]
    #
    # @!attribute [rw] task_availability_lifetime_in_seconds
    #   The length of time that a task remains available for review by human
    #   workers.
    #   @return [Integer]
    #
    # @!attribute [rw] task_time_limit_in_seconds
    #   The amount of time that a worker has to complete a task. The default
    #   value is 3,600 seconds (1 hour)
    #   @return [Integer]
    #
    # @!attribute [rw] task_keywords
    #   Keywords used to describe the task so that workers can discover the
    #   task.
    #   @return [Array<String>]
    #
    # @!attribute [rw] public_workforce_task_price
    #   Defines the amount of money paid to an Amazon Mechanical Turk worker
    #   for each task performed.
    #
    #   Use one of the following prices for bounding box tasks. Prices are
    #   in US dollars and should be based on the complexity of the task; the
    #   longer it takes in your initial testing, the more you should offer.
    #
    #   * 0\.036
    #
    #   * 0\.048
    #
    #   * 0\.060
    #
    #   * 0\.072
    #
    #   * 0\.120
    #
    #   * 0\.240
    #
    #   * 0\.360
    #
    #   * 0\.480
    #
    #   * 0\.600
    #
    #   * 0\.720
    #
    #   * 0\.840
    #
    #   * 0\.960
    #
    #   * 1\.080
    #
    #   * 1\.200
    #
    #   Use one of the following prices for image classification, text
    #   classification, and custom tasks. Prices are in US dollars.
    #
    #   * 0\.012
    #
    #   * 0\.024
    #
    #   * 0\.036
    #
    #   * 0\.048
    #
    #   * 0\.060
    #
    #   * 0\.072
    #
    #   * 0\.120
    #
    #   * 0\.240
    #
    #   * 0\.360
    #
    #   * 0\.480
    #
    #   * 0\.600
    #
    #   * 0\.720
    #
    #   * 0\.840
    #
    #   * 0\.960
    #
    #   * 1\.080
    #
    #   * 1\.200
    #
    #   Use one of the following prices for semantic segmentation tasks.
    #   Prices are in US dollars.
    #
    #   * 0\.840
    #
    #   * 0\.960
    #
    #   * 1\.080
    #
    #   * 1\.200
    #
    #   Use one of the following prices for Textract AnalyzeDocument
    #   Important Form Key Amazon Augmented AI review tasks. Prices are in
    #   US dollars.
    #
    #   * 2\.400
    #
    #   * 2\.280
    #
    #   * 2\.160
    #
    #   * 2\.040
    #
    #   * 1\.920
    #
    #   * 1\.800
    #
    #   * 1\.680
    #
    #   * 1\.560
    #
    #   * 1\.440
    #
    #   * 1\.320
    #
    #   * 1\.200
    #
    #   * 1\.080
    #
    #   * 0\.960
    #
    #   * 0\.840
    #
    #   * 0\.720
    #
    #   * 0\.600
    #
    #   * 0\.480
    #
    #   * 0\.360
    #
    #   * 0\.240
    #
    #   * 0\.120
    #
    #   * 0\.072
    #
    #   * 0\.060
    #
    #   * 0\.048
    #
    #   * 0\.036
    #
    #   * 0\.024
    #
    #   * 0\.012
    #
    #   Use one of the following prices for Rekognition
    #   DetectModerationLabels Amazon Augmented AI review tasks. Prices are
    #   in US dollars.
    #
    #   * 1\.200
    #
    #   * 1\.080
    #
    #   * 0\.960
    #
    #   * 0\.840
    #
    #   * 0\.720
    #
    #   * 0\.600
    #
    #   * 0\.480
    #
    #   * 0\.360
    #
    #   * 0\.240
    #
    #   * 0\.120
    #
    #   * 0\.072
    #
    #   * 0\.060
    #
    #   * 0\.048
    #
    #   * 0\.036
    #
    #   * 0\.024
    #
    #   * 0\.012
    #
    #   Use one of the following prices for Amazon Augmented AI custom human
    #   review tasks. Prices are in US dollars.
    #
    #   * 1\.200
    #
    #   * 1\.080
    #
    #   * 0\.960
    #
    #   * 0\.840
    #
    #   * 0\.720
    #
    #   * 0\.600
    #
    #   * 0\.480
    #
    #   * 0\.360
    #
    #   * 0\.240
    #
    #   * 0\.120
    #
    #   * 0\.072
    #
    #   * 0\.060
    #
    #   * 0\.048
    #
    #   * 0\.036
    #
    #   * 0\.024
    #
    #   * 0\.012
    #   @return [Types::PublicWorkforceTaskPrice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HumanLoopConfig AWS API Documentation
    #
    class HumanLoopConfig < Struct.new(
      :workteam_arn,
      :human_task_ui_arn,
      :task_title,
      :task_description,
      :task_count,
      :task_availability_lifetime_in_seconds,
      :task_time_limit_in_seconds,
      :task_keywords,
      :public_workforce_task_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for configuring the source of human task requests.
    #
    # @note When making an API call, you may pass HumanLoopRequestSource
    #   data as a hash:
    #
    #       {
    #         aws_managed_human_loop_request_source: "AWS/Rekognition/DetectModerationLabels/Image/V3", # required, accepts AWS/Rekognition/DetectModerationLabels/Image/V3, AWS/Textract/AnalyzeDocument/Forms/V1
    #       }
    #
    # @!attribute [rw] aws_managed_human_loop_request_source
    #   Specifies whether Amazon Rekognition or Amazon Textract are used as
    #   the integration source. The default field settings and JSON parsing
    #   rules are different based on the integration source. Valid values:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HumanLoopRequestSource AWS API Documentation
    #
    class HumanLoopRequestSource < Struct.new(
      :aws_managed_human_loop_request_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required for human workers to complete a labeling task.
    #
    # @note When making an API call, you may pass HumanTaskConfig
    #   data as a hash:
    #
    #       {
    #         workteam_arn: "WorkteamArn", # required
    #         ui_config: { # required
    #           ui_template_s3_uri: "S3Uri",
    #           human_task_ui_arn: "HumanTaskUiArn",
    #         },
    #         pre_human_task_lambda_arn: "LambdaFunctionArn", # required
    #         task_keywords: ["TaskKeyword"],
    #         task_title: "TaskTitle", # required
    #         task_description: "TaskDescription", # required
    #         number_of_human_workers_per_data_object: 1, # required
    #         task_time_limit_in_seconds: 1, # required
    #         task_availability_lifetime_in_seconds: 1,
    #         max_concurrent_task_count: 1,
    #         annotation_consolidation_config: { # required
    #           annotation_consolidation_lambda_arn: "LambdaFunctionArn", # required
    #         },
    #         public_workforce_task_price: {
    #           amount_in_usd: {
    #             dollars: 1,
    #             cents: 1,
    #             tenth_fractions_of_a_cent: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) of the work team assigned to complete
    #   the tasks.
    #   @return [String]
    #
    # @!attribute [rw] ui_config
    #   Information about the user interface that workers use to complete
    #   the labeling task.
    #   @return [Types::UiConfig]
    #
    # @!attribute [rw] pre_human_task_lambda_arn
    #   The Amazon Resource Name (ARN) of a Lambda function that is run
    #   before a data object is sent to a human worker. Use this function to
    #   provide input to a custom labeling job.
    #
    #   For [built-in task types][1], use one of the following Amazon
    #   SageMaker Ground Truth Lambda function ARNs for
    #   `PreHumanTaskLambdaArn`. For custom labeling workflows, see
    #   [Pre-annotation Lambda][2].
    #
    #   **Bounding box** - Finds the most similar boxes from different
    #   workers based on the Jaccard index of the boxes.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-BoundingBox`
    #
    #   **Image classification** - Uses a variant of the Expectation
    #   Maximization approach to estimate the true class of an image based
    #   on annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-ImageMultiClass`
    #
    #   **Multi-label image classification** - Uses a variant of the
    #   Expectation Maximization approach to estimate the true classes of an
    #   image based on annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-ImageMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-ImageMultiClassMultiLabel`
    #
    #   **Semantic segmentation** - Treats each pixel in an image as a
    #   multi-class classification and treats pixel annotations from workers
    #   as "votes" for the correct label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-SemanticSegmentation`
    #
    #   **Text classification** - Uses a variant of the Expectation
    #   Maximization approach to estimate the true class of text based on
    #   annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-TextMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-TextMultiClass`
    #
    #   **Multi-label text classification** - Uses a variant of the
    #   Expectation Maximization approach to estimate the true classes of
    #   text based on annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-TextMultiClassMultiLabel`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-TextMultiClassMultiLabel`
    #
    #   **Named entity recognition** - Groups similar selections and
    #   calculates aggregate boundaries, resolving to most-assigned label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-NamedEntityRecognition`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-NamedEntityRecognition`
    #
    #   **Video Classification** - Use this task type when you need workers
    #   to classify videos using predefined labels that you specify. Workers
    #   are shown videos and are asked to choose one label for each video.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-VideoMultiClass`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-VideoMultiClass`
    #
    #   **Video Frame Object Detection** - Use this task type to have
    #   workers identify and locate objects in a sequence of video frames
    #   (images extracted from a video) using bounding boxes. For example,
    #   you can use this task to ask workers to identify and localize
    #   various objects in a series of video frames, such as cars, bikes,
    #   and pedestrians.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-VideoObjectDetection`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-VideoObjectDetection`
    #
    #   **Video Frame Object Tracking** - Use this task type to have workers
    #   track the movement of objects in a sequence of video frames (images
    #   extracted from a video) using bounding boxes. For example, you can
    #   use this task to ask workers to track the movement of objects, such
    #   as cars, bikes, and pedestrians.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-VideoObjectTracking`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-VideoObjectTracking`
    #
    #   **3D Point Cloud Modalities**
    #
    #   Use the following pre-annotation lambdas for 3D point cloud labeling
    #   modality tasks. See [3D Point Cloud Task types ][3] to learn more.
    #
    #   **3D Point Cloud Object Detection** - Use this task type when you
    #   want workers to classify objects in a 3D point cloud by drawing 3D
    #   cuboids around objects. For example, you can use this task type to
    #   ask workers to identify different types of objects in a point cloud,
    #   such as cars, bikes, and pedestrians.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-3DPointCloudObjectDetection`
    #
    #   **3D Point Cloud Object Tracking** - Use this task type when you
    #   want workers to draw 3D cuboids around objects that appear in a
    #   sequence of 3D point cloud frames. For example, you can use this
    #   task type to ask workers to track the movement of vehicles across
    #   multiple point cloud frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-3DPointCloudObjectTracking`
    #
    #   **3D Point Cloud Semantic Segmentation** - Use this task type when
    #   you want workers to create a point-level semantic segmentation masks
    #   by painting objects in a 3D point cloud using different colors where
    #   each color is assigned to one of the classes you specify.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-3DPointCloudSemanticSegmentation`
    #
    #   **Use the following ARNs for Label Verification and Adjustment
    #   Jobs**
    #
    #   Use label verification and adjustment jobs to review and adjust
    #   labels. To learn more, see [Verify and Adjust Labels ][4].
    #
    #   **Bounding box verification** - Uses a variant of the Expectation
    #   Maximization approach to estimate the true class of verification
    #   judgement for bounding box labels based on annotations from
    #   individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   **Bounding box adjustment** - Finds the most similar boxes from
    #   different workers based on the Jaccard index of the adjusted
    #   annotations.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-AdjustmentBoundingBox`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-AdjustmentBoundingBox`
    #
    #   **Semantic segmentation verification** - Uses a variant of the
    #   Expectation Maximization approach to estimate the true class of
    #   verification judgment for semantic segmentation labels based on
    #   annotations from individual workers.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-VerificationSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-VerificationSemanticSegmentation`
    #
    #   **Semantic segmentation adjustment** - Treats each pixel in an image
    #   as a multi-class classification and treats pixel adjusted
    #   annotations from workers as "votes" for the correct label.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-AdjustmentSemanticSegmentation`
    #
    #   **Video Frame Object Detection Adjustment** - Use this task type
    #   when you want workers to adjust bounding boxes that workers have
    #   added to video frames to classify and localize objects in a sequence
    #   of video frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-AdjustmentVideoObjectDetection`
    #
    #   **Video Frame Object Tracking Adjustment** - Use this task type when
    #   you want workers to adjust bounding boxes that workers have added to
    #   video frames to track object movement across a sequence of video
    #   frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-AdjustmentVideoObjectTracking`
    #
    #   **3D point cloud object detection adjustment** - Adjust 3D cuboids
    #   in a point cloud frame.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-Adjustment3DPointCloudObjectDetection`
    #
    #   **3D point cloud object tracking adjustment** - Adjust 3D cuboids
    #   across a sequence of point cloud frames.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-Adjustment3DPointCloudObjectTracking`
    #
    #   **3D point cloud semantic segmentation adjustment** - Adjust
    #   semantic segmentation masks in a 3D point cloud.
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-south-1:565803892007:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-central-1:203001061592:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-2:845288260483:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-2:487402164563:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-1:377565633583:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #   * `arn:aws:lambda:ca-central-1:918755190332:function:PRE-Adjustment3DPointCloudSemanticSegmentation`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-task-types.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates-step3.html#sms-custom-templates-step3-prelambda
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-point-cloud-task-types.html
    #   [4]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-verification-data.html
    #   @return [String]
    #
    # @!attribute [rw] task_keywords
    #   Keywords used to describe the task so that workers on Amazon
    #   Mechanical Turk can discover the task.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_title
    #   A title for the task for your human workers.
    #   @return [String]
    #
    # @!attribute [rw] task_description
    #   A description of the task for your human workers.
    #   @return [String]
    #
    # @!attribute [rw] number_of_human_workers_per_data_object
    #   The number of human workers that will label an object.
    #   @return [Integer]
    #
    # @!attribute [rw] task_time_limit_in_seconds
    #   The amount of time that a worker has to complete a task.
    #   @return [Integer]
    #
    # @!attribute [rw] task_availability_lifetime_in_seconds
    #   The length of time that a task remains available for labeling by
    #   human workers. **If you choose the Amazon Mechanical Turk workforce,
    #   the maximum is 12 hours (43200)**. The default value is 864000
    #   seconds (10 days). For private and vendor workforces, the maximum is
    #   as listed.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_task_count
    #   Defines the maximum number of data objects that can be labeled by
    #   human workers at the same time. Also referred to as batch size. Each
    #   object may have more than one worker at one time. The default value
    #   is 1000 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] annotation_consolidation_config
    #   Configures how labels are consolidated across human workers.
    #   @return [Types::AnnotationConsolidationConfig]
    #
    # @!attribute [rw] public_workforce_task_price
    #   The price that you pay for each task performed by an Amazon
    #   Mechanical Turk worker.
    #   @return [Types::PublicWorkforceTaskPrice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HumanTaskConfig AWS API Documentation
    #
    class HumanTaskConfig < Struct.new(
      :workteam_arn,
      :ui_config,
      :pre_human_task_lambda_arn,
      :task_keywords,
      :task_title,
      :task_description,
      :number_of_human_workers_per_data_object,
      :task_time_limit_in_seconds,
      :task_availability_lifetime_in_seconds,
      :max_concurrent_task_count,
      :annotation_consolidation_config,
      :public_workforce_task_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for human task user interface information.
    #
    # @!attribute [rw] human_task_ui_name
    #   The name of the human task user interface.
    #   @return [String]
    #
    # @!attribute [rw] human_task_ui_arn
    #   The Amazon Resource Name (ARN) of the human task user interface.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp when SageMaker created the human task user interface.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HumanTaskUiSummary AWS API Documentation
    #
    class HumanTaskUiSummary < Struct.new(
      :human_task_ui_name,
      :human_task_ui_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which training algorithm to use for training jobs that a
    # hyperparameter tuning job launches and the metrics to monitor.
    #
    # @note When making an API call, you may pass HyperParameterAlgorithmSpecification
    #   data as a hash:
    #
    #       {
    #         training_image: "AlgorithmImage",
    #         training_input_mode: "Pipe", # required, accepts Pipe, File
    #         algorithm_name: "ArnOrName",
    #         metric_definitions: [
    #           {
    #             name: "MetricName", # required
    #             regex: "MetricRegex", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] training_image
    #   The registry path of the Docker image that contains the training
    #   algorithm. For information about Docker registry paths for built-in
    #   algorithms, see [Algorithms Provided by Amazon SageMaker: Common
    #   Parameters][1]. Amazon SageMaker supports both
    #   `registry/repository[:tag]` and `registry/repository[@digest]` image
    #   path formats. For more information, see [Using Your Own Algorithms
    #   with Amazon SageMaker][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #   @return [String]
    #
    # @!attribute [rw] training_input_mode
    #   The input mode that the algorithm supports: File or Pipe. In File
    #   input mode, Amazon SageMaker downloads the training data from Amazon
    #   S3 to the storage volume that is attached to the training instance
    #   and mounts the directory to the Docker volume for the training
    #   container. In Pipe input mode, Amazon SageMaker streams data
    #   directly from Amazon S3 to the container.
    #
    #   If you specify File mode, make sure that you provision the storage
    #   volume that is attached to the training instance with enough
    #   capacity to accommodate the training data downloaded from Amazon S3,
    #   the model artifacts, and intermediate information.
    #
    #
    #
    #   For more information about input modes, see [Algorithms][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   @return [String]
    #
    # @!attribute [rw] algorithm_name
    #   The name of the resource algorithm to use for the hyperparameter
    #   tuning job. If you specify a value for this parameter, do not
    #   specify a value for `TrainingImage`.
    #   @return [String]
    #
    # @!attribute [rw] metric_definitions
    #   An array of MetricDefinition objects that specify the metrics that
    #   the algorithm emits.
    #   @return [Array<Types::MetricDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterAlgorithmSpecification AWS API Documentation
    #
    class HyperParameterAlgorithmSpecification < Struct.new(
      :training_image,
      :training_input_mode,
      :algorithm_name,
      :metric_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a hyperparameter to be used by an algorithm.
    #
    # @note When making an API call, you may pass HyperParameterSpecification
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName", # required
    #         description: "EntityDescription",
    #         type: "Integer", # required, accepts Integer, Continuous, Categorical, FreeText
    #         range: {
    #           integer_parameter_range_specification: {
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
    #           },
    #           continuous_parameter_range_specification: {
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
    #           },
    #           categorical_parameter_range_specification: {
    #             values: ["ParameterValue"], # required
    #           },
    #         },
    #         is_tunable: false,
    #         is_required: false,
    #         default_value: "ParameterValue",
    #       }
    #
    # @!attribute [rw] name
    #   The name of this hyperparameter. The name must be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this hyperparameter. The valid types are `Integer`,
    #   `Continuous`, `Categorical`, and `FreeText`.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The allowed range for this hyperparameter.
    #   @return [Types::ParameterRange]
    #
    # @!attribute [rw] is_tunable
    #   Indicates whether this hyperparameter is tunable in a hyperparameter
    #   tuning job.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_required
    #   Indicates whether this hyperparameter is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   The default value for this hyperparameter. If a default value is
    #   specified, a hyperparameter cannot be required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterSpecification AWS API Documentation
    #
    class HyperParameterSpecification < Struct.new(
      :name,
      :description,
      :type,
      :range,
      :is_tunable,
      :is_required,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the training jobs launched by a hyperparameter tuning job.
    #
    # @note When making an API call, you may pass HyperParameterTrainingJobDefinition
    #   data as a hash:
    #
    #       {
    #         definition_name: "HyperParameterTrainingJobDefinitionName",
    #         tuning_objective: {
    #           type: "Maximize", # required, accepts Maximize, Minimize
    #           metric_name: "MetricName", # required
    #         },
    #         hyper_parameter_ranges: {
    #           integer_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #               scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #             },
    #           ],
    #           continuous_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #               scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #             },
    #           ],
    #           categorical_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               values: ["ParameterValue"], # required
    #             },
    #           ],
    #         },
    #         static_hyper_parameters: {
    #           "ParameterKey" => "ParameterValue",
    #         },
    #         algorithm_specification: { # required
    #           training_image: "AlgorithmImage",
    #           training_input_mode: "Pipe", # required, accepts Pipe, File
    #           algorithm_name: "ArnOrName",
    #           metric_definitions: [
    #             {
    #               name: "MetricName", # required
    #               regex: "MetricRegex", # required
    #             },
    #           ],
    #         },
    #         role_arn: "RoleArn", # required
    #         input_data_config: [
    #           {
    #             channel_name: "ChannelName", # required
    #             data_source: { # required
    #               s3_data_source: {
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                 s3_uri: "S3Uri", # required
    #                 s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                 attribute_names: ["AttributeName"],
    #               },
    #               file_system_data_source: {
    #                 file_system_id: "FileSystemId", # required
    #                 file_system_access_mode: "rw", # required, accepts rw, ro
    #                 file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                 directory_path: "DirectoryPath", # required
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             record_wrapper_type: "None", # accepts None, RecordIO
    #             input_mode: "Pipe", # accepts Pipe, File
    #             shuffle_config: {
    #               seed: 1, # required
    #             },
    #           },
    #         ],
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         output_data_config: { # required
    #           kms_key_id: "KmsKeyId",
    #           s3_output_path: "S3Uri", # required
    #         },
    #         resource_config: { # required
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #           instance_count: 1, # required
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
    #           max_wait_time_in_seconds: 1,
    #         },
    #         enable_network_isolation: false,
    #         enable_inter_container_traffic_encryption: false,
    #         enable_managed_spot_training: false,
    #         checkpoint_config: {
    #           s3_uri: "S3Uri", # required
    #           local_path: "DirectoryPath",
    #         },
    #       }
    #
    # @!attribute [rw] definition_name
    #   The job definition name.
    #   @return [String]
    #
    # @!attribute [rw] tuning_objective
    #   Defines the objective metric for a hyperparameter tuning job.
    #   Hyperparameter tuning uses the value of this metric to evaluate the
    #   training jobs it launches, and returns the training job that results
    #   in either the highest or lowest value for this metric, depending on
    #   the value you specify for the `Type` parameter.
    #   @return [Types::HyperParameterTuningJobObjective]
    #
    # @!attribute [rw] hyper_parameter_ranges
    #   Specifies ranges of integer, continuous, and categorical
    #   hyperparameters that a hyperparameter tuning job searches. The
    #   hyperparameter tuning job launches training jobs with hyperparameter
    #   values within these ranges to find the combination of values that
    #   result in the training job with the best performance as measured by
    #   the objective metric of the hyperparameter tuning job.
    #
    #   <note markdown="1"> You can specify a maximum of 20 hyperparameters that a
    #   hyperparameter tuning job can search over. Every possible value of a
    #   categorical parameter range counts against this limit.
    #
    #    </note>
    #   @return [Types::ParameterRanges]
    #
    # @!attribute [rw] static_hyper_parameters
    #   Specifies the values of hyperparameters that do not change for the
    #   tuning job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] algorithm_specification
    #   The HyperParameterAlgorithmSpecification object that specifies the
    #   resource algorithm to use for the training jobs that the tuning job
    #   launches.
    #   @return [Types::HyperParameterAlgorithmSpecification]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   training jobs that the tuning job launches.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   An array of Channel objects that specify the input for the training
    #   jobs that the tuning job launches.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] vpc_config
    #   The VpcConfig object that specifies the VPC that you want the
    #   training jobs that this hyperparameter tuning job launches to
    #   connect to. Control access to and from your training container by
    #   configuring the VPC. For more information, see [Protect Training
    #   Jobs by Using an Amazon Virtual Private Cloud][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies the path to the Amazon S3 bucket where you store model
    #   artifacts from the training jobs that the tuning job launches.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] resource_config
    #   The resources, including the compute instances and storage volumes,
    #   to use for the training jobs that the tuning job launches.
    #
    #   Storage volumes store model artifacts and incremental states.
    #   Training algorithms might also use storage volumes for scratch
    #   space. If you want Amazon SageMaker to use the storage volume to
    #   store the training data, choose `File` as the `TrainingInputMode` in
    #   the algorithm specification. For distributed training algorithms,
    #   specify an instance count greater than 1.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model hyperparameter training job
    #   can run. It also specifies how long you are willing to wait for a
    #   managed spot training job to complete. When the job reaches the a
    #   limit, Amazon SageMaker ends the training job. Use this API to cap
    #   model training costs.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] enable_network_isolation
    #   Isolates the training container. No inbound or outbound network
    #   calls can be made, except for calls between peers within a training
    #   cluster for distributed training. If network isolation is used for
    #   training jobs that are configured to use a VPC, Amazon SageMaker
    #   downloads and uploads customer data and model artifacts through the
    #   specified VPC, but the training container does not have network
    #   access.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_inter_container_traffic_encryption
    #   To encrypt all communications between ML compute instances in
    #   distributed training, choose `True`. Encryption provides greater
    #   security for distributed training, but training might take longer.
    #   How long it takes depends on the amount of communication between
    #   compute instances, especially if you use a deep learning algorithm
    #   in distributed training.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_managed_spot_training
    #   A Boolean indicating whether managed spot training is enabled
    #   (`True`) or not (`False`).
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_config
    #   Contains information about the output location for managed spot
    #   training checkpoint data.
    #   @return [Types::CheckpointConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTrainingJobDefinition AWS API Documentation
    #
    class HyperParameterTrainingJobDefinition < Struct.new(
      :definition_name,
      :tuning_objective,
      :hyper_parameter_ranges,
      :static_hyper_parameters,
      :algorithm_specification,
      :role_arn,
      :input_data_config,
      :vpc_config,
      :output_data_config,
      :resource_config,
      :stopping_condition,
      :enable_network_isolation,
      :enable_inter_container_traffic_encryption,
      :enable_managed_spot_training,
      :checkpoint_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies summary information about a training job.
    #
    # @!attribute [rw] training_job_definition_name
    #   The training job definition name.
    #   @return [String]
    #
    # @!attribute [rw] training_job_name
    #   The name of the training job.
    #   @return [String]
    #
    # @!attribute [rw] training_job_arn
    #   The Amazon Resource Name (ARN) of the training job.
    #   @return [String]
    #
    # @!attribute [rw] tuning_job_name
    #   The HyperParameter tuning job that launched the training job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the training job was created.
    #   @return [Time]
    #
    # @!attribute [rw] training_start_time
    #   The date and time that the training job started.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   Specifies the time when the training job ends on training instances.
    #   You are billed for the time interval between the value of
    #   `TrainingStartTime` and this time. For successful jobs and stopped
    #   jobs, this is the time after model artifacts are uploaded. For
    #   failed jobs, this is the time when Amazon SageMaker detects a job
    #   failure.
    #   @return [Time]
    #
    # @!attribute [rw] training_job_status
    #   The status of the training job.
    #   @return [String]
    #
    # @!attribute [rw] tuned_hyper_parameters
    #   A list of the hyperparameters for which you specified ranges to
    #   search.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] failure_reason
    #   The reason that the training job failed.
    #   @return [String]
    #
    # @!attribute [rw] final_hyper_parameter_tuning_job_objective_metric
    #   The FinalHyperParameterTuningJobObjectiveMetric object that
    #   specifies the value of the objective metric of the tuning job that
    #   launched this training job.
    #   @return [Types::FinalHyperParameterTuningJobObjectiveMetric]
    #
    # @!attribute [rw] objective_status
    #   The status of the objective metric for the training job:
    #
    #   * Succeeded: The final objective metric for the training job was
    #     evaluated by the hyperparameter tuning job and used in the
    #     hyperparameter tuning process.
    #
    #   ^
    #   ^
    #
    #   * Pending: The training job is in progress and evaluation of its
    #     final objective metric is pending.
    #
    #   ^
    #   ^
    #
    #   * Failed: The final objective metric for the training job was not
    #     evaluated, and was not used in the hyperparameter tuning process.
    #     This typically occurs when the training job failed or did not emit
    #     an objective metric.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTrainingJobSummary AWS API Documentation
    #
    class HyperParameterTrainingJobSummary < Struct.new(
      :training_job_definition_name,
      :training_job_name,
      :training_job_arn,
      :tuning_job_name,
      :creation_time,
      :training_start_time,
      :training_end_time,
      :training_job_status,
      :tuned_hyper_parameters,
      :failure_reason,
      :final_hyper_parameter_tuning_job_objective_metric,
      :objective_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures a hyperparameter tuning job.
    #
    # @note When making an API call, you may pass HyperParameterTuningJobConfig
    #   data as a hash:
    #
    #       {
    #         strategy: "Bayesian", # required, accepts Bayesian, Random
    #         hyper_parameter_tuning_job_objective: {
    #           type: "Maximize", # required, accepts Maximize, Minimize
    #           metric_name: "MetricName", # required
    #         },
    #         resource_limits: { # required
    #           max_number_of_training_jobs: 1, # required
    #           max_parallel_training_jobs: 1, # required
    #         },
    #         parameter_ranges: {
    #           integer_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #               scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #             },
    #           ],
    #           continuous_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #               scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #             },
    #           ],
    #           categorical_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               values: ["ParameterValue"], # required
    #             },
    #           ],
    #         },
    #         training_job_early_stopping_type: "Off", # accepts Off, Auto
    #         tuning_job_completion_criteria: {
    #           target_objective_metric_value: 1.0, # required
    #         },
    #       }
    #
    # @!attribute [rw] strategy
    #   Specifies how hyperparameter tuning chooses the combinations of
    #   hyperparameter values to use for the training job it launches. To
    #   use the Bayesian search strategy, set this to `Bayesian`. To
    #   randomly search, set it to `Random`. For information about search
    #   strategies, see [How Hyperparameter Tuning Works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_objective
    #   The HyperParameterTuningJobObjective object that specifies the
    #   objective metric for this tuning job.
    #   @return [Types::HyperParameterTuningJobObjective]
    #
    # @!attribute [rw] resource_limits
    #   The ResourceLimits object that specifies the maximum number of
    #   training jobs and parallel training jobs for this tuning job.
    #   @return [Types::ResourceLimits]
    #
    # @!attribute [rw] parameter_ranges
    #   The ParameterRanges object that specifies the ranges of
    #   hyperparameters that this tuning job searches.
    #   @return [Types::ParameterRanges]
    #
    # @!attribute [rw] training_job_early_stopping_type
    #   Specifies whether to use early stopping for training jobs launched
    #   by the hyperparameter tuning job. This can be one of the following
    #   values (the default value is `OFF`):
    #
    #   OFF
    #
    #   : Training jobs launched by the hyperparameter tuning job do not use
    #     early stopping.
    #
    #   AUTO
    #
    #   : Amazon SageMaker stops training jobs launched by the
    #     hyperparameter tuning job when they are unlikely to perform better
    #     than previously completed training jobs. For more information, see
    #     [Stop Training Jobs Early][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-early-stopping.html
    #   @return [String]
    #
    # @!attribute [rw] tuning_job_completion_criteria
    #   The tuning job's completion criteria.
    #   @return [Types::TuningJobCompletionCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTuningJobConfig AWS API Documentation
    #
    class HyperParameterTuningJobConfig < Struct.new(
      :strategy,
      :hyper_parameter_tuning_job_objective,
      :resource_limits,
      :parameter_ranges,
      :training_job_early_stopping_type,
      :tuning_job_completion_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the objective metric for a hyperparameter tuning job.
    # Hyperparameter tuning uses the value of this metric to evaluate the
    # training jobs it launches, and returns the training job that results
    # in either the highest or lowest value for this metric, depending on
    # the value you specify for the `Type` parameter.
    #
    # @note When making an API call, you may pass HyperParameterTuningJobObjective
    #   data as a hash:
    #
    #       {
    #         type: "Maximize", # required, accepts Maximize, Minimize
    #         metric_name: "MetricName", # required
    #       }
    #
    # @!attribute [rw] type
    #   Whether to minimize or maximize the objective metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to use for the objective metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTuningJobObjective AWS API Documentation
    #
    class HyperParameterTuningJobObjective < Struct.new(
      :type,
      :metric_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a hyperparameter tuning job.
    #
    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the tuning job.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_arn
    #   The Amazon Resource Name (ARN) of the tuning job.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_status
    #   The status of the tuning job.
    #   @return [String]
    #
    # @!attribute [rw] strategy
    #   Specifies the search strategy hyperparameter tuning uses to choose
    #   which hyperparameters to use for each iteration. Currently, the only
    #   valid value is Bayesian.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the tuning job was created.
    #   @return [Time]
    #
    # @!attribute [rw] hyper_parameter_tuning_end_time
    #   The date and time that the tuning job ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the tuning job was modified.
    #   @return [Time]
    #
    # @!attribute [rw] training_job_status_counters
    #   The TrainingJobStatusCounters object that specifies the numbers of
    #   training jobs, categorized by status, that this tuning job launched.
    #   @return [Types::TrainingJobStatusCounters]
    #
    # @!attribute [rw] objective_status_counters
    #   The ObjectiveStatusCounters object that specifies the numbers of
    #   training jobs, categorized by objective metric status, that this
    #   tuning job launched.
    #   @return [Types::ObjectiveStatusCounters]
    #
    # @!attribute [rw] resource_limits
    #   The ResourceLimits object that specifies the maximum number of
    #   training jobs and parallel training jobs allowed for this tuning
    #   job.
    #   @return [Types::ResourceLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTuningJobSummary AWS API Documentation
    #
    class HyperParameterTuningJobSummary < Struct.new(
      :hyper_parameter_tuning_job_name,
      :hyper_parameter_tuning_job_arn,
      :hyper_parameter_tuning_job_status,
      :strategy,
      :creation_time,
      :hyper_parameter_tuning_end_time,
      :last_modified_time,
      :training_job_status_counters,
      :objective_status_counters,
      :resource_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for a hyperparameter tuning job that uses
    # one or more previous hyperparameter tuning jobs as a starting point.
    # The results of previous tuning jobs are used to inform which
    # combinations of hyperparameters to search over in the new tuning job.
    #
    # All training jobs launched by the new hyperparameter tuning job are
    # evaluated by using the objective metric, and the training job that
    # performs the best is compared to the best training jobs from the
    # parent tuning jobs. From these, the training job that performs the
    # best as measured by the objective metric is returned as the overall
    # best training job.
    #
    # <note markdown="1"> All training jobs launched by parent hyperparameter tuning jobs and
    # the new hyperparameter tuning jobs count against the limit of training
    # jobs for the tuning job.
    #
    #  </note>
    #
    # @note When making an API call, you may pass HyperParameterTuningJobWarmStartConfig
    #   data as a hash:
    #
    #       {
    #         parent_hyper_parameter_tuning_jobs: [ # required
    #           {
    #             hyper_parameter_tuning_job_name: "HyperParameterTuningJobName",
    #           },
    #         ],
    #         warm_start_type: "IdenticalDataAndAlgorithm", # required, accepts IdenticalDataAndAlgorithm, TransferLearning
    #       }
    #
    # @!attribute [rw] parent_hyper_parameter_tuning_jobs
    #   An array of hyperparameter tuning jobs that are used as the starting
    #   point for the new hyperparameter tuning job. For more information
    #   about warm starting a hyperparameter tuning job, see [Using a
    #   Previous Hyperparameter Tuning Job as a Starting Point][1].
    #
    #   Hyperparameter tuning jobs created before October 1, 2018 cannot be
    #   used as parent jobs for warm start tuning jobs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-warm-start.html
    #   @return [Array<Types::ParentHyperParameterTuningJob>]
    #
    # @!attribute [rw] warm_start_type
    #   Specifies one of the following:
    #
    #   IDENTICAL\_DATA\_AND\_ALGORITHM
    #
    #   : The new hyperparameter tuning job uses the same input data and
    #     training image as the parent tuning jobs. You can change the
    #     hyperparameter ranges to search and the maximum number of training
    #     jobs that the hyperparameter tuning job launches. You cannot use a
    #     new version of the training algorithm, unless the changes in the
    #     new version do not affect the algorithm itself. For example,
    #     changes that improve logging or adding support for a different
    #     data format are allowed. You can also change hyperparameters from
    #     tunable to static, and from static to tunable, but the total
    #     number of static plus tunable hyperparameters must remain the same
    #     as it is in all parent jobs. The objective metric for the new
    #     tuning job must be the same as for all parent jobs.
    #
    #   TRANSFER\_LEARNING
    #
    #   : The new hyperparameter tuning job can include input data,
    #     hyperparameter ranges, maximum number of concurrent training jobs,
    #     and maximum number of training jobs that are different than those
    #     of its parent hyperparameter tuning jobs. The training image can
    #     also be a different version from the version used in the parent
    #     hyperparameter tuning job. You can also change hyperparameters
    #     from tunable to static, and from static to tunable, but the total
    #     number of static plus tunable hyperparameters must remain the same
    #     as it is in all parent jobs. The objective metric for the new
    #     tuning job must be the same as for all parent jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTuningJobWarmStartConfig AWS API Documentation
    #
    class HyperParameterTuningJobWarmStartConfig < Struct.new(
      :parent_hyper_parameter_tuning_jobs,
      :warm_start_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the model container is in Amazon ECR or a private
    # Docker registry accessible from your Amazon Virtual Private Cloud
    # (VPC).
    #
    # @note When making an API call, you may pass ImageConfig
    #   data as a hash:
    #
    #       {
    #         repository_access_mode: "Platform", # required, accepts Platform, Vpc
    #       }
    #
    # @!attribute [rw] repository_access_mode
    #   Set this to one of the following values:
    #
    #   * `Platform` - The model image is hosted in Amazon ECR.
    #
    #   * `Vpc` - The model image is hosted in a private Docker registry in
    #     your VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ImageConfig AWS API Documentation
    #
    class ImageConfig < Struct.new(
      :repository_access_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how to perform inference generation after a training job is
    # run.
    #
    # @note When making an API call, you may pass InferenceSpecification
    #   data as a hash:
    #
    #       {
    #         containers: [ # required
    #           {
    #             container_hostname: "ContainerHostname",
    #             image: "ContainerImage", # required
    #             image_digest: "ImageDigest",
    #             model_data_url: "Url",
    #             product_id: "ProductId",
    #           },
    #         ],
    #         supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #         supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
    #         supported_content_types: ["ContentType"], # required
    #         supported_response_mime_types: ["ResponseMIMEType"], # required
    #       }
    #
    # @!attribute [rw] containers
    #   The Amazon ECR registry path of the Docker image that contains the
    #   inference code.
    #   @return [Array<Types::ModelPackageContainerDefinition>]
    #
    # @!attribute [rw] supported_transform_instance_types
    #   A list of the instance types on which a transformation job can be
    #   run or on which an endpoint can be deployed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_realtime_inference_instance_types
    #   A list of the instance types that are used to generate inferences in
    #   real-time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_content_types
    #   The supported MIME types for the input data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_response_mime_types
    #   The supported MIME types for the output data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/InferenceSpecification AWS API Documentation
    #
    class InferenceSpecification < Struct.new(
      :containers,
      :supported_transform_instance_types,
      :supported_realtime_inference_instance_types,
      :supported_content_types,
      :supported_response_mime_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the location of input model artifacts, the
    # name and shape of the expected data inputs, and the framework in which
    # the model was trained.
    #
    # @note When making an API call, you may pass InputConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         data_input_config: "DataInputConfig", # required
    #         framework: "TENSORFLOW", # required, accepts TENSORFLOW, KERAS, MXNET, ONNX, PYTORCH, XGBOOST, TFLITE
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The S3 path where the model artifacts, which result from model
    #   training, are stored. This path must point to a single gzip
    #   compressed tar archive (.tar.gz suffix).
    #   @return [String]
    #
    # @!attribute [rw] data_input_config
    #   Specifies the name and shape of the expected data inputs for your
    #   trained model with a JSON dictionary form. The data inputs are
    #   InputConfig$Framework specific.
    #
    #   * `TensorFlow`\: You must specify the name and shape (NHWC format)
    #     of the expected data inputs using a dictionary format for your
    #     trained model. The dictionary formats required for the console and
    #     CLI are different.
    #
    #     * Examples for one input:
    #
    #       * If using the console, `\{"input":[1,1024,1024,3]\}`
    #
    #       * If using the CLI, `\{"input":[1,1024,1024,3]\}`
    #
    #     * Examples for two inputs:
    #
    #       * If using the console, `\{"data1": [1,28,28,1],
    #         "data2":[1,28,28,1]\}`
    #
    #       * If using the CLI, `\{"data1": [1,28,28,1],
    #         "data2":[1,28,28,1]\}`
    #
    #   * `KERAS`\: You must specify the name and shape (NCHW format) of
    #     expected data inputs using a dictionary format for your trained
    #     model. Note that while Keras model artifacts should be uploaded in
    #     NHWC (channel-last) format, `DataInputConfig` should be specified
    #     in NCHW (channel-first) format. The dictionary formats required
    #     for the console and CLI are different.
    #
    #     * Examples for one input:
    #
    #       * If using the console, `\{"input_1":[1,3,224,224]\}`
    #
    #       * If using the CLI, `\{"input_1":[1,3,224,224]\}`
    #
    #     * Examples for two inputs:
    #
    #       * If using the console, `\{"input_1": [1,3,224,224],
    #         "input_2":[1,3,224,224]\} `
    #
    #       * If using the CLI, `\{"input_1": [1,3,224,224],
    #         "input_2":[1,3,224,224]\}`
    #
    #   * `MXNET/ONNX`\: You must specify the name and shape (NCHW format)
    #     of the expected data inputs in order using a dictionary format for
    #     your trained model. The dictionary formats required for the
    #     console and CLI are different.
    #
    #     * Examples for one input:
    #
    #       * If using the console, `\{"data":[1,3,1024,1024]\}`
    #
    #       * If using the CLI, `\{"data":[1,3,1024,1024]\}`
    #
    #     * Examples for two inputs:
    #
    #       * If using the console, `\{"var1": [1,1,28,28],
    #         "var2":[1,1,28,28]\} `
    #
    #       * If using the CLI, `\{"var1": [1,1,28,28],
    #         "var2":[1,1,28,28]\}`
    #
    #   * `PyTorch`\: You can either specify the name and shape (NCHW
    #     format) of expected data inputs in order using a dictionary format
    #     for your trained model or you can specify the shape only using a
    #     list format. The dictionary formats required for the console and
    #     CLI are different. The list formats for the console and CLI are
    #     the same.
    #
    #     * Examples for one input in dictionary format:
    #
    #       * If using the console, `\{"input0":[1,3,224,224]\}`
    #
    #       * If using the CLI, `\{"input0":[1,3,224,224]\}`
    #
    #     * Example for one input in list format: `[[1,3,224,224]]`
    #
    #     * Examples for two inputs in dictionary format:
    #
    #       * If using the console, `\{"input0":[1,3,224,224],
    #         "input1":[1,3,224,224]\}`
    #
    #       * If using the CLI, `\{"input0":[1,3,224,224],
    #         "input1":[1,3,224,224]\} `
    #
    #     * Example for two inputs in list format: `[[1,3,224,224],
    #       [1,3,224,224]]`
    #
    #   * `XGBOOST`\: input data name and shape are not needed.
    #
    #   `DataInputConfig` supports the following parameters for `CoreML`
    #   OutputConfig$TargetDevice (ML Model format):
    #
    #   * `shape`\: Input shape, for example `\{"input_1": \{"shape":
    #     [1,224,224,3]\}\}`. In addition to static input shapes, CoreML
    #     converter supports Flexible input shapes:
    #
    #     * Range Dimension. You can use the Range Dimension feature if you
    #       know the input shape will be within some specific interval in
    #       that dimension, for example: `\{"input_1": \{"shape": ["1..10",
    #       224, 224, 3]\}\}`
    #
    #     * Enumerated shapes. Sometimes, the models are trained to work
    #       only on a select set of inputs. You can enumerate all supported
    #       input shapes, for example: `\{"input_1": \{"shape": [[1, 224,
    #       224, 3], [1, 160, 160, 3]]\}\}`
    #
    #   * `default_shape`\: Default input shape. You can set a default shape
    #     during conversion for both Range Dimension and Enumerated Shapes.
    #     For example `\{"input_1": \{"shape": ["1..10", 224, 224, 3],
    #     "default_shape": [1, 224, 224, 3]\}\}`
    #
    #   * `type`\: Input type. Allowed values: `Image` and `Tensor`. By
    #     default, the converter generates an ML Model with inputs of type
    #     Tensor (MultiArray). User can set input type to be Image. Image
    #     input type requires additional input parameters such as `bias` and
    #     `scale`.
    #
    #   * `bias`\: If the input type is an Image, you need to provide the
    #     bias vector.
    #
    #   * `scale`\: If the input type is an Image, you need to provide a
    #     scale factor.
    #
    #   CoreML `ClassifierConfig` parameters can be specified using
    #   OutputConfig$CompilerOptions. CoreML converter supports Tensorflow
    #   and PyTorch models. CoreML conversion examples:
    #
    #   * Tensor type input:
    #
    #     * `"DataInputConfig": \{"input_1": \{"shape": [[1,224,224,3],
    #       [1,160,160,3]], "default_shape": [1,224,224,3]\}\}`
    #
    #     ^
    #
    #   * Tensor type input without input name (PyTorch):
    #
    #     * `"DataInputConfig": [\{"shape": [[1,3,224,224], [1,3,160,160]],
    #       "default_shape": [1,3,224,224]\}]`
    #
    #     ^
    #
    #   * Image type input:
    #
    #     * `"DataInputConfig": \{"input_1": \{"shape": [[1,224,224,3],
    #       [1,160,160,3]], "default_shape": [1,224,224,3], "type": "Image",
    #       "bias": [-1,-1,-1], "scale": 0.007843137255\}\}`
    #
    #     * `"CompilerOptions": \{"class_labels":
    #       "imagenet_labels_1000.txt"\}`
    #
    #   * Image type input without input name (PyTorch):
    #
    #     * `"DataInputConfig": [\{"shape": [[1,3,224,224], [1,3,160,160]],
    #       "default_shape": [1,3,224,224], "type": "Image", "bias":
    #       [-1,-1,-1], "scale": 0.007843137255\}]`
    #
    #     * `"CompilerOptions": \{"class_labels":
    #       "imagenet_labels_1000.txt"\}`
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   Identifies the framework in which the model was trained. For
    #   example: TENSORFLOW.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/InputConfig AWS API Documentation
    #
    class InputConfig < Struct.new(
      :s3_uri,
      :data_input_config,
      :framework)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a hyperparameter of the integer type, specifies the range that a
    # hyperparameter tuning job searches.
    #
    # @note When making an API call, you may pass IntegerParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterKey", # required
    #         min_value: "ParameterValue", # required
    #         max_value: "ParameterValue", # required
    #         scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #       }
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter to search.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum value of the hyperparameter to search.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum value of the hyperparameter to search.
    #   @return [String]
    #
    # @!attribute [rw] scaling_type
    #   The scale that hyperparameter tuning uses to search the
    #   hyperparameter range. For information about choosing a
    #   hyperparameter scale, see [Hyperparameter Scaling][1]. One of the
    #   following values:
    #
    #   Auto
    #
    #   : Amazon SageMaker hyperparameter tuning chooses the best scale for
    #     the hyperparameter.
    #
    #   Linear
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a linear scale.
    #
    #   Logarithmic
    #
    #   : Hyperparameter tuning searches the values in the hyperparameter
    #     range by using a logarithmic scale.
    #
    #     Logarithmic scaling works only for ranges that have only values
    #     greater than 0.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/IntegerParameterRange AWS API Documentation
    #
    class IntegerParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :scaling_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the possible values for an integer hyperparameter.
    #
    # @note When making an API call, you may pass IntegerParameterRangeSpecification
    #   data as a hash:
    #
    #       {
    #         min_value: "ParameterValue", # required
    #         max_value: "ParameterValue", # required
    #       }
    #
    # @!attribute [rw] min_value
    #   The minimum integer value allowed.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum integer value allowed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/IntegerParameterRangeSpecification AWS API Documentation
    #
    class IntegerParameterRangeSpecification < Struct.new(
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Jupyter server's app settings.
    #
    # @note When making an API call, you may pass JupyterServerAppSettings
    #   data as a hash:
    #
    #       {
    #         default_resource_spec: {
    #           sage_maker_image_arn: "ImageArn",
    #           instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #         },
    #       }
    #
    # @!attribute [rw] default_resource_spec
    #   The default instance type and the Amazon Resource Name (ARN) of the
    #   SageMaker image created on the instance.
    #   @return [Types::ResourceSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/JupyterServerAppSettings AWS API Documentation
    #
    class JupyterServerAppSettings < Struct.new(
      :default_resource_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # The kernel gateway app settings.
    #
    # @note When making an API call, you may pass KernelGatewayAppSettings
    #   data as a hash:
    #
    #       {
    #         default_resource_spec: {
    #           sage_maker_image_arn: "ImageArn",
    #           instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #         },
    #       }
    #
    # @!attribute [rw] default_resource_spec
    #   The default instance type and the Amazon Resource Name (ARN) of the
    #   SageMaker image created on the instance.
    #   @return [Types::ResourceSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/KernelGatewayAppSettings AWS API Documentation
    #
    class KernelGatewayAppSettings < Struct.new(
      :default_resource_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a breakdown of the number of objects labeled.
    #
    # @!attribute [rw] total_labeled
    #   The total number of objects labeled.
    #   @return [Integer]
    #
    # @!attribute [rw] human_labeled
    #   The total number of objects labeled by a human worker.
    #   @return [Integer]
    #
    # @!attribute [rw] machine_labeled
    #   The total number of objects labeled by automated data labeling.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_non_retryable_error
    #   The total number of objects that could not be labeled due to an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] unlabeled
    #   The total number of objects not yet labeled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelCounters AWS API Documentation
    #
    class LabelCounters < Struct.new(
      :total_labeled,
      :human_labeled,
      :machine_labeled,
      :failed_non_retryable_error,
      :unlabeled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides counts for human-labeled tasks in the labeling job.
    #
    # @!attribute [rw] human_labeled
    #   The total number of data objects labeled by a human worker.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_human
    #   The total number of data objects that need to be labeled by a human
    #   worker.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total number of tasks in the labeling job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelCountersForWorkteam AWS API Documentation
    #
    class LabelCountersForWorkteam < Struct.new(
      :human_labeled,
      :pending_human,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for auto-labeling of your data
    # objects. A `LabelingJobAlgorithmsConfig` object must be supplied in
    # order to use auto-labeling.
    #
    # @note When making an API call, you may pass LabelingJobAlgorithmsConfig
    #   data as a hash:
    #
    #       {
    #         labeling_job_algorithm_specification_arn: "LabelingJobAlgorithmSpecificationArn", # required
    #         initial_active_learning_model_arn: "ModelArn",
    #         labeling_job_resource_config: {
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] labeling_job_algorithm_specification_arn
    #   Specifies the Amazon Resource Name (ARN) of the algorithm used for
    #   auto-labeling. You must select one of the following ARNs:
    #
    #   * *Image classification*
    #
    #     `arn:aws:sagemaker:region:027400017018:labeling-job-algorithm-specification/image-classification`
    #
    #   * *Text classification*
    #
    #     `arn:aws:sagemaker:region:027400017018:labeling-job-algorithm-specification/text-classification`
    #
    #   * *Object detection*
    #
    #     `arn:aws:sagemaker:region:027400017018:labeling-job-algorithm-specification/object-detection`
    #
    #   * *Semantic Segmentation*
    #
    #     `arn:aws:sagemaker:region:027400017018:labeling-job-algorithm-specification/semantic-segmentation`
    #   @return [String]
    #
    # @!attribute [rw] initial_active_learning_model_arn
    #   At the end of an auto-label job Ground Truth sends the Amazon
    #   Resource Name (ARN) of the final model used for auto-labeling. You
    #   can use this model as the starting point for subsequent similar jobs
    #   by providing the ARN of the model here.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_resource_config
    #   Provides configuration information for a labeling job.
    #   @return [Types::LabelingJobResourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobAlgorithmsConfig AWS API Documentation
    #
    class LabelingJobAlgorithmsConfig < Struct.new(
      :labeling_job_algorithm_specification_arn,
      :initial_active_learning_model_arn,
      :labeling_job_resource_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of the data specified by the customer. Use these to
    # describe the data to be labeled.
    #
    # @note When making an API call, you may pass LabelingJobDataAttributes
    #   data as a hash:
    #
    #       {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       }
    #
    # @!attribute [rw] content_classifiers
    #   Declares that your content is free of personally identifiable
    #   information or adult content. Amazon SageMaker may restrict the
    #   Amazon Mechanical Turk workers that can view your task based on this
    #   information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobDataAttributes AWS API Documentation
    #
    class LabelingJobDataAttributes < Struct.new(
      :content_classifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the location of input data.
    #
    # You must specify at least one of the following: `S3DataSource` or
    # `SnsDataSource`.
    #
    # Use `SnsDataSource` to specify an SNS input topic for a streaming
    # labeling job. If you do not specify and SNS input topic ARN, Ground
    # Truth will create a one-time labeling job.
    #
    # Use `S3DataSource` to specify an input manifest file for both
    # streaming and one-time labeling jobs. Adding an `S3DataSource` is
    # optional if you use `SnsDataSource` to create a streaming labeling
    # job.
    #
    # @note When making an API call, you may pass LabelingJobDataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_source: {
    #           manifest_s3_uri: "S3Uri", # required
    #         },
    #         sns_data_source: {
    #           sns_topic_arn: "SnsTopicArn", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3_data_source
    #   The Amazon S3 location of the input data objects.
    #   @return [Types::LabelingJobS3DataSource]
    #
    # @!attribute [rw] sns_data_source
    #   An Amazon SNS data source used for streaming labeling jobs.
    #   @return [Types::LabelingJobSnsDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobDataSource AWS API Documentation
    #
    class LabelingJobDataSource < Struct.new(
      :s3_data_source,
      :sns_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for a work team.
    #
    # @!attribute [rw] labeling_job_name
    #   The name of the labeling job that the work team is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] job_reference_code
    #   A unique identifier for a labeling job. You can use this to refer to
    #   a specific labeling job.
    #   @return [String]
    #
    # @!attribute [rw] work_requester_account_id
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the labeling job was created.
    #   @return [Time]
    #
    # @!attribute [rw] label_counters
    #   Provides information about the progress of a labeling job.
    #   @return [Types::LabelCountersForWorkteam]
    #
    # @!attribute [rw] number_of_human_workers_per_data_object
    #   The configured number of workers per data object.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobForWorkteamSummary AWS API Documentation
    #
    class LabelingJobForWorkteamSummary < Struct.new(
      :labeling_job_name,
      :job_reference_code,
      :work_requester_account_id,
      :creation_time,
      :label_counters,
      :number_of_human_workers_per_data_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration information for a labeling job.
    #
    # @note When making an API call, you may pass LabelingJobInputConfig
    #   data as a hash:
    #
    #       {
    #         data_source: { # required
    #           s3_data_source: {
    #             manifest_s3_uri: "S3Uri", # required
    #           },
    #           sns_data_source: {
    #             sns_topic_arn: "SnsTopicArn", # required
    #           },
    #         },
    #         data_attributes: {
    #           content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #         },
    #       }
    #
    # @!attribute [rw] data_source
    #   The location of the input data.
    #   @return [Types::LabelingJobDataSource]
    #
    # @!attribute [rw] data_attributes
    #   Attributes of the data specified by the customer.
    #   @return [Types::LabelingJobDataAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobInputConfig AWS API Documentation
    #
    class LabelingJobInputConfig < Struct.new(
      :data_source,
      :data_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the location of the output produced by the labeling job.
    #
    # @!attribute [rw] output_dataset_s3_uri
    #   The Amazon S3 bucket location of the manifest file for labeled data.
    #   @return [String]
    #
    # @!attribute [rw] final_active_learning_model_arn
    #   The Amazon Resource Name (ARN) for the most recent Amazon SageMaker
    #   model trained as part of automated data labeling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobOutput AWS API Documentation
    #
    class LabelingJobOutput < Struct.new(
      :output_dataset_s3_uri,
      :final_active_learning_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output configuration information for a labeling job.
    #
    # @note When making an API call, you may pass LabelingJobOutputConfig
    #   data as a hash:
    #
    #       {
    #         s3_output_path: "S3Uri", # required
    #         kms_key_id: "KmsKeyId",
    #         sns_topic_arn: "SnsTopicArn",
    #       }
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 location to write output data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service ID of the key used to encrypt the
    #   output data, if any.
    #
    #   If you use a KMS key ID or an alias of your master key, the Amazon
    #   SageMaker execution role must include permissions to call
    #   `kms:Encrypt`. If you don't provide a KMS key ID, Amazon SageMaker
    #   uses the default KMS key for Amazon S3 for your role's account.
    #   Amazon SageMaker uses server-side encryption with KMS-managed keys
    #   for `LabelingJobOutputConfig`. If you use a bucket policy with an
    #   `s3:PutObject` permission that only allows objects with server-side
    #   encryption, set the condition key of
    #   `s3:x-amz-server-side-encryption` to `"aws:kms"`. For more
    #   information, see [KMS-Managed Encryption Keys][1] in the *Amazon
    #   Simple Storage Service Developer Guide.*
    #
    #   The KMS key policy must grant permission to the IAM role that you
    #   specify in your `CreateLabelingJob` request. For more information,
    #   see [Using Key Policies in AWS KMS][2] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html
    #   [2]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   An Amazon Simple Notification Service (Amazon SNS) output topic ARN.
    #
    #   When workers complete labeling tasks, Ground Truth will send
    #   labeling task output data to the SNS output topic you specify here.
    #
    #   You must provide a value for this parameter if you provide an Amazon
    #   SNS input topic in `SnsDataSource` in `InputConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobOutputConfig AWS API Documentation
    #
    class LabelingJobOutputConfig < Struct.new(
      :s3_output_path,
      :kms_key_id,
      :sns_topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for labeling jobs.
    #
    # @note When making an API call, you may pass LabelingJobResourceConfig
    #   data as a hash:
    #
    #       {
    #         volume_kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] volume_kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt data on the storage volume attached to the ML
    #   compute instance(s) that run the training job. The `VolumeKmsKeyId`
    #   can be any of the following formats:
    #
    #   * // KMS Key ID
    #
    #     `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * // Amazon Resource Name (ARN) of a KMS Key
    #
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobResourceConfig AWS API Documentation
    #
    class LabelingJobResourceConfig < Struct.new(
      :volume_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location of the input data objects.
    #
    # @note When making an API call, you may pass LabelingJobS3DataSource
    #   data as a hash:
    #
    #       {
    #         manifest_s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] manifest_s3_uri
    #   The Amazon S3 location of the manifest file that describes the input
    #   data objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobS3DataSource AWS API Documentation
    #
    class LabelingJobS3DataSource < Struct.new(
      :manifest_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon SNS data source used for streaming labeling jobs.
    #
    # @note When making an API call, you may pass LabelingJobSnsDataSource
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "SnsTopicArn", # required
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon SNS input topic Amazon Resource Name (ARN). Specify the
    #   ARN of the input topic you will use to send new data objects to a
    #   streaming labeling job.
    #
    #   If you specify an input topic for `SnsTopicArn` in `InputConfig`,
    #   you must specify a value for `SnsTopicArn` in `OutputConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobSnsDataSource AWS API Documentation
    #
    class LabelingJobSnsDataSource < Struct.new(
      :sns_topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of conditions for stopping a labeling job. If any of the
    # conditions are met, the job is automatically stopped. You can use
    # these conditions to control the cost of data labeling.
    #
    # <note markdown="1"> Labeling jobs fail after 30 days with an appropriate client error
    # message.
    #
    #  </note>
    #
    # @note When making an API call, you may pass LabelingJobStoppingConditions
    #   data as a hash:
    #
    #       {
    #         max_human_labeled_object_count: 1,
    #         max_percentage_of_input_dataset_labeled: 1,
    #       }
    #
    # @!attribute [rw] max_human_labeled_object_count
    #   The maximum number of objects that can be labeled by human workers.
    #   @return [Integer]
    #
    # @!attribute [rw] max_percentage_of_input_dataset_labeled
    #   The maximum number of input data objects that should be labeled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobStoppingConditions AWS API Documentation
    #
    class LabelingJobStoppingConditions < Struct.new(
      :max_human_labeled_object_count,
      :max_percentage_of_input_dataset_labeled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a labeling job.
    #
    # @!attribute [rw] labeling_job_name
    #   The name of the labeling job.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) assigned to the labeling job when it
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the job was created (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the job was last modified (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] labeling_job_status
    #   The current status of the labeling job.
    #   @return [String]
    #
    # @!attribute [rw] label_counters
    #   Counts showing the progress of the labeling job.
    #   @return [Types::LabelCounters]
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) of the work team assigned to the job.
    #   @return [String]
    #
    # @!attribute [rw] pre_human_task_lambda_arn
    #   The Amazon Resource Name (ARN) of a Lambda function. The function is
    #   run before each data object is sent to a worker.
    #   @return [String]
    #
    # @!attribute [rw] annotation_consolidation_lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function used to
    #   consolidate the annotations from individual workers into a label for
    #   a data object. For more information, see [Annotation
    #   Consolidation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the `LabelingJobStatus` field is `Failed`, this field contains a
    #   description of the error.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_output
    #   The location of the output produced by the labeling job.
    #   @return [Types::LabelingJobOutput]
    #
    # @!attribute [rw] input_config
    #   Input configuration for the labeling job.
    #   @return [Types::LabelingJobInputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobSummary AWS API Documentation
    #
    class LabelingJobSummary < Struct.new(
      :labeling_job_name,
      :labeling_job_arn,
      :creation_time,
      :last_modified_time,
      :labeling_job_status,
      :label_counters,
      :workteam_arn,
      :pre_human_task_lambda_arn,
      :annotation_consolidation_lambda_arn,
      :failure_reason,
      :labeling_job_output,
      :input_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAlgorithmsInput
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         max_results: 1,
    #         name_contains: "NameContains",
    #         next_token: "NextToken",
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only algorithms created after the specified
    #   time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only algorithms created before the specified
    #   time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of algorithms to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   A string in the algorithm name. This filter returns only algorithms
    #   whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response to a previous `ListAlgorithms` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of algorithms, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results. The default is
    #   `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAlgorithmsInput AWS API Documentation
    #
    class ListAlgorithmsInput < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :max_results,
      :name_contains,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] algorithm_summary_list
    #   &gt;An array of `AlgorithmSummary` objects, each of which lists an
    #   algorithm.
    #   @return [Array<Types::AlgorithmSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of algorithms, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAlgorithmsOutput AWS API Documentation
    #
    class ListAlgorithmsOutput < Struct.new(
      :algorithm_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         sort_by: "CreationTime", # accepts CreationTime
    #         domain_id_equals: "DomainId",
    #         user_profile_name_equals: "UserProfileName",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you will receive this token.
    #   Use it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Returns a list up to a specified limit.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the results. The default is Ascending.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results. The default is
    #   CreationTime.
    #   @return [String]
    #
    # @!attribute [rw] domain_id_equals
    #   A parameter to search for the domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name_equals
    #   A parameter to search by user profile name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAppsRequest AWS API Documentation
    #
    class ListAppsRequest < Struct.new(
      :next_token,
      :max_results,
      :sort_order,
      :sort_by,
      :domain_id_equals,
      :user_profile_name_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps
    #   The list of apps.
    #   @return [Array<Types::AppDetails>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you will receive this token.
    #   Use it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAppsResponse AWS API Documentation
    #
    class ListAppsResponse < Struct.new(
      :apps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAutoMLJobsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         name_contains: "AutoMLNameContains",
    #         status_equals: "Completed", # accepts Completed, InProgress, Failed, Stopped, Stopping
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   Request a list of jobs, using a filter for time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   Request a list of jobs, using a filter for time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   Request a list of jobs, using a filter for time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   Request a list of jobs, using a filter for time.
    #   @return [Time]
    #
    # @!attribute [rw] name_contains
    #   Request a list of jobs, using a search filter for name.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   Request a list of jobs, using a filter for status.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the results. The default is Descending.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results. The default is
    #   AutoMLJobName.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Request a list of jobs up to a specified limit.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAutoMLJobsRequest AWS API Documentation
    #
    class ListAutoMLJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :name_contains,
      :status_equals,
      :sort_order,
      :sort_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_ml_job_summaries
    #   Returns a summary list of jobs.
    #   @return [Array<Types::AutoMLJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListAutoMLJobsResponse AWS API Documentation
    #
    class ListAutoMLJobsResponse < Struct.new(
      :auto_ml_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCandidatesForAutoMLJobRequest
    #   data as a hash:
    #
    #       {
    #         auto_ml_job_name: "AutoMLJobName", # required
    #         status_equals: "Completed", # accepts Completed, InProgress, Failed, Stopped, Stopping
    #         candidate_name_equals: "CandidateName",
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         sort_by: "CreationTime", # accepts CreationTime, Status, FinalObjectiveMetricValue
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] auto_ml_job_name
    #   List the Candidates created for the job by providing the job's
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   List the Candidates for the job and filter by status.
    #   @return [String]
    #
    # @!attribute [rw] candidate_name_equals
    #   List the Candidates for the job and filter by candidate name.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the results. The default is Ascending.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results. The default is
    #   Descending.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   List the job's Candidates up to a specified limit.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCandidatesForAutoMLJobRequest AWS API Documentation
    #
    class ListCandidatesForAutoMLJobRequest < Struct.new(
      :auto_ml_job_name,
      :status_equals,
      :candidate_name_equals,
      :sort_order,
      :sort_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] candidates
    #   Summaries about the Candidates.
    #   @return [Array<Types::AutoMLCandidate>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCandidatesForAutoMLJobResponse AWS API Documentation
    #
    class ListCandidatesForAutoMLJobResponse < Struct.new(
      :candidates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCodeRepositoriesInput
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         max_results: 1,
    #         name_contains: "CodeRepositoryNameContains",
    #         next_token: "NextToken",
    #         sort_by: "Name", # accepts Name, CreationTime, LastModifiedTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only Git repositories that were created after
    #   the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only Git repositories that were created before
    #   the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only Git repositories that were last modified
    #   after the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only Git repositories that were last modified
    #   before the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Git repositories to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   A string in the Git repositories name. This filter returns only
    #   repositories whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of a `ListCodeRepositoriesOutput` request was
    #   truncated, the response includes a `NextToken`. To get the next set
    #   of Git repositories, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `Name`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCodeRepositoriesInput AWS API Documentation
    #
    class ListCodeRepositoriesInput < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :max_results,
      :name_contains,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_repository_summary_list
    #   Gets a list of summaries of the Git repositories. Each summary
    #   specifies the following values for the repository:
    #
    #   * Name
    #
    #   * Amazon Resource Name (ARN)
    #
    #   * Creation time
    #
    #   * Last modified time
    #
    #   * Configuration information, including the URL location of the
    #     repository and the ARN of the AWS Secrets Manager secret that
    #     contains the credentials used to access the repository.
    #   @return [Array<Types::CodeRepositorySummary>]
    #
    # @!attribute [rw] next_token
    #   If the result of a `ListCodeRepositoriesOutput` request was
    #   truncated, the response includes a `NextToken`. To get the next set
    #   of Git repositories, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCodeRepositoriesOutput AWS API Documentation
    #
    class ListCodeRepositoriesOutput < Struct.new(
      :code_repository_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCompilationJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         name_contains: "NameContains",
    #         status_equals: "INPROGRESS", # accepts INPROGRESS, COMPLETED, FAILED, STARTING, STOPPING, STOPPED
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListCompilationJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of model compilation jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of model compilation jobs to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns the model compilation jobs that were created
    #   after a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns the model compilation jobs that were created
    #   before a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns the model compilation jobs that were modified
    #   after a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns the model compilation jobs that were modified
    #   before a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] name_contains
    #   A filter that returns the model compilation jobs whose name contains
    #   a specified string.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves model compilation jobs with a specific
    #   DescribeCompilationJobResponse$CompilationJobStatus status.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field by which to sort results. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCompilationJobsRequest AWS API Documentation
    #
    class ListCompilationJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :name_contains,
      :status_equals,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compilation_job_summaries
    #   An array of CompilationJobSummary objects, each describing a model
    #   compilation job.
    #   @return [Array<Types::CompilationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this
    #   `NextToken`. To retrieve the next set of model compilation jobs, use
    #   this token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListCompilationJobsResponse AWS API Documentation
    #
    class ListCompilationJobsResponse < Struct.new(
      :compilation_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you will receive this token.
    #   Use it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Returns a list up to a specified limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   The list of domains.
    #   @return [Array<Types::DomainDetails>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you will receive this token.
    #   Use it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEndpointConfigsInput
    #   data as a hash:
    #
    #       {
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         name_contains: "EndpointConfigNameContains",
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListEndpointConfig` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of endpoint configurations, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of training jobs to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   A string in the endpoint configuration name. This filter returns
    #   only endpoint configurations whose name contains the specified
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only endpoint configurations created before
    #   the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only endpoint configurations with a creation
    #   time greater than or equal to the specified time (timestamp).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointConfigsInput AWS API Documentation
    #
    class ListEndpointConfigsInput < Struct.new(
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      :name_contains,
      :creation_time_before,
      :creation_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_configs
    #   An array of endpoint configurations.
    #   @return [Array<Types::EndpointConfigSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of endpoint configurations, use it in the
    #   subsequent request
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointConfigsOutput AWS API Documentation
    #
    class ListEndpointConfigsOutput < Struct.new(
      :endpoint_configs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEndpointsInput
    #   data as a hash:
    #
    #       {
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         name_contains: "EndpointNameContains",
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         status_equals: "OutOfService", # accepts OutOfService, Creating, Updating, SystemUpdating, RollingBack, InService, Deleting, Failed
    #       }
    #
    # @!attribute [rw] sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of a `ListEndpoints` request was truncated, the
    #   response includes a `NextToken`. To retrieve the next set of
    #   endpoints, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of endpoints to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   A string in endpoint names. This filter returns only endpoints whose
    #   name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only endpoints that were created before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only endpoints with a creation time greater
    #   than or equal to the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only endpoints that were modified before the
    #   specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only endpoints that were modified after the
    #   specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   A filter that returns only endpoints with the specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointsInput AWS API Documentation
    #
    class ListEndpointsInput < Struct.new(
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      :name_contains,
      :creation_time_before,
      :creation_time_after,
      :last_modified_time_before,
      :last_modified_time_after,
      :status_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   An array or endpoint objects.
    #   @return [Array<Types::EndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of training jobs, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointsOutput AWS API Documentation
    #
    class ListEndpointsOutput < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExperimentsRequest
    #   data as a hash:
    #
    #       {
    #         created_after: Time.now,
    #         created_before: Time.now,
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] created_after
    #   A filter that returns only experiments created after the specified
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   A filter that returns only experiments created before the specified
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] sort_by
    #   The property used to sort results. The default value is
    #   `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. The default value is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous call to `ListExperiments` didn't return the full
    #   set of experiments, the call returns a token for getting the next
    #   set of experiments.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of experiments to return in the response. The
    #   default value is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListExperimentsRequest AWS API Documentation
    #
    class ListExperimentsRequest < Struct.new(
      :created_after,
      :created_before,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_summaries
    #   A list of the summaries of your experiments.
    #   @return [Array<Types::ExperimentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of experiments, if there are any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListExperimentsResponse AWS API Documentation
    #
    class ListExperimentsResponse < Struct.new(
      :experiment_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFlowDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only flow definitions with a creation time
    #   greater than or equal to the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only flow definitions that were created before
    #   the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. If the total number of
    #   available items is more than the value specified in `MaxResults`,
    #   then a `NextToken` will be provided in the output that you can use
    #   to resume pagination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListFlowDefinitionsRequest AWS API Documentation
    #
    class ListFlowDefinitionsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_definition_summaries
    #   An array of objects describing the flow definitions.
    #   @return [Array<Types::FlowDefinitionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListFlowDefinitionsResponse AWS API Documentation
    #
    class ListFlowDefinitionsResponse < Struct.new(
      :flow_definition_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHumanTaskUisRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only human task user interfaces with a
    #   creation time greater than or equal to the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only human task user interfaces that were
    #   created before the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. If the total number of
    #   available items is more than the value specified in `MaxResults`,
    #   then a `NextToken` will be provided in the output that you can use
    #   to resume pagination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListHumanTaskUisRequest AWS API Documentation
    #
    class ListHumanTaskUisRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] human_task_ui_summaries
    #   An array of objects describing the human task user interfaces.
    #   @return [Array<Types::HumanTaskUiSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListHumanTaskUisResponse AWS API Documentation
    #
    class ListHumanTaskUisResponse < Struct.new(
      :human_task_ui_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHyperParameterTuningJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         sort_by: "Name", # accepts Name, Status, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         name_contains: "NameContains",
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         status_equals: "Completed", # accepts Completed, InProgress, Failed, Stopped, Stopping
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListHyperParameterTuningJobs` request
    #   was truncated, the response includes a `NextToken`. To retrieve the
    #   next set of tuning jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tuning jobs to return. The default value is
    #   10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `Name`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   A string in the tuning job name. This filter returns only tuning
    #   jobs whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only tuning jobs that were created after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only tuning jobs that were created before the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only tuning jobs that were modified after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only tuning jobs that were modified before the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   A filter that returns only tuning jobs with the specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListHyperParameterTuningJobsRequest AWS API Documentation
    #
    class ListHyperParameterTuningJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :sort_by,
      :sort_order,
      :name_contains,
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :status_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hyper_parameter_tuning_job_summaries
    #   A list of HyperParameterTuningJobSummary objects that describe the
    #   tuning jobs that the `ListHyperParameterTuningJobs` request
    #   returned.
    #   @return [Array<Types::HyperParameterTuningJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the result of this `ListHyperParameterTuningJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of tuning jobs, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListHyperParameterTuningJobsResponse AWS API Documentation
    #
    class ListHyperParameterTuningJobsResponse < Struct.new(
      :hyper_parameter_tuning_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLabelingJobsForWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_arn: "WorkteamArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         job_reference_code_contains: "JobReferenceCodeContains",
    #         sort_by: "CreationTime", # accepts CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) of the work team for which you want
    #   to see labeling jobs for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of labeling jobs to return in each page of the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListLabelingJobsForWorkteam` request
    #   was truncated, the response includes a `NextToken`. To retrieve the
    #   next set of labeling jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only labeling jobs created after the specified
    #   time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only labeling jobs created before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] job_reference_code_contains
    #   A filter the limits jobs to only the ones whose job reference code
    #   contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListLabelingJobsForWorkteamRequest AWS API Documentation
    #
    class ListLabelingJobsForWorkteamRequest < Struct.new(
      :workteam_arn,
      :max_results,
      :next_token,
      :creation_time_after,
      :creation_time_before,
      :job_reference_code_contains,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labeling_job_summary_list
    #   An array of `LabelingJobSummary` objects, each describing a labeling
    #   job.
    #   @return [Array<Types::LabelingJobForWorkteamSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of labeling jobs, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListLabelingJobsForWorkteamResponse AWS API Documentation
    #
    class ListLabelingJobsForWorkteamResponse < Struct.new(
      :labeling_job_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLabelingJobsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         max_results: 1,
    #         next_token: "NextToken",
    #         name_contains: "NameContains",
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         status_equals: "Initializing", # accepts Initializing, InProgress, Completed, Failed, Stopping, Stopped
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only labeling jobs created after the specified
    #   time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only labeling jobs created before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only labeling jobs modified after the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only labeling jobs modified before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of labeling jobs to return in each page of the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListLabelingJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of labeling jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   A string in the labeling job name. This filter returns only labeling
    #   jobs whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only labeling jobs with a specific status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListLabelingJobsRequest AWS API Documentation
    #
    class ListLabelingJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :max_results,
      :next_token,
      :name_contains,
      :sort_by,
      :sort_order,
      :status_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labeling_job_summary_list
    #   An array of `LabelingJobSummary` objects, each describing a labeling
    #   job.
    #   @return [Array<Types::LabelingJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of labeling jobs, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListLabelingJobsResponse AWS API Documentation
    #
    class ListLabelingJobsResponse < Struct.new(
      :labeling_job_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListModelPackagesInput
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         max_results: 1,
    #         name_contains: "NameContains",
    #         next_token: "NextToken",
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only model packages created after the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only model packages created before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of model packages to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   A string in the model package name. This filter returns only model
    #   packages whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response to a previous `ListModelPackages` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of model packages, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results. The default is
    #   `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModelPackagesInput AWS API Documentation
    #
    class ListModelPackagesInput < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :max_results,
      :name_contains,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_package_summary_list
    #   An array of `ModelPackageSummary` objects, each of which lists a
    #   model package.
    #   @return [Array<Types::ModelPackageSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of model packages, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModelPackagesOutput AWS API Documentation
    #
    class ListModelPackagesOutput < Struct.new(
      :model_package_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListModelsInput
    #   data as a hash:
    #
    #       {
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         name_contains: "ModelNameContains",
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response to a previous `ListModels` request was truncated,
    #   the response includes a `NextToken`. To retrieve the next set of
    #   models, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of models to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   A string in the training job name. This filter returns only models
    #   in the training job whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only models created before the specified time
    #   (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only models with a creation time greater than
    #   or equal to the specified time (timestamp).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModelsInput AWS API Documentation
    #
    class ListModelsInput < Struct.new(
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      :name_contains,
      :creation_time_before,
      :creation_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] models
    #   An array of `ModelSummary` objects, each of which lists a model.
    #   @return [Array<Types::ModelSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of models, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModelsOutput AWS API Documentation
    #
    class ListModelsOutput < Struct.new(
      :models,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMonitoringExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName",
    #         endpoint_name: "EndpointName",
    #         sort_by: "CreationTime", # accepts CreationTime, ScheduledTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #         scheduled_time_before: Time.now,
    #         scheduled_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         status_equals: "Pending", # accepts Pending, Completed, CompletedWithViolations, InProgress, Failed, Stopping, Stopped
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   Name of a specific schedule to fetch jobs for.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   Name of a specific endpoint to fetch jobs for.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Whether to sort results by `Status`, `CreationTime`, `ScheduledTime`
    #   field. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Whether to sort the results in `Ascending` or `Descending` order.
    #   The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned if the response is truncated. To retrieve the
    #   next set of job executions, use it in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in the response. The default
    #   value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduled_time_before
    #   Filter for jobs scheduled before a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] scheduled_time_after
    #   Filter for jobs scheduled after a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only jobs created before a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only jobs created after a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only jobs modified after a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only jobs modified before a specified time.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only jobs with a specific status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListMonitoringExecutionsRequest AWS API Documentation
    #
    class ListMonitoringExecutionsRequest < Struct.new(
      :monitoring_schedule_name,
      :endpoint_name,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      :scheduled_time_before,
      :scheduled_time_after,
      :creation_time_before,
      :creation_time_after,
      :last_modified_time_before,
      :last_modified_time_after,
      :status_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_execution_summaries
    #   A JSON array in which each element is a summary for a monitoring
    #   execution.
    #   @return [Array<Types::MonitoringExecutionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of jobs, use it in the subsequent reques
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListMonitoringExecutionsResponse AWS API Documentation
    #
    class ListMonitoringExecutionsResponse < Struct.new(
      :monitoring_execution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMonitoringSchedulesRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName",
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "NameContains",
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         status_equals: "Pending", # accepts Pending, Failed, Scheduled, Stopped
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   Name of a specific endpoint to fetch schedules for.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Whether to sort results by `Status`, `CreationTime`, `ScheduledTime`
    #   field. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Whether to sort the results in `Ascending` or `Descending` order.
    #   The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned if the response is truncated. To retrieve the
    #   next set of job executions, use it in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in the response. The default
    #   value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Filter for monitoring schedules whose name contains a specified
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only monitoring schedules created before a
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only monitoring schedules created after a
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only monitoring schedules modified before a
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only monitoring schedules modified after a
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   A filter that returns only monitoring schedules modified before a
    #   specified time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListMonitoringSchedulesRequest AWS API Documentation
    #
    class ListMonitoringSchedulesRequest < Struct.new(
      :endpoint_name,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      :name_contains,
      :creation_time_before,
      :creation_time_after,
      :last_modified_time_before,
      :last_modified_time_after,
      :status_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_schedule_summaries
    #   A JSON array in which each element is a summary for a monitoring
    #   schedule.
    #   @return [Array<Types::MonitoringScheduleSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of jobs, use it in the subsequent reques
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListMonitoringSchedulesResponse AWS API Documentation
    #
    class ListMonitoringSchedulesResponse < Struct.new(
      :monitoring_schedule_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotebookInstanceLifecycleConfigsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         sort_by: "Name", # accepts Name, CreationTime, LastModifiedTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         name_contains: "NotebookInstanceLifecycleConfigNameContains",
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of a `ListNotebookInstanceLifecycleConfigs` request
    #   was truncated, the response includes a `NextToken`. To get the next
    #   set of lifecycle configurations, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of lifecycle configurations to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   A string in the lifecycle configuration name. This filter returns
    #   only lifecycle configurations whose name contains the specified
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only lifecycle configurations that were
    #   created before the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only lifecycle configurations that were
    #   created after the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only lifecycle configurations that were
    #   modified before the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only lifecycle configurations that were
    #   modified after the specified time (timestamp).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstanceLifecycleConfigsInput AWS API Documentation
    #
    class ListNotebookInstanceLifecycleConfigsInput < Struct.new(
      :next_token,
      :max_results,
      :sort_by,
      :sort_order,
      :name_contains,
      :creation_time_before,
      :creation_time_after,
      :last_modified_time_before,
      :last_modified_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To get the next set of lifecycle configurations, use it in the next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_lifecycle_configs
    #   An array of `NotebookInstanceLifecycleConfiguration` objects, each
    #   listing a lifecycle configuration.
    #   @return [Array<Types::NotebookInstanceLifecycleConfigSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstanceLifecycleConfigsOutput AWS API Documentation
    #
    class ListNotebookInstanceLifecycleConfigsOutput < Struct.new(
      :next_token,
      :notebook_instance_lifecycle_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotebookInstancesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         name_contains: "NotebookInstanceNameContains",
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         status_equals: "Pending", # accepts Pending, InService, Stopping, Stopped, Failed, Deleting, Updating
    #         notebook_instance_lifecycle_config_name_contains: "NotebookInstanceLifecycleConfigName",
    #         default_code_repository_contains: "CodeRepositoryContains",
    #         additional_code_repository_equals: "CodeRepositoryNameOrUrl",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous call to the `ListNotebookInstances` is truncated,
    #   the response includes a `NextToken`. You can use this token in your
    #   subsequent `ListNotebookInstances` request to fetch the next set of
    #   notebook instances.
    #
    #   <note markdown="1"> You might specify a filter or a sort order in your request. When
    #   response is truncated, you must use the same values for the filer
    #   and sort order in the next request.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of notebook instances to return.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `Name`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   A string in the notebook instances' name. This filter returns only
    #   notebook instances whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only notebook instances that were created
    #   before the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only notebook instances that were created
    #   after the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only notebook instances that were modified
    #   before the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only notebook instances that were modified
    #   after the specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   A filter that returns only notebook instances with the specified
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name_contains
    #   A string in the name of a notebook instances lifecycle configuration
    #   associated with this notebook instance. This filter returns only
    #   notebook instances associated with a lifecycle configuration with a
    #   name that contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] default_code_repository_contains
    #   A string in the name or URL of a Git repository associated with this
    #   notebook instance. This filter returns only notebook instances
    #   associated with a git repository with a name that contains the
    #   specified string.
    #   @return [String]
    #
    # @!attribute [rw] additional_code_repository_equals
    #   A filter that returns only notebook instances with associated with
    #   the specified git repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstancesInput AWS API Documentation
    #
    class ListNotebookInstancesInput < Struct.new(
      :next_token,
      :max_results,
      :sort_by,
      :sort_order,
      :name_contains,
      :creation_time_before,
      :creation_time_after,
      :last_modified_time_before,
      :last_modified_time_after,
      :status_equals,
      :notebook_instance_lifecycle_config_name_contains,
      :default_code_repository_contains,
      :additional_code_repository_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response to the previous `ListNotebookInstances` request was
    #   truncated, Amazon SageMaker returns this token. To retrieve the next
    #   set of notebook instances, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instances
    #   An array of `NotebookInstanceSummary` objects, one for each notebook
    #   instance.
    #   @return [Array<Types::NotebookInstanceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstancesOutput AWS API Documentation
    #
    class ListNotebookInstancesOutput < Struct.new(
      :next_token,
      :notebook_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProcessingJobsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         name_contains: "String",
    #         status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only processing jobs created after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only processing jobs created after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only processing jobs modified after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only processing jobs modified before the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] name_contains
    #   A string in the processing job name. This filter returns only
    #   processing jobs whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only processing jobs with a specific status.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListProcessingJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of processing jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of processing jobs to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListProcessingJobsRequest AWS API Documentation
    #
    class ListProcessingJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :name_contains,
      :status_equals,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processing_job_summaries
    #   An array of `ProcessingJobSummary` objects, each listing a
    #   processing job.
    #   @return [Array<Types::ProcessingJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of processing jobs, use it in the
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListProcessingJobsResponse AWS API Documentation
    #
    class ListProcessingJobsResponse < Struct.new(
      :processing_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSubscribedWorkteamsRequest
    #   data as a hash:
    #
    #       {
    #         name_contains: "WorkteamName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name_contains
    #   A string in the work team name. This filter returns only work teams
    #   whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListSubscribedWorkteams` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of labeling jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of work teams to return in each page of the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListSubscribedWorkteamsRequest AWS API Documentation
    #
    class ListSubscribedWorkteamsRequest < Struct.new(
      :name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscribed_workteams
    #   An array of `Workteam` objects, each describing a work team.
    #   @return [Array<Types::SubscribedWorkteam>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of work teams, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListSubscribedWorkteamsResponse AWS API Documentation
    #
    class ListSubscribedWorkteamsResponse < Struct.new(
      :subscribed_workteams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response to the previous `ListTags` request is truncated,
    #   Amazon SageMaker returns this token. To retrieve the next set of
    #   tags, use it in the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of tags to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTagsInput AWS API Documentation
    #
    class ListTagsInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of `Tag` objects, each with a tag key and a value.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If response is truncated, Amazon SageMaker includes a token in the
    #   response. You can use this token in your subsequent request to fetch
    #   next set of tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTagsOutput AWS API Documentation
    #
    class ListTagsOutput < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrainingJobsForHyperParameterTuningJobRequest
    #   data as a hash:
    #
    #       {
    #         hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #         sort_by: "Name", # accepts Name, CreationTime, Status, FinalObjectiveMetricValue
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the tuning job whose training jobs you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous
    #   `ListTrainingJobsForHyperParameterTuningJob` request was truncated,
    #   the response includes a `NextToken`. To retrieve the next set of
    #   training jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of training jobs to return. The default value is
    #   10.
    #   @return [Integer]
    #
    # @!attribute [rw] status_equals
    #   A filter that returns only training jobs with the specified status.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `Name`.
    #
    #   If the value of this field is `FinalObjectiveMetricValue`, any
    #   training jobs that did not return an objective metric are not
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobsForHyperParameterTuningJobRequest AWS API Documentation
    #
    class ListTrainingJobsForHyperParameterTuningJobRequest < Struct.new(
      :hyper_parameter_tuning_job_name,
      :next_token,
      :max_results,
      :status_equals,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_job_summaries
    #   A list of TrainingJobSummary objects that describe the training jobs
    #   that the `ListTrainingJobsForHyperParameterTuningJob` request
    #   returned.
    #   @return [Array<Types::HyperParameterTrainingJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the result of this `ListTrainingJobsForHyperParameterTuningJob`
    #   request was truncated, the response includes a `NextToken`. To
    #   retrieve the next set of training jobs, use the token in the next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobsForHyperParameterTuningJobResponse AWS API Documentation
    #
    class ListTrainingJobsForHyperParameterTuningJobResponse < Struct.new(
      :training_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrainingJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         name_contains: "NameContains",
    #         status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListTrainingJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of training jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of training jobs to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only training jobs created after the specified
    #   time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only training jobs created before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only training jobs modified after the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only training jobs modified before the
    #   specified time (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] name_contains
    #   A string in the training job name. This filter returns only training
    #   jobs whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only training jobs with a specific status.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobsRequest AWS API Documentation
    #
    class ListTrainingJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :name_contains,
      :status_equals,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_job_summaries
    #   An array of `TrainingJobSummary` objects, each listing a training
    #   job.
    #   @return [Array<Types::TrainingJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of training jobs, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobsResponse AWS API Documentation
    #
    class ListTrainingJobsResponse < Struct.new(
      :training_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTransformJobsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         last_modified_time_after: Time.now,
    #         last_modified_time_before: Time.now,
    #         name_contains: "NameContains",
    #         status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #         sort_by: "Name", # accepts Name, CreationTime, Status
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   A filter that returns only transform jobs created after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   A filter that returns only transform jobs created before the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_after
    #   A filter that returns only transform jobs modified after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time_before
    #   A filter that returns only transform jobs modified before the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] name_contains
    #   A string in the transform job name. This filter returns only
    #   transform jobs whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only transform jobs with a specific status.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListTransformJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of transform jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of transform jobs to return in the response. The
    #   default value is `10`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTransformJobsRequest AWS API Documentation
    #
    class ListTransformJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :last_modified_time_after,
      :last_modified_time_before,
      :name_contains,
      :status_equals,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transform_job_summaries
    #   An array of `TransformJobSummary` objects.
    #   @return [Array<Types::TransformJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of transform jobs, use it in the next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTransformJobsResponse AWS API Documentation
    #
    class ListTransformJobsResponse < Struct.new(
      :transform_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrialComponentsRequest
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName",
    #         trial_name: "ExperimentEntityName",
    #         source_arn: "String256",
    #         created_after: Time.now,
    #         created_before: Time.now,
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] experiment_name
    #   A filter that returns only components that are part of the specified
    #   experiment. If you specify `ExperimentName`, you can't filter by
    #   `SourceArn` or `TrialName`.
    #   @return [String]
    #
    # @!attribute [rw] trial_name
    #   A filter that returns only components that are part of the specified
    #   trial. If you specify `TrialName`, you can't filter by
    #   `ExperimentName` or `SourceArn`.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   A filter that returns only components that have the specified source
    #   Amazon Resource Name (ARN). If you specify `SourceArn`, you can't
    #   filter by `ExperimentName` or `TrialName`.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   A filter that returns only components created after the specified
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   A filter that returns only components created before the specified
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] sort_by
    #   The property used to sort results. The default value is
    #   `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. The default value is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of components to return in the response. The
    #   default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous call to `ListTrialComponents` didn't return the
    #   full set of components, the call returns a token for getting the
    #   next set of components.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrialComponentsRequest AWS API Documentation
    #
    class ListTrialComponentsRequest < Struct.new(
      :experiment_name,
      :trial_name,
      :source_arn,
      :created_after,
      :created_before,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_summaries
    #   A list of the summaries of your trial components.
    #   @return [Array<Types::TrialComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of components, if there are any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrialComponentsResponse AWS API Documentation
    #
    class ListTrialComponentsResponse < Struct.new(
      :trial_component_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrialsRequest
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName",
    #         trial_component_name: "ExperimentEntityName",
    #         created_after: Time.now,
    #         created_before: Time.now,
    #         sort_by: "Name", # accepts Name, CreationTime
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] experiment_name
    #   A filter that returns only trials that are part of the specified
    #   experiment.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_name
    #   A filter that returns only trials that are associated with the
    #   specified trial component.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   A filter that returns only trials created after the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   A filter that returns only trials created before the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] sort_by
    #   The property used to sort results. The default value is
    #   `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. The default value is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of trials to return in the response. The default
    #   value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous call to `ListTrials` didn't return the full set of
    #   trials, the call returns a token for getting the next set of trials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrialsRequest AWS API Documentation
    #
    class ListTrialsRequest < Struct.new(
      :experiment_name,
      :trial_component_name,
      :created_after,
      :created_before,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_summaries
    #   A list of the summaries of your trials.
    #   @return [Array<Types::TrialSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of trials, if there are any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrialsResponse AWS API Documentation
    #
    class ListTrialsResponse < Struct.new(
      :trial_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         sort_by: "CreationTime", # accepts CreationTime, LastModifiedTime
    #         domain_id_equals: "DomainId",
    #         user_profile_name_contains: "UserProfileName",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you will receive this token.
    #   Use it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Returns a list up to a specified limit.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the results. The default is Ascending.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results. The default is
    #   CreationTime.
    #   @return [String]
    #
    # @!attribute [rw] domain_id_equals
    #   A parameter by which to filter the results.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name_contains
    #   A parameter by which to filter the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListUserProfilesRequest AWS API Documentation
    #
    class ListUserProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :sort_order,
      :sort_by,
      :domain_id_equals,
      :user_profile_name_contains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_profiles
    #   The list of user profiles.
    #   @return [Array<Types::UserProfileDetails>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you will receive this token.
    #   Use it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListUserProfilesResponse AWS API Documentation
    #
    class ListUserProfilesResponse < Struct.new(
      :user_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkforcesRequest
    #   data as a hash:
    #
    #       {
    #         sort_by: "Name", # accepts Name, CreateDate
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         name_contains: "WorkforceName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] sort_by
    #   Sort workforces using the workforce name or creation date.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Sort workforces in ascending or descending order.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   A filter you can use to search for workforces using part of the
    #   workforce name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workforces returned in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListWorkforcesRequest AWS API Documentation
    #
    class ListWorkforcesRequest < Struct.new(
      :sort_by,
      :sort_order,
      :name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workforces
    #   A list containing information about your workforce.
    #   @return [Array<Types::Workforce>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListWorkforcesResponse AWS API Documentation
    #
    class ListWorkforcesResponse < Struct.new(
      :workforces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkteamsRequest
    #   data as a hash:
    #
    #       {
    #         sort_by: "Name", # accepts Name, CreateDate
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         name_contains: "WorkteamName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results. The default is `Ascending`.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   A string in the work team's name. This filter returns only work
    #   teams whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `ListWorkteams` request was truncated,
    #   the response includes a `NextToken`. To retrieve the next set of
    #   labeling jobs, use the token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of work teams to return in each page of the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListWorkteamsRequest AWS API Documentation
    #
    class ListWorkteamsRequest < Struct.new(
      :sort_by,
      :sort_order,
      :name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workteams
    #   An array of `Workteam` objects, each describing a work team.
    #   @return [Array<Types::Workteam>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon SageMaker returns this token.
    #   To retrieve the next set of work teams, use it in the subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListWorkteamsResponse AWS API Documentation
    #
    class ListWorkteamsResponse < Struct.new(
      :workteams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an Amazon Cognito or your own OIDC IdP user group that is part
    # of a work team.
    #
    # @note When making an API call, you may pass MemberDefinition
    #   data as a hash:
    #
    #       {
    #         cognito_member_definition: {
    #           user_pool: "CognitoUserPool", # required
    #           user_group: "CognitoUserGroup", # required
    #           client_id: "ClientId", # required
    #         },
    #         oidc_member_definition: {
    #           groups: ["Group"], # required
    #         },
    #       }
    #
    # @!attribute [rw] cognito_member_definition
    #   The Amazon Cognito user group that is part of the work team.
    #   @return [Types::CognitoMemberDefinition]
    #
    # @!attribute [rw] oidc_member_definition
    #   A list user groups that exist in your OIDC Identity Provider (IdP).
    #   One to ten groups can be used to create a single private work team.
    #   When you add a user group to the list of `Groups`, you can add that
    #   user group to one or more private work teams. If you add a user
    #   group to a private work team, all workers in that user group are
    #   added to the work team.
    #   @return [Types::OidcMemberDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MemberDefinition AWS API Documentation
    #
    class MemberDefinition < Struct.new(
      :cognito_member_definition,
      :oidc_member_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name, value, and date and time of a metric that was emitted to
    # Amazon CloudWatch.
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the metric.
    #   @return [Float]
    #
    # @!attribute [rw] timestamp
    #   The date and time that the algorithm emitted the metric.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MetricData AWS API Documentation
    #
    class MetricData < Struct.new(
      :metric_name,
      :value,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a metric that the training algorithm writes to `stderr` or
    # `stdout` . Amazon SageMakerhyperparameter tuning captures all defined
    # metrics. You specify one metric that a hyperparameter tuning job uses
    # as its objective metric to choose the best training job.
    #
    # @note When making an API call, you may pass MetricDefinition
    #   data as a hash:
    #
    #       {
    #         name: "MetricName", # required
    #         regex: "MetricRegex", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   A regular expression that searches the output of a training job and
    #   gets the value of the metric. For more information about using
    #   regular expressions to define metrics, see [Defining Objective
    #   Metrics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-metrics.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MetricDefinition AWS API Documentation
    #
    class MetricDefinition < Struct.new(
      :name,
      :regex)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the location that is configured for storing
    # model artifacts.
    #
    # Model artifacts are the output that results from training a model, and
    # typically consist of trained parameters, a model defintion that
    # desribes how to compute inferences, and other metadata.
    #
    # @!attribute [rw] s3_model_artifacts
    #   The path of the S3 object that contains the model artifacts. For
    #   example, `s3://bucket-name/keynameprefix/model.tar.gz`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelArtifacts AWS API Documentation
    #
    class ModelArtifacts < Struct.new(
      :s3_model_artifacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the timeout and maximum number of retries for processing a
    # transform job invocation.
    #
    # @note When making an API call, you may pass ModelClientConfig
    #   data as a hash:
    #
    #       {
    #         invocations_timeout_in_seconds: 1,
    #         invocations_max_retries: 1,
    #       }
    #
    # @!attribute [rw] invocations_timeout_in_seconds
    #   The timeout value in seconds for an invocation request.
    #   @return [Integer]
    #
    # @!attribute [rw] invocations_max_retries
    #   The maximum number of retries when invocation requests are failing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelClientConfig AWS API Documentation
    #
    class ModelClientConfig < Struct.new(
      :invocations_timeout_in_seconds,
      :invocations_max_retries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Docker container for the model package.
    #
    # @note When making an API call, you may pass ModelPackageContainerDefinition
    #   data as a hash:
    #
    #       {
    #         container_hostname: "ContainerHostname",
    #         image: "ContainerImage", # required
    #         image_digest: "ImageDigest",
    #         model_data_url: "Url",
    #         product_id: "ProductId",
    #       }
    #
    # @!attribute [rw] container_hostname
    #   The DNS host name for the Docker container.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The Amazon EC2 Container Registry (Amazon ECR) path where inference
    #   code is stored.
    #
    #   If you are using your own custom algorithm instead of an algorithm
    #   provided by Amazon SageMaker, the inference code must meet Amazon
    #   SageMaker requirements. Amazon SageMaker supports both
    #   `registry/repository[:tag]` and `registry/repository[@digest]` image
    #   path formats. For more information, see [Using Your Own Algorithms
    #   with Amazon SageMaker][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   An MD5 hash of the training algorithm that identifies the Docker
    #   image used for training.
    #   @return [String]
    #
    # @!attribute [rw] model_data_url
    #   The Amazon S3 path where the model artifacts, which result from
    #   model training, are stored. This path must point to a single `gzip`
    #   compressed tar archive (`.tar.gz` suffix).
    #
    #   <note markdown="1"> The model artifacts must be in an S3 bucket that is in the same
    #   region as the model package.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product ID of the model package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelPackageContainerDefinition AWS API Documentation
    #
    class ModelPackageContainerDefinition < Struct.new(
      :container_hostname,
      :image,
      :image_digest,
      :model_data_url,
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the validation and image scan statuses of the model package.
    #
    # @!attribute [rw] validation_statuses
    #   The validation status of the model package.
    #   @return [Array<Types::ModelPackageStatusItem>]
    #
    # @!attribute [rw] image_scan_statuses
    #   The status of the scan of the Docker image container for the model
    #   package.
    #   @return [Array<Types::ModelPackageStatusItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelPackageStatusDetails AWS API Documentation
    #
    class ModelPackageStatusDetails < Struct.new(
      :validation_statuses,
      :image_scan_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the overall status of a model package.
    #
    # @!attribute [rw] name
    #   The name of the model package for which the overall status is being
    #   reported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   if the overall status is `Failed`, the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelPackageStatusItem AWS API Documentation
    #
    class ModelPackageStatusItem < Struct.new(
      :name,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a model package.
    #
    # @!attribute [rw] model_package_name
    #   The name of the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_package_arn
    #   The Amazon Resource Name (ARN) of the model package.
    #   @return [String]
    #
    # @!attribute [rw] model_package_description
    #   A brief description of the model package.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the model package was created.
    #   @return [Time]
    #
    # @!attribute [rw] model_package_status
    #   The overall status of the model package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelPackageSummary AWS API Documentation
    #
    class ModelPackageSummary < Struct.new(
      :model_package_name,
      :model_package_arn,
      :model_package_description,
      :creation_time,
      :model_package_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data, such as the inputs and targeted instance types that are
    # used in the process of validating the model package.
    #
    # The data provided in the validation profile is made available to your
    # buyers on AWS Marketplace.
    #
    # @note When making an API call, you may pass ModelPackageValidationProfile
    #   data as a hash:
    #
    #       {
    #         profile_name: "EntityName", # required
    #         transform_job_definition: { # required
    #           max_concurrent_transforms: 1,
    #           max_payload_in_mb: 1,
    #           batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #           environment: {
    #             "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #           },
    #           transform_input: { # required
    #             data_source: { # required
    #               s3_data_source: { # required
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                 s3_uri: "S3Uri", # required
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #           },
    #           transform_output: { # required
    #             s3_output_path: "S3Uri", # required
    #             accept: "Accept",
    #             assemble_with: "None", # accepts None, Line
    #             kms_key_id: "KmsKeyId",
    #           },
    #           transform_resources: { # required
    #             instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #             instance_count: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] profile_name
    #   The name of the profile for the model package.
    #   @return [String]
    #
    # @!attribute [rw] transform_job_definition
    #   The `TransformJobDefinition` object that describes the transform job
    #   used for the validation of the model package.
    #   @return [Types::TransformJobDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelPackageValidationProfile AWS API Documentation
    #
    class ModelPackageValidationProfile < Struct.new(
      :profile_name,
      :transform_job_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies batch transform jobs that Amazon SageMaker runs to validate
    # your model package.
    #
    # @note When making an API call, you may pass ModelPackageValidationSpecification
    #   data as a hash:
    #
    #       {
    #         validation_role: "RoleArn", # required
    #         validation_profiles: [ # required
    #           {
    #             profile_name: "EntityName", # required
    #             transform_job_definition: { # required
    #               max_concurrent_transforms: 1,
    #               max_payload_in_mb: 1,
    #               batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #               environment: {
    #                 "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #               },
    #               transform_input: { # required
    #                 data_source: { # required
    #                   s3_data_source: { # required
    #                     s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                     s3_uri: "S3Uri", # required
    #                   },
    #                 },
    #                 content_type: "ContentType",
    #                 compression_type: "None", # accepts None, Gzip
    #                 split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #               },
    #               transform_output: { # required
    #                 s3_output_path: "S3Uri", # required
    #                 accept: "Accept",
    #                 assemble_with: "None", # accepts None, Line
    #                 kms_key_id: "KmsKeyId",
    #               },
    #               transform_resources: { # required
    #                 instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #                 instance_count: 1, # required
    #                 volume_kms_key_id: "KmsKeyId",
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] validation_role
    #   The IAM roles to be used for the validation of the model package.
    #   @return [String]
    #
    # @!attribute [rw] validation_profiles
    #   An array of `ModelPackageValidationProfile` objects, each of which
    #   specifies a batch transform job that Amazon SageMaker runs to
    #   validate your model package.
    #   @return [Array<Types::ModelPackageValidationProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelPackageValidationSpecification AWS API Documentation
    #
    class ModelPackageValidationSpecification < Struct.new(
      :validation_role,
      :validation_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a model.
    #
    # @!attribute [rw] model_name
    #   The name of the model that you want a summary for.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that indicates when the model was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ModelSummary AWS API Documentation
    #
    class ModelSummary < Struct.new(
      :model_name,
      :model_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container image configuration object for the monitoring job.
    #
    # @note When making an API call, you may pass MonitoringAppSpecification
    #   data as a hash:
    #
    #       {
    #         image_uri: "ImageUri", # required
    #         container_entrypoint: ["ContainerEntrypointString"],
    #         container_arguments: ["ContainerArgument"],
    #         record_preprocessor_source_uri: "S3Uri",
    #         post_analytics_processor_source_uri: "S3Uri",
    #       }
    #
    # @!attribute [rw] image_uri
    #   The container image to be run by the monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] container_entrypoint
    #   Specifies the entrypoint for a container used to run the monitoring
    #   job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] container_arguments
    #   An array of arguments for the container used to run the monitoring
    #   job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] record_preprocessor_source_uri
    #   An Amazon S3 URI to a script that is called per row prior to running
    #   analysis. It can base64 decode the payload and convert it into a
    #   flatted json so that the built-in container can use the converted
    #   data. Applicable only for the built-in (first party) containers.
    #   @return [String]
    #
    # @!attribute [rw] post_analytics_processor_source_uri
    #   An Amazon S3 URI to a script that is called after analysis has been
    #   performed. Applicable only for the built-in (first party)
    #   containers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringAppSpecification AWS API Documentation
    #
    class MonitoringAppSpecification < Struct.new(
      :image_uri,
      :container_entrypoint,
      :container_arguments,
      :record_preprocessor_source_uri,
      :post_analytics_processor_source_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for monitoring constraints and monitoring statistics.
    # These baseline resources are compared against the results of the
    # current job from the series of jobs scheduled to collect data
    # periodically.
    #
    # @note When making an API call, you may pass MonitoringBaselineConfig
    #   data as a hash:
    #
    #       {
    #         constraints_resource: {
    #           s3_uri: "S3Uri",
    #         },
    #         statistics_resource: {
    #           s3_uri: "S3Uri",
    #         },
    #       }
    #
    # @!attribute [rw] constraints_resource
    #   The baseline constraint file in Amazon S3 that the current
    #   monitoring job should validated against.
    #   @return [Types::MonitoringConstraintsResource]
    #
    # @!attribute [rw] statistics_resource
    #   The baseline statistics file in Amazon S3 that the current
    #   monitoring job should be validated against.
    #   @return [Types::MonitoringStatisticsResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringBaselineConfig AWS API Documentation
    #
    class MonitoringBaselineConfig < Struct.new(
      :constraints_resource,
      :statistics_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the cluster used to run model monitoring jobs.
    #
    # @note When making an API call, you may pass MonitoringClusterConfig
    #   data as a hash:
    #
    #       {
    #         instance_count: 1, # required
    #         instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #         volume_size_in_gb: 1, # required
    #         volume_kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] instance_count
    #   The number of ML compute instances to use in the model monitoring
    #   job. For distributed processing jobs, specify a value greater than
    #   1. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The ML compute instance type for the processing job.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size of the ML storage volume, in gigabytes, that you want to
    #   provision. You must specify sufficient ML storage for your scenario.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt data on the storage volume attached to the ML
    #   compute instance(s) that run the model monitoring job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringClusterConfig AWS API Documentation
    #
    class MonitoringClusterConfig < Struct.new(
      :instance_count,
      :instance_type,
      :volume_size_in_gb,
      :volume_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The constraints resource for a monitoring job.
    #
    # @note When making an API call, you may pass MonitoringConstraintsResource
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI for the constraints resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringConstraintsResource AWS API Documentation
    #
    class MonitoringConstraintsResource < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of information about the last monitoring job to run.
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the monitoring schedule.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The time the monitoring job was scheduled.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time at which the monitoring job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that indicates the last time the monitoring job was
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] monitoring_execution_status
    #   The status of the monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] processing_job_arn
    #   The Amazon Resource Name (ARN) of the monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of teh endpoint used to run the monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Contains the reason a monitoring job failed, if it failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringExecutionSummary AWS API Documentation
    #
    class MonitoringExecutionSummary < Struct.new(
      :monitoring_schedule_name,
      :scheduled_time,
      :creation_time,
      :last_modified_time,
      :monitoring_execution_status,
      :processing_job_arn,
      :endpoint_name,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inputs for a monitoring job.
    #
    # @note When making an API call, you may pass MonitoringInput
    #   data as a hash:
    #
    #       {
    #         endpoint_input: { # required
    #           endpoint_name: "EndpointName", # required
    #           local_path: "ProcessingLocalPath", # required
    #           s3_input_mode: "Pipe", # accepts Pipe, File
    #           s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_input
    #   The endpoint for a monitoring job.
    #   @return [Types::EndpointInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringInput AWS API Documentation
    #
    class MonitoringInput < Struct.new(
      :endpoint_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the monitoring job.
    #
    # @note When making an API call, you may pass MonitoringJobDefinition
    #   data as a hash:
    #
    #       {
    #         baseline_config: {
    #           constraints_resource: {
    #             s3_uri: "S3Uri",
    #           },
    #           statistics_resource: {
    #             s3_uri: "S3Uri",
    #           },
    #         },
    #         monitoring_inputs: [ # required
    #           {
    #             endpoint_input: { # required
    #               endpoint_name: "EndpointName", # required
    #               local_path: "ProcessingLocalPath", # required
    #               s3_input_mode: "Pipe", # accepts Pipe, File
    #               s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #             },
    #           },
    #         ],
    #         monitoring_output_config: { # required
    #           monitoring_outputs: [ # required
    #             {
    #               s3_output: { # required
    #                 s3_uri: "MonitoringS3Uri", # required
    #                 local_path: "ProcessingLocalPath", # required
    #                 s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #               },
    #             },
    #           ],
    #           kms_key_id: "KmsKeyId",
    #         },
    #         monitoring_resources: { # required
    #           cluster_config: { # required
    #             instance_count: 1, # required
    #             instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #             volume_size_in_gb: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #         },
    #         monitoring_app_specification: { # required
    #           image_uri: "ImageUri", # required
    #           container_entrypoint: ["ContainerEntrypointString"],
    #           container_arguments: ["ContainerArgument"],
    #           record_preprocessor_source_uri: "S3Uri",
    #           post_analytics_processor_source_uri: "S3Uri",
    #         },
    #         stopping_condition: {
    #           max_runtime_in_seconds: 1, # required
    #         },
    #         environment: {
    #           "ProcessingEnvironmentKey" => "ProcessingEnvironmentValue",
    #         },
    #         network_config: {
    #           enable_inter_container_traffic_encryption: false,
    #           enable_network_isolation: false,
    #           vpc_config: {
    #             security_group_ids: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #           },
    #         },
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] baseline_config
    #   Baseline configuration used to validate that the data conforms to
    #   the specified constraints and statistics
    #   @return [Types::MonitoringBaselineConfig]
    #
    # @!attribute [rw] monitoring_inputs
    #   The array of inputs for the monitoring job. Currently we support
    #   monitoring an Amazon SageMaker Endpoint.
    #   @return [Array<Types::MonitoringInput>]
    #
    # @!attribute [rw] monitoring_output_config
    #   The array of outputs from the monitoring job to be uploaded to
    #   Amazon Simple Storage Service (Amazon S3).
    #   @return [Types::MonitoringOutputConfig]
    #
    # @!attribute [rw] monitoring_resources
    #   Identifies the resources, ML compute instances, and ML storage
    #   volumes to deploy for a monitoring job. In distributed processing,
    #   you specify more than one instance.
    #   @return [Types::MonitoringResources]
    #
    # @!attribute [rw] monitoring_app_specification
    #   Configures the monitoring job to run a specified Docker container
    #   image.
    #   @return [Types::MonitoringAppSpecification]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a time limit for how long the monitoring job is allowed to
    #   run.
    #   @return [Types::MonitoringStoppingCondition]
    #
    # @!attribute [rw] environment
    #   Sets the environment variables in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] network_config
    #   Specifies networking options for an monitoring job.
    #   @return [Types::NetworkConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   can assume to perform tasks on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringJobDefinition AWS API Documentation
    #
    class MonitoringJobDefinition < Struct.new(
      :baseline_config,
      :monitoring_inputs,
      :monitoring_output_config,
      :monitoring_resources,
      :monitoring_app_specification,
      :stopping_condition,
      :environment,
      :network_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output object for a monitoring job.
    #
    # @note When making an API call, you may pass MonitoringOutput
    #   data as a hash:
    #
    #       {
    #         s3_output: { # required
    #           s3_uri: "MonitoringS3Uri", # required
    #           local_path: "ProcessingLocalPath", # required
    #           s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #         },
    #       }
    #
    # @!attribute [rw] s3_output
    #   The Amazon S3 storage location where the results of a monitoring job
    #   are saved.
    #   @return [Types::MonitoringS3Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringOutput AWS API Documentation
    #
    class MonitoringOutput < Struct.new(
      :s3_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration for monitoring jobs.
    #
    # @note When making an API call, you may pass MonitoringOutputConfig
    #   data as a hash:
    #
    #       {
    #         monitoring_outputs: [ # required
    #           {
    #             s3_output: { # required
    #               s3_uri: "MonitoringS3Uri", # required
    #               local_path: "ProcessingLocalPath", # required
    #               s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #             },
    #           },
    #         ],
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] monitoring_outputs
    #   Monitoring outputs for monitoring jobs. This is where the output of
    #   the periodic monitoring jobs is uploaded.
    #   @return [Array<Types::MonitoringOutput>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt the model artifacts at rest using Amazon S3
    #   server-side encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringOutputConfig AWS API Documentation
    #
    class MonitoringOutputConfig < Struct.new(
      :monitoring_outputs,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the resources to deploy for a monitoring job.
    #
    # @note When making an API call, you may pass MonitoringResources
    #   data as a hash:
    #
    #       {
    #         cluster_config: { # required
    #           instance_count: 1, # required
    #           instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] cluster_config
    #   The configuration for the cluster resources used to run the
    #   processing job.
    #   @return [Types::MonitoringClusterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringResources AWS API Documentation
    #
    class MonitoringResources < Struct.new(
      :cluster_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about where and how you want to store the results of a
    # monitoring job.
    #
    # @note When making an API call, you may pass MonitoringS3Output
    #   data as a hash:
    #
    #       {
    #         s3_uri: "MonitoringS3Uri", # required
    #         local_path: "ProcessingLocalPath", # required
    #         s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #       }
    #
    # @!attribute [rw] s3_uri
    #   A URI that identifies the Amazon S3 storage location where Amazon
    #   SageMaker saves the results of a monitoring job.
    #   @return [String]
    #
    # @!attribute [rw] local_path
    #   The local path to the Amazon S3 storage location where Amazon
    #   SageMaker saves the results of a monitoring job. LocalPath is an
    #   absolute path for the output data.
    #   @return [String]
    #
    # @!attribute [rw] s3_upload_mode
    #   Whether to upload the results of the monitoring job continuously or
    #   after the job completes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringS3Output AWS API Documentation
    #
    class MonitoringS3Output < Struct.new(
      :s3_uri,
      :local_path,
      :s3_upload_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the monitoring schedule and defines the monitoring job.
    #
    # @note When making an API call, you may pass MonitoringScheduleConfig
    #   data as a hash:
    #
    #       {
    #         schedule_config: {
    #           schedule_expression: "ScheduleExpression", # required
    #         },
    #         monitoring_job_definition: { # required
    #           baseline_config: {
    #             constraints_resource: {
    #               s3_uri: "S3Uri",
    #             },
    #             statistics_resource: {
    #               s3_uri: "S3Uri",
    #             },
    #           },
    #           monitoring_inputs: [ # required
    #             {
    #               endpoint_input: { # required
    #                 endpoint_name: "EndpointName", # required
    #                 local_path: "ProcessingLocalPath", # required
    #                 s3_input_mode: "Pipe", # accepts Pipe, File
    #                 s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #               },
    #             },
    #           ],
    #           monitoring_output_config: { # required
    #             monitoring_outputs: [ # required
    #               {
    #                 s3_output: { # required
    #                   s3_uri: "MonitoringS3Uri", # required
    #                   local_path: "ProcessingLocalPath", # required
    #                   s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #                 },
    #               },
    #             ],
    #             kms_key_id: "KmsKeyId",
    #           },
    #           monitoring_resources: { # required
    #             cluster_config: { # required
    #               instance_count: 1, # required
    #               instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #               volume_size_in_gb: 1, # required
    #               volume_kms_key_id: "KmsKeyId",
    #             },
    #           },
    #           monitoring_app_specification: { # required
    #             image_uri: "ImageUri", # required
    #             container_entrypoint: ["ContainerEntrypointString"],
    #             container_arguments: ["ContainerArgument"],
    #             record_preprocessor_source_uri: "S3Uri",
    #             post_analytics_processor_source_uri: "S3Uri",
    #           },
    #           stopping_condition: {
    #             max_runtime_in_seconds: 1, # required
    #           },
    #           environment: {
    #             "ProcessingEnvironmentKey" => "ProcessingEnvironmentValue",
    #           },
    #           network_config: {
    #             enable_inter_container_traffic_encryption: false,
    #             enable_network_isolation: false,
    #             vpc_config: {
    #               security_group_ids: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #             },
    #           },
    #           role_arn: "RoleArn", # required
    #         },
    #       }
    #
    # @!attribute [rw] schedule_config
    #   Configures the monitoring schedule.
    #   @return [Types::ScheduleConfig]
    #
    # @!attribute [rw] monitoring_job_definition
    #   Defines the monitoring job.
    #   @return [Types::MonitoringJobDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringScheduleConfig AWS API Documentation
    #
    class MonitoringScheduleConfig < Struct.new(
      :schedule_config,
      :monitoring_job_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes the monitoring schedule.
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the monitoring schedule.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_schedule_arn
    #   The Amazon Resource Name (ARN) of the monitoring schedule.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the monitoring schedule.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last time the monitoring schedule was modified.
    #   @return [Time]
    #
    # @!attribute [rw] monitoring_schedule_status
    #   The status of the monitoring schedule.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint using the monitoring schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringScheduleSummary AWS API Documentation
    #
    class MonitoringScheduleSummary < Struct.new(
      :monitoring_schedule_name,
      :monitoring_schedule_arn,
      :creation_time,
      :last_modified_time,
      :monitoring_schedule_status,
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The statistics resource for a monitoring job.
    #
    # @note When making an API call, you may pass MonitoringStatisticsResource
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI for the statistics resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringStatisticsResource AWS API Documentation
    #
    class MonitoringStatisticsResource < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time limit for how long the monitoring job is allowed to run before
    # stopping.
    #
    # @note When making an API call, you may pass MonitoringStoppingCondition
    #   data as a hash:
    #
    #       {
    #         max_runtime_in_seconds: 1, # required
    #       }
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   The maximum runtime allowed in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MonitoringStoppingCondition AWS API Documentation
    #
    class MonitoringStoppingCondition < Struct.new(
      :max_runtime_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of nested Filter objects. A resource must satisfy the
    # conditions of all filters to be included in the results returned from
    # the Search API.
    #
    # For example, to filter on a training job's `InputDataConfig` property
    # with a specific channel name and `S3Uri` prefix, define the following
    # filters:
    #
    # * `'\{Name:"InputDataConfig.ChannelName", "Operator":"Equals",
    #   "Value":"train"\}',`
    #
    # * `'\{Name:"InputDataConfig.DataSource.S3DataSource.S3Uri",
    #   "Operator":"Contains", "Value":"mybucket/catdata"\}'`
    #
    # @note When making an API call, you may pass NestedFilters
    #   data as a hash:
    #
    #       {
    #         nested_property_name: "ResourcePropertyName", # required
    #         filters: [ # required
    #           {
    #             name: "ResourcePropertyName", # required
    #             operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #             value: "FilterValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] nested_property_name
    #   The name of the property to use in the nested filters. The value
    #   must match a listed property name, such as `InputDataConfig`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of filters. Each filter acts on a property. Filters must
    #   contain at least one `Filters` value. For example, a `NestedFilters`
    #   call might include a filter on the `PropertyName` parameter of the
    #   `InputDataConfig` property:
    #   `InputDataConfig.DataSource.S3DataSource.S3Uri`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/NestedFilters AWS API Documentation
    #
    class NestedFilters < Struct.new(
      :nested_property_name,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Networking options for a job, such as network traffic encryption
    # between containers, whether to allow inbound and outbound network
    # calls to and from containers, and the VPC subnets and security groups
    # to use for VPC-enabled jobs.
    #
    # @note When making an API call, you may pass NetworkConfig
    #   data as a hash:
    #
    #       {
    #         enable_inter_container_traffic_encryption: false,
    #         enable_network_isolation: false,
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] enable_inter_container_traffic_encryption
    #   Whether to encrypt all communications between distributed processing
    #   jobs. Choose `True` to encrypt communications. Encryption provides
    #   greater security for distributed processing jobs, but the processing
    #   might take longer.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_network_isolation
    #   Whether to allow inbound and outbound network calls to and from the
    #   containers used for the processing job.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_config
    #   Specifies a VPC that your training jobs and hosted models have
    #   access to. Control access to and from your training and model
    #   containers by configuring the VPC. For more information, see
    #   [Protect Endpoints by Using an Amazon Virtual Private Cloud][1] and
    #   [Protect Training Jobs by Using an Amazon Virtual Private Cloud][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/NetworkConfig AWS API Documentation
    #
    class NetworkConfig < Struct.new(
      :enable_inter_container_traffic_encryption,
      :enable_network_isolation,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a notebook instance lifecycle configuration.
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_arn
    #   The Amazon Resource Name (ARN) of the lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that tells when the lifecycle configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that tells when the lifecycle configuration was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/NotebookInstanceLifecycleConfigSummary AWS API Documentation
    #
    class NotebookInstanceLifecycleConfigSummary < Struct.new(
      :notebook_instance_lifecycle_config_name,
      :notebook_instance_lifecycle_config_arn,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the notebook instance lifecycle configuration script.
    #
    # Each lifecycle configuration script has a limit of 16384 characters.
    #
    # The value of the `$PATH` environment variable that is available to
    # both scripts is `/sbin:bin:/usr/sbin:/usr/bin`.
    #
    # View CloudWatch Logs for notebook instance lifecycle configurations in
    # log group `/aws/sagemaker/NotebookInstances` in log stream
    # `[notebook-instance-name]/[LifecycleConfigHook]`.
    #
    # Lifecycle configuration scripts cannot run for longer than 5 minutes.
    # If a script runs for longer than 5 minutes, it fails and the notebook
    # instance is not created or started.
    #
    # For information about notebook instance lifestyle configurations, see
    # [Step 2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #
    # @note When making an API call, you may pass NotebookInstanceLifecycleHook
    #   data as a hash:
    #
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       }
    #
    # @!attribute [rw] content
    #   A base64-encoded string that contains a shell script for a notebook
    #   instance lifecycle configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/NotebookInstanceLifecycleHook AWS API Documentation
    #
    class NotebookInstanceLifecycleHook < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for an Amazon SageMaker notebook
    # instance.
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the notebook instance that you want a summary for.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_arn
    #   The Amazon Resource Name (ARN) of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_status
    #   The status of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL that you use to connect to the Jupyter instance running in
    #   your notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of ML compute instance that the notebook instance is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the notebook instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that shows when the notebook instance was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of a notebook instance lifecycle configuration associated
    #   with this notebook instance.
    #
    #   For information about notebook instance lifestyle configurations,
    #   see [Step 2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #   @return [String]
    #
    # @!attribute [rw] default_code_repository
    #   The Git repository associated with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [AWS CodeCommit][1] or in any other Git repository.
    #   When you open a notebook instance, it opens in the directory that
    #   contains this repository. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [String]
    #
    # @!attribute [rw] additional_code_repositories
    #   An array of up to three Git repositories associated with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories
    #   in [AWS CodeCommit][1] or in any other Git repository. These
    #   repositories are cloned at the same level as the default repository
    #   of your notebook instance. For more information, see [Associating
    #   Git Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/NotebookInstanceSummary AWS API Documentation
    #
    class NotebookInstanceSummary < Struct.new(
      :notebook_instance_name,
      :notebook_instance_arn,
      :notebook_instance_status,
      :url,
      :instance_type,
      :creation_time,
      :last_modified_time,
      :notebook_instance_lifecycle_config_name,
      :default_code_repository,
      :additional_code_repositories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures SNS notifications of available or expiring work items for
    # work teams.
    #
    # @note When making an API call, you may pass NotificationConfiguration
    #   data as a hash:
    #
    #       {
    #         notification_topic_arn: "NotificationTopicArn",
    #       }
    #
    # @!attribute [rw] notification_topic_arn
    #   The ARN for the SNS topic to which notifications should be
    #   published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :notification_topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the number of training jobs that this hyperparameter tuning
    # job launched, categorized by the status of their objective metric. The
    # objective metric status shows whether the final objective metric for
    # the training job has been evaluated by the tuning job and used in the
    # hyperparameter tuning process.
    #
    # @!attribute [rw] succeeded
    #   The number of training jobs whose final objective metric was
    #   evaluated by the hyperparameter tuning job and used in the
    #   hyperparameter tuning process.
    #   @return [Integer]
    #
    # @!attribute [rw] pending
    #   The number of training jobs that are in progress and pending
    #   evaluation of their final objective metric.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   The number of training jobs whose final objective metric was not
    #   evaluated and used in the hyperparameter tuning process. This
    #   typically occurs when the training job failed or did not emit an
    #   objective metric.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ObjectiveStatusCounters AWS API Documentation
    #
    class ObjectiveStatusCounters < Struct.new(
      :succeeded,
      :pending,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this parameter to configure your OIDC Identity Provider (IdP).
    #
    # @note When making an API call, you may pass OidcConfig
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientId", # required
    #         client_secret: "ClientSecret", # required
    #         issuer: "OidcEndpoint", # required
    #         authorization_endpoint: "OidcEndpoint", # required
    #         token_endpoint: "OidcEndpoint", # required
    #         user_info_endpoint: "OidcEndpoint", # required
    #         logout_endpoint: "OidcEndpoint", # required
    #         jwks_uri: "OidcEndpoint", # required
    #       }
    #
    # @!attribute [rw] client_id
    #   The OIDC IdP client ID used to configure your private workforce.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OIDC IdP client secret used to configure your private workforce.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The OIDC IdP issuer used to configure your private workforce.
    #   @return [String]
    #
    # @!attribute [rw] authorization_endpoint
    #   The OIDC IdP authorization endpoint used to configure your private
    #   workforce.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint
    #   The OIDC IdP token endpoint used to configure your private
    #   workforce.
    #   @return [String]
    #
    # @!attribute [rw] user_info_endpoint
    #   The OIDC IdP user information endpoint used to configure your
    #   private workforce.
    #   @return [String]
    #
    # @!attribute [rw] logout_endpoint
    #   The OIDC IdP logout endpoint used to configure your private
    #   workforce.
    #   @return [String]
    #
    # @!attribute [rw] jwks_uri
    #   The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your
    #   private workforce.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/OidcConfig AWS API Documentation
    #
    class OidcConfig < Struct.new(
      :client_id,
      :client_secret,
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :user_info_endpoint,
      :logout_endpoint,
      :jwks_uri)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Your OIDC IdP workforce configuration.
    #
    # @!attribute [rw] client_id
    #   The OIDC IdP client ID used to configure your private workforce.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The OIDC IdP issuer used to configure your private workforce.
    #   @return [String]
    #
    # @!attribute [rw] authorization_endpoint
    #   The OIDC IdP authorization endpoint used to configure your private
    #   workforce.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint
    #   The OIDC IdP token endpoint used to configure your private
    #   workforce.
    #   @return [String]
    #
    # @!attribute [rw] user_info_endpoint
    #   The OIDC IdP user information endpoint used to configure your
    #   private workforce.
    #   @return [String]
    #
    # @!attribute [rw] logout_endpoint
    #   The OIDC IdP logout endpoint used to configure your private
    #   workforce.
    #   @return [String]
    #
    # @!attribute [rw] jwks_uri
    #   The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your
    #   private workforce.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/OidcConfigForResponse AWS API Documentation
    #
    class OidcConfigForResponse < Struct.new(
      :client_id,
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :user_info_endpoint,
      :logout_endpoint,
      :jwks_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of user groups that exist in your OIDC Identity Provider (IdP).
    # One to ten groups can be used to create a single private work team.
    # When you add a user group to the list of `Groups`, you can add that
    # user group to one or more private work teams. If you add a user group
    # to a private work team, all workers in that user group are added to
    # the work team.
    #
    # @note When making an API call, you may pass OidcMemberDefinition
    #   data as a hash:
    #
    #       {
    #         groups: ["Group"], # required
    #       }
    #
    # @!attribute [rw] groups
    #   A list of comma seperated strings that identifies user groups in
    #   your OIDC IdP. Each user group is made up of a group of private
    #   workers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/OidcMemberDefinition AWS API Documentation
    #
    class OidcMemberDefinition < Struct.new(
      :groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the output location for the compiled model
    # and the target device that the model runs on. `TargetDevice` and
    # `TargetPlatform` are mutually exclusive, so you need to choose one
    # between the two to specify your target device or platform. If you
    # cannot find your device you want to use from the `TargetDevice` list,
    # use `TargetPlatform` to describe the platform of your edge device and
    # `CompilerOptions` if there are specific settings that are required or
    # recommended to use for particular TargetPlatform.
    #
    # @note When making an API call, you may pass OutputConfig
    #   data as a hash:
    #
    #       {
    #         s3_output_location: "S3Uri", # required
    #         target_device: "lambda", # accepts lambda, ml_m4, ml_m5, ml_c4, ml_c5, ml_p2, ml_p3, ml_g4dn, ml_inf1, jetson_tx1, jetson_tx2, jetson_nano, jetson_xavier, rasp3b, imx8qm, deeplens, rk3399, rk3288, aisage, sbe_c, qcs605, qcs603, sitara_am57x, amba_cv22, x86_win32, x86_win64, coreml
    #         target_platform: {
    #           os: "ANDROID", # required, accepts ANDROID, LINUX
    #           arch: "X86_64", # required, accepts X86_64, X86, ARM64, ARM_EABI, ARM_EABIHF
    #           accelerator: "INTEL_GRAPHICS", # accepts INTEL_GRAPHICS, MALI, NVIDIA
    #         },
    #         compiler_options: "CompilerOptions",
    #       }
    #
    # @!attribute [rw] s3_output_location
    #   Identifies the S3 bucket where you want Amazon SageMaker to store
    #   the model artifacts. For example,
    #   `s3://bucket-name/key-name-prefix`.
    #   @return [String]
    #
    # @!attribute [rw] target_device
    #   Identifies the target device or the machine learning instance that
    #   you want to run your model on after the compilation has completed.
    #   Alternatively, you can specify OS, architecture, and accelerator
    #   using TargetPlatform fields. It can be used instead of
    #   `TargetPlatform`.
    #   @return [String]
    #
    # @!attribute [rw] target_platform
    #   Contains information about a target platform that you want your
    #   model to run on, such as OS, architecture, and accelerators. It is
    #   an alternative of `TargetDevice`.
    #
    #   The following examples show how to configure the `TargetPlatform`
    #   and `CompilerOptions` JSON strings for popular target platforms:
    #
    #   * Raspberry Pi 3 Model B+
    #
    #     `"TargetPlatform": \{"Os": "LINUX", "Arch": "ARM_EABIHF"\},`
    #
    #     ` "CompilerOptions": \{'mattr': ['+neon']\}`
    #
    #   * Jetson TX2
    #
    #     `"TargetPlatform": \{"Os": "LINUX", "Arch": "ARM64",
    #     "Accelerator": "NVIDIA"\},`
    #
    #     ` "CompilerOptions": \{'gpu-code': 'sm_62', 'trt-ver': '6.0.1',
    #     'cuda-ver': '10.0'\}`
    #
    #   * EC2 m5.2xlarge instance OS
    #
    #     `"TargetPlatform": \{"Os": "LINUX", "Arch": "X86_64",
    #     "Accelerator": "NVIDIA"\},`
    #
    #     ` "CompilerOptions": \{'mcpu': 'skylake-avx512'\}`
    #
    #   * RK3399
    #
    #     `"TargetPlatform": \{"Os": "LINUX", "Arch": "ARM64",
    #     "Accelerator": "MALI"\}`
    #
    #   * ARMv7 phone (CPU)
    #
    #     `"TargetPlatform": \{"Os": "ANDROID", "Arch": "ARM_EABI"\},`
    #
    #     ` "CompilerOptions": \{'ANDROID_PLATFORM': 25, 'mattr':
    #     ['+neon']\}`
    #
    #   * ARMv8 phone (CPU)
    #
    #     `"TargetPlatform": \{"Os": "ANDROID", "Arch": "ARM64"\},`
    #
    #     ` "CompilerOptions": \{'ANDROID_PLATFORM': 29\}`
    #   @return [Types::TargetPlatform]
    #
    # @!attribute [rw] compiler_options
    #   Specifies additional parameters for compiler options in JSON format.
    #   The compiler options are `TargetPlatform` specific. It is required
    #   for NVIDIA accelerators and highly recommended for CPU compilations.
    #   For any other cases, it is optional to specify `CompilerOptions.`
    #
    #   * `CPU`\: Compilation for CPU supports the following compiler
    #     options.
    #
    #     * `mcpu`\: CPU micro-architecture. For example, `\{'mcpu':
    #       'skylake-avx512'\}`
    #
    #     * `mattr`\: CPU flags. For example, `\{'mattr': ['+neon',
    #       '+vfpv4']\}`
    #
    #   * `ARM`\: Details of ARM CPU compilations.
    #
    #     * `NEON`\: NEON is an implementation of the Advanced SIMD
    #       extension used in ARMv7 processors.
    #
    #       For example, add `\{'mattr': ['+neon']\}` to the compiler
    #       options if compiling for ARM 32-bit platform with the NEON
    #       support.
    #
    #   * `NVIDIA`\: Compilation for NVIDIA GPU supports the following
    #     compiler options.
    #
    #     * `gpu_code`\: Specifies the targeted architecture.
    #
    #     * `trt-ver`\: Specifies the TensorRT versions in x.y.z. format.
    #
    #     * `cuda-ver`\: Specifies the CUDA version in x.y format.
    #
    #     For example, `\{'gpu-code': 'sm_72', 'trt-ver': '6.0.1',
    #     'cuda-ver': '10.1'\}`
    #
    #   * `ANDROID`\: Compilation for the Android OS supports the following
    #     compiler options:
    #
    #     * `ANDROID_PLATFORM`\: Specifies the Android API levels. Available
    #       levels range from 21 to 29. For example, `\{'ANDROID_PLATFORM':
    #       28\}`.
    #
    #     * `mattr`\: Add `\{'mattr': ['+neon']\}` to compiler options if
    #       compiling for ARM 32-bit platform with NEON support.
    #
    #   * `CoreML`\: Compilation for the CoreML OutputConfig$TargetDevice
    #     supports the following compiler options:
    #
    #     * `class_labels`\: Specifies the classification labels file name
    #       inside input tar.gz file. For example, `\{"class_labels":
    #       "imagenet_labels_1000.txt"\}`. Labels inside the txt file should
    #       be separated by newlines.
    #
    #     ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :s3_output_location,
      :target_device,
      :target_platform,
      :compiler_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about how to store model training results (model
    # artifacts).
    #
    # @note When making an API call, you may pass OutputDataConfig
    #   data as a hash:
    #
    #       {
    #         kms_key_id: "KmsKeyId",
    #         s3_output_path: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt the model artifacts at rest using Amazon S3
    #   server-side encryption. The `KmsKeyId` can be any of the following
    #   formats:
    #
    #   * // KMS Key ID
    #
    #     `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * // Amazon Resource Name (ARN) of a KMS Key
    #
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * // KMS Key Alias
    #
    #     `"alias/ExampleAlias"`
    #
    #   * // Amazon Resource Name (ARN) of a KMS Key Alias
    #
    #     `"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"`
    #
    #   If you use a KMS key ID or an alias of your master key, the Amazon
    #   SageMaker execution role must include permissions to call
    #   `kms:Encrypt`. If you don't provide a KMS key ID, Amazon SageMaker
    #   uses the default KMS key for Amazon S3 for your role's account.
    #   Amazon SageMaker uses server-side encryption with KMS-managed keys
    #   for `OutputDataConfig`. If you use a bucket policy with an
    #   `s3:PutObject` permission that only allows objects with server-side
    #   encryption, set the condition key of
    #   `s3:x-amz-server-side-encryption` to `"aws:kms"`. For more
    #   information, see [KMS-Managed Encryption Keys][1] in the *Amazon
    #   Simple Storage Service Developer Guide.*
    #
    #   The KMS key policy must grant permission to the IAM role that you
    #   specify in your `CreateTrainingJob`, `CreateTransformJob`, or
    #   `CreateHyperParameterTuningJob` requests. For more information, see
    #   [Using Key Policies in AWS KMS][2] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html
    #   [2]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   Identifies the S3 path where you want Amazon SageMaker to store the
    #   model artifacts. For example, `s3://bucket-name/key-name-prefix`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :kms_key_id,
      :s3_output_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the possible values for categorical, continuous, and integer
    # hyperparameters to be used by an algorithm.
    #
    # @note When making an API call, you may pass ParameterRange
    #   data as a hash:
    #
    #       {
    #         integer_parameter_range_specification: {
    #           min_value: "ParameterValue", # required
    #           max_value: "ParameterValue", # required
    #         },
    #         continuous_parameter_range_specification: {
    #           min_value: "ParameterValue", # required
    #           max_value: "ParameterValue", # required
    #         },
    #         categorical_parameter_range_specification: {
    #           values: ["ParameterValue"], # required
    #         },
    #       }
    #
    # @!attribute [rw] integer_parameter_range_specification
    #   A `IntegerParameterRangeSpecification` object that defines the
    #   possible values for an integer hyperparameter.
    #   @return [Types::IntegerParameterRangeSpecification]
    #
    # @!attribute [rw] continuous_parameter_range_specification
    #   A `ContinuousParameterRangeSpecification` object that defines the
    #   possible values for a continuous hyperparameter.
    #   @return [Types::ContinuousParameterRangeSpecification]
    #
    # @!attribute [rw] categorical_parameter_range_specification
    #   A `CategoricalParameterRangeSpecification` object that defines the
    #   possible values for a categorical hyperparameter.
    #   @return [Types::CategoricalParameterRangeSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ParameterRange AWS API Documentation
    #
    class ParameterRange < Struct.new(
      :integer_parameter_range_specification,
      :continuous_parameter_range_specification,
      :categorical_parameter_range_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies ranges of integer, continuous, and categorical
    # hyperparameters that a hyperparameter tuning job searches. The
    # hyperparameter tuning job launches training jobs with hyperparameter
    # values within these ranges to find the combination of values that
    # result in the training job with the best performance as measured by
    # the objective metric of the hyperparameter tuning job.
    #
    # <note markdown="1"> You can specify a maximum of 20 hyperparameters that a hyperparameter
    # tuning job can search over. Every possible value of a categorical
    # parameter range counts against this limit.
    #
    #  </note>
    #
    # @note When making an API call, you may pass ParameterRanges
    #   data as a hash:
    #
    #       {
    #         integer_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
    #             scaling_type: "Auto", # accepts Auto, Linear, Logarithmic, ReverseLogarithmic
    #           },
    #         ],
    #         categorical_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             values: ["ParameterValue"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] integer_parameter_ranges
    #   The array of IntegerParameterRange objects that specify ranges of
    #   integer hyperparameters that a hyperparameter tuning job searches.
    #   @return [Array<Types::IntegerParameterRange>]
    #
    # @!attribute [rw] continuous_parameter_ranges
    #   The array of ContinuousParameterRange objects that specify ranges of
    #   continuous hyperparameters that a hyperparameter tuning job
    #   searches.
    #   @return [Array<Types::ContinuousParameterRange>]
    #
    # @!attribute [rw] categorical_parameter_ranges
    #   The array of CategoricalParameterRange objects that specify ranges
    #   of categorical hyperparameters that a hyperparameter tuning job
    #   searches.
    #   @return [Array<Types::CategoricalParameterRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ParameterRanges AWS API Documentation
    #
    class ParameterRanges < Struct.new(
      :integer_parameter_ranges,
      :continuous_parameter_ranges,
      :categorical_parameter_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trial that a trial component is associated with and the experiment
    # the trial is part of. A component might not be associated with a
    # trial. A component can be associated with multiple trials.
    #
    # @!attribute [rw] trial_name
    #   The name of the trial.
    #   @return [String]
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Parent AWS API Documentation
    #
    class Parent < Struct.new(
      :trial_name,
      :experiment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A previously completed or stopped hyperparameter tuning job to be used
    # as a starting point for a new hyperparameter tuning job.
    #
    # @note When making an API call, you may pass ParentHyperParameterTuningJob
    #   data as a hash:
    #
    #       {
    #         hyper_parameter_tuning_job_name: "HyperParameterTuningJobName",
    #       }
    #
    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the hyperparameter tuning job to be used as a starting
    #   point for a new hyperparameter tuning job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ParentHyperParameterTuningJob AWS API Documentation
    #
    class ParentHyperParameterTuningJob < Struct.new(
      :hyper_parameter_tuning_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the cluster used to run a processing job.
    #
    # @note When making an API call, you may pass ProcessingClusterConfig
    #   data as a hash:
    #
    #       {
    #         instance_count: 1, # required
    #         instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #         volume_size_in_gb: 1, # required
    #         volume_kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] instance_count
    #   The number of ML compute instances to use in the processing job. For
    #   distributed processing jobs, specify a value greater than 1. The
    #   default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The ML compute instance type for the processing job.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size of the ML storage volume in gigabytes that you want to
    #   provision. You must specify sufficient ML storage for your scenario.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt data on the storage volume attached to the ML
    #   compute instance(s) that run the processing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingClusterConfig AWS API Documentation
    #
    class ProcessingClusterConfig < Struct.new(
      :instance_count,
      :instance_type,
      :volume_size_in_gb,
      :volume_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inputs for a processing job.
    #
    # @note When making an API call, you may pass ProcessingInput
    #   data as a hash:
    #
    #       {
    #         input_name: "String", # required
    #         s3_input: { # required
    #           s3_uri: "S3Uri", # required
    #           local_path: "ProcessingLocalPath", # required
    #           s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #           s3_input_mode: "Pipe", # required, accepts Pipe, File
    #           s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #           s3_compression_type: "None", # accepts None, Gzip
    #         },
    #       }
    #
    # @!attribute [rw] input_name
    #   The name of the inputs for the processing job.
    #   @return [String]
    #
    # @!attribute [rw] s3_input
    #   The S3 inputs for the processing job.
    #   @return [Types::ProcessingS3Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingInput AWS API Documentation
    #
    class ProcessingInput < Struct.new(
      :input_name,
      :s3_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon SageMaker processing job that is used to analyze data and
    # evaluate models. For more information, see [Process Data and Evaluate
    # Models][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/processing-job.html
    #
    # @!attribute [rw] processing_inputs
    #   For each input, data is downloaded from S3 into the processing
    #   container before the processing job begins running if
    #   "S3InputMode" is set to `File`.
    #   @return [Array<Types::ProcessingInput>]
    #
    # @!attribute [rw] processing_output_config
    #   The output configuration for the processing job.
    #   @return [Types::ProcessingOutputConfig]
    #
    # @!attribute [rw] processing_job_name
    #   The name of the processing job.
    #   @return [String]
    #
    # @!attribute [rw] processing_resources
    #   Identifies the resources, ML compute instances, and ML storage
    #   volumes to deploy for a processing job. In distributed training, you
    #   specify more than one instance.
    #   @return [Types::ProcessingResources]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a time limit for how long the processing job is allowed to
    #   run.
    #   @return [Types::ProcessingStoppingCondition]
    #
    # @!attribute [rw] app_specification
    #   Configuration to run a processing job in a specified container
    #   image.
    #   @return [Types::AppSpecification]
    #
    # @!attribute [rw] environment
    #   Sets the environment variables in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] network_config
    #   Networking options for a job, such as network traffic encryption
    #   between containers, whether to allow inbound and outbound network
    #   calls to and from containers, and the VPC subnets and security
    #   groups to use for VPC-enabled jobs.
    #   @return [Types::NetworkConfig]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role used to create the processing job.
    #   @return [String]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @!attribute [rw] processing_job_arn
    #   The ARN of the processing job.
    #   @return [String]
    #
    # @!attribute [rw] processing_job_status
    #   The status of the processing job.
    #   @return [String]
    #
    # @!attribute [rw] exit_message
    #   A string, up to one KB in size, that contains metadata from the
    #   processing container when the processing job exits.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   A string, up to one KB in size, that contains the reason a
    #   processing job failed, if it failed.
    #   @return [String]
    #
    # @!attribute [rw] processing_end_time
    #   The time that the processing job ended.
    #   @return [Time]
    #
    # @!attribute [rw] processing_start_time
    #   The time that the processing job started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the processing job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time the processing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] monitoring_schedule_arn
    #   The ARN of a monitoring schedule for an endpoint associated with
    #   this processing job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The Amazon Resource Name (ARN) of the AutoML job associated with
    #   this processing job.
    #   @return [String]
    #
    # @!attribute [rw] training_job_arn
    #   The ARN of the training job associated with this processing job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingJob AWS API Documentation
    #
    class ProcessingJob < Struct.new(
      :processing_inputs,
      :processing_output_config,
      :processing_job_name,
      :processing_resources,
      :stopping_condition,
      :app_specification,
      :environment,
      :network_config,
      :role_arn,
      :experiment_config,
      :processing_job_arn,
      :processing_job_status,
      :exit_message,
      :failure_reason,
      :processing_end_time,
      :processing_start_time,
      :last_modified_time,
      :creation_time,
      :monitoring_schedule_arn,
      :auto_ml_job_arn,
      :training_job_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of information about a processing job.
    #
    # @!attribute [rw] processing_job_name
    #   The name of the processing job.
    #   @return [String]
    #
    # @!attribute [rw] processing_job_arn
    #   The Amazon Resource Name (ARN) of the processing job..
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the processing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] processing_end_time
    #   The time at which the processing job completed.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that indicates the last time the processing job was
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] processing_job_status
    #   The status of the processing job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   A string, up to one KB in size, that contains the reason a
    #   processing job failed, if it failed.
    #   @return [String]
    #
    # @!attribute [rw] exit_message
    #   An optional string, up to one KB in size, that contains metadata
    #   from the processing container when the processing job exits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingJobSummary AWS API Documentation
    #
    class ProcessingJobSummary < Struct.new(
      :processing_job_name,
      :processing_job_arn,
      :creation_time,
      :processing_end_time,
      :last_modified_time,
      :processing_job_status,
      :failure_reason,
      :exit_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the results of a processing job.
    #
    # @note When making an API call, you may pass ProcessingOutput
    #   data as a hash:
    #
    #       {
    #         output_name: "String", # required
    #         s3_output: { # required
    #           s3_uri: "S3Uri", # required
    #           local_path: "ProcessingLocalPath", # required
    #           s3_upload_mode: "Continuous", # required, accepts Continuous, EndOfJob
    #         },
    #       }
    #
    # @!attribute [rw] output_name
    #   The name for the processing job output.
    #   @return [String]
    #
    # @!attribute [rw] s3_output
    #   Configuration for processing job outputs in Amazon S3.
    #   @return [Types::ProcessingS3Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingOutput AWS API Documentation
    #
    class ProcessingOutput < Struct.new(
      :output_name,
      :s3_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration for the processing job.
    #
    # @note When making an API call, you may pass ProcessingOutputConfig
    #   data as a hash:
    #
    #       {
    #         outputs: [ # required
    #           {
    #             output_name: "String", # required
    #             s3_output: { # required
    #               s3_uri: "S3Uri", # required
    #               local_path: "ProcessingLocalPath", # required
    #               s3_upload_mode: "Continuous", # required, accepts Continuous, EndOfJob
    #             },
    #           },
    #         ],
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] outputs
    #   Output configuration information for a processing job.
    #   @return [Array<Types::ProcessingOutput>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt the processing job output. `KmsKeyId` can be an ID
    #   of a KMS key, ARN of a KMS key, alias of a KMS key, or alias of a
    #   KMS key. The `KmsKeyId` is applied to all outputs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingOutputConfig AWS API Documentation
    #
    class ProcessingOutputConfig < Struct.new(
      :outputs,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the resources, ML compute instances, and ML storage volumes
    # to deploy for a processing job. In distributed training, you specify
    # more than one instance.
    #
    # @note When making an API call, you may pass ProcessingResources
    #   data as a hash:
    #
    #       {
    #         cluster_config: { # required
    #           instance_count: 1, # required
    #           instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] cluster_config
    #   The configuration for the resources in a cluster used to run the
    #   processing job.
    #   @return [Types::ProcessingClusterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingResources AWS API Documentation
    #
    class ProcessingResources < Struct.new(
      :cluster_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about where and how you want to obtain the inputs for an
    # processing job.
    #
    # @note When making an API call, you may pass ProcessingS3Input
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         local_path: "ProcessingLocalPath", # required
    #         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #         s3_input_mode: "Pipe", # required, accepts Pipe, File
    #         s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #         s3_compression_type: "None", # accepts None, Gzip
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The URI for the Amazon S3 storage where you want Amazon SageMaker to
    #   download the artifacts needed to run a processing job.
    #   @return [String]
    #
    # @!attribute [rw] local_path
    #   The local path to the Amazon S3 bucket where you want Amazon
    #   SageMaker to download the inputs to run a processing job.
    #   `LocalPath` is an absolute path to the input data.
    #   @return [String]
    #
    # @!attribute [rw] s3_data_type
    #   Whether you use an `S3Prefix` or a `ManifestFile` for the data type.
    #   If you choose `S3Prefix`, `S3Uri` identifies a key name prefix.
    #   Amazon SageMaker uses all objects with the specified key name prefix
    #   for the processing job. If you choose `ManifestFile`, `S3Uri`
    #   identifies an object that is a manifest file containing a list of
    #   object keys that you want Amazon SageMaker to use for the processing
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] s3_input_mode
    #   Whether to use `File` or `Pipe` input mode. In `File` mode, Amazon
    #   SageMaker copies the data from the input source onto the local
    #   Amazon Elastic Block Store (Amazon EBS) volumes before starting your
    #   training algorithm. This is the most commonly used input mode. In
    #   `Pipe` mode, Amazon SageMaker streams input data from the source
    #   directly to your algorithm without using the EBS volume.
    #   @return [String]
    #
    # @!attribute [rw] s3_data_distribution_type
    #   Whether the data stored in Amazon S3 is `FullyReplicated` or
    #   `ShardedByS3Key`.
    #   @return [String]
    #
    # @!attribute [rw] s3_compression_type
    #   Whether to use `Gzip` compression for Amazon S3 storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingS3Input AWS API Documentation
    #
    class ProcessingS3Input < Struct.new(
      :s3_uri,
      :local_path,
      :s3_data_type,
      :s3_input_mode,
      :s3_data_distribution_type,
      :s3_compression_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about where and how you want to store the results of an
    # processing job.
    #
    # @note When making an API call, you may pass ProcessingS3Output
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         local_path: "ProcessingLocalPath", # required
    #         s3_upload_mode: "Continuous", # required, accepts Continuous, EndOfJob
    #       }
    #
    # @!attribute [rw] s3_uri
    #   A URI that identifies the Amazon S3 bucket where you want Amazon
    #   SageMaker to save the results of a processing job.
    #   @return [String]
    #
    # @!attribute [rw] local_path
    #   The local path to the Amazon S3 bucket where you want Amazon
    #   SageMaker to save the results of an processing job. `LocalPath` is
    #   an absolute path to the input data.
    #   @return [String]
    #
    # @!attribute [rw] s3_upload_mode
    #   Whether to upload the results of the processing job continuously or
    #   after the job completes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingS3Output AWS API Documentation
    #
    class ProcessingS3Output < Struct.new(
      :s3_uri,
      :local_path,
      :s3_upload_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a time limit for how long the processing job is allowed to
    # run.
    #
    # @note When making an API call, you may pass ProcessingStoppingCondition
    #   data as a hash:
    #
    #       {
    #         max_runtime_in_seconds: 1, # required
    #       }
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   Specifies the maximum runtime in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProcessingStoppingCondition AWS API Documentation
    #
    class ProcessingStoppingCondition < Struct.new(
      :max_runtime_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a model that you want to host and the resources to deploy
    # for hosting it. If you are deploying multiple models, tell Amazon
    # SageMaker how to distribute traffic among the models by specifying
    # variant weights.
    #
    # @note When making an API call, you may pass ProductionVariant
    #   data as a hash:
    #
    #       {
    #         variant_name: "VariantName", # required
    #         model_name: "ModelName", # required
    #         initial_instance_count: 1, # required
    #         instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
    #         initial_variant_weight: 1.0,
    #         accelerator_type: "ml.eia1.medium", # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge
    #       }
    #
    # @!attribute [rw] variant_name
    #   The name of the production variant.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model that you want to host. This is the name that
    #   you specified when creating the model.
    #   @return [String]
    #
    # @!attribute [rw] initial_instance_count
    #   Number of instances to launch initially.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The ML compute instance type.
    #   @return [String]
    #
    # @!attribute [rw] initial_variant_weight
    #   Determines initial traffic distribution among all of the models that
    #   you specify in the endpoint configuration. The traffic to a
    #   production variant is determined by the ratio of the `VariantWeight`
    #   to the sum of all `VariantWeight` values across all
    #   ProductionVariants. If unspecified, it defaults to 1.0.
    #   @return [Float]
    #
    # @!attribute [rw] accelerator_type
    #   The size of the Elastic Inference (EI) instance to use for the
    #   production variant. EI instances provide on-demand GPU computing for
    #   inference. For more information, see [Using Elastic Inference in
    #   Amazon SageMaker][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProductionVariant AWS API Documentation
    #
    class ProductionVariant < Struct.new(
      :variant_name,
      :model_name,
      :initial_instance_count,
      :instance_type,
      :initial_variant_weight,
      :accelerator_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes weight and capacities for a production variant associated
    # with an endpoint. If you sent a request to the
    # `UpdateEndpointWeightsAndCapacities` API and the endpoint status is
    # `Updating`, you get different desired and current values.
    #
    # @!attribute [rw] variant_name
    #   The name of the variant.
    #   @return [String]
    #
    # @!attribute [rw] deployed_images
    #   An array of `DeployedImage` objects that specify the Amazon EC2
    #   Container Registry paths of the inference images deployed on
    #   instances of this `ProductionVariant`.
    #   @return [Array<Types::DeployedImage>]
    #
    # @!attribute [rw] current_weight
    #   The weight associated with the variant.
    #   @return [Float]
    #
    # @!attribute [rw] desired_weight
    #   The requested weight, as specified in the
    #   `UpdateEndpointWeightsAndCapacities` request.
    #   @return [Float]
    #
    # @!attribute [rw] current_instance_count
    #   The number of instances associated with the variant.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_instance_count
    #   The number of instances requested in the
    #   `UpdateEndpointWeightsAndCapacities` request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProductionVariantSummary AWS API Documentation
    #
    class ProductionVariantSummary < Struct.new(
      :variant_name,
      :deployed_images,
      :current_weight,
      :desired_weight,
      :current_instance_count,
      :desired_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the `SuggestionQuery` type. Specifies a hint for retrieving
    # property names that begin with the specified text.
    #
    # @note When making an API call, you may pass PropertyNameQuery
    #   data as a hash:
    #
    #       {
    #         property_name_hint: "PropertyNameHint", # required
    #       }
    #
    # @!attribute [rw] property_name_hint
    #   Text that begins a property's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/PropertyNameQuery AWS API Documentation
    #
    class PropertyNameQuery < Struct.new(
      :property_name_hint)
      SENSITIVE = []
      include Aws::Structure
    end

    # A property name returned from a `GetSearchSuggestions` call that
    # specifies a value in the `PropertyNameQuery` field.
    #
    # @!attribute [rw] property_name
    #   A suggested property name based on what you entered in the search
    #   textbox in the Amazon SageMaker console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/PropertyNameSuggestion AWS API Documentation
    #
    class PropertyNameSuggestion < Struct.new(
      :property_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the amount of money paid to an Amazon Mechanical Turk worker
    # for each task performed.
    #
    # Use one of the following prices for bounding box tasks. Prices are in
    # US dollars and should be based on the complexity of the task; the
    # longer it takes in your initial testing, the more you should offer.
    #
    # * 0\.036
    #
    # * 0\.048
    #
    # * 0\.060
    #
    # * 0\.072
    #
    # * 0\.120
    #
    # * 0\.240
    #
    # * 0\.360
    #
    # * 0\.480
    #
    # * 0\.600
    #
    # * 0\.720
    #
    # * 0\.840
    #
    # * 0\.960
    #
    # * 1\.080
    #
    # * 1\.200
    #
    # Use one of the following prices for image classification, text
    # classification, and custom tasks. Prices are in US dollars.
    #
    # * 0\.012
    #
    # * 0\.024
    #
    # * 0\.036
    #
    # * 0\.048
    #
    # * 0\.060
    #
    # * 0\.072
    #
    # * 0\.120
    #
    # * 0\.240
    #
    # * 0\.360
    #
    # * 0\.480
    #
    # * 0\.600
    #
    # * 0\.720
    #
    # * 0\.840
    #
    # * 0\.960
    #
    # * 1\.080
    #
    # * 1\.200
    #
    # Use one of the following prices for semantic segmentation tasks.
    # Prices are in US dollars.
    #
    # * 0\.840
    #
    # * 0\.960
    #
    # * 1\.080
    #
    # * 1\.200
    #
    # Use one of the following prices for Textract AnalyzeDocument Important
    # Form Key Amazon Augmented AI review tasks. Prices are in US dollars.
    #
    # * 2\.400
    #
    # * 2\.280
    #
    # * 2\.160
    #
    # * 2\.040
    #
    # * 1\.920
    #
    # * 1\.800
    #
    # * 1\.680
    #
    # * 1\.560
    #
    # * 1\.440
    #
    # * 1\.320
    #
    # * 1\.200
    #
    # * 1\.080
    #
    # * 0\.960
    #
    # * 0\.840
    #
    # * 0\.720
    #
    # * 0\.600
    #
    # * 0\.480
    #
    # * 0\.360
    #
    # * 0\.240
    #
    # * 0\.120
    #
    # * 0\.072
    #
    # * 0\.060
    #
    # * 0\.048
    #
    # * 0\.036
    #
    # * 0\.024
    #
    # * 0\.012
    #
    # Use one of the following prices for Rekognition DetectModerationLabels
    # Amazon Augmented AI review tasks. Prices are in US dollars.
    #
    # * 1\.200
    #
    # * 1\.080
    #
    # * 0\.960
    #
    # * 0\.840
    #
    # * 0\.720
    #
    # * 0\.600
    #
    # * 0\.480
    #
    # * 0\.360
    #
    # * 0\.240
    #
    # * 0\.120
    #
    # * 0\.072
    #
    # * 0\.060
    #
    # * 0\.048
    #
    # * 0\.036
    #
    # * 0\.024
    #
    # * 0\.012
    #
    # Use one of the following prices for Amazon Augmented AI custom human
    # review tasks. Prices are in US dollars.
    #
    # * 1\.200
    #
    # * 1\.080
    #
    # * 0\.960
    #
    # * 0\.840
    #
    # * 0\.720
    #
    # * 0\.600
    #
    # * 0\.480
    #
    # * 0\.360
    #
    # * 0\.240
    #
    # * 0\.120
    #
    # * 0\.072
    #
    # * 0\.060
    #
    # * 0\.048
    #
    # * 0\.036
    #
    # * 0\.024
    #
    # * 0\.012
    #
    # @note When making an API call, you may pass PublicWorkforceTaskPrice
    #   data as a hash:
    #
    #       {
    #         amount_in_usd: {
    #           dollars: 1,
    #           cents: 1,
    #           tenth_fractions_of_a_cent: 1,
    #         },
    #       }
    #
    # @!attribute [rw] amount_in_usd
    #   Defines the amount of money paid to an Amazon Mechanical Turk worker
    #   in United States dollars.
    #   @return [Types::USD]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/PublicWorkforceTaskPrice AWS API Documentation
    #
    class PublicWorkforceTaskPrice < Struct.new(
      :amount_in_usd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RenderUiTemplateRequest
    #   data as a hash:
    #
    #       {
    #         ui_template: {
    #           content: "TemplateContent", # required
    #         },
    #         task: { # required
    #           input: "TaskInput", # required
    #         },
    #         role_arn: "RoleArn", # required
    #         human_task_ui_arn: "HumanTaskUiArn",
    #       }
    #
    # @!attribute [rw] ui_template
    #   A `Template` object containing the worker UI template to render.
    #   @return [Types::UiTemplate]
    #
    # @!attribute [rw] task
    #   A `RenderableTask` object containing a representative task to
    #   render.
    #   @return [Types::RenderableTask]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) that has access to the S3 objects
    #   that are used by the template.
    #   @return [String]
    #
    # @!attribute [rw] human_task_ui_arn
    #   The `HumanTaskUiArn` of the worker UI that you want to render. Do
    #   not provide a `HumanTaskUiArn` if you use the `UiTemplate`
    #   parameter.
    #
    #   See a list of available Human Ui Amazon Resource Names (ARNs) in
    #   UiConfig.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RenderUiTemplateRequest AWS API Documentation
    #
    class RenderUiTemplateRequest < Struct.new(
      :ui_template,
      :task,
      :role_arn,
      :human_task_ui_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rendered_content
    #   A Liquid template that renders the HTML for the worker UI.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   A list of one or more `RenderingError` objects if any were
    #   encountered while rendering the template. If there were no errors,
    #   the list is empty.
    #   @return [Array<Types::RenderingError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RenderUiTemplateResponse AWS API Documentation
    #
    class RenderUiTemplateResponse < Struct.new(
      :rendered_content,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains input values for a task.
    #
    # @note When making an API call, you may pass RenderableTask
    #   data as a hash:
    #
    #       {
    #         input: "TaskInput", # required
    #       }
    #
    # @!attribute [rw] input
    #   A JSON object that contains values for the variables defined in the
    #   template. It is made available to the template under the
    #   substitution variable `task.input`. For example, if you define a
    #   variable `task.input.text` in your template, you can supply the
    #   variable in the JSON object as `"text": "sample text"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RenderableTask AWS API Documentation
    #
    class RenderableTask < Struct.new(
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of an error that occurred while rendering the template.
    #
    # @!attribute [rw] code
    #   A unique identifier for a specific class of errors.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RenderingError AWS API Documentation
    #
    class RenderingError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resolved attributes.
    #
    # @!attribute [rw] auto_ml_job_objective
    #   Specifies a metric to minimize or maximize as the objective of a
    #   job.
    #   @return [Types::AutoMLJobObjective]
    #
    # @!attribute [rw] problem_type
    #   The problem type.
    #   @return [String]
    #
    # @!attribute [rw] completion_criteria
    #   How long a job is allowed to run, or how many candidates a job is
    #   allowed to generate.
    #   @return [Types::AutoMLJobCompletionCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResolvedAttributes AWS API Documentation
    #
    class ResolvedAttributes < Struct.new(
      :auto_ml_job_objective,
      :problem_type,
      :completion_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the resources, including ML compute instances and ML storage
    # volumes, to use for model training.
    #
    # @note When making an API call, you may pass ResourceConfig
    #   data as a hash:
    #
    #       {
    #         instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #         instance_count: 1, # required
    #         volume_size_in_gb: 1, # required
    #         volume_kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] instance_type
    #   The ML compute instance type.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of ML compute instances to use. For distributed training,
    #   provide a value greater than 1.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size of the ML storage volume that you want to provision.
    #
    #   ML storage volumes store model artifacts and incremental states.
    #   Training algorithms might also use the ML storage volume for scratch
    #   space. If you want to store the training data in the ML storage
    #   volume, choose `File` as the `TrainingInputMode` in the algorithm
    #   specification.
    #
    #   You must specify sufficient ML storage for your scenario.
    #
    #   <note markdown="1"> Amazon SageMaker supports only the General Purpose SSD (gp2) ML
    #   storage volume type.
    #
    #    </note>
    #
    #   <note markdown="1"> Certain Nitro-based instances include local storage with a fixed
    #   total size, dependent on the instance type. When using these
    #   instances for training, Amazon SageMaker mounts the local instance
    #   storage instead of Amazon EBS gp2 storage. You can't request a
    #   `VolumeSizeInGB` greater than the total size of the local instance
    #   storage.
    #
    #    For a list of instance types that support local instance storage,
    #   including the total size per instance type, see [Instance Store
    #   Volumes][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#instance-store-volumes
    #   @return [Integer]
    #
    # @!attribute [rw] volume_kms_key_id
    #   The AWS KMS key that Amazon SageMaker uses to encrypt data on the
    #   storage volume attached to the ML compute instance(s) that run the
    #   training job.
    #
    #   <note markdown="1"> Certain Nitro-based instances include local storage, dependent on
    #   the instance type. Local storage volumes are encrypted using a
    #   hardware module on the instance. You can't request a
    #   `VolumeKmsKeyId` when using an instance type with local storage.
    #
    #    For a list of instance types that support local instance storage,
    #   see [Instance Store Volumes][1].
    #
    #    For more information about local instance storage encryption, see
    #   [SSD Instance Store Volumes][2].
    #
    #    </note>
    #
    #   The `VolumeKmsKeyId` can be in any of the following formats:
    #
    #   * // KMS Key ID
    #
    #     `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * // Amazon Resource Name (ARN) of a KMS Key
    #
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#instance-store-volumes
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssd-instance-store.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceConfig AWS API Documentation
    #
    class ResourceConfig < Struct.new(
      :instance_type,
      :instance_count,
      :volume_size_in_gb,
      :volume_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource being accessed is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceInUse AWS API Documentation
    #
    class ResourceInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded an Amazon SageMaker resource limit. For example, you
    # might have too many training jobs created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceLimitExceeded AWS API Documentation
    #
    class ResourceLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the maximum number of training jobs and parallel training
    # jobs that a hyperparameter tuning job can launch.
    #
    # @note When making an API call, you may pass ResourceLimits
    #   data as a hash:
    #
    #       {
    #         max_number_of_training_jobs: 1, # required
    #         max_parallel_training_jobs: 1, # required
    #       }
    #
    # @!attribute [rw] max_number_of_training_jobs
    #   The maximum number of training jobs that a hyperparameter tuning job
    #   can launch.
    #   @return [Integer]
    #
    # @!attribute [rw] max_parallel_training_jobs
    #   The maximum number of concurrent training jobs that a hyperparameter
    #   tuning job can launch.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceLimits AWS API Documentation
    #
    class ResourceLimits < Struct.new(
      :max_number_of_training_jobs,
      :max_parallel_training_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource being access is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceNotFound AWS API Documentation
    #
    class ResourceNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance type and the Amazon Resource Name (ARN) of the SageMaker
    # image created on the instance. The ARN is stored as metadata in
    # SageMaker Studio notebooks.
    #
    # @note When making an API call, you may pass ResourceSpec
    #   data as a hash:
    #
    #       {
    #         sage_maker_image_arn: "ImageArn",
    #         instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #       }
    #
    # @!attribute [rw] sage_maker_image_arn
    #   The Amazon Resource Name (ARN) of the SageMaker image created on the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceSpec AWS API Documentation
    #
    class ResourceSpec < Struct.new(
      :sage_maker_image_arn,
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retention policy for data stored on an Amazon Elastic File System
    # (EFS) volume.
    #
    # @note When making an API call, you may pass RetentionPolicy
    #   data as a hash:
    #
    #       {
    #         home_efs_file_system: "Retain", # accepts Retain, Delete
    #       }
    #
    # @!attribute [rw] home_efs_file_system
    #   The default is `Retain`, which specifies to keep the data stored on
    #   the EFS volume.
    #
    #   Specify `Delete` to delete the data stored on the EFS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RetentionPolicy AWS API Documentation
    #
    class RetentionPolicy < Struct.new(
      :home_efs_file_system)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the S3 data source.
    #
    # @note When making an API call, you may pass S3DataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #         s3_uri: "S3Uri", # required
    #         s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #         attribute_names: ["AttributeName"],
    #       }
    #
    # @!attribute [rw] s3_data_type
    #   If you choose `S3Prefix`, `S3Uri` identifies a key name prefix.
    #   Amazon SageMaker uses all objects that match the specified key name
    #   prefix for model training.
    #
    #   If you choose `ManifestFile`, `S3Uri` identifies an object that is a
    #   manifest file containing a list of object keys that you want Amazon
    #   SageMaker to use for model training.
    #
    #   If you choose `AugmentedManifestFile`, S3Uri identifies an object
    #   that is an augmented manifest file in JSON lines format. This file
    #   contains the data you want to use for model training.
    #   `AugmentedManifestFile` can only be used if the Channel's input
    #   mode is `Pipe`.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   Depending on the value specified for the `S3DataType`, identifies
    #   either a key name prefix or a manifest. For example:
    #
    #   * A key name prefix might look like this:
    #     `s3://bucketname/exampleprefix`
    #
    #   * A manifest might look like this:
    #     `s3://bucketname/example.manifest`
    #
    #     A manifest is an S3 object which is a JSON file consisting of an
    #     array of elements. The first element is a prefix which is followed
    #     by one or more suffixes. SageMaker appends the suffix elements to
    #     the prefix to get a full set of `S3Uri`. Note that the prefix must
    #     be a valid non-empty `S3Uri` that precludes users from specifying
    #     a manifest whose individual `S3Uri` is sourced from different S3
    #     buckets.
    #
    #     The following code example shows a valid manifest format:
    #
    #     `[ \{"prefix": "s3://customer_bucket/some/prefix/"\},`
    #
    #     ` "relative/path/to/custdata-1",`
    #
    #     ` "relative/path/custdata-2",`
    #
    #     ` ...`
    #
    #     ` "relative/path/custdata-N"`
    #
    #     `]`
    #
    #     This JSON is equivalent to the following `S3Uri` list:
    #
    #     `s3://customer_bucket/some/prefix/relative/path/to/custdata-1`
    #
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-2`
    #
    #     `...`
    #
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-N`
    #
    #     The complete set of `S3Uri` in this manifest is the input data for
    #     the channel for this data source. The object that each `S3Uri`
    #     points to must be readable by the IAM role that Amazon SageMaker
    #     uses to perform tasks on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] s3_data_distribution_type
    #   If you want Amazon SageMaker to replicate the entire dataset on each
    #   ML compute instance that is launched for model training, specify
    #   `FullyReplicated`.
    #
    #   If you want Amazon SageMaker to replicate a subset of data on each
    #   ML compute instance that is launched for model training, specify
    #   `ShardedByS3Key`. If there are *n* ML compute instances launched for
    #   a training job, each instance gets approximately 1/*n* of the number
    #   of S3 objects. In this case, model training on each machine uses
    #   only the subset of training data.
    #
    #   Don't choose more ML compute instances for training than available
    #   S3 objects. If you do, some nodes won't get any data and you will
    #   pay for nodes that aren't getting any training data. This applies
    #   in both File and Pipe modes. Keep this in mind when developing
    #   algorithms.
    #
    #   In distributed training, where you use multiple ML compute EC2
    #   instances, you might choose `ShardedByS3Key`. If the algorithm
    #   requires copying training data to the ML storage volume (when
    #   `TrainingInputMode` is set to `File`), this copies 1/*n* of the
    #   number of objects.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   A list of one or more attribute names to use that are found in a
    #   specified augmented manifest file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/S3DataSource AWS API Documentation
    #
    class S3DataSource < Struct.new(
      :s3_data_type,
      :s3_uri,
      :s3_data_distribution_type,
      :attribute_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details about the monitoring schedule.
    #
    # @note When making an API call, you may pass ScheduleConfig
    #   data as a hash:
    #
    #       {
    #         schedule_expression: "ScheduleExpression", # required
    #       }
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression that describes details about the monitoring
    #   schedule.
    #
    #   Currently the only supported cron expressions are:
    #
    #   * If you want to set the job to start every hour, please use the
    #     following:
    #
    #     `Hourly: cron(0 * ? * * *)`
    #
    #   * If you want to start the job daily:
    #
    #     `cron(0 [00-23] ? * * *)`
    #
    #   For example, the following are valid cron expressions:
    #
    #   * Daily at noon UTC: `cron(0 12 ? * * *)`
    #
    #   * Daily at midnight UTC: `cron(0 0 ? * * *)`
    #
    #   To support running every 6, 12 hours, the following are also
    #   supported:
    #
    #   `cron(0 [00-23]/[01-24] ? * * *)`
    #
    #   For example, the following are valid cron expressions:
    #
    #   * Every 12 hours, starting at 5pm UTC: `cron(0 17/12 ? * * *)`
    #
    #   * Every two hours starting at midnight: `cron(0 0/2 ? * * *)`
    #
    #   <note markdown="1"> * Even though the cron expression is set to start at 5PM UTC, note
    #     that there could be a delay of 0-20 minutes from the actual
    #     requested time to run the execution.
    #
    #   * We recommend that if you would like a daily schedule, you do not
    #     provide this parameter. Amazon SageMaker will pick a time for
    #     running every day.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ScheduleConfig AWS API Documentation
    #
    class ScheduleConfig < Struct.new(
      :schedule_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # A multi-expression that searches for the specified resource or
    # resources in a search. All resource objects that satisfy the
    # expression's condition are included in the search results. You must
    # specify at least one subexpression, filter, or nested filter. A
    # `SearchExpression` can contain up to twenty elements.
    #
    # A `SearchExpression` contains the following components:
    #
    # * A list of `Filter` objects. Each filter defines a simple Boolean
    #   expression comprised of a resource property name, Boolean operator,
    #   and value.
    #
    # * A list of `NestedFilter` objects. Each nested filter defines a list
    #   of Boolean expressions using a list of resource properties. A nested
    #   filter is satisfied if a single object in the list satisfies all
    #   Boolean expressions.
    #
    # * A list of `SearchExpression` objects. A search expression object can
    #   be nested in a list of search expression objects.
    #
    # * A Boolean operator: `And` or `Or`.
    #
    # @note When making an API call, you may pass SearchExpression
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "ResourcePropertyName", # required
    #             operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #             value: "FilterValue",
    #           },
    #         ],
    #         nested_filters: [
    #           {
    #             nested_property_name: "ResourcePropertyName", # required
    #             filters: [ # required
    #               {
    #                 name: "ResourcePropertyName", # required
    #                 operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #                 value: "FilterValue",
    #               },
    #             ],
    #           },
    #         ],
    #         sub_expressions: [
    #           {
    #             filters: [
    #               {
    #                 name: "ResourcePropertyName", # required
    #                 operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #                 value: "FilterValue",
    #               },
    #             ],
    #             nested_filters: [
    #               {
    #                 nested_property_name: "ResourcePropertyName", # required
    #                 filters: [ # required
    #                   {
    #                     name: "ResourcePropertyName", # required
    #                     operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #                     value: "FilterValue",
    #                   },
    #                 ],
    #               },
    #             ],
    #             sub_expressions: {
    #               # recursive SearchExpressionList
    #             },
    #             operator: "And", # accepts And, Or
    #           },
    #         ],
    #         operator: "And", # accepts And, Or
    #       }
    #
    # @!attribute [rw] filters
    #   A list of filter objects.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] nested_filters
    #   A list of nested filter objects.
    #   @return [Array<Types::NestedFilters>]
    #
    # @!attribute [rw] sub_expressions
    #   A list of search expression objects.
    #   @return [Array<Types::SearchExpression>]
    #
    # @!attribute [rw] operator
    #   A Boolean operator used to evaluate the search expression. If you
    #   want every conditional statement in all lists to be satisfied for
    #   the entire search expression to be true, specify `And`. If only a
    #   single conditional statement needs to be true for the entire search
    #   expression to be true, specify `Or`. The default value is `And`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SearchExpression AWS API Documentation
    #
    class SearchExpression < Struct.new(
      :filters,
      :nested_filters,
      :sub_expressions,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single resource returned as part of the Search API response.
    #
    # @!attribute [rw] training_job
    #   The properties of a training job.
    #   @return [Types::TrainingJob]
    #
    # @!attribute [rw] experiment
    #   The properties of an experiment.
    #   @return [Types::Experiment]
    #
    # @!attribute [rw] trial
    #   The properties of a trial.
    #   @return [Types::Trial]
    #
    # @!attribute [rw] trial_component
    #   The properties of a trial component.
    #   @return [Types::TrialComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SearchRecord AWS API Documentation
    #
    class SearchRecord < Struct.new(
      :training_job,
      :experiment,
      :trial,
      :trial_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchRequest
    #   data as a hash:
    #
    #       {
    #         resource: "TrainingJob", # required, accepts TrainingJob, Experiment, ExperimentTrial, ExperimentTrialComponent
    #         search_expression: {
    #           filters: [
    #             {
    #               name: "ResourcePropertyName", # required
    #               operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #               value: "FilterValue",
    #             },
    #           ],
    #           nested_filters: [
    #             {
    #               nested_property_name: "ResourcePropertyName", # required
    #               filters: [ # required
    #                 {
    #                   name: "ResourcePropertyName", # required
    #                   operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains, Exists, NotExists, In
    #                   value: "FilterValue",
    #                 },
    #               ],
    #             },
    #           ],
    #           sub_expressions: [
    #             {
    #               # recursive SearchExpression
    #             },
    #           ],
    #           operator: "And", # accepts And, Or
    #         },
    #         sort_by: "ResourcePropertyName",
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource
    #   The name of the Amazon SageMaker resource to search for.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   A Boolean conditional statement. Resources must satisfy this
    #   condition to be included in search results. You must provide at
    #   least one subexpression, filter, or nested filter. The maximum
    #   number of recursive `SubExpressions`, `NestedFilters`, and `Filters`
    #   that can be included in a `SearchExpression` object is 50.
    #   @return [Types::SearchExpression]
    #
    # @!attribute [rw] sort_by
    #   The name of the resource property used to sort the `SearchResults`.
    #   The default is `LastModifiedTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   How `SearchResults` are ordered. Valid values are `Ascending` or
    #   `Descending`. The default is `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If more than `MaxResults` resources match the specified
    #   `SearchExpression`, the response includes a `NextToken`. The
    #   `NextToken` can be passed to the next `SearchRequest` to continue
    #   retrieving results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SearchRequest AWS API Documentation
    #
    class SearchRequest < Struct.new(
      :resource,
      :search_expression,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of `SearchRecord` objects.
    #   @return [Array<Types::SearchRecord>]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous `Search` request was truncated, the
    #   response includes a NextToken. To retrieve the next set of results,
    #   use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SearchResponse AWS API Documentation
    #
    class SearchResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array element of
    # DescribeTrainingJobResponse$SecondaryStatusTransitions. It provides
    # additional details about a status that the training job has
    # transitioned through. A training job can be in one of several states,
    # for example, starting, downloading, training, or uploading. Within
    # each state, there are a number of intermediate states. For example,
    # within the starting state, Amazon SageMaker could be starting the
    # training job or launching the ML instances. These transitional states
    # are referred to as the job's secondary status.
    #
    # @!attribute [rw] status
    #   Contains a secondary status information from a training job.
    #
    #   Status might be one of the following secondary statuses:
    #
    #   InProgress
    #   : * `Starting` - Starting the training job.
    #
    #     * `Downloading` - An optional stage for algorithms that support
    #       `File` training input mode. It indicates that data is being
    #       downloaded to the ML storage volumes.
    #
    #     * `Training` - Training is in progress.
    #
    #     * `Uploading` - Training is complete and the model artifacts are
    #       being uploaded to the S3 location.
    #
    #   Completed
    #   : * `Completed` - The training job has completed.
    #
    #     ^
    #
    #   Failed
    #   : * `Failed` - The training job has failed. The reason for the
    #       failure is returned in the `FailureReason` field of
    #       `DescribeTrainingJobResponse`.
    #
    #     ^
    #
    #   Stopped
    #   : * `MaxRuntimeExceeded` - The job stopped because it exceeded the
    #       maximum allowed runtime.
    #
    #     * `Stopped` - The training job has stopped.
    #
    #   Stopping
    #   : * `Stopping` - Stopping the training job.
    #
    #     ^
    #
    #   We no longer support the following secondary statuses:
    #
    #   * `LaunchingMLInstances`
    #
    #   * `PreparingTrainingStack`
    #
    #   * `DownloadingTrainingImage`
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the training job transitioned to the
    #   current secondary status state.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   A timestamp that shows when the training job transitioned out of
    #   this secondary status state into another secondary status state or
    #   when the training job has ended.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the progress within a secondary status.
    #
    #   Amazon SageMaker provides secondary statuses and status messages
    #   that apply to each of them:
    #
    #   Starting
    #   : * Starting the training job.
    #
    #     * Launching requested ML instances.
    #
    #     * Insufficient capacity error from EC2 while launching instances,
    #       retrying!
    #
    #     * Launched instance was unhealthy, replacing it!
    #
    #     * Preparing the instances for training.
    #
    #   Training
    #   : * Downloading the training image.
    #
    #     * Training image download completed. Training in progress.
    #
    #   Status messages are subject to change. Therefore, we recommend not
    #   including them in code that programmatically initiates actions. For
    #   examples, don't use status messages in if statements.
    #
    #   To have an overview of your training job's progress, view
    #   `TrainingJobStatus` and `SecondaryStatus` in DescribeTrainingJob,
    #   and `StatusMessage` together. For example, at the start of a
    #   training job, you might see the following:
    #
    #   * `TrainingJobStatus` - InProgress
    #
    #   * `SecondaryStatus` - Training
    #
    #   * `StatusMessage` - Downloading the training image
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SecondaryStatusTransition AWS API Documentation
    #
    class SecondaryStatusTransition < Struct.new(
      :status,
      :start_time,
      :end_time,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies options when sharing an Amazon SageMaker Studio notebook.
    # These settings are specified as part of `DefaultUserSettings` when the
    # CreateDomain API is called, and as part of `UserSettings` when the
    # CreateUserProfile API is called.
    #
    # @note When making an API call, you may pass SharingSettings
    #   data as a hash:
    #
    #       {
    #         notebook_output_option: "Allowed", # accepts Allowed, Disabled
    #         s3_output_path: "S3Uri",
    #         s3_kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] notebook_output_option
    #   Whether to include the notebook cell output when sharing the
    #   notebook. The default is `Disabled`.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   When `NotebookOutputOption` is `Allowed`, the Amazon S3 bucket used
    #   to save the notebook cell output.
    #   @return [String]
    #
    # @!attribute [rw] s3_kms_key_id
    #   When `NotebookOutputOption` is `Allowed`, the AWS Key Management
    #   Service (KMS) encryption key ID used to encrypt the notebook cell
    #   output in the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SharingSettings AWS API Documentation
    #
    class SharingSettings < Struct.new(
      :notebook_output_option,
      :s3_output_path,
      :s3_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a shuffle option for input data in a channel. If
    # you use `S3Prefix` for `S3DataType`, the results of the S3 key prefix
    # matches are shuffled. If you use `ManifestFile`, the order of the S3
    # object references in the `ManifestFile` is shuffled. If you use
    # `AugmentedManifestFile`, the order of the JSON lines in the
    # `AugmentedManifestFile` is shuffled. The shuffling order is determined
    # using the `Seed` value.
    #
    # For Pipe input mode, when `ShuffleConfig` is specified shuffling is
    # done at the start of every epoch. With large datasets, this ensures
    # that the order of the training data is different for each epoch, and
    # it helps reduce bias and possible overfitting. In a multi-node
    # training job when `ShuffleConfig` is combined with
    # `S3DataDistributionType` of `ShardedByS3Key`, the data is shuffled
    # across nodes so that the content sent to a particular node on the
    # first epoch might be sent to a different node on the second epoch.
    #
    # @note When making an API call, you may pass ShuffleConfig
    #   data as a hash:
    #
    #       {
    #         seed: 1, # required
    #       }
    #
    # @!attribute [rw] seed
    #   Determines the shuffling order in `ShuffleConfig` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ShuffleConfig AWS API Documentation
    #
    class ShuffleConfig < Struct.new(
      :seed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an algorithm that was used to create the model package. The
    # algorithm must be either an algorithm resource in your Amazon
    # SageMaker account or an algorithm in AWS Marketplace that you are
    # subscribed to.
    #
    # @note When making an API call, you may pass SourceAlgorithm
    #   data as a hash:
    #
    #       {
    #         model_data_url: "Url",
    #         algorithm_name: "ArnOrName", # required
    #       }
    #
    # @!attribute [rw] model_data_url
    #   The Amazon S3 path where the model artifacts, which result from
    #   model training, are stored. This path must point to a single `gzip`
    #   compressed tar archive (`.tar.gz` suffix).
    #
    #   <note markdown="1"> The model artifacts must be in an S3 bucket that is in the same
    #   region as the algorithm.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] algorithm_name
    #   The name of an algorithm that was used to create the model package.
    #   The algorithm must be either an algorithm resource in your Amazon
    #   SageMaker account or an algorithm in AWS Marketplace that you are
    #   subscribed to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SourceAlgorithm AWS API Documentation
    #
    class SourceAlgorithm < Struct.new(
      :model_data_url,
      :algorithm_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of algorithms that were used to create a model package.
    #
    # @note When making an API call, you may pass SourceAlgorithmSpecification
    #   data as a hash:
    #
    #       {
    #         source_algorithms: [ # required
    #           {
    #             model_data_url: "Url",
    #             algorithm_name: "ArnOrName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_algorithms
    #   A list of the algorithms that were used to create a model package.
    #   @return [Array<Types::SourceAlgorithm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SourceAlgorithmSpecification AWS API Documentation
    #
    class SourceAlgorithmSpecification < Struct.new(
      :source_algorithms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of IP address ranges ([CIDRs][1]). Used to create an allow list
    # of IP addresses for a private workforce. Workers will only be able to
    # login to their worker portal from an IP address within this range. By
    # default, a workforce isn't restricted to specific IP addresses.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #
    # @note When making an API call, you may pass SourceIpConfig
    #   data as a hash:
    #
    #       {
    #         cidrs: ["Cidr"], # required
    #       }
    #
    # @!attribute [rw] cidrs
    #   A list of one to ten [Classless Inter-Domain Routing][1] (CIDR)
    #   values.
    #
    #   Maximum: Ten CIDR values
    #
    #   <note markdown="1"> The following Length Constraints apply to individual CIDR values in
    #   the CIDR value list.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SourceIpConfig AWS API Documentation
    #
    class SourceIpConfig < Struct.new(
      :cidrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMonitoringScheduleRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName", # required
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the schedule to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StartMonitoringScheduleRequest AWS API Documentation
    #
    class StartMonitoringScheduleRequest < Struct.new(
      :monitoring_schedule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the notebook instance to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StartNotebookInstanceInput AWS API Documentation
    #
    class StartNotebookInstanceInput < Struct.new(
      :notebook_instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopAutoMLJobRequest
    #   data as a hash:
    #
    #       {
    #         auto_ml_job_name: "AutoMLJobName", # required
    #       }
    #
    # @!attribute [rw] auto_ml_job_name
    #   The name of the object you are requesting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopAutoMLJobRequest AWS API Documentation
    #
    class StopAutoMLJobRequest < Struct.new(
      :auto_ml_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopCompilationJobRequest
    #   data as a hash:
    #
    #       {
    #         compilation_job_name: "EntityName", # required
    #       }
    #
    # @!attribute [rw] compilation_job_name
    #   The name of the model compilation job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopCompilationJobRequest AWS API Documentation
    #
    class StopCompilationJobRequest < Struct.new(
      :compilation_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopHyperParameterTuningJobRequest
    #   data as a hash:
    #
    #       {
    #         hyper_parameter_tuning_job_name: "HyperParameterTuningJobName", # required
    #       }
    #
    # @!attribute [rw] hyper_parameter_tuning_job_name
    #   The name of the tuning job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopHyperParameterTuningJobRequest AWS API Documentation
    #
    class StopHyperParameterTuningJobRequest < Struct.new(
      :hyper_parameter_tuning_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopLabelingJobRequest
    #   data as a hash:
    #
    #       {
    #         labeling_job_name: "LabelingJobName", # required
    #       }
    #
    # @!attribute [rw] labeling_job_name
    #   The name of the labeling job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopLabelingJobRequest AWS API Documentation
    #
    class StopLabelingJobRequest < Struct.new(
      :labeling_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopMonitoringScheduleRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName", # required
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the schedule to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopMonitoringScheduleRequest AWS API Documentation
    #
    class StopMonitoringScheduleRequest < Struct.new(
      :monitoring_schedule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the notebook instance to terminate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopNotebookInstanceInput AWS API Documentation
    #
    class StopNotebookInstanceInput < Struct.new(
      :notebook_instance_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopProcessingJobRequest
    #   data as a hash:
    #
    #       {
    #         processing_job_name: "ProcessingJobName", # required
    #       }
    #
    # @!attribute [rw] processing_job_name
    #   The name of the processing job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopProcessingJobRequest AWS API Documentation
    #
    class StopProcessingJobRequest < Struct.new(
      :processing_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopTrainingJobRequest
    #   data as a hash:
    #
    #       {
    #         training_job_name: "TrainingJobName", # required
    #       }
    #
    # @!attribute [rw] training_job_name
    #   The name of the training job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTrainingJobRequest AWS API Documentation
    #
    class StopTrainingJobRequest < Struct.new(
      :training_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopTransformJobRequest
    #   data as a hash:
    #
    #       {
    #         transform_job_name: "TransformJobName", # required
    #       }
    #
    # @!attribute [rw] transform_job_name
    #   The name of the transform job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTransformJobRequest AWS API Documentation
    #
    class StopTransformJobRequest < Struct.new(
      :transform_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a limit to how long a model training or compilation job can
    # run. It also specifies how long you are willing to wait for a managed
    # spot training job to complete. When the job reaches the time limit,
    # Amazon SageMaker ends the training or compilation job. Use this API to
    # cap model training costs.
    #
    # To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM`
    # signal, which delays job termination for 120 seconds. Algorithms can
    # use this 120-second window to save the model artifacts, so the results
    # of training are not lost.
    #
    # The training algorithms provided by Amazon SageMaker automatically
    # save the intermediate results of a model training job when possible.
    # This attempt to save artifacts is only a best effort case as model
    # might not be in a state from which it can be saved. For example, if
    # training has just started, the model might not be ready to save. When
    # saved, this intermediate data is a valid model artifact. You can use
    # it to create a model with `CreateModel`.
    #
    # <note markdown="1"> The Neural Topic Model (NTM) currently does not support saving
    # intermediate model artifacts. When training NTMs, make sure that the
    # maximum runtime is sufficient for the training job to complete.
    #
    #  </note>
    #
    # @note When making an API call, you may pass StoppingCondition
    #   data as a hash:
    #
    #       {
    #         max_runtime_in_seconds: 1,
    #         max_wait_time_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   The maximum length of time, in seconds, that the training or
    #   compilation job can run. If job does not complete during this time,
    #   Amazon SageMaker ends the job. If value is not specified, default
    #   value is 1 day. The maximum value is 28 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_wait_time_in_seconds
    #   The maximum length of time, in seconds, how long you are willing to
    #   wait for a managed spot training job to complete. It is the amount
    #   of time spent waiting for Spot capacity plus the amount of time the
    #   training job runs. It must be equal to or greater than
    #   `MaxRuntimeInSeconds`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StoppingCondition AWS API Documentation
    #
    class StoppingCondition < Struct.new(
      :max_runtime_in_seconds,
      :max_wait_time_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a work team of a vendor that does the a labelling job.
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) of the vendor that you have
    #   subscribed.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_title
    #   The title of the service provided by the vendor in the Amazon
    #   Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] seller_name
    #   The name of the vendor in the Amazon Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_description
    #   The description of the vendor from the Amazon Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   Marketplace product listing ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SubscribedWorkteam AWS API Documentation
    #
    class SubscribedWorkteam < Struct.new(
      :workteam_arn,
      :marketplace_title,
      :seller_name,
      :marketplace_description,
      :listing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specified in the GetSearchSuggestions request. Limits the property
    # names that are included in the response.
    #
    # @note When making an API call, you may pass SuggestionQuery
    #   data as a hash:
    #
    #       {
    #         property_name_query: {
    #           property_name_hint: "PropertyNameHint", # required
    #         },
    #       }
    #
    # @!attribute [rw] property_name_query
    #   Defines a property name hint. Only property names that begin with
    #   the specified hint are included in the response.
    #   @return [Types::PropertyNameQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SuggestionQuery AWS API Documentation
    #
    class SuggestionQuery < Struct.new(
      :property_name_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a target platform that you want your model
    # to run on, such as OS, architecture, and accelerators. It is an
    # alternative of `TargetDevice`.
    #
    # @note When making an API call, you may pass TargetPlatform
    #   data as a hash:
    #
    #       {
    #         os: "ANDROID", # required, accepts ANDROID, LINUX
    #         arch: "X86_64", # required, accepts X86_64, X86, ARM64, ARM_EABI, ARM_EABIHF
    #         accelerator: "INTEL_GRAPHICS", # accepts INTEL_GRAPHICS, MALI, NVIDIA
    #       }
    #
    # @!attribute [rw] os
    #   Specifies a target platform OS.
    #
    #   * `LINUX`\: Linux-based operating systems.
    #
    #   * `ANDROID`\: Android operating systems. Android API level can be
    #     specified using the `ANDROID_PLATFORM` compiler option. For
    #     example, `"CompilerOptions": \{'ANDROID_PLATFORM': 28\}`
    #   @return [String]
    #
    # @!attribute [rw] arch
    #   Specifies a target platform architecture.
    #
    #   * `X86_64`\: 64-bit version of the x86 instruction set.
    #
    #   * `X86`\: 32-bit version of the x86 instruction set.
    #
    #   * `ARM64`\: ARMv8 64-bit CPU.
    #
    #   * `ARM_EABIHF`\: ARMv7 32-bit, Hard Float.
    #
    #   * `ARM_EABI`\: ARMv7 32-bit, Soft Float. Used by Android 32-bit ARM
    #     platform.
    #   @return [String]
    #
    # @!attribute [rw] accelerator
    #   Specifies a target platform accelerator (optional).
    #
    #   * `NVIDIA`\: Nvidia graphics processing unit. It also requires
    #     `gpu-code`, `trt-ver`, `cuda-ver` compiler options
    #
    #   * `MALI`\: ARM Mali graphics processor
    #
    #   * `INTEL_GRAPHICS`\: Integrated Intel graphics
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TargetPlatform AWS API Documentation
    #
    class TargetPlatform < Struct.new(
      :os,
      :arch,
      :accelerator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TensorBoard app settings.
    #
    # @note When making an API call, you may pass TensorBoardAppSettings
    #   data as a hash:
    #
    #       {
    #         default_resource_spec: {
    #           sage_maker_image_arn: "ImageArn",
    #           instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #         },
    #       }
    #
    # @!attribute [rw] default_resource_spec
    #   The default instance type and the Amazon Resource Name (ARN) of the
    #   SageMaker image created on the instance.
    #   @return [Types::ResourceSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TensorBoardAppSettings AWS API Documentation
    #
    class TensorBoardAppSettings < Struct.new(
      :default_resource_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of storage locations for TensorBoard output.
    #
    # @note When making an API call, you may pass TensorBoardOutputConfig
    #   data as a hash:
    #
    #       {
    #         local_path: "DirectoryPath",
    #         s3_output_path: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] local_path
    #   Path to local storage location for tensorBoard output. Defaults to
    #   `/opt/ml/output/tensorboard`.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   Path to Amazon S3 storage location for TensorBoard output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TensorBoardOutputConfig AWS API Documentation
    #
    class TensorBoardOutputConfig < Struct.new(
      :local_path,
      :s3_output_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a training job.
    #
    # @!attribute [rw] training_job_name
    #   The name of the training job.
    #   @return [String]
    #
    # @!attribute [rw] training_job_arn
    #   The Amazon Resource Name (ARN) of the training job.
    #   @return [String]
    #
    # @!attribute [rw] tuning_job_arn
    #   The Amazon Resource Name (ARN) of the associated hyperparameter
    #   tuning job if the training job was launched by a hyperparameter
    #   tuning job.
    #   @return [String]
    #
    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) of the labeling job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The Amazon Resource Name (ARN) of the job.
    #   @return [String]
    #
    # @!attribute [rw] model_artifacts
    #   Information about the Amazon S3 location that is configured for
    #   storing model artifacts.
    #   @return [Types::ModelArtifacts]
    #
    # @!attribute [rw] training_job_status
    #   The status of the training job.
    #
    #   Training job statuses are:
    #
    #   * `InProgress` - The training is in progress.
    #
    #   * `Completed` - The training job has completed.
    #
    #   * `Failed` - The training job has failed. To see the reason for the
    #     failure, see the `FailureReason` field in the response to a
    #     `DescribeTrainingJobResponse` call.
    #
    #   * `Stopping` - The training job is stopping.
    #
    #   * `Stopped` - The training job has stopped.
    #
    #   For more detailed information, see `SecondaryStatus`.
    #   @return [String]
    #
    # @!attribute [rw] secondary_status
    #   Provides detailed information about the state of the training job.
    #   For detailed information about the secondary status of the training
    #   job, see `StatusMessage` under SecondaryStatusTransition.
    #
    #   Amazon SageMaker provides primary statuses and secondary statuses
    #   that apply to each of them:
    #
    #   InProgress
    #   : * `Starting` - Starting the training job.
    #
    #     * `Downloading` - An optional stage for algorithms that support
    #       `File` training input mode. It indicates that data is being
    #       downloaded to the ML storage volumes.
    #
    #     * `Training` - Training is in progress.
    #
    #     * `Uploading` - Training is complete and the model artifacts are
    #       being uploaded to the S3 location.
    #
    #   Completed
    #   : * `Completed` - The training job has completed.
    #
    #     ^
    #
    #   Failed
    #   : * `Failed` - The training job has failed. The reason for the
    #       failure is returned in the `FailureReason` field of
    #       `DescribeTrainingJobResponse`.
    #
    #     ^
    #
    #   Stopped
    #   : * `MaxRuntimeExceeded` - The job stopped because it exceeded the
    #       maximum allowed runtime.
    #
    #     * `Stopped` - The training job has stopped.
    #
    #   Stopping
    #   : * `Stopping` - Stopping the training job.
    #
    #     ^
    #
    #   Valid values for `SecondaryStatus` are subject to change.
    #
    #   We no longer support the following secondary statuses:
    #
    #   * `LaunchingMLInstances`
    #
    #   * `PreparingTrainingStack`
    #
    #   * `DownloadingTrainingImage`
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the training job failed, the reason it failed.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] algorithm_specification
    #   Information about the algorithm used for training, and algorithm
    #   metadata.
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] role_arn
    #   The AWS Identity and Access Management (IAM) role configured for the
    #   training job.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   An array of `Channel` objects that describes each data input
    #   channel.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] output_data_config
    #   The S3 path where model artifacts that you configured when creating
    #   the job are stored. Amazon SageMaker creates subfolders for model
    #   artifacts.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] resource_config
    #   Resources, including ML compute instances and ML storage volumes,
    #   that are configured for model training.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that this training job has
    #   access to. For more information, see [Protect Training Jobs by Using
    #   an Amazon Virtual Private Cloud][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model training job can run. When the
    #   job reaches the time limit, Amazon SageMaker ends the training job.
    #   Use this API to cap model training costs.
    #
    #   To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM`
    #   signal, which delays job termination for 120 seconds. Algorithms can
    #   use this 120-second window to save the model artifacts, so the
    #   results of training are not lost.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that indicates when the training job was created.
    #   @return [Time]
    #
    # @!attribute [rw] training_start_time
    #   Indicates the time when the training job starts on training
    #   instances. You are billed for the time interval between this time
    #   and the value of `TrainingEndTime`. The start time in CloudWatch
    #   Logs might be later than this time. The difference is due to the
    #   time it takes to download the training data and to the size of the
    #   training container.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   Indicates the time when the training job ends on training instances.
    #   You are billed for the time interval between the value of
    #   `TrainingStartTime` and this time. For successful jobs and stopped
    #   jobs, this is the time after model artifacts are uploaded. For
    #   failed jobs, this is the time when Amazon SageMaker detects a job
    #   failure.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A timestamp that indicates when the status of the training job was
    #   last modified.
    #   @return [Time]
    #
    # @!attribute [rw] secondary_status_transitions
    #   A history of all of the secondary statuses that the training job has
    #   transitioned through.
    #   @return [Array<Types::SecondaryStatusTransition>]
    #
    # @!attribute [rw] final_metric_data_list
    #   A list of final metric values that are set when the training job
    #   completes. Used only if the training job was configured to use
    #   metrics.
    #   @return [Array<Types::MetricData>]
    #
    # @!attribute [rw] enable_network_isolation
    #   If the `TrainingJob` was created with network isolation, the value
    #   is set to `true`. If network isolation is enabled, nodes can't
    #   communicate beyond the VPC they run in.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_inter_container_traffic_encryption
    #   To encrypt all communications between ML compute instances in
    #   distributed training, choose `True`. Encryption provides greater
    #   security for distributed training, but training might take longer.
    #   How long it takes depends on the amount of communication between
    #   compute instances, especially if you use a deep learning algorithm
    #   in distributed training.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_managed_spot_training
    #   When true, enables managed spot training using Amazon EC2 Spot
    #   instances to run training jobs instead of on-demand instances. For
    #   more information, see [Managed Spot Training][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_config
    #   Contains information about the output location for managed spot
    #   training checkpoint data.
    #   @return [Types::CheckpointConfig]
    #
    # @!attribute [rw] training_time_in_seconds
    #   The training time in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] billable_time_in_seconds
    #   The billable time in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] debug_hook_config
    #   Configuration information for the debug hook parameters, collection
    #   configuration, and storage paths.
    #   @return [Types::DebugHookConfig]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @!attribute [rw] debug_rule_configurations
    #   Information about the debug rule configuration.
    #   @return [Array<Types::DebugRuleConfiguration>]
    #
    # @!attribute [rw] tensor_board_output_config
    #   Configuration of storage locations for TensorBoard output.
    #   @return [Types::TensorBoardOutputConfig]
    #
    # @!attribute [rw] debug_rule_evaluation_statuses
    #   Information about the evaluation status of the rules for the
    #   training job.
    #   @return [Array<Types::DebugRuleEvaluationStatus>]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrainingJob AWS API Documentation
    #
    class TrainingJob < Struct.new(
      :training_job_name,
      :training_job_arn,
      :tuning_job_arn,
      :labeling_job_arn,
      :auto_ml_job_arn,
      :model_artifacts,
      :training_job_status,
      :secondary_status,
      :failure_reason,
      :hyper_parameters,
      :algorithm_specification,
      :role_arn,
      :input_data_config,
      :output_data_config,
      :resource_config,
      :vpc_config,
      :stopping_condition,
      :creation_time,
      :training_start_time,
      :training_end_time,
      :last_modified_time,
      :secondary_status_transitions,
      :final_metric_data_list,
      :enable_network_isolation,
      :enable_inter_container_traffic_encryption,
      :enable_managed_spot_training,
      :checkpoint_config,
      :training_time_in_seconds,
      :billable_time_in_seconds,
      :debug_hook_config,
      :experiment_config,
      :debug_rule_configurations,
      :tensor_board_output_config,
      :debug_rule_evaluation_statuses,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the input needed to run a training job using the algorithm.
    #
    # @note When making an API call, you may pass TrainingJobDefinition
    #   data as a hash:
    #
    #       {
    #         training_input_mode: "Pipe", # required, accepts Pipe, File
    #         hyper_parameters: {
    #           "ParameterKey" => "ParameterValue",
    #         },
    #         input_data_config: [ # required
    #           {
    #             channel_name: "ChannelName", # required
    #             data_source: { # required
    #               s3_data_source: {
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #                 s3_uri: "S3Uri", # required
    #                 s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                 attribute_names: ["AttributeName"],
    #               },
    #               file_system_data_source: {
    #                 file_system_id: "FileSystemId", # required
    #                 file_system_access_mode: "rw", # required, accepts rw, ro
    #                 file_system_type: "EFS", # required, accepts EFS, FSxLustre
    #                 directory_path: "DirectoryPath", # required
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             record_wrapper_type: "None", # accepts None, RecordIO
    #             input_mode: "Pipe", # accepts Pipe, File
    #             shuffle_config: {
    #               seed: 1, # required
    #             },
    #           },
    #         ],
    #         output_data_config: { # required
    #           kms_key_id: "KmsKeyId",
    #           s3_output_path: "S3Uri", # required
    #         },
    #         resource_config: { # required
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #           instance_count: 1, # required
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
    #           max_wait_time_in_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] training_input_mode
    #   The input mode used by the algorithm for the training job. For the
    #   input modes that Amazon SageMaker algorithms support, see
    #   [Algorithms][1].
    #
    #   If an algorithm supports the `File` input mode, Amazon SageMaker
    #   downloads the training data from S3 to the provisioned ML storage
    #   Volume, and mounts the directory to docker volume for training
    #   container. If an algorithm supports the `Pipe` input mode, Amazon
    #   SageMaker streams data directly from S3 to the container.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   The hyperparameters used for the training job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_data_config
    #   An array of `Channel` objects, each of which specifies an input
    #   source.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] output_data_config
    #   the path to the S3 bucket where you want to store model artifacts.
    #   Amazon SageMaker creates subfolders for the artifacts.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] resource_config
    #   The resources, including the ML compute instances and ML storage
    #   volumes, to use for model training.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] stopping_condition
    #   Specifies a limit to how long a model training job can run. When the
    #   job reaches the time limit, Amazon SageMaker ends the training job.
    #   Use this API to cap model training costs.
    #
    #   To stop a job, Amazon SageMaker sends the algorithm the SIGTERM
    #   signal, which delays job termination for 120 seconds. Algorithms can
    #   use this 120-second window to save the model artifacts.
    #   @return [Types::StoppingCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrainingJobDefinition AWS API Documentation
    #
    class TrainingJobDefinition < Struct.new(
      :training_input_mode,
      :hyper_parameters,
      :input_data_config,
      :output_data_config,
      :resource_config,
      :stopping_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The numbers of training jobs launched by a hyperparameter tuning job,
    # categorized by status.
    #
    # @!attribute [rw] completed
    #   The number of completed training jobs launched by the hyperparameter
    #   tuning job.
    #   @return [Integer]
    #
    # @!attribute [rw] in_progress
    #   The number of in-progress training jobs launched by a hyperparameter
    #   tuning job.
    #   @return [Integer]
    #
    # @!attribute [rw] retryable_error
    #   The number of training jobs that failed, but can be retried. A
    #   failed training job can be retried only if it failed because an
    #   internal service error occurred.
    #   @return [Integer]
    #
    # @!attribute [rw] non_retryable_error
    #   The number of training jobs that failed and can't be retried. A
    #   failed training job can't be retried if it failed because a client
    #   error occurred.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped
    #   The number of training jobs launched by a hyperparameter tuning job
    #   that were manually stopped.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrainingJobStatusCounters AWS API Documentation
    #
    class TrainingJobStatusCounters < Struct.new(
      :completed,
      :in_progress,
      :retryable_error,
      :non_retryable_error,
      :stopped)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a training job.
    #
    # @!attribute [rw] training_job_name
    #   The name of the training job that you want a summary for.
    #   @return [String]
    #
    # @!attribute [rw] training_job_arn
    #   The Amazon Resource Name (ARN) of the training job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the training job was created.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   A timestamp that shows when the training job ended. This field is
    #   set only if the training job has one of the terminal statuses
    #   (`Completed`, `Failed`, or `Stopped`).
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Timestamp when the training job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] training_job_status
    #   The status of the training job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrainingJobSummary AWS API Documentation
    #
    class TrainingJobSummary < Struct.new(
      :training_job_name,
      :training_job_arn,
      :creation_time,
      :training_end_time,
      :last_modified_time,
      :training_job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how the algorithm is used for a training job.
    #
    # @note When making an API call, you may pass TrainingSpecification
    #   data as a hash:
    #
    #       {
    #         training_image: "ContainerImage", # required
    #         training_image_digest: "ImageDigest",
    #         supported_hyper_parameters: [
    #           {
    #             name: "ParameterName", # required
    #             description: "EntityDescription",
    #             type: "Integer", # required, accepts Integer, Continuous, Categorical, FreeText
    #             range: {
    #               integer_parameter_range_specification: {
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #               },
    #               continuous_parameter_range_specification: {
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #               },
    #               categorical_parameter_range_specification: {
    #                 values: ["ParameterValue"], # required
    #               },
    #             },
    #             is_tunable: false,
    #             is_required: false,
    #             default_value: "ParameterValue",
    #           },
    #         ],
    #         supported_training_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #         supports_distributed_training: false,
    #         metric_definitions: [
    #           {
    #             name: "MetricName", # required
    #             regex: "MetricRegex", # required
    #           },
    #         ],
    #         training_channels: [ # required
    #           {
    #             name: "ChannelName", # required
    #             description: "EntityDescription",
    #             is_required: false,
    #             supported_content_types: ["ContentType"], # required
    #             supported_compression_types: ["None"], # accepts None, Gzip
    #             supported_input_modes: ["Pipe"], # required, accepts Pipe, File
    #           },
    #         ],
    #         supported_tuning_job_objective_metrics: [
    #           {
    #             type: "Maximize", # required, accepts Maximize, Minimize
    #             metric_name: "MetricName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] training_image
    #   The Amazon ECR registry path of the Docker image that contains the
    #   training algorithm.
    #   @return [String]
    #
    # @!attribute [rw] training_image_digest
    #   An MD5 hash of the training algorithm that identifies the Docker
    #   image used for training.
    #   @return [String]
    #
    # @!attribute [rw] supported_hyper_parameters
    #   A list of the `HyperParameterSpecification` objects, that define the
    #   supported hyperparameters. This is required if the algorithm
    #   supports automatic model tuning.&gt;
    #   @return [Array<Types::HyperParameterSpecification>]
    #
    # @!attribute [rw] supported_training_instance_types
    #   A list of the instance types that this algorithm can use for
    #   training.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_distributed_training
    #   Indicates whether the algorithm supports distributed training. If
    #   set to false, buyers can't request more than one instance during
    #   training.
    #   @return [Boolean]
    #
    # @!attribute [rw] metric_definitions
    #   A list of `MetricDefinition` objects, which are used for parsing
    #   metrics generated by the algorithm.
    #   @return [Array<Types::MetricDefinition>]
    #
    # @!attribute [rw] training_channels
    #   A list of `ChannelSpecification` objects, which specify the input
    #   sources to be used by the algorithm.
    #   @return [Array<Types::ChannelSpecification>]
    #
    # @!attribute [rw] supported_tuning_job_objective_metrics
    #   A list of the metrics that the algorithm emits that can be used as
    #   the objective metric in a hyperparameter tuning job.
    #   @return [Array<Types::HyperParameterTuningJobObjective>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrainingSpecification AWS API Documentation
    #
    class TrainingSpecification < Struct.new(
      :training_image,
      :training_image_digest,
      :supported_hyper_parameters,
      :supported_training_instance_types,
      :supports_distributed_training,
      :metric_definitions,
      :training_channels,
      :supported_tuning_job_objective_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the location of the channel data.
    #
    # @note When making an API call, you may pass TransformDataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_source: { # required
    #           s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #           s3_uri: "S3Uri", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3_data_source
    #   The S3 location of the data source that is associated with a
    #   channel.
    #   @return [Types::TransformS3DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformDataSource AWS API Documentation
    #
    class TransformDataSource < Struct.new(
      :s3_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the input source of a transform job and the way the
    # transform job consumes it.
    #
    # @note When making an API call, you may pass TransformInput
    #   data as a hash:
    #
    #       {
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #             s3_uri: "S3Uri", # required
    #           },
    #         },
    #         content_type: "ContentType",
    #         compression_type: "None", # accepts None, Gzip
    #         split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #       }
    #
    # @!attribute [rw] data_source
    #   Describes the location of the channel data, which is, the S3
    #   location of the input data that the model can consume.
    #   @return [Types::TransformDataSource]
    #
    # @!attribute [rw] content_type
    #   The multipurpose internet mail extension (MIME) type of the data.
    #   Amazon SageMaker uses the MIME type with each http call to transfer
    #   data to the transform job.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   If your transform data is compressed, specify the compression type.
    #   Amazon SageMaker automatically decompresses the data for the
    #   transform job accordingly. The default value is `None`.
    #   @return [String]
    #
    # @!attribute [rw] split_type
    #   The method to use to split the transform job's data files into
    #   smaller batches. Splitting is necessary when the total size of each
    #   object is too large to fit in a single request. You can also use
    #   data splitting to improve performance by processing multiple
    #   concurrent mini-batches. The default value for `SplitType` is
    #   `None`, which indicates that input data files are not split, and
    #   request payloads contain the entire contents of an input object. Set
    #   the value of this parameter to `Line` to split records on a newline
    #   character boundary. `SplitType` also supports a number of
    #   record-oriented binary data formats. Currently, the supported record
    #   formats are:
    #
    #   * RecordIO
    #
    #   * TFRecord
    #
    #   When splitting is enabled, the size of a mini-batch depends on the
    #   values of the `BatchStrategy` and `MaxPayloadInMB` parameters. When
    #   the value of `BatchStrategy` is `MultiRecord`, Amazon SageMaker
    #   sends the maximum number of records in each request, up to the
    #   `MaxPayloadInMB` limit. If the value of `BatchStrategy` is
    #   `SingleRecord`, Amazon SageMaker sends individual records in each
    #   request.
    #
    #   <note markdown="1"> Some data formats represent a record as a binary payload wrapped
    #   with extra padding bytes. When splitting is applied to a binary data
    #   format, padding is removed if the value of `BatchStrategy` is set to
    #   `SingleRecord`. Padding is not removed if the value of
    #   `BatchStrategy` is set to `MultiRecord`.
    #
    #    For more information about `RecordIO`, see [Create a Dataset Using
    #   RecordIO][1] in the MXNet documentation. For more information about
    #   `TFRecord`, see [Consuming TFRecord data][2] in the TensorFlow
    #   documentation.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://mxnet.apache.org/api/faq/recordio
    #   [2]: https://www.tensorflow.org/guide/datasets#consuming_tfrecord_data
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformInput AWS API Documentation
    #
    class TransformInput < Struct.new(
      :data_source,
      :content_type,
      :compression_type,
      :split_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A batch transform job. For information about SageMaker batch
    # transform, see [Use Batch Transform][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html
    #
    # @!attribute [rw] transform_job_name
    #   The name of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] transform_job_arn
    #   The Amazon Resource Name (ARN) of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] transform_job_status
    #   The status of the transform job.
    #
    #   Transform job statuses are:
    #
    #   * `InProgress` - The job is in progress.
    #
    #   * `Completed` - The job has completed.
    #
    #   * `Failed` - The transform job has failed. To see the reason for the
    #     failure, see the `FailureReason` field in the response to a
    #     `DescribeTransformJob` call.
    #
    #   * `Stopping` - The transform job is stopping.
    #
    #   * `Stopped` - The transform job has stopped.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the transform job failed, the reason it failed.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model associated with the transform job.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrent_transforms
    #   The maximum number of parallel requests that can be sent to each
    #   instance in a transform job. If `MaxConcurrentTransforms` is set to
    #   0 or left unset, SageMaker checks the optional execution-parameters
    #   to determine the settings for your chosen algorithm. If the
    #   execution-parameters endpoint is not enabled, the default value is
    #   1. For built-in algorithms, you don't need to set a value for
    #   `MaxConcurrentTransforms`.
    #   @return [Integer]
    #
    # @!attribute [rw] model_client_config
    #   Configures the timeout and maximum number of retries for processing
    #   a transform job invocation.
    #   @return [Types::ModelClientConfig]
    #
    # @!attribute [rw] max_payload_in_mb
    #   The maximum allowed size of the payload, in MB. A payload is the
    #   data portion of a record (without metadata). The value in
    #   `MaxPayloadInMB` must be greater than, or equal to, the size of a
    #   single record. To estimate the size of a record in MB, divide the
    #   size of your dataset by the number of records. To ensure that the
    #   records fit within the maximum payload size, we recommend using a
    #   slightly larger value. The default value is 6 MB. For cases where
    #   the payload might be arbitrarily large and is transmitted using HTTP
    #   chunked encoding, set the value to 0. This feature works only in
    #   supported algorithms. Currently, SageMaker built-in algorithms do
    #   not support HTTP chunked encoding.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_strategy
    #   Specifies the number of records to include in a mini-batch for an
    #   HTTP inference request. A record is a single unit of input data that
    #   inference can be made on. For example, a single line in a CSV file
    #   is a record.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. We support
    #   up to 16 key and values entries in the map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transform_input
    #   Describes the input source of a transform job and the way the
    #   transform job consumes it.
    #   @return [Types::TransformInput]
    #
    # @!attribute [rw] transform_output
    #   Describes the results of a transform job.
    #   @return [Types::TransformOutput]
    #
    # @!attribute [rw] transform_resources
    #   Describes the resources, including ML instance types and ML instance
    #   count, to use for transform job.
    #   @return [Types::TransformResources]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the transform Job was created.
    #   @return [Time]
    #
    # @!attribute [rw] transform_start_time
    #   Indicates when the transform job starts on ML instances. You are
    #   billed for the time interval between this time and the value of
    #   `TransformEndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] transform_end_time
    #   Indicates when the transform job has been completed, or has stopped
    #   or failed. You are billed for the time interval between this time
    #   and the value of `TransformStartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] labeling_job_arn
    #   The Amazon Resource Name (ARN) of the labeling job that created the
    #   transform job.
    #   @return [String]
    #
    # @!attribute [rw] auto_ml_job_arn
    #   The Amazon Resource Name (ARN) of the AutoML job that created the
    #   transform job.
    #   @return [String]
    #
    # @!attribute [rw] data_processing
    #   The data structure used to specify the data to be used for inference
    #   in a batch transform job and to associate the data that is relevant
    #   to the prediction results in the output. The input filter provided
    #   allows you to exclude input data that is not needed for inference in
    #   a batch transform job. The output filter provided allows you to
    #   include input data relevant to interpreting the predictions in the
    #   output from the job. For more information, see [Associate Prediction
    #   Results with their Corresponding Input Records][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html
    #   @return [Types::DataProcessing]
    #
    # @!attribute [rw] experiment_config
    #   Associates a SageMaker job as a trial component with an experiment
    #   and trial. Specified when you call the following APIs:
    #
    #   * CreateProcessingJob
    #
    #   * CreateTrainingJob
    #
    #   * CreateTransformJob
    #   @return [Types::ExperimentConfig]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the transform job.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformJob AWS API Documentation
    #
    class TransformJob < Struct.new(
      :transform_job_name,
      :transform_job_arn,
      :transform_job_status,
      :failure_reason,
      :model_name,
      :max_concurrent_transforms,
      :model_client_config,
      :max_payload_in_mb,
      :batch_strategy,
      :environment,
      :transform_input,
      :transform_output,
      :transform_resources,
      :creation_time,
      :transform_start_time,
      :transform_end_time,
      :labeling_job_arn,
      :auto_ml_job_arn,
      :data_processing,
      :experiment_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the input needed to run a transform job using the inference
    # specification specified in the algorithm.
    #
    # @note When making an API call, you may pass TransformJobDefinition
    #   data as a hash:
    #
    #       {
    #         max_concurrent_transforms: 1,
    #         max_payload_in_mb: 1,
    #         batch_strategy: "MultiRecord", # accepts MultiRecord, SingleRecord
    #         environment: {
    #           "TransformEnvironmentKey" => "TransformEnvironmentValue",
    #         },
    #         transform_input: { # required
    #           data_source: { # required
    #             s3_data_source: { # required
    #               s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #               s3_uri: "S3Uri", # required
    #             },
    #           },
    #           content_type: "ContentType",
    #           compression_type: "None", # accepts None, Gzip
    #           split_type: "None", # accepts None, Line, RecordIO, TFRecord
    #         },
    #         transform_output: { # required
    #           s3_output_path: "S3Uri", # required
    #           accept: "Accept",
    #           assemble_with: "None", # accepts None, Line
    #           kms_key_id: "KmsKeyId",
    #         },
    #         transform_resources: { # required
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #           instance_count: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] max_concurrent_transforms
    #   The maximum number of parallel requests that can be sent to each
    #   instance in a transform job. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] max_payload_in_mb
    #   The maximum payload size allowed, in MB. A payload is the data
    #   portion of a record (without metadata).
    #   @return [Integer]
    #
    # @!attribute [rw] batch_strategy
    #   A string that determines the number of records included in a single
    #   mini-batch.
    #
    #   `SingleRecord` means only one record is used per mini-batch.
    #   `MultiRecord` means a mini-batch is set to contain as many records
    #   that can fit within the `MaxPayloadInMB` limit.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. We support
    #   up to 16 key and values entries in the map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transform_input
    #   A description of the input source and the way the transform job
    #   consumes it.
    #   @return [Types::TransformInput]
    #
    # @!attribute [rw] transform_output
    #   Identifies the Amazon S3 location where you want Amazon SageMaker to
    #   save the results from the transform job.
    #   @return [Types::TransformOutput]
    #
    # @!attribute [rw] transform_resources
    #   Identifies the ML compute instances for the transform job.
    #   @return [Types::TransformResources]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformJobDefinition AWS API Documentation
    #
    class TransformJobDefinition < Struct.new(
      :max_concurrent_transforms,
      :max_payload_in_mb,
      :batch_strategy,
      :environment,
      :transform_input,
      :transform_output,
      :transform_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a transform job. Multiple `TransformJobSummary`
    # objects are returned as a list after in response to a
    # ListTransformJobs call.
    #
    # @!attribute [rw] transform_job_name
    #   The name of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] transform_job_arn
    #   The Amazon Resource Name (ARN) of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the transform Job was created.
    #   @return [Time]
    #
    # @!attribute [rw] transform_end_time
    #   Indicates when the transform job ends on compute instances. For
    #   successful jobs and stopped jobs, this is the exact time recorded
    #   after the results are uploaded. For failed jobs, this is when Amazon
    #   SageMaker detected that the job failed.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Indicates when the transform job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] transform_job_status
    #   The status of the transform job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the transform job failed, the reason it failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformJobSummary AWS API Documentation
    #
    class TransformJobSummary < Struct.new(
      :transform_job_name,
      :transform_job_arn,
      :creation_time,
      :transform_end_time,
      :last_modified_time,
      :transform_job_status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the results of a transform job.
    #
    # @note When making an API call, you may pass TransformOutput
    #   data as a hash:
    #
    #       {
    #         s3_output_path: "S3Uri", # required
    #         accept: "Accept",
    #         assemble_with: "None", # accepts None, Line
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 path where you want Amazon SageMaker to store the
    #   results of the transform job. For example,
    #   `s3://bucket-name/key-name-prefix`.
    #
    #   For every S3 object used as input for the transform job, batch
    #   transform stores the transformed data with an .`out` suffix in a
    #   corresponding subfolder in the location in the output prefix. For
    #   example, for the input data stored at
    #   `s3://bucket-name/input-name-prefix/dataset01/data.csv`, batch
    #   transform stores the transformed data at
    #   `s3://bucket-name/output-name-prefix/input-name-prefix/data.csv.out`.
    #   Batch transform doesn't upload partially processed objects. For an
    #   input S3 object that contains multiple records, it creates an .`out`
    #   file only if the transform job succeeds on the entire file. When the
    #   input contains multiple S3 objects, the batch transform job
    #   processes the listed S3 objects and uploads only the output for
    #   successfully processed objects. If any object fails in the transform
    #   job batch transform marks the job as failed to prompt investigation.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The MIME type used to specify the output data. Amazon SageMaker uses
    #   the MIME type with each http call to transfer data from the
    #   transform job.
    #   @return [String]
    #
    # @!attribute [rw] assemble_with
    #   Defines how to assemble the results of the transform job as a single
    #   S3 object. Choose a format that is most convenient to you. To
    #   concatenate the results in binary format, specify `None`. To add a
    #   newline character at the end of every transformed record, specify
    #   `Line`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt the model artifacts at rest using Amazon S3
    #   server-side encryption. The `KmsKeyId` can be any of the following
    #   formats:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias name ARN:
    #     `arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias`
    #
    #   If you don't provide a KMS key ID, Amazon SageMaker uses the
    #   default KMS key for Amazon S3 for your role's account. For more
    #   information, see [KMS-Managed Encryption Keys][1] in the *Amazon
    #   Simple Storage Service Developer Guide.*
    #
    #   The KMS key policy must grant permission to the IAM role that you
    #   specify in your CreateModel request. For more information, see
    #   [Using Key Policies in AWS KMS][2] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html
    #   [2]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformOutput AWS API Documentation
    #
    class TransformOutput < Struct.new(
      :s3_output_path,
      :accept,
      :assemble_with,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the resources, including ML instance types and ML instance
    # count, to use for transform job.
    #
    # @note When making an API call, you may pass TransformResources
    #   data as a hash:
    #
    #       {
    #         instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #         instance_count: 1, # required
    #         volume_kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] instance_type
    #   The ML compute instance type for the transform job. If you are using
    #   built-in algorithms to transform moderately sized datasets, we
    #   recommend using ml.m4.xlarge or `ml.m5.large` instance types.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of ML compute instances to use in the transform job. For
    #   distributed transform jobs, specify a value greater than 1. The
    #   default value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt model data on the storage volume attached to the ML
    #   compute instance(s) that run the batch transform job. The
    #   `VolumeKmsKeyId` can be any of the following formats:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias name ARN:
    #     `arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformResources AWS API Documentation
    #
    class TransformResources < Struct.new(
      :instance_type,
      :instance_count,
      :volume_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the S3 data source.
    #
    # @note When making an API call, you may pass TransformS3DataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix, AugmentedManifestFile
    #         s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] s3_data_type
    #   If you choose `S3Prefix`, `S3Uri` identifies a key name prefix.
    #   Amazon SageMaker uses all objects with the specified key name prefix
    #   for batch transform.
    #
    #   If you choose `ManifestFile`, `S3Uri` identifies an object that is a
    #   manifest file containing a list of object keys that you want Amazon
    #   SageMaker to use for batch transform.
    #
    #   The following values are compatible: `ManifestFile`, `S3Prefix`
    #
    #   The following value is not compatible: `AugmentedManifestFile`
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   Depending on the value specified for the `S3DataType`, identifies
    #   either a key name prefix or a manifest. For example:
    #
    #   * A key name prefix might look like this:
    #     `s3://bucketname/exampleprefix`.
    #
    #   * A manifest might look like this:
    #     `s3://bucketname/example.manifest`
    #
    #     The manifest is an S3 object which is a JSON file with the
    #     following format:
    #
    #     `[ \{"prefix": "s3://customer_bucket/some/prefix/"\},`
    #
    #     `"relative/path/to/custdata-1",`
    #
    #     `"relative/path/custdata-2",`
    #
    #     `...`
    #
    #     `"relative/path/custdata-N"`
    #
    #     `]`
    #
    #     The preceding JSON matches the following `S3Uris`\:
    #
    #     `s3://customer_bucket/some/prefix/relative/path/to/custdata-1`
    #
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-2`
    #
    #     `...`
    #
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-N`
    #
    #     The complete set of `S3Uris` in this manifest constitutes the
    #     input data for the channel for this datasource. The object that
    #     each `S3Uris` points to must be readable by the IAM role that
    #     Amazon SageMaker uses to perform tasks on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformS3DataSource AWS API Documentation
    #
    class TransformS3DataSource < Struct.new(
      :s3_data_type,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a trial as returned by the Search API.
    #
    # @!attribute [rw] trial_name
    #   The name of the trial.
    #   @return [String]
    #
    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the trial as displayed. If `DisplayName` isn't
    #   specified, `TrialName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment the trial is part of.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the trial.
    #   @return [Types::TrialSource]
    #
    # @!attribute [rw] creation_time
    #   When the trial was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   Who last modified the trial.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] tags
    #   The list of tags that are associated with the trial. You can use
    #   Search API to search on the tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] trial_component_summaries
    #   A list of the components associated with the trial. For each
    #   component, a summary of the component's properties is included.
    #   @return [Array<Types::TrialComponentSimpleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Trial AWS API Documentation
    #
    class Trial < Struct.new(
      :trial_name,
      :trial_arn,
      :display_name,
      :experiment_name,
      :source,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      :tags,
      :trial_component_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a trial component as returned by the Search API.
    #
    # @!attribute [rw] trial_component_name
    #   The name of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the component as displayed. If `DisplayName` isn't
    #   specified, `TrialComponentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_arn
    #   The Amazon Resource Name (ARN) of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon Resource Name (ARN) and job type of the source of the
    #   component.
    #   @return [Types::TrialComponentSource]
    #
    # @!attribute [rw] status
    #   The status of the trial component.
    #   @return [Types::TrialComponentStatus]
    #
    # @!attribute [rw] start_time
    #   When the component started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the component ended.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   When the component was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   When the component was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] parameters
    #   The hyperparameters of the component.
    #   @return [Hash<String,Types::TrialComponentParameterValue>]
    #
    # @!attribute [rw] input_artifacts
    #   The input artifacts of the component.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] output_artifacts
    #   The output artifacts of the component.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] metrics
    #   The metrics for the component.
    #   @return [Array<Types::TrialComponentMetricSummary>]
    #
    # @!attribute [rw] source_detail
    #   Details of the source of the component.
    #   @return [Types::TrialComponentSourceDetail]
    #
    # @!attribute [rw] tags
    #   The list of tags that are associated with the component. You can use
    #   Search API to search on the tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] parents
    #   An array of the parents of the component. A parent is a trial the
    #   component is associated with and the experiment the trial is part
    #   of. A component might not have any parents.
    #   @return [Array<Types::Parent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponent AWS API Documentation
    #
    class TrialComponent < Struct.new(
      :trial_component_name,
      :display_name,
      :trial_component_arn,
      :source,
      :status,
      :start_time,
      :end_time,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      :parameters,
      :input_artifacts,
      :output_artifacts,
      :metrics,
      :source_detail,
      :tags,
      :parents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an input or output artifact of a trial component. You
    # specify `TrialComponentArtifact` as part of the `InputArtifacts` and
    # `OutputArtifacts` parameters in the CreateTrialComponent request.
    #
    # Examples of input artifacts are datasets, algorithms, hyperparameters,
    # source code, and instance types. Examples of output artifacts are
    # metrics, snapshots, logs, and images.
    #
    # @note When making an API call, you may pass TrialComponentArtifact
    #   data as a hash:
    #
    #       {
    #         media_type: "MediaType",
    #         value: "TrialComponentArtifactValue", # required
    #       }
    #
    # @!attribute [rw] media_type
    #   The media type of the artifact, which indicates the type of data in
    #   the artifact file. The media type consists of a *type* and a
    #   *subtype* concatenated with a slash (/) character, for example,
    #   text/csv, image/jpeg, and s3/uri. The type specifies the category of
    #   the media. The subtype specifies the kind of data.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The location of the artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentArtifact AWS API Documentation
    #
    class TrialComponentArtifact < Struct.new(
      :media_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the metrics of a trial component.
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the source.
    #   @return [String]
    #
    # @!attribute [rw] time_stamp
    #   When the metric was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] max
    #   The maximum value of the metric.
    #   @return [Float]
    #
    # @!attribute [rw] min
    #   The minimum value of the metric.
    #   @return [Float]
    #
    # @!attribute [rw] last
    #   The most recent value of the metric.
    #   @return [Float]
    #
    # @!attribute [rw] count
    #   The number of samples used to generate the metric.
    #   @return [Integer]
    #
    # @!attribute [rw] avg
    #   The average value of the metric.
    #   @return [Float]
    #
    # @!attribute [rw] std_dev
    #   The standard deviation of the metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentMetricSummary AWS API Documentation
    #
    class TrialComponentMetricSummary < Struct.new(
      :metric_name,
      :source_arn,
      :time_stamp,
      :max,
      :min,
      :last,
      :count,
      :avg,
      :std_dev)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a hyperparameter. Only one of `NumberValue` or
    # `StringValue` can be specified.
    #
    # This object is specified in the CreateTrialComponent request.
    #
    # @note When making an API call, you may pass TrialComponentParameterValue
    #   data as a hash:
    #
    #       {
    #         string_value: "StringParameterValue",
    #         number_value: 1.0,
    #       }
    #
    # @!attribute [rw] string_value
    #   The string value of a categorical hyperparameter. If you specify a
    #   value for this parameter, you can't specify the `NumberValue`
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] number_value
    #   The numeric value of a numeric hyperparameter. If you specify a
    #   value for this parameter, you can't specify the `StringValue`
    #   parameter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentParameterValue AWS API Documentation
    #
    class TrialComponentParameterValue < Struct.new(
      :string_value,
      :number_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A short summary of a trial component.
    #
    # @!attribute [rw] trial_component_name
    #   The name of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_arn
    #   The Amazon Resource Name (ARN) of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_source
    #   The Amazon Resource Name (ARN) and job type of the source of a trial
    #   component.
    #   @return [Types::TrialComponentSource]
    #
    # @!attribute [rw] creation_time
    #   When the component was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Information about the user who created or modified an experiment,
    #   trial, or trial component.
    #   @return [Types::UserContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentSimpleSummary AWS API Documentation
    #
    class TrialComponentSimpleSummary < Struct.new(
      :trial_component_name,
      :trial_component_arn,
      :trial_component_source,
      :creation_time,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) and job type of the source of a trial
    # component.
    #
    # @!attribute [rw] source_arn
    #   The source ARN.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source job type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentSource AWS API Documentation
    #
    class TrialComponentSource < Struct.new(
      :source_arn,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the source of a trial component. Either
    # `ProcessingJob` or `TrainingJob` is returned.
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the source.
    #   @return [String]
    #
    # @!attribute [rw] training_job
    #   Information about a training job that's the source of a trial
    #   component.
    #   @return [Types::TrainingJob]
    #
    # @!attribute [rw] processing_job
    #   Information about a processing job that's the source of a trial
    #   component.
    #   @return [Types::ProcessingJob]
    #
    # @!attribute [rw] transform_job
    #   Information about a transform job that's the source of a trial
    #   component.
    #   @return [Types::TransformJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentSourceDetail AWS API Documentation
    #
    class TrialComponentSourceDetail < Struct.new(
      :source_arn,
      :training_job,
      :processing_job,
      :transform_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the trial component.
    #
    # @note When making an API call, you may pass TrialComponentStatus
    #   data as a hash:
    #
    #       {
    #         primary_status: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #         message: "TrialComponentStatusMessage",
    #       }
    #
    # @!attribute [rw] primary_status
    #   The status of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the component failed, a message describing why.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentStatus AWS API Documentation
    #
    class TrialComponentStatus < Struct.new(
      :primary_status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the properties of a trial component. To get all the
    # properties, call the DescribeTrialComponent API and provide the
    # `TrialComponentName`.
    #
    # @!attribute [rw] trial_component_name
    #   The name of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_arn
    #   The ARN of the trial component.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the component as displayed. If `DisplayName` isn't
    #   specified, `TrialComponentName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] trial_component_source
    #   The Amazon Resource Name (ARN) and job type of the source of a trial
    #   component.
    #   @return [Types::TrialComponentSource]
    #
    # @!attribute [rw] status
    #   The status of the component. States include:
    #
    #   * InProgress
    #
    #   * Completed
    #
    #   * Failed
    #   @return [Types::TrialComponentStatus]
    #
    # @!attribute [rw] start_time
    #   When the component started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the component ended.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   When the component was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Who created the component.
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] last_modified_time
    #   When the component was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Who last modified the component.
    #   @return [Types::UserContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialComponentSummary AWS API Documentation
    #
    class TrialComponentSummary < Struct.new(
      :trial_component_name,
      :trial_component_arn,
      :display_name,
      :trial_component_source,
      :status,
      :start_time,
      :end_time,
      :creation_time,
      :created_by,
      :last_modified_time,
      :last_modified_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the trial.
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the source.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source job type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialSource AWS API Documentation
    #
    class TrialSource < Struct.new(
      :source_arn,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the properties of a trial. To get the complete set of
    # properties, call the DescribeTrial API and provide the `TrialName`.
    #
    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @!attribute [rw] trial_name
    #   The name of the trial.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the trial as displayed. If `DisplayName` isn't
    #   specified, `TrialName` is displayed.
    #   @return [String]
    #
    # @!attribute [rw] trial_source
    #   The source of the trial.
    #   @return [Types::TrialSource]
    #
    # @!attribute [rw] creation_time
    #   When the trial was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   When the trial was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TrialSummary AWS API Documentation
    #
    class TrialSummary < Struct.new(
      :trial_arn,
      :trial_name,
      :display_name,
      :trial_source,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job completion criteria.
    #
    # @note When making an API call, you may pass TuningJobCompletionCriteria
    #   data as a hash:
    #
    #       {
    #         target_objective_metric_value: 1.0, # required
    #       }
    #
    # @!attribute [rw] target_objective_metric_value
    #   The value of the objective metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TuningJobCompletionCriteria AWS API Documentation
    #
    class TuningJobCompletionCriteria < Struct.new(
      :target_objective_metric_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an amount of money in United States dollars/
    #
    # @note When making an API call, you may pass USD
    #   data as a hash:
    #
    #       {
    #         dollars: 1,
    #         cents: 1,
    #         tenth_fractions_of_a_cent: 1,
    #       }
    #
    # @!attribute [rw] dollars
    #   The whole number of dollars in the amount.
    #   @return [Integer]
    #
    # @!attribute [rw] cents
    #   The fractional portion, in cents, of the amount.
    #   @return [Integer]
    #
    # @!attribute [rw] tenth_fractions_of_a_cent
    #   Fractions of a cent, in tenths.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/USD AWS API Documentation
    #
    class USD < Struct.new(
      :dollars,
      :cents,
      :tenth_fractions_of_a_cent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provided configuration information for the worker UI for a labeling
    # job.
    #
    # @note When making an API call, you may pass UiConfig
    #   data as a hash:
    #
    #       {
    #         ui_template_s3_uri: "S3Uri",
    #         human_task_ui_arn: "HumanTaskUiArn",
    #       }
    #
    # @!attribute [rw] ui_template_s3_uri
    #   The Amazon S3 bucket location of the UI template, or worker task
    #   template. This is the template used to render the worker UI and
    #   tools for labeling job tasks. For more information about the
    #   contents of a UI template, see [ Creating Your Custom Labeling Task
    #   Template][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates-step2.html
    #   @return [String]
    #
    # @!attribute [rw] human_task_ui_arn
    #   The ARN of the worker task template used to render the worker UI and
    #   tools for labeling job tasks.
    #
    #   Use this parameter when you are creating a labeling job for 3D point
    #   cloud and video fram labeling jobs. Use your labeling job task type
    #   to select one of the following ARN's and use it with this parameter
    #   when you create a labeling job. Replace `aws-region` with the AWS
    #   region you are creating your labeling job in.
    #
    #   **3D Point Cloud HumanTaskUiArns**
    #
    #   Use this `HumanTaskUiArn` for 3D point cloud object detection and 3D
    #   point cloud object detection adjustment labeling jobs.
    #
    #   * `arn:aws:sagemaker:aws-region:394669845002:human-task-ui/PointCloudObjectDetection`
    #
    #   ^
    #
    #   Use this `HumanTaskUiArn` for 3D point cloud object tracking and 3D
    #   point cloud object tracking adjustment labeling jobs.
    #
    #   * `arn:aws:sagemaker:aws-region:394669845002:human-task-ui/PointCloudObjectTracking`
    #
    #   ^
    #
    #   Use this `HumanTaskUiArn` for 3D point cloud semantic segmentation
    #   and 3D point cloud semantic segmentation adjustment labeling jobs.
    #
    #   * `arn:aws:sagemaker:aws-region:394669845002:human-task-ui/PointCloudSemanticSegmentation`
    #
    #   ^
    #
    #   **Video Frame HumanTaskUiArns**
    #
    #   Use this `HumanTaskUiArn` for video frame object detection and video
    #   frame object detection adjustment labeling jobs.
    #
    #   * `arn:aws:sagemaker:region:394669845002:human-task-ui/VideoObjectDetection`
    #
    #   ^
    #
    #   Use this `HumanTaskUiArn` for video frame object tracking and video
    #   frame object tracking adjustment labeling jobs.
    #
    #   * `arn:aws:sagemaker:aws-region:394669845002:human-task-ui/VideoObjectTracking`
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UiConfig AWS API Documentation
    #
    class UiConfig < Struct.new(
      :ui_template_s3_uri,
      :human_task_ui_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Liquid template for the worker user interface.
    #
    # @note When making an API call, you may pass UiTemplate
    #   data as a hash:
    #
    #       {
    #         content: "TemplateContent", # required
    #       }
    #
    # @!attribute [rw] content
    #   The content of the Liquid template for the worker user interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UiTemplate AWS API Documentation
    #
    class UiTemplate < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for user interface template information.
    #
    # @!attribute [rw] url
    #   The URL for the user interface template.
    #   @return [String]
    #
    # @!attribute [rw] content_sha_256
    #   The SHA-256 digest of the contents of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UiTemplateInfo AWS API Documentation
    #
    class UiTemplateInfo < Struct.new(
      :url,
      :content_sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCodeRepositoryInput
    #   data as a hash:
    #
    #       {
    #         code_repository_name: "EntityName", # required
    #         git_config: {
    #           secret_arn: "SecretArn",
    #         },
    #       }
    #
    # @!attribute [rw] code_repository_name
    #   The name of the Git repository to update.
    #   @return [String]
    #
    # @!attribute [rw] git_config
    #   The configuration of the git repository, including the URL and the
    #   Amazon Resource Name (ARN) of the AWS Secrets Manager secret that
    #   contains the credentials used to access the repository. The secret
    #   must have a staging label of `AWSCURRENT` and must be in the
    #   following format:
    #
    #   `\{"username": UserName, "password": Password\}`
    #   @return [Types::GitConfigForUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateCodeRepositoryInput AWS API Documentation
    #
    class UpdateCodeRepositoryInput < Struct.new(
      :code_repository_name,
      :git_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_repository_arn
    #   The ARN of the Git repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateCodeRepositoryOutput AWS API Documentation
    #
    class UpdateCodeRepositoryOutput < Struct.new(
      :code_repository_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         default_user_settings: {
    #           execution_role: "RoleArn",
    #           security_groups: ["SecurityGroupId"],
    #           sharing_settings: {
    #             notebook_output_option: "Allowed", # accepts Allowed, Disabled
    #             s3_output_path: "S3Uri",
    #             s3_kms_key_id: "KmsKeyId",
    #           },
    #           jupyter_server_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           kernel_gateway_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           tensor_board_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_id
    #   The ID of the domain to be updated.
    #   @return [String]
    #
    # @!attribute [rw] default_user_settings
    #   A collection of settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateDomainRequest AWS API Documentation
    #
    class UpdateDomainRequest < Struct.new(
      :domain_id,
      :default_user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateDomainResponse AWS API Documentation
    #
    class UpdateDomainResponse < Struct.new(
      :domain_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #         endpoint_config_name: "EndpointConfigName", # required
    #         retain_all_variant_properties: false,
    #         exclude_retained_variant_properties: [
    #           {
    #             variant_property_type: "DesiredInstanceCount", # required, accepts DesiredInstanceCount, DesiredWeight, DataCaptureConfig
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint whose configuration you want to update.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_config_name
    #   The name of the new endpoint configuration.
    #   @return [String]
    #
    # @!attribute [rw] retain_all_variant_properties
    #   When updating endpoint resources, enables or disables the retention
    #   of variant properties, such as the instance count or the variant
    #   weight. To retain the variant properties of an endpoint when
    #   updating it, set `RetainAllVariantProperties` to `true`. To use the
    #   variant properties specified in a new `EndpointConfig` call when
    #   updating an endpoint, set `RetainAllVariantProperties` to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_retained_variant_properties
    #   When you are updating endpoint resources with
    #   UpdateEndpointInput$RetainAllVariantProperties, whose value is set
    #   to `true`, `ExcludeRetainedVariantProperties` specifies the list of
    #   type VariantProperty to override with the values provided by
    #   `EndpointConfig`. If you don't specify a value for
    #   `ExcludeAllVariantProperties`, no variant properties are overridden.
    #   @return [Array<Types::VariantProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointInput AWS API Documentation
    #
    class UpdateEndpointInput < Struct.new(
      :endpoint_name,
      :endpoint_config_name,
      :retain_all_variant_properties,
      :exclude_retained_variant_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointOutput AWS API Documentation
    #
    class UpdateEndpointOutput < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointWeightsAndCapacitiesInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #         desired_weights_and_capacities: [ # required
    #           {
    #             variant_name: "VariantName", # required
    #             desired_weight: 1.0,
    #             desired_instance_count: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of an existing Amazon SageMaker endpoint.
    #   @return [String]
    #
    # @!attribute [rw] desired_weights_and_capacities
    #   An object that provides new capacity and weight values for a
    #   variant.
    #   @return [Array<Types::DesiredWeightAndCapacity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointWeightsAndCapacitiesInput AWS API Documentation
    #
    class UpdateEndpointWeightsAndCapacitiesInput < Struct.new(
      :endpoint_name,
      :desired_weights_and_capacities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the updated endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointWeightsAndCapacitiesOutput AWS API Documentation
    #
    class UpdateEndpointWeightsAndCapacitiesOutput < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateExperimentRequest
    #   data as a hash:
    #
    #       {
    #         experiment_name: "ExperimentEntityName", # required
    #         display_name: "ExperimentEntityName",
    #         description: "ExperimentDescription",
    #       }
    #
    # @!attribute [rw] experiment_name
    #   The name of the experiment to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the experiment as displayed. The name doesn't need to
    #   be unique. If `DisplayName` isn't specified, `ExperimentName` is
    #   displayed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateExperimentRequest AWS API Documentation
    #
    class UpdateExperimentRequest < Struct.new(
      :experiment_name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] experiment_arn
    #   The Amazon Resource Name (ARN) of the experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateExperimentResponse AWS API Documentation
    #
    class UpdateExperimentResponse < Struct.new(
      :experiment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMonitoringScheduleRequest
    #   data as a hash:
    #
    #       {
    #         monitoring_schedule_name: "MonitoringScheduleName", # required
    #         monitoring_schedule_config: { # required
    #           schedule_config: {
    #             schedule_expression: "ScheduleExpression", # required
    #           },
    #           monitoring_job_definition: { # required
    #             baseline_config: {
    #               constraints_resource: {
    #                 s3_uri: "S3Uri",
    #               },
    #               statistics_resource: {
    #                 s3_uri: "S3Uri",
    #               },
    #             },
    #             monitoring_inputs: [ # required
    #               {
    #                 endpoint_input: { # required
    #                   endpoint_name: "EndpointName", # required
    #                   local_path: "ProcessingLocalPath", # required
    #                   s3_input_mode: "Pipe", # accepts Pipe, File
    #                   s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                 },
    #               },
    #             ],
    #             monitoring_output_config: { # required
    #               monitoring_outputs: [ # required
    #                 {
    #                   s3_output: { # required
    #                     s3_uri: "MonitoringS3Uri", # required
    #                     local_path: "ProcessingLocalPath", # required
    #                     s3_upload_mode: "Continuous", # accepts Continuous, EndOfJob
    #                   },
    #                 },
    #               ],
    #               kms_key_id: "KmsKeyId",
    #             },
    #             monitoring_resources: { # required
    #               cluster_config: { # required
    #                 instance_count: 1, # required
    #                 instance_type: "ml.t3.medium", # required, accepts ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #                 volume_size_in_gb: 1, # required
    #                 volume_kms_key_id: "KmsKeyId",
    #               },
    #             },
    #             monitoring_app_specification: { # required
    #               image_uri: "ImageUri", # required
    #               container_entrypoint: ["ContainerEntrypointString"],
    #               container_arguments: ["ContainerArgument"],
    #               record_preprocessor_source_uri: "S3Uri",
    #               post_analytics_processor_source_uri: "S3Uri",
    #             },
    #             stopping_condition: {
    #               max_runtime_in_seconds: 1, # required
    #             },
    #             environment: {
    #               "ProcessingEnvironmentKey" => "ProcessingEnvironmentValue",
    #             },
    #             network_config: {
    #               enable_inter_container_traffic_encryption: false,
    #               enable_network_isolation: false,
    #               vpc_config: {
    #                 security_group_ids: ["SecurityGroupId"], # required
    #                 subnets: ["SubnetId"], # required
    #               },
    #             },
    #             role_arn: "RoleArn", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] monitoring_schedule_name
    #   The name of the monitoring schedule. The name must be unique within
    #   an AWS Region within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_schedule_config
    #   The configuration object that specifies the monitoring schedule and
    #   defines the monitoring job.
    #   @return [Types::MonitoringScheduleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateMonitoringScheduleRequest AWS API Documentation
    #
    class UpdateMonitoringScheduleRequest < Struct.new(
      :monitoring_schedule_name,
      :monitoring_schedule_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_schedule_arn
    #   The Amazon Resource Name (ARN) of the monitoring schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateMonitoringScheduleResponse AWS API Documentation
    #
    class UpdateMonitoringScheduleResponse < Struct.new(
      :monitoring_schedule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #         instance_type: "ml.t2.medium", # accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge
    #         role_arn: "RoleArn",
    #         lifecycle_config_name: "NotebookInstanceLifecycleConfigName",
    #         disassociate_lifecycle_config: false,
    #         volume_size_in_gb: 1,
    #         default_code_repository: "CodeRepositoryNameOrUrl",
    #         additional_code_repositories: ["CodeRepositoryNameOrUrl"],
    #         accelerator_types: ["ml.eia1.medium"], # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge
    #         disassociate_accelerator_types: false,
    #         disassociate_default_code_repository: false,
    #         disassociate_additional_code_repositories: false,
    #         root_access: "Enabled", # accepts Enabled, Disabled
    #       }
    #
    # @!attribute [rw] notebook_instance_name
    #   The name of the notebook instance to update.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon ML compute instance type.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
    #   can assume to access the notebook instance. For more information,
    #   see [Amazon SageMaker Roles][1].
    #
    #   <note markdown="1"> To be able to pass this role to Amazon SageMaker, the caller of this
    #   API must have the `iam:PassRole` permission.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see [Step
    #   2.1: (Optional) Customize a Notebook Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html
    #   @return [String]
    #
    # @!attribute [rw] disassociate_lifecycle_config
    #   Set to `true` to remove the notebook instance lifecycle
    #   configuration currently associated with the notebook instance. This
    #   operation is idempotent. If you specify a lifecycle configuration
    #   that is not associated with the notebook instance when you call this
    #   method, it does not throw an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size, in GB, of the ML storage volume to attach to the notebook
    #   instance. The default value is 5 GB. ML storage volumes are
    #   encrypted, so Amazon SageMaker can't determine the amount of
    #   available free space on the volume. Because of this, you can
    #   increase the volume size when you update a notebook instance, but
    #   you can't decrease the volume size. If you want to decrease the
    #   size of the ML storage volume in use, create a new notebook instance
    #   with the desired size.
    #   @return [Integer]
    #
    # @!attribute [rw] default_code_repository
    #   The Git repository to associate with the notebook instance as its
    #   default code repository. This can be either the name of a Git
    #   repository stored as a resource in your account, or the URL of a Git
    #   repository in [AWS CodeCommit][1] or in any other Git repository.
    #   When you open a notebook instance, it opens in the directory that
    #   contains this repository. For more information, see [Associating Git
    #   Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [String]
    #
    # @!attribute [rw] additional_code_repositories
    #   An array of up to three Git repositories to associate with the
    #   notebook instance. These can be either the names of Git repositories
    #   stored as resources in your account, or the URL of Git repositories
    #   in [AWS CodeCommit][1] or in any other Git repository. These
    #   repositories are cloned at the same level as the default repository
    #   of your notebook instance. For more information, see [Associating
    #   Git Repositories with Amazon SageMaker Notebook Instances][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_types
    #   A list of the Elastic Inference (EI) instance types to associate
    #   with this notebook instance. Currently only one EI instance type can
    #   be associated with a notebook instance. For more information, see
    #   [Using Elastic Inference in Amazon SageMaker][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] disassociate_accelerator_types
    #   A list of the Elastic Inference (EI) instance types to remove from
    #   this notebook instance. This operation is idempotent. If you specify
    #   an accelerator type that is not associated with the notebook
    #   instance when you call this method, it does not throw an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] disassociate_default_code_repository
    #   The name or URL of the default Git repository to remove from this
    #   notebook instance. This operation is idempotent. If you specify a
    #   Git repository that is not associated with the notebook instance
    #   when you call this method, it does not throw an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] disassociate_additional_code_repositories
    #   A list of names or URLs of the default Git repositories to remove
    #   from this notebook instance. This operation is idempotent. If you
    #   specify a Git repository that is not associated with the notebook
    #   instance when you call this method, it does not throw an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_access
    #   Whether root access is enabled or disabled for users of the notebook
    #   instance. The default value is `Enabled`.
    #
    #   <note markdown="1"> If you set this to `Disabled`, users don't have root access on the
    #   notebook instance, but lifecycle configuration scripts still run
    #   with root permissions.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceInput AWS API Documentation
    #
    class UpdateNotebookInstanceInput < Struct.new(
      :notebook_instance_name,
      :instance_type,
      :role_arn,
      :lifecycle_config_name,
      :disassociate_lifecycle_config,
      :volume_size_in_gb,
      :default_code_repository,
      :additional_code_repositories,
      :accelerator_types,
      :disassociate_accelerator_types,
      :disassociate_default_code_repository,
      :disassociate_additional_code_repositories,
      :root_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateNotebookInstanceLifecycleConfigInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #         on_create: [
    #           {
    #             content: "NotebookInstanceLifecycleConfigContent",
    #           },
    #         ],
    #         on_start: [
    #           {
    #             content: "NotebookInstanceLifecycleConfigContent",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #   @return [String]
    #
    # @!attribute [rw] on_create
    #   The shell script that runs only once, when you create a notebook
    #   instance. The shell script must be a base64-encoded string.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @!attribute [rw] on_start
    #   The shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance. The shell script
    #   must be a base64-encoded string.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfigInput AWS API Documentation
    #
    class UpdateNotebookInstanceLifecycleConfigInput < Struct.new(
      :notebook_instance_lifecycle_config_name,
      :on_create,
      :on_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfigOutput AWS API Documentation
    #
    class UpdateNotebookInstanceLifecycleConfigOutput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceOutput AWS API Documentation
    #
    class UpdateNotebookInstanceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTrialComponentRequest
    #   data as a hash:
    #
    #       {
    #         trial_component_name: "ExperimentEntityName", # required
    #         display_name: "ExperimentEntityName",
    #         status: {
    #           primary_status: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #           message: "TrialComponentStatusMessage",
    #         },
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         parameters: {
    #           "TrialComponentKey256" => {
    #             string_value: "StringParameterValue",
    #             number_value: 1.0,
    #           },
    #         },
    #         parameters_to_remove: ["TrialComponentKey256"],
    #         input_artifacts: {
    #           "TrialComponentKey64" => {
    #             media_type: "MediaType",
    #             value: "TrialComponentArtifactValue", # required
    #           },
    #         },
    #         input_artifacts_to_remove: ["TrialComponentKey256"],
    #         output_artifacts: {
    #           "TrialComponentKey64" => {
    #             media_type: "MediaType",
    #             value: "TrialComponentArtifactValue", # required
    #           },
    #         },
    #         output_artifacts_to_remove: ["TrialComponentKey256"],
    #       }
    #
    # @!attribute [rw] trial_component_name
    #   The name of the component to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the component as displayed. The name doesn't need to be
    #   unique. If `DisplayName` isn't specified, `TrialComponentName` is
    #   displayed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status of the component.
    #   @return [Types::TrialComponentStatus]
    #
    # @!attribute [rw] start_time
    #   When the component started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the component ended.
    #   @return [Time]
    #
    # @!attribute [rw] parameters
    #   Replaces all of the component's hyperparameters with the specified
    #   hyperparameters.
    #   @return [Hash<String,Types::TrialComponentParameterValue>]
    #
    # @!attribute [rw] parameters_to_remove
    #   The hyperparameters to remove from the component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_artifacts
    #   Replaces all of the component's input artifacts with the specified
    #   artifacts.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] input_artifacts_to_remove
    #   The input artifacts to remove from the component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_artifacts
    #   Replaces all of the component's output artifacts with the specified
    #   artifacts.
    #   @return [Hash<String,Types::TrialComponentArtifact>]
    #
    # @!attribute [rw] output_artifacts_to_remove
    #   The output artifacts to remove from the component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateTrialComponentRequest AWS API Documentation
    #
    class UpdateTrialComponentRequest < Struct.new(
      :trial_component_name,
      :display_name,
      :status,
      :start_time,
      :end_time,
      :parameters,
      :parameters_to_remove,
      :input_artifacts,
      :input_artifacts_to_remove,
      :output_artifacts,
      :output_artifacts_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_component_arn
    #   The Amazon Resource Name (ARN) of the trial component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateTrialComponentResponse AWS API Documentation
    #
    class UpdateTrialComponentResponse < Struct.new(
      :trial_component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTrialRequest
    #   data as a hash:
    #
    #       {
    #         trial_name: "ExperimentEntityName", # required
    #         display_name: "ExperimentEntityName",
    #       }
    #
    # @!attribute [rw] trial_name
    #   The name of the trial to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the trial as displayed. The name doesn't need to be
    #   unique. If `DisplayName` isn't specified, `TrialName` is displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateTrialRequest AWS API Documentation
    #
    class UpdateTrialRequest < Struct.new(
      :trial_name,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trial_arn
    #   The Amazon Resource Name (ARN) of the trial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateTrialResponse AWS API Documentation
    #
    class UpdateTrialResponse < Struct.new(
      :trial_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_id: "DomainId", # required
    #         user_profile_name: "UserProfileName", # required
    #         user_settings: {
    #           execution_role: "RoleArn",
    #           security_groups: ["SecurityGroupId"],
    #           sharing_settings: {
    #             notebook_output_option: "Allowed", # accepts Allowed, Disabled
    #             s3_output_path: "S3Uri",
    #             s3_kms_key_id: "KmsKeyId",
    #           },
    #           jupyter_server_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           kernel_gateway_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #           tensor_board_app_settings: {
    #             default_resource_spec: {
    #               sage_maker_image_arn: "ImageArn",
    #               instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] user_settings
    #   A collection of settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateUserProfileRequest AWS API Documentation
    #
    class UpdateUserProfileRequest < Struct.new(
      :domain_id,
      :user_profile_name,
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_profile_arn
    #   The user profile Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateUserProfileResponse AWS API Documentation
    #
    class UpdateUserProfileResponse < Struct.new(
      :user_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateWorkforceRequest
    #   data as a hash:
    #
    #       {
    #         workforce_name: "WorkforceName", # required
    #         source_ip_config: {
    #           cidrs: ["Cidr"], # required
    #         },
    #         oidc_config: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           issuer: "OidcEndpoint", # required
    #           authorization_endpoint: "OidcEndpoint", # required
    #           token_endpoint: "OidcEndpoint", # required
    #           user_info_endpoint: "OidcEndpoint", # required
    #           logout_endpoint: "OidcEndpoint", # required
    #           jwks_uri: "OidcEndpoint", # required
    #         },
    #       }
    #
    # @!attribute [rw] workforce_name
    #   The name of the private workforce that you want to update. You can
    #   find your workforce name by using the operation.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_config
    #   A list of one to ten worker IP address ranges ([CIDRs][1]) that can
    #   be used to access tasks assigned to this workforce.
    #
    #   Maximum: Ten CIDR values
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Types::SourceIpConfig]
    #
    # @!attribute [rw] oidc_config
    #   Use this parameter to update your OIDC Identity Provider (IdP)
    #   configuration for a workforce made using your own IdP.
    #   @return [Types::OidcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateWorkforceRequest AWS API Documentation
    #
    class UpdateWorkforceRequest < Struct.new(
      :workforce_name,
      :source_ip_config,
      :oidc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workforce
    #   A single private workforce. You can create one private work force in
    #   each AWS Region. By default, any workforce-related API operation
    #   used in a specific region will apply to the workforce created in
    #   that region. To learn how to create a private workforce, see [Create
    #   a Private Workforce][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html
    #   @return [Types::Workforce]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateWorkforceResponse AWS API Documentation
    #
    class UpdateWorkforceResponse < Struct.new(
      :workforce)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_name: "WorkteamName", # required
    #         member_definitions: [
    #           {
    #             cognito_member_definition: {
    #               user_pool: "CognitoUserPool", # required
    #               user_group: "CognitoUserGroup", # required
    #               client_id: "ClientId", # required
    #             },
    #             oidc_member_definition: {
    #               groups: ["Group"], # required
    #             },
    #           },
    #         ],
    #         description: "String200",
    #         notification_configuration: {
    #           notification_topic_arn: "NotificationTopicArn",
    #         },
    #       }
    #
    # @!attribute [rw] workteam_name
    #   The name of the work team to update.
    #   @return [String]
    #
    # @!attribute [rw] member_definitions
    #   A list of `MemberDefinition` objects that contains objects that
    #   identify the workers that make up the work team.
    #
    #   Workforces can be created using Amazon Cognito or your own OIDC
    #   Identity Provider (IdP). For private workforces created using Amazon
    #   Cognito use `CognitoMemberDefinition`. For workforces created using
    #   your own OIDC identity provider (IdP) use `OidcMemberDefinition`.
    #   You should not provide input for both of these parameters in a
    #   single request.
    #
    #   For workforces created using Amazon Cognito, private work teams
    #   correspond to Amazon Cognito *user groups* within the user pool used
    #   to create a workforce. All of the `CognitoMemberDefinition` objects
    #   that make up the member definition must have the same `ClientId` and
    #   `UserPool` values. To add a Amazon Cognito user group to an existing
    #   worker pool, see [Adding groups to a User Pool](). For more
    #   information about user pools, see [Amazon Cognito User Pools][1].
    #
    #   For workforces created using your own OIDC IdP, specify the user
    #   groups that you want to include in your private work team in
    #   `OidcMemberDefinition` by listing those groups in `Groups`. Be aware
    #   that user groups that are already in the work team must also be
    #   listed in `Groups` when you make this request to remain on the work
    #   team. If you do not include these user groups, they will no longer
    #   be associated with the work team you update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #   @return [Array<Types::MemberDefinition>]
    #
    # @!attribute [rw] description
    #   An updated description for the work team.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration
    #   Configures SNS topic notifications for available or expiring work
    #   items
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateWorkteamRequest AWS API Documentation
    #
    class UpdateWorkteamRequest < Struct.new(
      :workteam_name,
      :member_definitions,
      :description,
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workteam
    #   A `Workteam` object that describes the updated work team.
    #   @return [Types::Workteam]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateWorkteamResponse AWS API Documentation
    #
    class UpdateWorkteamResponse < Struct.new(
      :workteam)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the user who created or modified an experiment,
    # trial, or trial component.
    #
    # @!attribute [rw] user_profile_arn
    #   The Amazon Resource Name (ARN) of the user's profile.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The name of the user's profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The domain associated with the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UserContext AWS API Documentation
    #
    class UserContext < Struct.new(
      :user_profile_arn,
      :user_profile_name,
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user profile details.
    #
    # @!attribute [rw] domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] user_profile_name
    #   The user profile name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UserProfileDetails AWS API Documentation
    #
    class UserProfileDetails < Struct.new(
      :domain_id,
      :user_profile_name,
      :status,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of settings.
    #
    # @note When making an API call, you may pass UserSettings
    #   data as a hash:
    #
    #       {
    #         execution_role: "RoleArn",
    #         security_groups: ["SecurityGroupId"],
    #         sharing_settings: {
    #           notebook_output_option: "Allowed", # accepts Allowed, Disabled
    #           s3_output_path: "S3Uri",
    #           s3_kms_key_id: "KmsKeyId",
    #         },
    #         jupyter_server_app_settings: {
    #           default_resource_spec: {
    #             sage_maker_image_arn: "ImageArn",
    #             instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #           },
    #         },
    #         kernel_gateway_app_settings: {
    #           default_resource_spec: {
    #             sage_maker_image_arn: "ImageArn",
    #             instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #           },
    #         },
    #         tensor_board_app_settings: {
    #           default_resource_spec: {
    #             sage_maker_image_arn: "ImageArn",
    #             instance_type: "system", # accepts system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] execution_role
    #   The execution role for the user.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sharing_settings
    #   The sharing settings.
    #   @return [Types::SharingSettings]
    #
    # @!attribute [rw] jupyter_server_app_settings
    #   The Jupyter server's app settings.
    #   @return [Types::JupyterServerAppSettings]
    #
    # @!attribute [rw] kernel_gateway_app_settings
    #   The kernel gateway app settings.
    #   @return [Types::KernelGatewayAppSettings]
    #
    # @!attribute [rw] tensor_board_app_settings
    #   The TensorBoard app settings.
    #   @return [Types::TensorBoardAppSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UserSettings AWS API Documentation
    #
    class UserSettings < Struct.new(
      :execution_role,
      :security_groups,
      :sharing_settings,
      :jupyter_server_app_settings,
      :kernel_gateway_app_settings,
      :tensor_board_app_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a production variant property type for an Endpoint.
    #
    # If you are updating an endpoint with the
    # UpdateEndpointInput$RetainAllVariantProperties option set to `true`,
    # the `VariantProperty` objects listed in
    # UpdateEndpointInput$ExcludeRetainedVariantProperties override the
    # existing variant properties of the endpoint.
    #
    # @note When making an API call, you may pass VariantProperty
    #   data as a hash:
    #
    #       {
    #         variant_property_type: "DesiredInstanceCount", # required, accepts DesiredInstanceCount, DesiredWeight, DataCaptureConfig
    #       }
    #
    # @!attribute [rw] variant_property_type
    #   The type of variant property. The supported values are:
    #
    #   * `DesiredInstanceCount`\: Overrides the existing variant instance
    #     counts using the ProductionVariant$InitialInstanceCount values in
    #     the CreateEndpointConfigInput$ProductionVariants.
    #
    #   * `DesiredWeight`\: Overrides the existing variant weights using the
    #     ProductionVariant$InitialVariantWeight values in the
    #     CreateEndpointConfigInput$ProductionVariants.
    #
    #   * `DataCaptureConfig`\: (Not currently supported.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/VariantProperty AWS API Documentation
    #
    class VariantProperty < Struct.new(
      :variant_property_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a VPC that your training jobs and hosted models have access
    # to. Control access to and from your training and model containers by
    # configuring the VPC. For more information, see [Protect Endpoints by
    # Using an Amazon Virtual Private Cloud][1] and [Protect Training Jobs
    # by Using an Amazon Virtual Private Cloud][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html
    # [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html
    #
    # @note When making an API call, you may pass VpcConfig
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security group IDs, in the form sg-xxxxxxxx. Specify the
    #   security groups for the VPC that is specified in the `Subnets`
    #   field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The ID of the subnets in the VPC to which you want to connect your
    #   training job or model. For information about the availability of
    #   specific instance types, see [Supported Instance Types and
    #   Availability Zones][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/instance-types-az.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :security_group_ids,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single private workforce, which is automatically created when you
    # create your first private work team. You can create one private work
    # force in each AWS Region. By default, any workforce-related API
    # operation used in a specific region will apply to the workforce
    # created in that region. To learn how to create a private workforce,
    # see [Create a Private Workforce][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html
    #
    # @!attribute [rw] workforce_name
    #   The name of the private workforce.
    #   @return [String]
    #
    # @!attribute [rw] workforce_arn
    #   The Amazon Resource Name (ARN) of the private workforce.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The most recent date that was used to successfully add one or more
    #   IP address ranges ([CIDRs][1]) to a private workforce's allow list.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Time]
    #
    # @!attribute [rw] source_ip_config
    #   A list of one to ten IP address ranges ([CIDRs][1]) to be added to
    #   the workforce allow list. By default, a workforce isn't restricted
    #   to specific IP addresses.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Types::SourceIpConfig]
    #
    # @!attribute [rw] sub_domain
    #   The subdomain for your OIDC Identity Provider.
    #   @return [String]
    #
    # @!attribute [rw] cognito_config
    #   The configuration of an Amazon Cognito workforce. A single Cognito
    #   workforce is created using and corresponds to a single [ Amazon
    #   Cognito user pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #   @return [Types::CognitoConfig]
    #
    # @!attribute [rw] oidc_config
    #   The configuration of an OIDC Identity Provider (IdP) private
    #   workforce.
    #   @return [Types::OidcConfigForResponse]
    #
    # @!attribute [rw] create_date
    #   The date that the workforce is created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Workforce AWS API Documentation
    #
    class Workforce < Struct.new(
      :workforce_name,
      :workforce_arn,
      :last_updated_date,
      :source_ip_config,
      :sub_domain,
      :cognito_config,
      :oidc_config,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a labeling work team.
    #
    # @!attribute [rw] workteam_name
    #   The name of the work team.
    #   @return [String]
    #
    # @!attribute [rw] member_definitions
    #   A list of `MemberDefinition` objects that contains objects that
    #   identify the workers that make up the work team.
    #
    #   Workforces can be created using Amazon Cognito or your own OIDC
    #   Identity Provider (IdP). For private workforces created using Amazon
    #   Cognito use `CognitoMemberDefinition`. For workforces created using
    #   your own OIDC identity provider (IdP) use `OidcMemberDefinition`.
    #   @return [Array<Types::MemberDefinition>]
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) that identifies the work team.
    #   @return [String]
    #
    # @!attribute [rw] workforce_arn
    #   The Amazon Resource Name (ARN) of the workforce.
    #   @return [String]
    #
    # @!attribute [rw] product_listing_ids
    #   The Amazon Marketplace identifier for a vendor's work team.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the work team.
    #   @return [String]
    #
    # @!attribute [rw] sub_domain
    #   The URI of the labeling job's user interface. Workers open this URI
    #   to start labeling your data objects.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time that the work team was created (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that the work team was last updated (timestamp).
    #   @return [Time]
    #
    # @!attribute [rw] notification_configuration
    #   Configures SNS notifications of available or expiring work items for
    #   work teams.
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Workteam AWS API Documentation
    #
    class Workteam < Struct.new(
      :workteam_name,
      :member_definitions,
      :workteam_arn,
      :workforce_arn,
      :product_listing_ids,
      :description,
      :sub_domain,
      :create_date,
      :last_updated_date,
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

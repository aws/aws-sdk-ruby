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
      include Aws::Structure
    end

    # Specifies the training algorithm to use in a [CreateTrainingJob][1]
    # request.
    #
    # For more information about algorithms provided by Amazon SageMaker,
    # see [Algorithms][2]. For information about using your own algorithms,
    # see [Using Your Own Algorithms with Amazon SageMaker][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateTrainingJob.html
    # [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    # [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmSpecification AWS API Documentation
    #
    class AlgorithmSpecification < Struct.new(
      :training_image,
      :algorithm_name,
      :training_input_mode,
      :metric_definitions)
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
    #             instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #             instance_count: 1, # required
    #             volume_size_in_gb: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #           stopping_condition: { # required
    #             max_runtime_in_seconds: 1,
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
    #                 instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #                 instance_count: 1, # required
    #                 volume_size_in_gb: 1, # required
    #                 volume_kms_key_id: "KmsKeyId",
    #               },
    #               stopping_condition: { # required
    #                 max_runtime_in_seconds: 1,
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
      include Aws::Structure
    end

    # Configures how labels are consolidated across human workers.
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
    #   logic for annotation consolidation.
    #
    #   For the built-in bounding box, image classification, semantic
    #   segmentation, and text classification task types, Amazon SageMaker
    #   Ground Truth provides the following Lambda functions:
    #
    #   * *Bounding box* - Finds the most similar boxes from different
    #     workers based on the Jaccard index of the boxes.
    #
    #     `arn:aws:lambda:us-east-1:432418664414:function:ACS-BoundingBox`
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
    #   * *Image classification* - Uses a variant of the Expectation
    #     Maximization approach to estimate the true class of an image based
    #     on annotations from individual workers.
    #
    #     `arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClass`
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
    #   * *Semantic segmentation* - Treats each pixel in an image as a
    #     multi-class classification and treats pixel annotations from
    #     workers as "votes" for the correct label.
    #
    #     `arn:aws:lambda:us-east-1:432418664414:function:ACS-SemanticSegmentation`
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
    #   * *Text classification* - Uses a variant of the Expectation
    #     Maximization approach to estimate the true class of text based on
    #     annotations from individual workers.
    #
    #     `arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClass`
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
    #   For more information, see [Annotation Consolidation][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AnnotationConsolidationConfig AWS API Documentation
    #
    class AnnotationConsolidationConfig < Struct.new(
      :annotation_consolidation_lambda_arn)
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
    #   [1]: https://mxnet.incubator.apache.org/architecture/note_data_loading.html#data-format
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
    #         client_id: "CognitoClientId", # required
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
    #   The type of device that the model will run on after compilation has
    #   completed.
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
      :last_modified_time,
      :compilation_job_status)
      include Aws::Structure
    end

    # Describes the container, as part of model definition.
    #
    # @note When making an API call, you may pass ContainerDefinition
    #   data as a hash:
    #
    #       {
    #         container_hostname: "ContainerHostname",
    #         image: "Image",
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
    #   value of ths parameter uniquely identifies the container for the
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/inference-pipeline-logs-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The Amazon EC2 Container Registry (Amazon ECR) path where inference
    #   code is stored. If you are using your own custom algorithm instead
    #   of an algorithm provided by Amazon SageMaker, the inference code
    #   must meet Amazon SageMaker requirements. Amazon SageMaker supports
    #   both `registry/repository[:tag]` and `registry/repository[@digest]`
    #   image path formats. For more information, see [Using Your Own
    #   Algorithms with Amazon SageMaker][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. Each key
    #   and value in the `Environment` string to string map can have length
    #   of up to 1024. We support up to 16 entries in the map.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] model_package_name
    #   The name of the model package to use to create the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContainerDefinition AWS API Documentation
    #
    class ContainerDefinition < Struct.new(
      :container_hostname,
      :image,
      :model_data_url,
      :environment,
      :model_package_name)
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
    #   : Hyperparemeter tuning searches the values in the hyperparameter
    #     range by using a logarithmic scale.
    #
    #     Logarithmic scaling works only for ranges that have only values
    #     greater than 0.
    #
    #   ReverseLogarithmic
    #
    #   : Hyperparemeter tuning searches the values in the hyperparameter
    #     range by using a reverse logarithmic scale.
    #
    #     Reverse logarithmic scaling works only for ranges that are
    #     entirely within the range 0&lt;=x&lt;1.0.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com//sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContinuousParameterRange AWS API Documentation
    #
    class ContinuousParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :scaling_type)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAlgorithmInput
    #   data as a hash:
    #
    #       {
    #         algorithm_name: "EntityName", # required
    #         algorithm_description: "EntityDescription",
    #         training_specification: { # required
    #           training_image: "Image", # required
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
    #           supported_training_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #               image: "Image", # required
    #               image_digest: "ImageDigest",
    #               model_data_url: "Url",
    #               product_id: "ProductId",
    #             },
    #           ],
    #           supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #           supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #                   instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #                   instance_count: 1, # required
    #                   volume_size_in_gb: 1, # required
    #                   volume_kms_key_id: "KmsKeyId",
    #                 },
    #                 stopping_condition: { # required
    #                   max_runtime_in_seconds: 1,
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
    #           framework: "TENSORFLOW", # required, accepts TENSORFLOW, MXNET, ONNX, PYTORCH, XGBOOST
    #         },
    #         output_config: { # required
    #           s3_output_location: "S3Uri", # required
    #           target_device: "lambda", # required, accepts lambda, ml_m4, ml_m5, ml_c4, ml_c5, ml_p2, ml_p3, jetson_tx1, jetson_tx2, jetson_nano, rasp3b, deeplens, rk3399, rk3288
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
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
    #   The duration allowed for model compilation.
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
    #             instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #             initial_variant_weight: 1.0,
    #             accelerator_type: "ml.eia1.medium", # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
    #           },
    #         ],
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
    #   [CreateEndpoint][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] production_variants
    #   An list of `ProductionVariant` objects, one for each model that you
    #   want to host at this endpoint.
    #   @return [Array<Types::ProductionVariant>]
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointConfigInput AWS API Documentation
    #
    class CreateEndpointConfigInput < Struct.new(
      :endpoint_config_name,
      :production_variants,
      :tags,
      :kms_key_id)
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
    #   [CreateEndpointConfig][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html
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
    #         },
    #         training_job_definition: {
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
    #             instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #             instance_count: 1, # required
    #             volume_size_in_gb: 1, # required
    #             volume_kms_key_id: "KmsKeyId",
    #           },
    #           stopping_condition: { # required
    #             max_runtime_in_seconds: 1,
    #           },
    #           enable_network_isolation: false,
    #           enable_inter_container_traffic_encryption: false,
    #         },
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
    #   limits for the tuning job. For more information, see
    #   automatic-model-tuning
    #   @return [Types::HyperParameterTuningJobConfig]
    #
    # @!attribute [rw] training_job_definition
    #   The HyperParameterTrainingJobDefinition object that describes the
    #   training jobs that this tuning job launches, including static
    #   hyperparameters, input data configuration, output data
    #   configuration, resource configuration, and stopping condition.
    #   @return [Types::HyperParameterTrainingJobDefinition]
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
      :warm_start_config,
      :tags)
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
    #             s3_data_source: { # required
    #               manifest_s3_uri: "S3Uri", # required
    #             },
    #           },
    #           data_attributes: {
    #             content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #           },
    #         },
    #         output_config: { # required
    #           s3_output_path: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
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
    #             ui_template_s3_uri: "S3Uri", # required
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
    #   Configures the information required for human workers to complete a
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
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelInput
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #         primary_container: {
    #           container_hostname: "ContainerHostname",
    #           image: "Image",
    #           model_data_url: "Url",
    #           environment: {
    #             "EnvironmentKey" => "EnvironmentValue",
    #           },
    #           model_package_name: "ArnOrName",
    #         },
    #         containers: [
    #           {
    #             container_hostname: "ContainerHostname",
    #             image: "Image",
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
    #   A [VpcConfig][1] object that specifies the VPC that you want your
    #   model to connect to. Control access to and from your model container
    #   by configuring the VPC. `VpcConfig` is used in hosting services and
    #   in batch transform. For more information, see [Protect Endpoints by
    #   Using an Amazon Virtual Private Cloud][2] and [Protect Data in Batch
    #   Transform Jobs by Using an Amazon Virtual Private Cloud][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_VpcConfig.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] enable_network_isolation
    #   Isolates the model container. No inbound or outbound network calls
    #   can be made to or from the model container.
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support
    #   network isolation.
    #
    #    </note>
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
    #               image: "Image", # required
    #               image_digest: "ImageDigest",
    #               model_data_url: "Url",
    #               product_id: "ProductId",
    #             },
    #           ],
    #           supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #           supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #         accelerator_types: ["ml.eia1.medium"], # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
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
    #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         enable_network_isolation: false,
    #         enable_inter_container_traffic_encryption: false,
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
    #   channel provides the S3 location where the input data is stored. It
    #   also provides information about the stored data: the MIME type,
    #   compression method, and whether the data is wrapped in RecordIO
    #   format.
    #
    #   Depending on the input mode that the algorithm supports, Amazon
    #   SageMaker either copies input data files from an S3 bucket to a
    #   local directory in the Docker container, or makes it available as
    #   input streams.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] output_data_config
    #   Specifies the path to the S3 bucket where you want to store model
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
    #   Sets a duration for training. Use this parameter to cap model
    #   training costs. To stop a job, Amazon SageMaker sends the algorithm
    #   the `SIGTERM` signal, which delays job termination for 120 seconds.
    #   Algorithms might use this 120-second window to save the model
    #   artifacts.
    #
    #   When Amazon SageMaker terminates a job because the stopping
    #   condition has been met, training algorithms provided by Amazon
    #   SageMaker save the intermediate results of the job. This
    #   intermediate data is a valid model artifact. You can use it to
    #   create a model using the `CreateModel` API.
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
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support
    #   network isolation.
    #
    #    </note>
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
      :enable_inter_container_traffic_encryption)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTransformJobRequest
    #   data as a hash:
    #
    #       {
    #         transform_job_name: "TransformJobName", # required
    #         model_name: "ModelName", # required
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
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    #   execution-parameters to determine the optimal settings for your
    #   chosen algorithm. If the execution-parameters endpoint is not
    #   enabled, the default value is `1`. For more information on
    #   execution-parameters, see [How Containers Serve Requests][1]. For
    #   built-in algorithms, you don't need to set a value for
    #   `MaxConcurrentTransforms`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-batch-code.html#your-algorithms-batch-code-how-containe-serves-requests
    #   @return [Integer]
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
    #   To enable the batch strategy, you must set `SplitType` to `Line`,
    #   `RecordIO`, or `TFRecord`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTransformJobRequest AWS API Documentation
    #
    class CreateTransformJobRequest < Struct.new(
      :transform_job_name,
      :model_name,
      :max_concurrent_transforms,
      :max_payload_in_mb,
      :batch_strategy,
      :environment,
      :transform_input,
      :transform_output,
      :transform_resources,
      :tags)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorkteamRequest
    #   data as a hash:
    #
    #       {
    #         workteam_name: "WorkteamName", # required
    #         member_definitions: [ # required
    #           {
    #             cognito_member_definition: {
    #               user_pool: "CognitoUserPool", # required
    #               user_group: "CognitoUserGroup", # required
    #               client_id: "CognitoClientId", # required
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
    # @!attribute [rw] member_definitions
    #   A list of `MemberDefinition` objects that contains objects that
    #   identify the Amazon Cognito user pool that makes up the work team.
    #   For more information, see [Amazon Cognito User Pools][1].
    #
    #   All of the `CognitoMemberDefinition` objects that make up the member
    #   definition must have the same `ClientId` and `UserPool` values.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
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
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateWorkteamRequest AWS API Documentation
    #
    class CreateWorkteamRequest < Struct.new(
      :workteam_name,
      :member_definitions,
      :description,
      :notification_configuration,
      :tags)
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
    #       }
    #
    # @!attribute [rw] s3_data_source
    #   The S3 location of the data source that is associated with a
    #   channel.
    #   @return [Types::S3DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :s3_data_source)
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTagsOutput AWS API Documentation
    #
    class DeleteTagsOutput < Aws::EmptyStructure; end

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
    # [1]: http://docs.aws.amazon.com//AmazonECR/latest/userguide/docker-pull-ecr-image.html
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
    #   The duration allowed for model compilation.
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
      :kms_key_id,
      :creation_time)
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
      :endpoint_status,
      :failure_reason,
      :creation_time,
      :last_modified_time)
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
    #   The name of the tuning job to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeHyperParameterTuningJobRequest AWS API Documentation
    #
    class DescribeHyperParameterTuningJobRequest < Struct.new(
      :hyper_parameter_tuning_job_name)
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
    #   label data objects.
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
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
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
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support
    #   network isolation.
    #
    #    </note>
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #   The condition under which to stop the training job.
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
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support
    #   network isolation.
    #
    #    </note>
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJobResponse AWS API Documentation
    #
    class DescribeTrainingJobResponse < Struct.new(
      :training_job_name,
      :training_job_arn,
      :tuning_job_arn,
      :labeling_job_arn,
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
      :enable_inter_container_traffic_encryption)
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/logging-cloudwatch.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTransformJobResponse AWS API Documentation
    #
    class DescribeTransformJobResponse < Struct.new(
      :transform_job_name,
      :transform_job_arn,
      :transform_job_status,
      :failure_reason,
      :model_name,
      :max_concurrent_transforms,
      :max_payload_in_mb,
      :batch_strategy,
      :environment,
      :transform_input,
      :transform_output,
      :transform_resources,
      :creation_time,
      :transform_start_time,
      :transform_end_time,
      :labeling_job_arn)
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
      include Aws::Structure
    end

    # A conditional statement for a search expression that includes a
    # Boolean operator, a resource property, and a value.
    #
    # If you don't specify an `Operator` and a `Value`, the filter searches
    # for only the specified property. For example, defining a `Filter` for
    # the `FailureReason` for the `TrainingJob` `Resource` searches for
    # training job objects that have a value in the `FailureReason` field.
    #
    # If you specify a `Value`, but not an `Operator`, Amazon SageMaker uses
    # the equals operator as the default.
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
    #   `"Operator": "GREATER_THAN",`
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
    #   ` "Operator": "LESS_THAN",`
    #
    #   ` "Value": "0.5"`
    #
    #   ` \}`
    #
    # Tags
    #
    # : To define a tag filter, enter a value with the form `"Tags.<key>"`.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "ResourcePropertyName", # required
    #         operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
    #         value: "FilterValue",
    #       }
    #
    # @!attribute [rw] name
    #   A property name. For example, `TrainingJobName`. For the list of
    #   valid property names returned in a search result for each supported
    #   resource, see TrainingJob properties. You must specify a valid
    #   property name for the resource.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   A Boolean binary operator that is used to evaluate the filter. The
    #   operator field contains one of the following values:
    #
    #   Equals
    #
    #   : The specified resource in `Name` equals the specified `Value`.
    #
    #   NotEquals
    #
    #   : The specified resource in `Name` does not equal the specified
    #     `Value`.
    #
    #   GreaterThan
    #
    #   : The specified resource in `Name` is greater than the specified
    #     `Value`. Not supported for text-based properties.
    #
    #   GreaterThanOrEqualTo
    #
    #   : The specified resource in `Name` is greater than or equal to the
    #     specified `Value`. Not supported for text-based properties.
    #
    #   LessThan
    #
    #   : The specified resource in `Name` is less than the specified
    #     `Value`. Not supported for text-based properties.
    #
    #   LessThanOrEqualTo
    #
    #   : The specified resource in `Name` is less than or equal to the
    #     specified `Value`. Not supported for text-based properties.
    #
    #   Contains
    #
    #   : Only supported for text-based properties. The word-list of the
    #     property contains the specified `Value`.
    #
    #   If you have specified a filter `Value`, the default is `Equals`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value used with `Resource` and `Operator` to determine if objects
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSearchSuggestionsRequest
    #   data as a hash:
    #
    #       {
    #         resource: "TrainingJob", # required, accepts TrainingJob
    #         suggestion_query: {
    #           property_name_query: {
    #             property_name_hint: "PropertyNameHint", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] resource
    #   The name of the Amazon SageMaker resource to Search for. The only
    #   valid `Resource` value is `TrainingJob`.
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
    #           ui_template_s3_uri: "S3Uri", # required
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
    #   For the built-in bounding box, image classification, semantic
    #   segmentation, and text classification task types, Amazon SageMaker
    #   Ground Truth provides the following Lambda functions:
    #
    #   **US East (Northern Virginia) (us-east-1):**
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-1:432418664414:function:PRE-TextMultiClass`
    #
    #   **US East (Ohio) (us-east-2):**
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-east-2:266458841044:function:PRE-TextMultiClass`
    #
    #   **US West (Oregon) (us-west-2):**
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:us-west-2:081040173940:function:PRE-TextMultiClass`
    #
    #   **EU (Ireland) (eu-west-1):**
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:eu-west-1:568282634449:function:PRE-TextMultiClass`
    #
    #   **Asia Pacific (Tokyo (ap-northeast-1):**
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-TextMultiClass`
    #
    #   **Asia Pacific (Sydney (ap-southeast-1):**
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-BoundingBox`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-ImageMultiClass`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-SemanticSegmentation`
    #
    #   * `arn:aws:lambda:ap-southeast-2:454466003867:function:PRE-TextMultiClass`
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
    #   The length of time that a task remains available for labelling by
    #   human workers.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_task_count
    #   Defines the maximum number of data objects that can be labeled by
    #   human workers at the same time. Each object may have more than one
    #   worker at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] annotation_consolidation_config
    #   Configures how labels are consolidated across human workers.
    #   @return [Types::AnnotationConsolidationConfig]
    #
    # @!attribute [rw] public_workforce_task_price
    #   The price that you pay for each task performed by a public worker.
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
      include Aws::Structure
    end

    # Defines the training jobs launched by a hyperparameter tuning job.
    #
    # @note When making an API call, you may pass HyperParameterTrainingJobDefinition
    #   data as a hash:
    #
    #       {
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
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #           instance_count: 1, # required
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
    #         },
    #         enable_network_isolation: false,
    #         enable_inter_container_traffic_encryption: false,
    #       }
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
    #   Sets a maximum duration for the training jobs that the tuning job
    #   launches. Use this parameter to limit model training costs.
    #
    #   To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM`
    #   signal. This delays job termination for 120 seconds. Algorithms
    #   might use this 120-second window to save the model artifacts.
    #
    #   When Amazon SageMaker terminates a job because the stopping
    #   condition has been met, training algorithms provided by Amazon
    #   SageMaker save the intermediate results of the job.
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
    #
    #   <note markdown="1"> The Semantic Segmentation built-in algorithm does not support
    #   network isolation.
    #
    #    </note>
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTrainingJobDefinition AWS API Documentation
    #
    class HyperParameterTrainingJobDefinition < Struct.new(
      :static_hyper_parameters,
      :algorithm_specification,
      :role_arn,
      :input_data_config,
      :vpc_config,
      :output_data_config,
      :resource_config,
      :stopping_condition,
      :enable_network_isolation,
      :enable_inter_container_traffic_encryption)
      include Aws::Structure
    end

    # Specifies summary information about a training job.
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
    #       }
    #
    # @!attribute [rw] strategy
    #   Specifies how hyperparameter tuning chooses the combinations of
    #   hyperparameter values to use for the training job it launches. To
    #   use the Bayesian search stategy, set this to `Bayesian`. To randomly
    #   search, set it to `Random`. For information about search strategies,
    #   see [How Hyperparameter Tuning Works][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-early-stopping.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTuningJobConfig AWS API Documentation
    #
    class HyperParameterTuningJobConfig < Struct.new(
      :strategy,
      :hyper_parameter_tuning_job_objective,
      :resource_limits,
      :parameter_ranges,
      :training_job_early_stopping_type)
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-warm-start.html
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
    #             image: "Image", # required
    #             image_digest: "ImageDigest",
    #             model_data_url: "Url",
    #             product_id: "ProductId",
    #           },
    #         ],
    #         supported_transform_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
    #         supported_realtime_inference_instance_types: ["ml.t2.medium"], # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #         framework: "TENSORFLOW", # required, accepts TENSORFLOW, MXNET, ONNX, PYTORCH, XGBOOST
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
    #   : Hyperparemeter tuning searches the values in the hyperparameter
    #     range by using a logarithmic scale.
    #
    #     Logarithmic scaling works only for ranges that have only values
    #     greater than 0.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com//sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/IntegerParameterRange AWS API Documentation
    #
    class IntegerParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :scaling_type)
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
    #   @return [String]
    #
    # @!attribute [rw] initial_active_learning_model_arn
    #   At the end of an auto-label job Amazon SageMaker Ground Truth sends
    #   the Amazon Resource Nam (ARN) of the final model used for
    #   auto-labeling. You can use this model as the starting point for
    #   subsequent similar jobs by providing the ARN of the model here.
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
      include Aws::Structure
    end

    # Provides information about the location of input data.
    #
    # @note When making an API call, you may pass LabelingJobDataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_source: { # required
    #           manifest_s3_uri: "S3Uri", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3_data_source
    #   The Amazon S3 location of the input data objects.
    #   @return [Types::LabelingJobS3DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobDataSource AWS API Documentation
    #
    class LabelingJobDataSource < Struct.new(
      :s3_data_source)
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
      include Aws::Structure
    end

    # Input configuration information for a labeling job.
    #
    # @note When making an API call, you may pass LabelingJobInputConfig
    #   data as a hash:
    #
    #       {
    #         data_source: { # required
    #           s3_data_source: { # required
    #             manifest_s3_uri: "S3Uri", # required
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
    #       }
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 location to write output data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service ID of the key used to encrypt the
    #   output data, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobOutputConfig AWS API Documentation
    #
    class LabelingJobOutputConfig < Struct.new(
      :s3_output_path,
      :kms_key_id)
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
    #   The AWS Key Management Service key ID for the key used to encrypt
    #   the output data, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/LabelingJobResourceConfig AWS API Documentation
    #
    class LabelingJobResourceConfig < Struct.new(
      :volume_kms_key_id)
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
      include Aws::Structure
    end

    # A set of conditions for stopping a labeling job. If any of the
    # conditions are met, the job is automatically stopped. You can use
    # these conditions to control the cost of data labeling.
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html
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
    #         status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
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
      include Aws::Structure
    end

    # Defines the Amazon Cognito user group that is part of a work team.
    #
    # @note When making an API call, you may pass MemberDefinition
    #   data as a hash:
    #
    #       {
    #         cognito_member_definition: {
    #           user_pool: "CognitoUserPool", # required
    #           user_group: "CognitoUserGroup", # required
    #           client_id: "CognitoClientId", # required
    #         },
    #       }
    #
    # @!attribute [rw] cognito_member_definition
    #   The Amazon Cognito user group that is part of the work team.
    #   @return [Types::CognitoMemberDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/MemberDefinition AWS API Documentation
    #
    class MemberDefinition < Struct.new(
      :cognito_member_definition)
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
      include Aws::Structure
    end

    # Specifies a metric that the training algorithm writes to `stderr` or
    # `stdout`. Amazon SageMakerhyperparameter tuning captures all defined
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
      include Aws::Structure
    end

    # Provides information about the location that is configured for storing
    # model artifacts.
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
      include Aws::Structure
    end

    # Describes the Docker container for the model package.
    #
    # @note When making an API call, you may pass ModelPackageContainerDefinition
    #   data as a hash:
    #
    #       {
    #         container_hostname: "ContainerHostname",
    #         image: "Image", # required
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
      include Aws::Structure
    end

    # Defines a list of `NestedFilters` objects. To satisfy the conditions
    # specified in the `NestedFilters` call, a resource must satisfy the
    # conditions of all of the filters.
    #
    # For example, you could define a `NestedFilters` using the training
    # job's `InputDataConfig` property to filter on `Channel` objects.
    #
    # A `NestedFilters` object contains multiple filters. For example, to
    # find all training jobs whose name contains `train` and that have
    # `cat/data` in their `S3Uri` (specified in `InputDataConfig`), you need
    # to create a `NestedFilters` object that specifies the
    # `InputDataConfig` property with the following `Filter` objects:
    #
    # * `'\{Name:"InputDataConfig.ChannelName", "Operator":"EQUALS",
    #   "Value":"train"\}',`
    #
    # * `'\{Name:"InputDataConfig.DataSource.S3DataSource.S3Uri",
    #   "Operator":"CONTAINS", "Value":"cat/data"\}'`
    #
    # @note When making an API call, you may pass NestedFilters
    #   data as a hash:
    #
    #       {
    #         nested_property_name: "ResourcePropertyName", # required
    #         filters: [ # required
    #           {
    #             name: "ResourcePropertyName", # required
    #             operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
      include Aws::Structure
    end

    # Contains information about the output location for the compiled model
    # and the device (target) that the model runs on.
    #
    # @note When making an API call, you may pass OutputConfig
    #   data as a hash:
    #
    #       {
    #         s3_output_location: "S3Uri", # required
    #         target_device: "lambda", # required, accepts lambda, ml_m4, ml_m5, ml_c4, ml_c5, ml_p2, ml_p3, jetson_tx1, jetson_tx2, jetson_nano, rasp3b, deeplens, rk3399, rk3288
    #       }
    #
    # @!attribute [rw] s3_output_location
    #   Identifies the S3 path where you want Amazon SageMaker to store the
    #   model artifacts. For example, s3://bucket-name/key-name-prefix.
    #   @return [String]
    #
    # @!attribute [rw] target_device
    #   Identifies the device that you want to run your model on after it
    #   has been compiled. For example: ml\_c5.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :s3_output_location,
      :target_device)
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
    #   If you don't provide a KMS key ID, Amazon SageMaker uses the
    #   default KMS key for Amazon S3 for your role's account. For more
    #   information, see [KMS-Managed Encryption Keys][1] in the *Amazon
    #   Simple Storage Service Developer Guide.*
    #
    #   The KMS key policy must grant permission to the IAM role that you
    #   specify in your `CreateTramsformJob` request. For more information,
    #   see [Using Key Policies in AWS KMS][2] in the *AWS Key Management
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
    #         instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #         initial_variant_weight: 1.0,
    #         accelerator_type: "ml.eia1.medium", # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
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
    #   Amazon SageMaker][1]. For more information, see [Using Elastic
    #   Inference in Amazon SageMaker][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
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
      include Aws::Structure
    end

    # A type of `SuggestionQuery`. A suggestion query for retrieving
    # property names that match the specified hint.
    #
    # @note When making an API call, you may pass PropertyNameQuery
    #   data as a hash:
    #
    #       {
    #         property_name_hint: "PropertyNameHint", # required
    #       }
    #
    # @!attribute [rw] property_name_hint
    #   Text that is part of a property's name. The property names of
    #   hyperparameter, metric, and tag key names that begin with the
    #   specified text in the `PropertyNameHint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/PropertyNameQuery AWS API Documentation
    #
    class PropertyNameQuery < Struct.new(
      :property_name_hint)
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
      include Aws::Structure
    end

    # Defines the amount of money paid to an Amazon Mechanical Turk worker
    # for each task performed.
    #
    # Use one of the following prices for bounding box tasks. Prices are in
    # US dollars.
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
    #   Defines the amount of money paid to a worker in United States
    #   dollars.
    #   @return [Types::USD]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/PublicWorkforceTaskPrice AWS API Documentation
    #
    class PublicWorkforceTaskPrice < Struct.new(
      :amount_in_usd)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RenderUiTemplateRequest
    #   data as a hash:
    #
    #       {
    #         ui_template: { # required
    #           content: "TemplateContent", # required
    #         },
    #         task: { # required
    #           input: "TaskInput", # required
    #         },
    #         role_arn: "RoleArn", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/RenderUiTemplateRequest AWS API Documentation
    #
    class RenderUiTemplateRequest < Struct.new(
      :ui_template,
      :task,
      :role_arn)
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
      include Aws::Structure
    end

    # Describes the resources, including ML compute instances and ML storage
    # volumes, to use for model training.
    #
    # @note When making an API call, you may pass ResourceConfig
    #   data as a hash:
    #
    #       {
    #         instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #   @return [Integer]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ResourceConfig AWS API Documentation
    #
    class ResourceConfig < Struct.new(
      :instance_type,
      :instance_count,
      :volume_size_in_gb,
      :volume_kms_key_id)
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
    #     `s3://bucketname/exampleprefix`.
    #
    #   * A manifest might look like this:
    #     `s3://bucketname/example.manifest`
    #
    #     The manifest is an S3 object which is a JSON file with the
    #     following format:
    #
    #     `[`
    #
    #     ` \{"prefix": "s3://customer_bucket/some/prefix/"\},`
    #
    #     ` "relative/path/to/custdata-1",`
    #
    #     ` "relative/path/custdata-2",`
    #
    #     ` ...`
    #
    #     ` ]`
    #
    #     The preceding JSON matches the following `s3Uris`\:
    #
    #     `s3://customer_bucket/some/prefix/relative/path/to/custdata-1`
    #
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-2`
    #
    #     `...`
    #
    #     The complete set of `s3uris` in this manifest is the input data
    #     for the channel for this datasource. The object that each `s3uris`
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
    #             operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
    #             value: "FilterValue",
    #           },
    #         ],
    #         nested_filters: [
    #           {
    #             nested_property_name: "ResourcePropertyName", # required
    #             filters: [ # required
    #               {
    #                 name: "ResourcePropertyName", # required
    #                 operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
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
    #                 operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
    #                 value: "FilterValue",
    #               },
    #             ],
    #             nested_filters: [
    #               {
    #                 nested_property_name: "ResourcePropertyName", # required
    #                 filters: [ # required
    #                   {
    #                     name: "ResourcePropertyName", # required
    #                     operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
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
      include Aws::Structure
    end

    # An individual search result record that contains a single resource
    # object.
    #
    # @!attribute [rw] training_job
    #   A `TrainingJob` object that is returned as part of a `Search`
    #   request.
    #   @return [Types::TrainingJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SearchRecord AWS API Documentation
    #
    class SearchRecord < Struct.new(
      :training_job)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchRequest
    #   data as a hash:
    #
    #       {
    #         resource: "TrainingJob", # required, accepts TrainingJob
    #         search_expression: {
    #           filters: [
    #             {
    #               name: "ResourcePropertyName", # required
    #               operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
    #               value: "FilterValue",
    #             },
    #           ],
    #           nested_filters: [
    #             {
    #               nested_property_name: "ResourcePropertyName", # required
    #               filters: [ # required
    #                 {
    #                   name: "ResourcePropertyName", # required
    #                   operator: "Equals", # accepts Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains
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
    #   The name of the Amazon SageMaker resource to search for. Currently,
    #   the only valid `Resource` value is `TrainingJob`.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   A Boolean conditional statement. Resource objects must satisfy this
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
    #   If more than `MaxResults` resource objects match the specified
    #   `SearchExpression`, the `SearchResponse` includes a `NextToken`. The
    #   `NextToken` can be passed to the next `SearchRequest` to continue
    #   retrieving results for the specified `SearchExpression` and `Sort`
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a `SearchResponse`.
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
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of `SearchResult` objects.
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
    #   `TrainingJobStatus` and `SecondaryStatus` in
    #   DescribeTrainingJobResponse, and `StatusMessage` together. For
    #   example, at the start of a training job, you might see the
    #   following:
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
    # For Pipe input mode, shuffling is done at the start of every epoch.
    # With large datasets, this ensures that the order of the training data
    # is different for each epoch, and it helps reduce bias and possible
    # overfitting. In a multi-node training job when `ShuffleConfig` is
    # combined with `S3DataDistributionType` of `ShardedByS3Key`, the data
    # is shuffled across nodes so that the content sent to a particular node
    # on the first epoch might be sent to a different node on the second
    # epoch.
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
      include Aws::Structure
    end

    # Specifies how long model training can run. When model training reaches
    # the limit, Amazon SageMaker ends the training job. Use this API to cap
    # model training cost.
    #
    # To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM`
    # signal, which delays job termination for120 seconds. Algorithms might
    # use this 120-second window to save the model artifacts, so the results
    # of training is not lost.
    #
    # Training algorithms provided by Amazon SageMaker automatically saves
    # the intermediate results of a model training job (it is best effort
    # case, as model might not be ready to save as some stages, for example
    # training just started). This intermediate data is a valid model
    # artifact. You can use it to create a model (`CreateModel`).
    #
    # @note When making an API call, you may pass StoppingCondition
    #   data as a hash:
    #
    #       {
    #         max_runtime_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   The maximum length of time, in seconds, that the training job can
    #   run. If model training does not complete during this time, Amazon
    #   SageMaker ends the job. If value is not specified, default value is
    #   1 day. Maximum value is 28 days.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StoppingCondition AWS API Documentation
    #
    class StoppingCondition < Struct.new(
      :max_runtime_in_seconds)
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
      include Aws::Structure
    end

    # Limits the property names that are included in the response.
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
    #   A type of `SuggestionQuery`. Defines a property name hint. Only
    #   property names that match the specified hint are included in the
    #   response.
    #   @return [Types::PropertyNameQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/SuggestionQuery AWS API Documentation
    #
    class SuggestionQuery < Struct.new(
      :property_name_query)
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
    #   The condition under which to stop the training job.
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
      :tags)
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
    #           instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #           instance_count: 1, # required
    #           volume_size_in_gb: 1, # required
    #           volume_kms_key_id: "KmsKeyId",
    #         },
    #         stopping_condition: { # required
    #           max_runtime_in_seconds: 1,
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
    #   Sets a duration for training. Use this parameter to cap model
    #   training costs.
    #
    #   To stop a job, Amazon SageMaker sends the algorithm the SIGTERM
    #   signal, which delays job termination for 120 seconds. Algorithms
    #   might use this 120-second window to save the model artifacts.
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
      include Aws::Structure
    end

    # Defines how the algorithm is used for a training job.
    #
    # @note When making an API call, you may pass TrainingSpecification
    #   data as a hash:
    #
    #       {
    #         training_image: "Image", # required
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
    #         supported_training_instance_types: ["ml.m4.xlarge"], # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
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
    #   set to false, buyers can’t request more than one instance during
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
    #   record-oriented binary data formats.
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
    #    For more information about the RecordIO, see [Data Format][1] in the
    #   MXNet documentation. For more information about the TFRecord, see
    #   [Consuming TFRecord data][2] in the TensorFlow documentation.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://mxnet.io/architecture/note_data_loading.html#data-format
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
    #   If you don't provide a KMS key ID, Amazon SageMaker uses the
    #   default KMS key for Amazon S3 for your role's account. For more
    #   information, see [KMS-Managed Encryption Keys][1] in the *Amazon
    #   Simple Storage Service Developer Guide.*
    #
    #   The KMS key policy must grant permission to the IAM role that you
    #   specify in your `CreateTramsformJob` request. For more information,
    #   see [Using Key Policies in AWS KMS][2] in the *AWS Key Management
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
    #   The ML compute instance type for the transform job. For using
    #   built-in algorithms to transform moderately sized datasets,
    #   ml.m4.xlarge or `ml.m5.large` should suffice. There is no default
    #   value for `InstanceType`.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of ML compute instances to use in the transform job. For
    #   distributed transform, provide a value greater than 1. The default
    #   value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon SageMaker
    #   uses to encrypt data on the storage volume attached to the ML
    #   compute instance(s) that run the batch transform job. The
    #   `VolumeKmsKeyId` can be any of the following formats:
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/TransformResources AWS API Documentation
    #
    class TransformResources < Struct.new(
      :instance_type,
      :instance_count,
      :volume_kms_key_id)
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
    #     `[`
    #
    #     ` \{"prefix": "s3://customer_bucket/some/prefix/"\},`
    #
    #     ` "relative/path/to/custdata-1",`
    #
    #     ` "relative/path/custdata-2",`
    #
    #     ` ...`
    #
    #     ` ]`
    #
    #     The preceding JSON matches the following `S3Uris`\:
    #
    #     `s3://customer_bucket/some/prefix/relative/path/to/custdata-1`
    #
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-1`
    #
    #     `...`
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
      include Aws::Structure
    end

    # Provided configuration information for the worker UI for a labeling
    # job.
    #
    # @note When making an API call, you may pass UiConfig
    #   data as a hash:
    #
    #       {
    #         ui_template_s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] ui_template_s3_uri
    #   The Amazon S3 bucket location of the UI template. For more
    #   information about the contents of a UI template, see [ Creating Your
    #   Custom Labeling Task Template][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates-step2.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UiConfig AWS API Documentation
    #
    class UiConfig < Struct.new(
      :ui_template_s3_uri)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "EndpointName", # required
    #         endpoint_config_name: "EndpointConfigName", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointInput AWS API Documentation
    #
    class UpdateEndpointInput < Struct.new(
      :endpoint_name,
      :endpoint_config_name)
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
    #         accelerator_types: ["ml.eia1.medium"], # accepts ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
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
    #   instance. The default value is 5 GB.
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html
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
    #   instance
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @!attribute [rw] on_start
    #   The shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfigInput AWS API Documentation
    #
    class UpdateNotebookInstanceLifecycleConfigInput < Struct.new(
      :notebook_instance_lifecycle_config_name,
      :on_create,
      :on_start)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfigOutput AWS API Documentation
    #
    class UpdateNotebookInstanceLifecycleConfigOutput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceOutput AWS API Documentation
    #
    class UpdateNotebookInstanceOutput < Aws::EmptyStructure; end

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
    #               client_id: "CognitoClientId", # required
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
    #   A list of `MemberDefinition` objects that contain the updated work
    #   team members.
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
    #   training job or model.
    #
    #   <note markdown="1"> Amazon EC2 P3 accelerated computing instances are not available in
    #   the c/d/e availability zones of region us-east-1. If you want to
    #   create endpoints with P3 instances in VPC mode in region us-east-1,
    #   create subnets in a/b/f availability zones instead.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :security_group_ids,
      :subnets)
      include Aws::Structure
    end

    # Provides details about a labeling work team.
    #
    # @!attribute [rw] workteam_name
    #   The name of the work team.
    #   @return [String]
    #
    # @!attribute [rw] member_definitions
    #   The Amazon Cognito user groups that make up the work team.
    #   @return [Array<Types::MemberDefinition>]
    #
    # @!attribute [rw] workteam_arn
    #   The Amazon Resource Name (ARN) that identifies the work team.
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
      :product_listing_ids,
      :description,
      :sub_domain,
      :create_date,
      :last_updated_date,
      :notification_configuration)
      include Aws::Structure
    end

  end
end

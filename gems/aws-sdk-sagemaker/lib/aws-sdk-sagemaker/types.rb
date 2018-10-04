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
    # see your-algorithms.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateTrainingJob.html
    # [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #
    # @note When making an API call, you may pass AlgorithmSpecification
    #   data as a hash:
    #
    #       {
    #         training_image: "AlgorithmImage", # required
    #         training_input_mode: "Pipe", # required, accepts Pipe, File
    #       }
    #
    # @!attribute [rw] training_image
    #   The registry path of the Docker image that contains the training
    #   algorithm. For information about docker registry paths for built-in
    #   algorithms, see sagemaker-algo-docker-registry-paths.
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AlgorithmSpecification AWS API Documentation
    #
    class AlgorithmSpecification < Struct.new(
      :training_image,
      :training_input_mode)
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

    # A channel is a named input source that training algorithms can
    # consume.
    #
    # @note When making an API call, you may pass Channel
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #             s3_uri: "S3Uri", # required
    #             s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #           },
    #         },
    #         content_type: "ContentType",
    #         compression_type: "None", # accepts None, Gzip
    #         record_wrapper_type: "None", # accepts None, RecordIO
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
    #   the training algorithm requires the RecordIO format, in which case,
    #   Amazon SageMaker wraps each individual S3 object in a RecordIO
    #   record. If the input data is already in RecordIO format, you don't
    #   need to set this attribute. For more information, see [Create a
    #   Dataset Using RecordIO][1].
    #
    #   In FILE mode, leave this field unset or set it to None.
    #
    #
    #
    #
    #
    #   [1]: https://mxnet.incubator.apache.org/architecture/note_data_loading.html#data-format
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :channel_name,
      :data_source,
      :content_type,
      :compression_type,
      :record_wrapper_type)
      include Aws::Structure
    end

    # Describes the container, as part of model definition.
    #
    # @note When making an API call, you may pass ContainerDefinition
    #   data as a hash:
    #
    #       {
    #         container_hostname: "ContainerHostname",
    #         image: "Image", # required
    #         model_data_url: "Url",
    #         environment: {
    #           "EnvironmentKey" => "EnvironmentValue",
    #         },
    #       }
    #
    # @!attribute [rw] container_hostname
    #   The DNS host name for the container after Amazon SageMaker deploys
    #   it.
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html
    #   @return [String]
    #
    # @!attribute [rw] model_data_url
    #   The S3 path where the model artifacts, which result from model
    #   training, are stored. This path must point to a single gzip
    #   compressed tar archive (.tar.gz suffix).
    #
    #   If you provide a value for this parameter, Amazon SageMaker uses AWS
    #   Security Token Service to download model artifacts from the S3 path
    #   you provide. AWS STS is activated in your IAM user account by
    #   default. If you previously deactivated AWS STS for a region, you
    #   need to reactivate AWS STS for that region. For more information,
    #   see [Activating and Deactivating AWS STS i an AWS Region][1] in the
    #   *AWS Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container. Each key
    #   and value in the `Environment` string to string map can have length
    #   of up to 1024. We support up to 16 entries in the map.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContainerDefinition AWS API Documentation
    #
    class ContainerDefinition < Struct.new(
      :container_hostname,
      :image,
      :model_data_url,
      :environment)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ContinuousParameterRange AWS API Documentation
    #
    class ContinuousParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value)
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] production_variants
    #   An array of `ProductionVariant` objects, one for each model that you
    #   want to host at this endpoint.
    #   @return [Array<Types::ProductionVariant>]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1]in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
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
    #           strategy: "Bayesian", # required, accepts Bayesian
    #           hyper_parameter_tuning_job_objective: { # required
    #             type: "Maximize", # required, accepts Maximize, Minimize
    #             metric_name: "MetricName", # required
    #           },
    #           resource_limits: { # required
    #             max_number_of_training_jobs: 1, # required
    #             max_parallel_training_jobs: 1, # required
    #           },
    #           parameter_ranges: { # required
    #             integer_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #               },
    #             ],
    #             continuous_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 min_value: "ParameterValue", # required
    #                 max_value: "ParameterValue", # required
    #               },
    #             ],
    #             categorical_parameter_ranges: [
    #               {
    #                 name: "ParameterKey", # required
    #                 values: ["ParameterValue"], # required
    #               },
    #             ],
    #           },
    #         },
    #         training_job_definition: { # required
    #           static_hyper_parameters: {
    #             "ParameterKey" => "ParameterValue",
    #           },
    #           algorithm_specification: { # required
    #             training_image: "AlgorithmImage", # required
    #             training_input_mode: "Pipe", # required, accepts Pipe, File
    #             metric_definitions: [
    #               {
    #                 name: "MetricName", # required
    #                 regex: "MetricRegex", # required
    #               },
    #             ],
    #           },
    #           role_arn: "RoleArn", # required
    #           input_data_config: [ # required
    #             {
    #               channel_name: "ChannelName", # required
    #               data_source: { # required
    #                 s3_data_source: { # required
    #                   s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #                   s3_uri: "S3Uri", # required
    #                   s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #                 },
    #               },
    #               content_type: "ContentType",
    #               compression_type: "None", # accepts None, Gzip
    #               record_wrapper_type: "None", # accepts None, RecordIO
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
    #   unique within the same AWS account and AWS Region. Names are not
    #   case sensitive, and must be between 1-32 characters.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameter_tuning_job_config
    #   The HyperParameterTuningJobConfig object that describes the tuning
    #   job, including the search strategy, metric used to evaluate training
    #   jobs, ranges of parameters to search, and resource limits for the
    #   tuning job.
    #   @return [Types::HyperParameterTuningJobConfig]
    #
    # @!attribute [rw] training_job_definition
    #   The HyperParameterTrainingJobDefinition object that describes the
    #   training jobs that this tuning job launches, including static
    #   hyperparameters, input data configuration, output data
    #   configuration, resource configuration, and stopping condition.
    #   @return [Types::HyperParameterTrainingJobDefinition]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. You can use tags to categorize your AWS
    #   resources in different ways, for example, by purpose, owner, or
    #   environment. For more information, see [Using Cost Allocation
    #   Tags][1] in the *AWS Billing and Cost Management User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com//awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHyperParameterTuningJobRequest AWS API Documentation
    #
    class CreateHyperParameterTuningJobRequest < Struct.new(
      :hyper_parameter_tuning_job_name,
      :hyper_parameter_tuning_job_config,
      :training_job_definition,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] hyper_parameter_tuning_job_arn
    #   The Amazon Resource Name (ARN) of the tuning job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateHyperParameterTuningJobResponse AWS API Documentation
    #
    class CreateHyperParameterTuningJobResponse < Struct.new(
      :hyper_parameter_tuning_job_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelInput
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #         primary_container: { # required
    #           container_hostname: "ContainerHostname",
    #           image: "Image", # required
    #           model_data_url: "Url",
    #           environment: {
    #             "EnvironmentKey" => "EnvironmentValue",
    #           },
    #         },
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that you want your model
    #   to connect to. Control access to and from your model container by
    #   configuring the VPC. `VpcConfig` is currently used in hosting
    #   services but not in batch transform. For more information, see
    #   host-vpc.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModelInput AWS API Documentation
    #
    class CreateModelInput < Struct.new(
      :model_name,
      :primary_container,
      :execution_role_arn,
      :tags,
      :vpc_config)
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

    # @note When making an API call, you may pass CreateNotebookInstanceInput
    #   data as a hash:
    #
    #       {
    #         notebook_instance_name: "NotebookInstanceName", # required
    #         instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt
    #   data at rest on the ML storage volume that is attached to your
    #   notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the notebook instance. You can add
    #   tags later by using the `CreateTags` API.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see
    #   notebook-lifecycle-config.
    #   @return [String]
    #
    # @!attribute [rw] direct_internet_access
    #   Sets whether Amazon SageMaker provides internet access to the
    #   notebook instance. If you set this to `Disabled` this notebook
    #   instance will be able to access resources only in your VPC, and will
    #   not be able to connect to Amazon SageMaker training and endpoint
    #   services unless your configure a NAT Gateway in your VPC.
    #
    #   For more information, see appendix-notebook-and-internet-access. You
    #   can set the value of this parameter to `Disabled` only if you set a
    #   value for the `SubnetId` parameter.
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
      :direct_internet_access)
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
    #   instance.
    #   @return [Array<Types::NotebookInstanceLifecycleHook>]
    #
    # @!attribute [rw] on_start
    #   A shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance.
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
    #           training_image: "AlgorithmImage", # required
    #           training_input_mode: "Pipe", # required, accepts Pipe, File
    #         },
    #         role_arn: "RoleArn", # required
    #         input_data_config: [ # required
    #           {
    #             channel_name: "ChannelName", # required
    #             data_source: { # required
    #               s3_data_source: { # required
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #                 s3_uri: "S3Uri", # required
    #                 s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             record_wrapper_type: "None", # accepts None, RecordIO
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] algorithm_specification
    #   The registry path of the Docker image that contains the training
    #   algorithm and algorithm-specific metadata, including the input mode.
    #   For more information about algorithms provided by Amazon SageMaker,
    #   see [Algorithms][1]. For information about providing your own
    #   algorithms, see your-algorithms.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
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
    #   container by configuring the VPC. For more information, see
    #   train-vpc
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
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #   @return [Array<Types::Tag>]
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
      :tags)
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
    #               s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #               s3_uri: "S3Uri", # required
    #             },
    #           },
    #           content_type: "ContentType",
    #           compression_type: "None", # accepts None, Gzip
    #           split_type: "None", # accepts None, Line, RecordIO
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
    #   instance in a transform job. This is good for algorithms that
    #   implement multiple workers on larger instances . The default value
    #   is `1`. To allow Amazon SageMaker to determine the appropriate
    #   number for `MaxConcurrentTransforms`, set the value to `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_payload_in_mb
    #   The maximum payload size allowed, in MB. A payload is the data
    #   portion of a record (without metadata). The value in
    #   `MaxPayloadInMB` must be greater or equal to the size of a single
    #   record. You can approximate the size of a record by dividing the
    #   size of your dataset by the number of records. Then multiply this
    #   value by the number of records you want in a mini-batch. It is
    #   recommended to enter a value slightly larger than this to ensure the
    #   records fit within the maximum payload size. The default value is
    #   `6` MB. For an unlimited payload size, set the value to `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_strategy
    #   Determines the number of records included in a single mini-batch.
    #   `SingleRecord` means only one record is used per mini-batch.
    #   `MultiRecord` means a mini-batch is set to contain as many records
    #   that can fit within the `MaxPayloadInMB` limit.
    #
    #   Batch transform will automatically split your input data into
    #   whatever payload size is specified if you set `SplitType` to `Line`
    #   and `BatchStrategy` to `MultiRecord`. There's no need to split the
    #   dataset into smaller files or to use larger payload sizes unless the
    #   records in your dataset are very large.
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
    #   An array of key-value pairs. Adding tags is optional. For more
    #   information, see [Using Cost Allocation Tags][1] in the *AWS Billing
    #   and Cost Management User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
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

    # Describes the location of the channel data.
    #
    # @note When making an API call, you may pass DataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_source: { # required
    #           s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #           s3_uri: "S3Uri", # required
    #           s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
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

    # Gets the Amazon EC2 Container Registry path of the docker image of the
    # model that is hosted in this ProductionVariant.
    #
    # If you used the `registry/repository[:tag]` form to to specify the
    # image path of the primary container when you created the model hosted
    # in this `ProductionVariant`, the path resolves to a path of the form
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
      :failure_reason)
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
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the model.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   A VpcConfig object that specifies the VPC that this model has access
    #   to. For more information, see host-vpc
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModelOutput AWS API Documentation
    #
    class DescribeModelOutput < Struct.new(
      :model_name,
      :primary_container,
      :execution_role_arn,
      :vpc_config,
      :creation_time,
      :model_arn)
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
    #   Name of the Amazon SageMaker notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_status
    #   The status of the notebook instance.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If status is failed, the reason it failed.
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
    #   Amazon Resource Name (ARN) of the IAM role associated with the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it
    #   on the ML storage volume attached to the instance.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   Network interface IDs that Amazon SageMaker created at the time of
    #   creating the instance.
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
    #   see notebook-lifecycle-config.
    #   @return [String]
    #
    # @!attribute [rw] direct_internet_access
    #   Describes whether Amazon SageMaker provides internet access to the
    #   notebook instance. If this value is set to *Disabled, he notebook
    #   instance does not have internet access, and cannot connect to Amazon
    #   SageMaker training and endpoint services*.
    #
    #   For more information, see appendix-notebook-and-internet-access.
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
      :direct_internet_access)
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
    # @!attribute [rw] model_artifacts
    #   Information about the Amazon S3 location that is configured for
    #   storing model artifacts.
    #   @return [Types::ModelArtifacts]
    #
    # @!attribute [rw] training_job_status
    #   The status of the training job.
    #
    #   For the `InProgress` status, Amazon SageMaker can return these
    #   secondary statuses:
    #
    #   * Starting - Preparing for training.
    #
    #   * Downloading - Optional stage for algorithms that support File
    #     training input mode. It indicates data is being downloaded to ML
    #     storage volumes.
    #
    #   * Training - Training is in progress.
    #
    #   * Uploading - Training is complete and model upload is in progress.
    #
    #   For the `Stopped` training status, Amazon SageMaker can return these
    #   secondary statuses:
    #
    #   * MaxRuntimeExceeded - Job stopped as a result of maximum allowed
    #     runtime exceeded.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] secondary_status
    #   Provides granular information about the system state. For more
    #   information, see `TrainingJobStatus`.
    #
    #   * `Starting` - starting the training job.
    #
    #   * `Downloading` - downloading the input data.
    #
    #   * `Training` - model training is in progress.
    #
    #   * `Uploading` - uploading the trained model.
    #
    #   * `Stopping` - stopping the training job.
    #
    #   * `Stopped` - the training job has stopped.
    #
    #   * `MaxRuntimeExceeded` - the training job exceeded the specified max
    #     run time and has been stopped.
    #
    #   * `Completed` - the training job has completed.
    #
    #   * `Failed` - the training job has failed. The failure reason is
    #     stored in the `FailureReason` field of
    #     `DescribeTrainingJobResponse`.
    #
    #   The valid values for `SecondaryStatus` are subject to change. They
    #   primarily provide information on the progress of the training job.
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
    #   access to. For more information, see train-vpc.
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
    #   To give an overview of the training job lifecycle,
    #   `SecondaryStatusTransitions` is a log of time-ordered secondary
    #   statuses that a training job has transitioned.
    #   @return [Array<Types::SecondaryStatusTransition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJobResponse AWS API Documentation
    #
    class DescribeTrainingJobResponse < Struct.new(
      :training_job_name,
      :training_job_arn,
      :tuning_job_arn,
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
      :secondary_status_transitions)
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
    #   If the transform job failed, the reason that it failed.
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
    #   The maximum payload size , in MB used in the transform job.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_strategy
    #   SingleRecord means only one record was used per a batch.
    #   `MultiRecord` means batches contained as many records that could
    #   possibly fit within the `MaxPayloadInMB` limit.
    #   @return [String]
    #
    # @!attribute [rw] environment
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
    #   Indicates when the transform job is `Completed`, `Stopped`, or
    #   `Failed`. You are billed for the time interval between this time and
    #   the value of `TransformStartTime`.
    #   @return [Time]
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
      :transform_end_time)
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

    # Specifies which training algorithm to use for training jobs that a
    # hyperparameter tuning job launches and the metrics to monitor.
    #
    # @note When making an API call, you may pass HyperParameterAlgorithmSpecification
    #   data as a hash:
    #
    #       {
    #         training_image: "AlgorithmImage", # required
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
    #   algorithm. For information about Docker registry paths for built-in
    #   algorithms, see sagemaker-algo-docker-registry-paths.
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
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
      :metric_definitions)
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
    #           training_image: "AlgorithmImage", # required
    #           training_input_mode: "Pipe", # required, accepts Pipe, File
    #           metric_definitions: [
    #             {
    #               name: "MetricName", # required
    #               regex: "MetricRegex", # required
    #             },
    #           ],
    #         },
    #         role_arn: "RoleArn", # required
    #         input_data_config: [ # required
    #           {
    #             channel_name: "ChannelName", # required
    #             data_source: { # required
    #               s3_data_source: { # required
    #                 s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #                 s3_uri: "S3Uri", # required
    #                 s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #               },
    #             },
    #             content_type: "ContentType",
    #             compression_type: "None", # accepts None, Gzip
    #             record_wrapper_type: "None", # accepts None, RecordIO
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
    #       }
    #
    # @!attribute [rw] static_hyper_parameters
    #   Specifies the values of hyperparameters that do not change for the
    #   tuning job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] algorithm_specification
    #   The HyperParameterAlgorithmSpecification object that specifies the
    #   algorithm to use for the training jobs that the tuning job launches.
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
    #   configuring the VPC. For more information, see train-vpc.
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
      :stopping_condition)
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
    # @!attribute [rw] creation_time
    #   The date and time that the training job was created.
    #   @return [Time]
    #
    # @!attribute [rw] training_start_time
    #   The date and time that the training job started.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   The date and time that the training job ended.
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
    #         strategy: "Bayesian", # required, accepts Bayesian
    #         hyper_parameter_tuning_job_objective: { # required
    #           type: "Maximize", # required, accepts Maximize, Minimize
    #           metric_name: "MetricName", # required
    #         },
    #         resource_limits: { # required
    #           max_number_of_training_jobs: 1, # required
    #           max_parallel_training_jobs: 1, # required
    #         },
    #         parameter_ranges: { # required
    #           integer_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #             },
    #           ],
    #           continuous_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               min_value: "ParameterValue", # required
    #               max_value: "ParameterValue", # required
    #             },
    #           ],
    #           categorical_parameter_ranges: [
    #             {
    #               name: "ParameterKey", # required
    #               values: ["ParameterValue"], # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] strategy
    #   Specifies the search strategy for hyperparameters. Currently, the
    #   only valid value is `Bayesian`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/HyperParameterTuningJobConfig AWS API Documentation
    #
    class HyperParameterTuningJobConfig < Struct.new(
      :strategy,
      :hyper_parameter_tuning_job_objective,
      :resource_limits,
      :parameter_ranges)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/IntegerParameterRange AWS API Documentation
    #
    class IntegerParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value)
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
    #   The sort order for results. The default is `Ascending`.
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
    #   A filter that returns only endpoint configurations created after the
    #   specified time (timestamp).
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
    #   The sort order for results. The default is `Ascending`.
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
    #   A filter that returns only endpoints that were created after the
    #   specified time (timestamp).
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
    #   The sort order for results. The default is `Ascending`.
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
    #   A filter that returns only models created after the specified time
    #   (timestamp).
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
      :notebook_instance_lifecycle_config_name_contains)
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

    # Specifies a metric that the training algorithm writes to `stderr` or
    # `stdout`. Amazon SageMakerHyperparamter tuning captures all defined
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
    #   regular expressions to define metrics, see
    #   automatic-model-tuning-define-metrics.
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
    # notebook-lifecycle-config.
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
    #   see notebook-lifecycle-config.
    #   @return [String]
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
      :notebook_instance_lifecycle_config_name)
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
    #   server-side encryption.
    #
    #   <note markdown="1"> If you don't provide the KMS key ID, Amazon SageMaker uses the
    #   default KMS key for Amazon S3 for your role's account. For more
    #   information, see [KMS-Managed Encryption Keys][1] in Amazon Simple
    #   Storage Service developer guide.
    #
    #    </note>
    #
    #   <note markdown="1"> The KMS key policy must grant permission to the IAM role you specify
    #   in your `CreateTrainingJob` request. [Using Key Policies in AWS
    #   KMS][2] in the AWS Key Management Service Developer Guide.
    #
    #    </note>
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

    # Specifies ranges of integer, continuous, and categorical
    # hyperparameters that a hyperparameter tuning job searches.
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
    #           },
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "ParameterKey", # required
    #             min_value: "ParameterValue", # required
    #             max_value: "ParameterValue", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ProductionVariant AWS API Documentation
    #
    class ProductionVariant < Struct.new(
      :variant_name,
      :model_name,
      :initial_instance_count,
      :instance_type,
      :initial_variant_weight)
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
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that run the training job.
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

    # Describes the S3 data source.
    #
    # @note When making an API call, you may pass S3DataSource
    #   data as a hash:
    #
    #       {
    #         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #         s3_uri: "S3Uri", # required
    #         s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #       }
    #
    # @!attribute [rw] s3_data_type
    #   If you choose `S3Prefix`, `S3Uri` identifies a key name prefix.
    #   Amazon SageMaker uses all objects with the specified key name prefix
    #   for model training.
    #
    #   If you choose `ManifestFile`, `S3Uri` identifies an object that is a
    #   manifest file containing a list of object keys that you want Amazon
    #   SageMaker to use for model training.
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
    #     `s3://customer_bucket/some/prefix/relative/path/custdata-1`
    #
    #     `...`
    #
    #     The complete set of `s3uris` in this manifest constitutes the
    #     input data for the channel for this datasource. The object that
    #     each `s3uris` points to must readable by the IAM role that Amazon
    #     SageMaker uses to perform tasks on your behalf.
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
    #   in both FILE and PIPE modes. Keep this in mind when developing
    #   algorithms.
    #
    #   In distributed training, where you use multiple ML compute EC2
    #   instances, you might choose `ShardedByS3Key`. If the algorithm
    #   requires copying training data to the ML storage volume (when
    #   `TrainingInputMode` is set to `File`), this copies 1/*n* of the
    #   number of objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/S3DataSource AWS API Documentation
    #
    class S3DataSource < Struct.new(
      :s3_data_type,
      :s3_uri,
      :s3_data_distribution_type)
      include Aws::Structure
    end

    # Specifies a secondary status the job has transitioned into. It
    # includes a start timestamp and later an end timestamp. The end
    # timestamp is added either after the job transitions to a different
    # secondary status or after the job has ended.
    #
    # @!attribute [rw] status
    #   Provides granular information about the system state. For more
    #   information, see `SecondaryStatus` under the DescribeTrainingJob
    #   response elements.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the training job has entered this
    #   secondary status.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   A timestamp that shows when the secondary status has ended and the
    #   job has transitioned into another secondary status. The `EndTime`
    #   timestamp is also set after the training job has ended.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   Shows a brief description and other information about the secondary
    #   status. For example, the `LaunchingMLInstances` secondary status
    #   could show a status message of "Insufficent capacity error while
    #   launching instances".
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
    #   1 day. Maximum value is 5 days.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StoppingCondition AWS API Documentation
    #
    class StoppingCondition < Struct.new(
      :max_runtime_in_seconds)
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

    # The numbers of training jobs launched by a hyperparameter tuning job,
    # categorized by status.
    #
    # @!attribute [rw] completed
    #   The number of completed training jobs launched by a hyperparameter
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

    # Describes the location of the channel data.
    #
    # @note When making an API call, you may pass TransformDataSource
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
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #             s3_uri: "S3Uri", # required
    #           },
    #         },
    #         content_type: "ContentType",
    #         compression_type: "None", # accepts None, Gzip
    #         split_type: "None", # accepts None, Line, RecordIO
    #       }
    #
    # @!attribute [rw] data_source
    #   Describes the location of the channel data, meaning the S3 location
    #   of the input data that the model can consume.
    #   @return [Types::TransformDataSource]
    #
    # @!attribute [rw] content_type
    #   The multipurpose internet mail extension (MIME) type of the data.
    #   Amazon SageMaker uses the MIME type with each http call to transfer
    #   data to the transform job.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   Compressing data helps save on storage space. If your transform data
    #   is compressed, specify the compression type.and Amazon SageMaker
    #   will automatically decompress the data for the transform job
    #   accordingly. The default value is `None`.
    #   @return [String]
    #
    # @!attribute [rw] split_type
    #   The method to use to split the transform job's data into smaller
    #   batches. The default value is `None`. If you don't want to split
    #   the data, specify `None`. If you want to split records on a newline
    #   character boundary, specify `Line`. To split records according to
    #   the RecordIO format, specify `RecordIO`.
    #
    #   Amazon SageMaker will send maximum number of records per batch in
    #   each request up to the MaxPayloadInMB limit. For more information,
    #   see [RecordIO data format][1].
    #
    #   <note markdown="1"> For information about the `RecordIO` format, see [Data Format][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://mxnet.io/architecture/note_data_loading.html#data-format
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

    # Provides a summary information for a transform job. Multiple
    # TransformJobSummary objects are returned as a list after calling
    # ListTransformJobs.
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

    # Describes the results of a transform job output.
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
    #   For every S3 object used as input for the transform job, the
    #   transformed data is stored in a corresponding subfolder in the
    #   location under the output prefix. For example, the input data
    #   `s3://bucket-name/input-name-prefix/dataset01/data.csv` will have
    #   the transformed data stored at
    #   `s3://bucket-name/key-name-prefix/dataset01/`, based on the original
    #   name, as a series of .part files (.part0001, part0002, etc).
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
    #   S3 object. You should select a format that is most convenient to
    #   you. To concatenate the results in binary format, specify `None`. To
    #   add a newline character at the end of every transformed record,
    #   specify `Line`. To assemble the output in RecordIO format, specify
    #   `RecordIO`. The default value is `None`.
    #
    #   For information about the `RecordIO` format, see [Data Format][1].
    #
    #
    #
    #   [1]: http://mxnet.io/architecture/note_data_loading.html#data-format
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key for Amazon S3
    #   server-side encryption that Amazon SageMaker uses to encrypt the
    #   transformed data.
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
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that run the batch transform
    #   job.
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
    #         s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
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
    #         instance_type: "ml.t2.medium", # accepts ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge
    #         role_arn: "RoleArn",
    #         lifecycle_config_name: "NotebookInstanceLifecycleConfigName",
    #         disassociate_lifecycle_config: false,
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
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see
    #   notebook-lifecycle-config.
    #   @return [String]
    #
    # @!attribute [rw] disassociate_lifecycle_config
    #   Set to `true` to remove the notebook instance lifecycle
    #   configuration currently associated with the notebook instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceInput AWS API Documentation
    #
    class UpdateNotebookInstanceInput < Struct.new(
      :notebook_instance_name,
      :instance_type,
      :role_arn,
      :lifecycle_config_name,
      :disassociate_lifecycle_config)
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

    # Specifies a VPC that your training jobs and hosted models have access
    # to. Control access to and from your training and model containers by
    # configuring the VPC. For more information, see host-vpc and train-vpc.
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
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :security_group_ids,
      :subnets)
      include Aws::Structure
    end

  end
end

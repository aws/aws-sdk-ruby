# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Bedrock
  module Types

    # The request is denied because of missing access permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # CloudWatch logging configuration.
    #
    # @!attribute [rw] log_group_name
    #   The log group name.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN.
    #   @return [String]
    #
    # @!attribute [rw] large_data_delivery_s3_config
    #   S3 configuration for delivering a large amount of data.
    #   @return [Types::S3Config]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CloudWatchConfig AWS API Documentation
    #
    class CloudWatchConfig < Struct.new(
      :log_group_name,
      :role_arn,
      :large_data_delivery_s3_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error occurred because of a conflict while performing an operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   Enter a unique name for the fine-tuning job.
    #   @return [String]
    #
    # @!attribute [rw] custom_model_name
    #   Enter a name for the custom model.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Bedrock
    #   can assume to perform tasks on your behalf. For example, during
    #   model training, Amazon Bedrock needs your permission to read input
    #   data from an S3 bucket, write model artifacts to an S3 bucket. To
    #   pass this role to Amazon Bedrock, the caller of this API must have
    #   the `iam:PassRole` permission.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique token value that you can provide. The
    #   GetModelCustomizationJob response includes the same token value.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] base_model_identifier
    #   Name of the base model.
    #   @return [String]
    #
    # @!attribute [rw] customization_type
    #   The customization type.
    #   @return [String]
    #
    # @!attribute [rw] custom_model_kms_key_id
    #   The custom model is encrypted at rest using this key.
    #   @return [String]
    #
    # @!attribute [rw] job_tags
    #   Assign tags to the job.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] custom_model_tags
    #   Assign tags to the custom model.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] training_data_config
    #   Information about the training dataset.
    #   @return [Types::TrainingDataConfig]
    #
    # @!attribute [rw] validation_data_config
    #   Information about the validation dataset.
    #   @return [Types::ValidationDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   S3 location for the output data.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] hyper_parameters
    #   Parameters related to tuning the model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration (optional). Configuration parameters for the
    #   private Virtual Private Cloud (VPC) that contains the resources you
    #   are using for this job.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelCustomizationJobRequest AWS API Documentation
    #
    class CreateModelCustomizationJobRequest < Struct.new(
      :job_name,
      :custom_model_name,
      :role_arn,
      :client_request_token,
      :base_model_identifier,
      :customization_type,
      :custom_model_kms_key_id,
      :job_tags,
      :custom_model_tags,
      :training_data_config,
      :validation_data_config,
      :output_data_config,
      :hyper_parameters,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   ARN of the fine tuning job
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelCustomizationJobResponse AWS API Documentation
    #
    class CreateModelCustomizationJobResponse < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   Unique token value that you can provide. If this token matches a
    #   previous request, Amazon Bedrock ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] model_units
    #   Number of model units to allocate.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_model_name
    #   Unique name for this provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   Name or ARN of the model to associate with this provisioned
    #   throughput.
    #   @return [String]
    #
    # @!attribute [rw] commitment_duration
    #   Commitment duration requested for the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with this provisioned throughput.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateProvisionedModelThroughputRequest AWS API Documentation
    #
    class CreateProvisionedModelThroughputRequest < Struct.new(
      :client_request_token,
      :model_units,
      :provisioned_model_name,
      :model_id,
      :commitment_duration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_model_arn
    #   The ARN for this provisioned throughput.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateProvisionedModelThroughputResponse AWS API Documentation
    #
    class CreateProvisionedModelThroughputResponse < Struct.new(
      :provisioned_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a custom model.
    #
    # @!attribute [rw] model_arn
    #   The ARN of the custom model.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the custom model.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the model.
    #   @return [Time]
    #
    # @!attribute [rw] base_model_arn
    #   The base model ARN.
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The base model name.
    #   @return [String]
    #
    # @!attribute [rw] customization_type
    #   Specifies whether to carry out continued pre-training of a model or
    #   whether to fine-tune it. For more information, see [Custom
    #   models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CustomModelSummary AWS API Documentation
    #
    class CustomModelSummary < Struct.new(
      :model_arn,
      :model_name,
      :creation_time,
      :base_model_arn,
      :base_model_name,
      :customization_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_identifier
    #   Name of the model to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteCustomModelRequest AWS API Documentation
    #
    class DeleteCustomModelRequest < Struct.new(
      :model_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteCustomModelResponse AWS API Documentation
    #
    class DeleteCustomModelResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteModelInvocationLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteModelInvocationLoggingConfigurationRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteModelInvocationLoggingConfigurationResponse AWS API Documentation
    #
    class DeleteModelInvocationLoggingConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] provisioned_model_id
    #   The ARN or name of the provisioned throughput.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteProvisionedModelThroughputRequest AWS API Documentation
    #
    class DeleteProvisionedModelThroughputRequest < Struct.new(
      :provisioned_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteProvisionedModelThroughputResponse AWS API Documentation
    #
    class DeleteProvisionedModelThroughputResponse < Aws::EmptyStructure; end

    # Information about a foundation model.
    #
    # @!attribute [rw] model_arn
    #   The model ARN.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model identifier.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The model name.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   he model's provider name.
    #   @return [String]
    #
    # @!attribute [rw] input_modalities
    #   The input modalities that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_modalities
    #   The output modalities that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] response_streaming_supported
    #   Indicates whether the model supports streaming.
    #   @return [Boolean]
    #
    # @!attribute [rw] customizations_supported
    #   The customization that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] inference_types_supported
    #   The inference types that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] model_lifecycle
    #   Contains details about whether a model version is available or
    #   deprecated
    #   @return [Types::FoundationModelLifecycle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/FoundationModelDetails AWS API Documentation
    #
    class FoundationModelDetails < Struct.new(
      :model_arn,
      :model_id,
      :model_name,
      :provider_name,
      :input_modalities,
      :output_modalities,
      :response_streaming_supported,
      :customizations_supported,
      :inference_types_supported,
      :model_lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about whether a model version is available or deprecated.
    #
    # @!attribute [rw] status
    #   Specifies whether a model version is available (`ACTIVE`) or
    #   deprecated (`LEGACY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/FoundationModelLifecycle AWS API Documentation
    #
    class FoundationModelLifecycle < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a foundation model.
    #
    # @!attribute [rw] model_arn
    #   The ARN of the foundation model.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model Id of the foundation model.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The model's provider name.
    #   @return [String]
    #
    # @!attribute [rw] input_modalities
    #   The input modalities that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_modalities
    #   The output modalities that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] response_streaming_supported
    #   Indicates whether the model supports streaming.
    #   @return [Boolean]
    #
    # @!attribute [rw] customizations_supported
    #   Whether the model supports fine-tuning or continual pre-training.
    #   @return [Array<String>]
    #
    # @!attribute [rw] inference_types_supported
    #   The inference types that the model supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] model_lifecycle
    #   Contains details about whether a model version is available or
    #   deprecated.
    #   @return [Types::FoundationModelLifecycle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/FoundationModelSummary AWS API Documentation
    #
    class FoundationModelSummary < Struct.new(
      :model_arn,
      :model_id,
      :model_name,
      :provider_name,
      :input_modalities,
      :output_modalities,
      :response_streaming_supported,
      :customizations_supported,
      :inference_types_supported,
      :model_lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_identifier
    #   Name or ARN of the custom model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetCustomModelRequest AWS API Documentation
    #
    class GetCustomModelRequest < Struct.new(
      :model_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   ARN associated with this model.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   Model name associated with this model.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   Job name associated with this model.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   Job ARN associated with this model.
    #   @return [String]
    #
    # @!attribute [rw] base_model_arn
    #   ARN of the base model.
    #   @return [String]
    #
    # @!attribute [rw] customization_type
    #   The type of model customization.
    #   @return [String]
    #
    # @!attribute [rw] model_kms_key_arn
    #   The custom model is encrypted at rest using this key.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   Hyperparameter values associated with this model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_data_config
    #   Information about the training dataset.
    #   @return [Types::TrainingDataConfig]
    #
    # @!attribute [rw] validation_data_config
    #   Array of up to 10 validators.
    #   @return [Types::ValidationDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Output data configuration associated with this custom model.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] training_metrics
    #   The training metrics from the job creation.
    #   @return [Types::TrainingMetrics]
    #
    # @!attribute [rw] validation_metrics
    #   The validation metrics from the job creation.
    #   @return [Array<Types::ValidatorMetric>]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the model.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetCustomModelResponse AWS API Documentation
    #
    class GetCustomModelResponse < Struct.new(
      :model_arn,
      :model_name,
      :job_name,
      :job_arn,
      :base_model_arn,
      :customization_type,
      :model_kms_key_arn,
      :hyper_parameters,
      :training_data_config,
      :validation_data_config,
      :output_data_config,
      :training_metrics,
      :validation_metrics,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_identifier
    #   The model identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetFoundationModelRequest AWS API Documentation
    #
    class GetFoundationModelRequest < Struct.new(
      :model_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_details
    #   Information about the foundation model.
    #   @return [Types::FoundationModelDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetFoundationModelResponse AWS API Documentation
    #
    class GetFoundationModelResponse < Struct.new(
      :model_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_identifier
    #   Identifier for the customization job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelCustomizationJobRequest AWS API Documentation
    #
    class GetModelCustomizationJobRequest < Struct.new(
      :job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the customization job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the customization job.
    #   @return [String]
    #
    # @!attribute [rw] output_model_name
    #   The name of the output model.
    #   @return [String]
    #
    # @!attribute [rw] output_model_arn
    #   The ARN of the output model.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The token that you specified in the CreateCustomizationJob request.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job. A successful job transitions from in-progress
    #   to completed when the output model is ready to use. If the job
    #   failed, the failure message contains information about why the job
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Information about why the job failed.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Time that the resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time that the resource transitioned to terminal state.
    #   @return [Time]
    #
    # @!attribute [rw] base_model_arn
    #   ARN of the base model.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   The hyperparameter values for the job. For information about
    #   hyperparameters for specific models, see [Guidelines for model
    #   customization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-guidelines.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_data_config
    #   S3 Location of the training data.
    #   @return [Types::TrainingDataConfig]
    #
    # @!attribute [rw] validation_data_config
    #   Array of up to 10 validators.
    #   @return [Types::ValidationDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Output data configuration
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] customization_type
    #   The type of model customization.
    #   @return [String]
    #
    # @!attribute [rw] output_model_kms_key_arn
    #   The custom model is encrypted at rest using this key.
    #   @return [String]
    #
    # @!attribute [rw] training_metrics
    #   Metrics associated with the custom job.
    #   @return [Types::TrainingMetrics]
    #
    # @!attribute [rw] validation_metrics
    #   The loss metric for each validator that you provided in the
    #   createjob request.
    #   @return [Array<Types::ValidatorMetric>]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration for the custom model job.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelCustomizationJobResponse AWS API Documentation
    #
    class GetModelCustomizationJobResponse < Struct.new(
      :job_arn,
      :job_name,
      :output_model_name,
      :output_model_arn,
      :client_request_token,
      :role_arn,
      :status,
      :failure_message,
      :creation_time,
      :last_modified_time,
      :end_time,
      :base_model_arn,
      :hyper_parameters,
      :training_data_config,
      :validation_data_config,
      :output_data_config,
      :customization_type,
      :output_model_kms_key_arn,
      :training_metrics,
      :validation_metrics,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelInvocationLoggingConfigurationRequest AWS API Documentation
    #
    class GetModelInvocationLoggingConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] logging_config
    #   The current configuration values.
    #   @return [Types::LoggingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelInvocationLoggingConfigurationResponse AWS API Documentation
    #
    class GetModelInvocationLoggingConfigurationResponse < Struct.new(
      :logging_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_model_id
    #   The ARN or name of the provisioned throughput.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetProvisionedModelThroughputRequest AWS API Documentation
    #
    class GetProvisionedModelThroughputRequest < Struct.new(
      :provisioned_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_units
    #   The current number of model units requested to be available for this
    #   provisioned throughput.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_model_units
    #   The desired number of model units that was requested to be available
    #   for this provisioned throughput.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_model_name
    #   The name of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_model_arn
    #   The ARN of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN or name of the model associated with this provisioned
    #   throughput.
    #   @return [String]
    #
    # @!attribute [rw] desired_model_arn
    #   The ARN of the new model to asssociate with this provisioned
    #   throughput.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model_arn
    #   ARN of the foundation model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp of the creation time for this provisioned throughput.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp of the last modified time of this provisioned
    #   throughput.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   Failure message for any issues that the create operation encounters.
    #   @return [String]
    #
    # @!attribute [rw] commitment_duration
    #   Commitment duration of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] commitment_expiration_time
    #   Commitment expiration time for the provisioned throughput.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetProvisionedModelThroughputResponse AWS API Documentation
    #
    class GetProvisionedModelThroughputResponse < Struct.new(
      :model_units,
      :desired_model_units,
      :provisioned_model_name,
      :provisioned_model_arn,
      :model_arn,
      :desired_model_arn,
      :foundation_model_arn,
      :status,
      :creation_time,
      :last_modified_time,
      :failure_message,
      :commitment_duration,
      :commitment_expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time_before
    #   Return custom models created before the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   Return custom models created after the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] name_contains
    #   Return custom models only if the job name contains these characters.
    #   @return [String]
    #
    # @!attribute [rw] base_model_arn_equals
    #   Return custom models only if the base model ARN matches this
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model_arn_equals
    #   Return custom models only if the foundation model ARN matches this
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by in the returned list of models.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListCustomModelsRequest AWS API Documentation
    #
    class ListCustomModelsRequest < Struct.new(
      :creation_time_before,
      :creation_time_after,
      :name_contains,
      :base_model_arn_equals,
      :foundation_model_arn_equals,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Continuation token for the next request to list the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] model_summaries
    #   Model summaries.
    #   @return [Array<Types::CustomModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListCustomModelsResponse AWS API Documentation
    #
    class ListCustomModelsResponse < Struct.new(
      :next_token,
      :model_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] by_provider
    #   A Amazon Bedrock model provider.
    #   @return [String]
    #
    # @!attribute [rw] by_customization_type
    #   List by customization type.
    #   @return [String]
    #
    # @!attribute [rw] by_output_modality
    #   List by output modality type.
    #   @return [String]
    #
    # @!attribute [rw] by_inference_type
    #   List by inference type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListFoundationModelsRequest AWS API Documentation
    #
    class ListFoundationModelsRequest < Struct.new(
      :by_provider,
      :by_customization_type,
      :by_output_modality,
      :by_inference_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_summaries
    #   A list of Amazon Bedrock foundation models.
    #   @return [Array<Types::FoundationModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListFoundationModelsResponse AWS API Documentation
    #
    class ListFoundationModelsResponse < Struct.new(
      :model_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time_after
    #   Return customization jobs created after the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   Return customization jobs created before the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   Return customization jobs with the specified status.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   Return customization jobs only if the job name contains these
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by in the returned list of jobs.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelCustomizationJobsRequest AWS API Documentation
    #
    class ListModelCustomizationJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Page continuation token to use in the next request.
    #   @return [String]
    #
    # @!attribute [rw] model_customization_job_summaries
    #   Job summaries.
    #   @return [Array<Types::ModelCustomizationJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelCustomizationJobsResponse AWS API Documentation
    #
    class ListModelCustomizationJobsResponse < Struct.new(
      :next_token,
      :model_customization_job_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time_after
    #   Return provisioned capacities created after the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   Return provisioned capacities created before the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] status_equals
    #   Return the list of provisioned capacities that match the specified
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] model_arn_equals
    #   Return the list of provisioned capacities where their model ARN is
    #   equal to this parameter.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   Return the list of provisioned capacities if their name contains
    #   these characters.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   THe maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort by in the returned list of provisioned capacities.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListProvisionedModelThroughputsRequest AWS API Documentation
    #
    class ListProvisionedModelThroughputsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :model_arn_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Continuation token for the next request to list the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_model_summaries
    #   List of summaries, one for each provisioned throughput in the
    #   response.
    #   @return [Array<Types::ProvisionedModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListProvisionedModelThroughputsResponse AWS API Documentation
    #
    class ListProvisionedModelThroughputsResponse < Struct.new(
      :next_token,
      :provisioned_model_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of the tags associated with this resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration fields for invokation logging.
    #
    # @!attribute [rw] cloud_watch_config
    #   CloudWatch logging configuration.
    #   @return [Types::CloudWatchConfig]
    #
    # @!attribute [rw] s3_config
    #   S3 configuration for storing log data.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] text_data_delivery_enabled
    #   Set to include text data in the log delivery.
    #   @return [Boolean]
    #
    # @!attribute [rw] image_data_delivery_enabled
    #   Set to include image data in the log delivery.
    #   @return [Boolean]
    #
    # @!attribute [rw] embedding_data_delivery_enabled
    #   Set to include embeddings data in the log delivery.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/LoggingConfig AWS API Documentation
    #
    class LoggingConfig < Struct.new(
      :cloud_watch_config,
      :s3_config,
      :text_data_delivery_enabled,
      :image_data_delivery_enabled,
      :embedding_data_delivery_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one customization job
    #
    # @!attribute [rw] job_arn
    #   ARN of the customization job.
    #   @return [String]
    #
    # @!attribute [rw] base_model_arn
    #   ARN of the base model.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   Name of the customization job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the customization job.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   Time that the customization job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the custom model.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time that the customization job ended.
    #   @return [Time]
    #
    # @!attribute [rw] custom_model_arn
    #   ARN of the custom model.
    #   @return [String]
    #
    # @!attribute [rw] custom_model_name
    #   Name of the custom model.
    #   @return [String]
    #
    # @!attribute [rw] customization_type
    #   Specifies whether to carry out continued pre-training of a model or
    #   whether to fine-tune it. For more information, see [Custom
    #   models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ModelCustomizationJobSummary AWS API Documentation
    #
    class ModelCustomizationJobSummary < Struct.new(
      :job_arn,
      :base_model_arn,
      :job_name,
      :status,
      :last_modified_time,
      :creation_time,
      :end_time,
      :custom_model_arn,
      :custom_model_name,
      :customization_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 Location of the output data.
    #
    # @!attribute [rw] s3_uri
    #   The S3 URI where the output data is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Set of fields associated with a provisioned throughput.
    #
    # @!attribute [rw] provisioned_model_name
    #   The name of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_model_arn
    #   The ARN of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the model associated with this provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] desired_model_arn
    #   Desired model ARN.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model_arn
    #   Foundation model ARN.
    #   @return [String]
    #
    # @!attribute [rw] model_units
    #   The number of model units allocated.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_model_units
    #   Desired model units.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Status of the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] commitment_duration
    #   Commitment duration for the provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] commitment_expiration_time
    #   Commitment expiration time for the provisioned throughput.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time that this provisioned throughput was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time that this provisioned throughput was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ProvisionedModelSummary AWS API Documentation
    #
    class ProvisionedModelSummary < Struct.new(
      :provisioned_model_name,
      :provisioned_model_arn,
      :model_arn,
      :desired_model_arn,
      :foundation_model_arn,
      :model_units,
      :desired_model_units,
      :status,
      :commitment_duration,
      :commitment_expiration_time,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_config
    #   The logging configuration values to set.
    #   @return [Types::LoggingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/PutModelInvocationLoggingConfigurationRequest AWS API Documentation
    #
    class PutModelInvocationLoggingConfigurationRequest < Struct.new(
      :logging_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/PutModelInvocationLoggingConfigurationResponse AWS API Documentation
    #
    class PutModelInvocationLoggingConfigurationResponse < Aws::EmptyStructure; end

    # The specified resource ARN was not found. Check the ARN and try your
    # request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 configuration for storing log data.
    #
    # @!attribute [rw] bucket_name
    #   S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   S3 prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_name,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeds the service quota. Resubmit your
    # request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_identifier
    #   Job identifier of the job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/StopModelCustomizationJobRequest AWS API Documentation
    #
    class StopModelCustomizationJobRequest < Struct.new(
      :job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/StopModelCustomizationJobResponse AWS API Documentation
    #
    class StopModelCustomizationJobResponse < Aws::EmptyStructure; end

    # Definition of the key/value pair for a tag.
    #
    # @!attribute [rw] key
    #   Key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value for the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The number of requests exceeds the limit. Resubmit your request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains more tags than can be associated with a resource
    # (50 tags per resource). The maximum number of tags includes both
    # existing tags and those included in your current request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource with too many tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 Location of the training data.
    #
    # @!attribute [rw] s3_uri
    #   The S3 URI where the training data is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TrainingDataConfig AWS API Documentation
    #
    class TrainingDataConfig < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics associated with the custom job.
    #
    # @!attribute [rw] training_loss
    #   Loss metric associated with the custom job.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TrainingMetrics AWS API Documentation
    #
    class TrainingMetrics < Struct.new(
      :training_loss)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] provisioned_model_id
    #   The ARN or name of the provisioned throughput to update.
    #   @return [String]
    #
    # @!attribute [rw] desired_provisioned_model_name
    #   The new name for this provisioned throughput.
    #   @return [String]
    #
    # @!attribute [rw] desired_model_id
    #   The ARN of the new model to associate with this provisioned
    #   throughput.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UpdateProvisionedModelThroughputRequest AWS API Documentation
    #
    class UpdateProvisionedModelThroughputRequest < Struct.new(
      :provisioned_model_id,
      :desired_provisioned_model_name,
      :desired_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UpdateProvisionedModelThroughputResponse AWS API Documentation
    #
    class UpdateProvisionedModelThroughputResponse < Aws::EmptyStructure; end

    # Array of up to 10 validators.
    #
    # @!attribute [rw] validators
    #   Information about the validators.
    #   @return [Array<Types::Validator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ValidationDataConfig AWS API Documentation
    #
    class ValidationDataConfig < Struct.new(
      :validators)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input validation failed. Check your request parameters and retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a validator.
    #
    # @!attribute [rw] s3_uri
    #   The S3 URI where the validation data is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/Validator AWS API Documentation
    #
    class Validator < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric for the validator.
    #
    # @!attribute [rw] validation_loss
    #   The validation loss associated with this validator.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ValidatorMetric AWS API Documentation
    #
    class ValidatorMetric < Struct.new(
      :validation_loss)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPC configuration.
    #
    # @!attribute [rw] subnet_ids
    #   VPC configuration subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   VPC configuration security group Ids.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

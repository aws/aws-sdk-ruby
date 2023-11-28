# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Bedrock
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BaseModelIdentifier = Shapes::StringShape.new(name: 'BaseModelIdentifier')
    BedrockModelId = Shapes::StringShape.new(name: 'BedrockModelId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BrandedName = Shapes::StringShape.new(name: 'BrandedName')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CloudWatchConfig = Shapes::StructureShape.new(name: 'CloudWatchConfig')
    CommitmentDuration = Shapes::StringShape.new(name: 'CommitmentDuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'CreateModelCustomizationJobRequest')
    CreateModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'CreateModelCustomizationJobResponse')
    CreateProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'CreateProvisionedModelThroughputRequest')
    CreateProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'CreateProvisionedModelThroughputResponse')
    CustomModelArn = Shapes::StringShape.new(name: 'CustomModelArn')
    CustomModelName = Shapes::StringShape.new(name: 'CustomModelName')
    CustomModelSummary = Shapes::StructureShape.new(name: 'CustomModelSummary')
    CustomModelSummaryList = Shapes::ListShape.new(name: 'CustomModelSummaryList')
    CustomizationType = Shapes::StringShape.new(name: 'CustomizationType')
    DeleteCustomModelRequest = Shapes::StructureShape.new(name: 'DeleteCustomModelRequest')
    DeleteCustomModelResponse = Shapes::StructureShape.new(name: 'DeleteCustomModelResponse')
    DeleteModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteModelInvocationLoggingConfigurationRequest')
    DeleteModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteModelInvocationLoggingConfigurationResponse')
    DeleteProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'DeleteProvisionedModelThroughputRequest')
    DeleteProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'DeleteProvisionedModelThroughputResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FineTuningJobStatus = Shapes::StringShape.new(name: 'FineTuningJobStatus')
    FoundationModelArn = Shapes::StringShape.new(name: 'FoundationModelArn')
    FoundationModelDetails = Shapes::StructureShape.new(name: 'FoundationModelDetails')
    FoundationModelLifecycle = Shapes::StructureShape.new(name: 'FoundationModelLifecycle')
    FoundationModelLifecycleStatus = Shapes::StringShape.new(name: 'FoundationModelLifecycleStatus')
    FoundationModelSummary = Shapes::StructureShape.new(name: 'FoundationModelSummary')
    FoundationModelSummaryList = Shapes::ListShape.new(name: 'FoundationModelSummaryList')
    GetCustomModelRequest = Shapes::StructureShape.new(name: 'GetCustomModelRequest')
    GetCustomModelResponse = Shapes::StructureShape.new(name: 'GetCustomModelResponse')
    GetFoundationModelRequest = Shapes::StructureShape.new(name: 'GetFoundationModelRequest')
    GetFoundationModelResponse = Shapes::StructureShape.new(name: 'GetFoundationModelResponse')
    GetModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'GetModelCustomizationJobRequest')
    GetModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'GetModelCustomizationJobResponse')
    GetModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetModelInvocationLoggingConfigurationRequest')
    GetModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetModelInvocationLoggingConfigurationResponse')
    GetProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'GetProvisionedModelThroughputRequest')
    GetProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'GetProvisionedModelThroughputResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InferenceType = Shapes::StringShape.new(name: 'InferenceType')
    InferenceTypeList = Shapes::ListShape.new(name: 'InferenceTypeList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobName = Shapes::StringShape.new(name: 'JobName')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListCustomModelsRequest = Shapes::StructureShape.new(name: 'ListCustomModelsRequest')
    ListCustomModelsResponse = Shapes::StructureShape.new(name: 'ListCustomModelsResponse')
    ListFoundationModelsRequest = Shapes::StructureShape.new(name: 'ListFoundationModelsRequest')
    ListFoundationModelsResponse = Shapes::StructureShape.new(name: 'ListFoundationModelsResponse')
    ListModelCustomizationJobsRequest = Shapes::StructureShape.new(name: 'ListModelCustomizationJobsRequest')
    ListModelCustomizationJobsResponse = Shapes::StructureShape.new(name: 'ListModelCustomizationJobsResponse')
    ListProvisionedModelThroughputsRequest = Shapes::StructureShape.new(name: 'ListProvisionedModelThroughputsRequest')
    ListProvisionedModelThroughputsResponse = Shapes::StructureShape.new(name: 'ListProvisionedModelThroughputsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricFloat = Shapes::FloatShape.new(name: 'MetricFloat')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelCustomization = Shapes::StringShape.new(name: 'ModelCustomization')
    ModelCustomizationHyperParameters = Shapes::MapShape.new(name: 'ModelCustomizationHyperParameters')
    ModelCustomizationJobArn = Shapes::StringShape.new(name: 'ModelCustomizationJobArn')
    ModelCustomizationJobIdentifier = Shapes::StringShape.new(name: 'ModelCustomizationJobIdentifier')
    ModelCustomizationJobStatus = Shapes::StringShape.new(name: 'ModelCustomizationJobStatus')
    ModelCustomizationJobSummaries = Shapes::ListShape.new(name: 'ModelCustomizationJobSummaries')
    ModelCustomizationJobSummary = Shapes::StructureShape.new(name: 'ModelCustomizationJobSummary')
    ModelCustomizationList = Shapes::ListShape.new(name: 'ModelCustomizationList')
    ModelIdentifier = Shapes::StringShape.new(name: 'ModelIdentifier')
    ModelModality = Shapes::StringShape.new(name: 'ModelModality')
    ModelModalityList = Shapes::ListShape.new(name: 'ModelModalityList')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    Provider = Shapes::StringShape.new(name: 'Provider')
    ProvisionedModelArn = Shapes::StringShape.new(name: 'ProvisionedModelArn')
    ProvisionedModelId = Shapes::StringShape.new(name: 'ProvisionedModelId')
    ProvisionedModelName = Shapes::StringShape.new(name: 'ProvisionedModelName')
    ProvisionedModelStatus = Shapes::StringShape.new(name: 'ProvisionedModelStatus')
    ProvisionedModelSummaries = Shapes::ListShape.new(name: 'ProvisionedModelSummaries')
    ProvisionedModelSummary = Shapes::StructureShape.new(name: 'ProvisionedModelSummary')
    PutModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutModelInvocationLoggingConfigurationRequest')
    PutModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutModelInvocationLoggingConfigurationResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortByProvisionedModels = Shapes::StringShape.new(name: 'SortByProvisionedModels')
    SortJobsBy = Shapes::StringShape.new(name: 'SortJobsBy')
    SortModelsBy = Shapes::StringShape.new(name: 'SortModelsBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StopModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'StopModelCustomizationJobRequest')
    StopModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'StopModelCustomizationJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TrainingDataConfig = Shapes::StructureShape.new(name: 'TrainingDataConfig')
    TrainingMetrics = Shapes::StructureShape.new(name: 'TrainingMetrics')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'UpdateProvisionedModelThroughputRequest')
    UpdateProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'UpdateProvisionedModelThroughputResponse')
    ValidationDataConfig = Shapes::StructureShape.new(name: 'ValidationDataConfig')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationMetrics = Shapes::ListShape.new(name: 'ValidationMetrics')
    Validator = Shapes::StructureShape.new(name: 'Validator')
    ValidatorMetric = Shapes::StructureShape.new(name: 'ValidatorMetric')
    Validators = Shapes::ListShape.new(name: 'Validators')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CloudWatchConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CloudWatchConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CloudWatchConfig.add_member(:large_data_delivery_s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "largeDataDeliveryS3Config"))
    CloudWatchConfig.struct_class = Types::CloudWatchConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateModelCustomizationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "customModelName"))
    CreateModelCustomizationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateModelCustomizationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateModelCustomizationJobRequest.add_member(:base_model_identifier, Shapes::ShapeRef.new(shape: BaseModelIdentifier, required: true, location_name: "baseModelIdentifier"))
    CreateModelCustomizationJobRequest.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customModelKmsKeyId"))
    CreateModelCustomizationJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "customModelTags"))
    CreateModelCustomizationJobRequest.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, required: true, location_name: "hyperParameters"))
    CreateModelCustomizationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelCustomizationJobRequest.struct_class = Types::CreateModelCustomizationJobRequest

    CreateModelCustomizationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    CreateModelCustomizationJobResponse.struct_class = Types::CreateModelCustomizationJobResponse

    CreateProvisionedModelThroughputRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProvisionedModelThroughputRequest.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    CreateProvisionedModelThroughputRequest.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    CreateProvisionedModelThroughputRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location_name: "modelId"))
    CreateProvisionedModelThroughputRequest.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    CreateProvisionedModelThroughputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProvisionedModelThroughputRequest.struct_class = Types::CreateProvisionedModelThroughputRequest

    CreateProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    CreateProvisionedModelThroughputResponse.struct_class = Types::CreateProvisionedModelThroughputResponse

    CustomModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "modelArn"))
    CustomModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    CustomModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    CustomModelSummary.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    CustomModelSummary.add_member(:base_model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "baseModelName"))
    CustomModelSummary.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CustomModelSummary.struct_class = Types::CustomModelSummary

    CustomModelSummaryList.member = Shapes::ShapeRef.new(shape: CustomModelSummary)

    DeleteCustomModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    DeleteCustomModelRequest.struct_class = Types::DeleteCustomModelRequest

    DeleteCustomModelResponse.struct_class = Types::DeleteCustomModelResponse

    DeleteModelInvocationLoggingConfigurationRequest.struct_class = Types::DeleteModelInvocationLoggingConfigurationRequest

    DeleteModelInvocationLoggingConfigurationResponse.struct_class = Types::DeleteModelInvocationLoggingConfigurationResponse

    DeleteProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    DeleteProvisionedModelThroughputRequest.struct_class = Types::DeleteProvisionedModelThroughputRequest

    DeleteProvisionedModelThroughputResponse.struct_class = Types::DeleteProvisionedModelThroughputResponse

    FoundationModelDetails.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "modelArn"))
    FoundationModelDetails.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    FoundationModelDetails.add_member(:model_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelDetails.add_member(:provider_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelDetails.add_member(:input_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelDetails.add_member(:output_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelDetails.add_member(:response_streaming_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "responseStreamingSupported"))
    FoundationModelDetails.add_member(:customizations_supported, Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelDetails.add_member(:inference_types_supported, Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelDetails.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelDetails.struct_class = Types::FoundationModelDetails

    FoundationModelLifecycle.add_member(:status, Shapes::ShapeRef.new(shape: FoundationModelLifecycleStatus, required: true, location_name: "status"))
    FoundationModelLifecycle.struct_class = Types::FoundationModelLifecycle

    FoundationModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "modelArn"))
    FoundationModelSummary.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    FoundationModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelSummary.add_member(:provider_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelSummary.add_member(:input_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelSummary.add_member(:output_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelSummary.add_member(:response_streaming_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "responseStreamingSupported"))
    FoundationModelSummary.add_member(:customizations_supported, Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelSummary.add_member(:inference_types_supported, Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelSummary.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelSummary.struct_class = Types::FoundationModelSummary

    FoundationModelSummaryList.member = Shapes::ShapeRef.new(shape: FoundationModelSummary)

    GetCustomModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetCustomModelRequest.struct_class = Types::GetCustomModelRequest

    GetCustomModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    GetCustomModelResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    GetCustomModelResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetCustomModelResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    GetCustomModelResponse.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    GetCustomModelResponse.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetCustomModelResponse.add_member(:model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    GetCustomModelResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    GetCustomModelResponse.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    GetCustomModelResponse.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    GetCustomModelResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetCustomModelResponse.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetCustomModelResponse.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetCustomModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetCustomModelResponse.struct_class = Types::GetCustomModelResponse

    GetFoundationModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetFoundationModelRequest.struct_class = Types::GetFoundationModelRequest

    GetFoundationModelResponse.add_member(:model_details, Shapes::ShapeRef.new(shape: FoundationModelDetails, location_name: "modelDetails"))
    GetFoundationModelResponse.struct_class = Types::GetFoundationModelResponse

    GetModelCustomizationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetModelCustomizationJobRequest.struct_class = Types::GetModelCustomizationJobRequest

    GetModelCustomizationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    GetModelCustomizationJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    GetModelCustomizationJobResponse.add_member(:output_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "outputModelName"))
    GetModelCustomizationJobResponse.add_member(:output_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "outputModelArn"))
    GetModelCustomizationJobResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken"))
    GetModelCustomizationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetModelCustomizationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, location_name: "status"))
    GetModelCustomizationJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCustomizationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetModelCustomizationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelCustomizationJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelCustomizationJobResponse.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "baseModelArn"))
    GetModelCustomizationJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, required: true, location_name: "hyperParameters"))
    GetModelCustomizationJobResponse.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    GetModelCustomizationJobResponse.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, required: true, location_name: "validationDataConfig"))
    GetModelCustomizationJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetModelCustomizationJobResponse.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetModelCustomizationJobResponse.add_member(:output_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "outputModelKmsKeyArn"))
    GetModelCustomizationJobResponse.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetModelCustomizationJobResponse.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetModelCustomizationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelCustomizationJobResponse.struct_class = Types::GetModelCustomizationJobResponse

    GetModelInvocationLoggingConfigurationRequest.struct_class = Types::GetModelInvocationLoggingConfigurationRequest

    GetModelInvocationLoggingConfigurationResponse.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    GetModelInvocationLoggingConfigurationResponse.struct_class = Types::GetModelInvocationLoggingConfigurationResponse

    GetProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    GetProvisionedModelThroughputRequest.struct_class = Types::GetProvisionedModelThroughputRequest

    GetProvisionedModelThroughputResponse.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "desiredModelUnits"))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "desiredModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:foundation_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "foundationModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, required: true, location_name: "status"))
    GetProvisionedModelThroughputResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetProvisionedModelThroughputResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    GetProvisionedModelThroughputResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    GetProvisionedModelThroughputResponse.struct_class = Types::GetProvisionedModelThroughputResponse

    InferenceTypeList.member = Shapes::ShapeRef.new(shape: InferenceType)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCustomModelsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListCustomModelsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListCustomModelsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: CustomModelName, location: "querystring", location_name: "nameContains"))
    ListCustomModelsRequest.add_member(:base_model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "baseModelArnEquals"))
    ListCustomModelsRequest.add_member(:foundation_model_arn_equals, Shapes::ShapeRef.new(shape: FoundationModelArn, location: "querystring", location_name: "foundationModelArnEquals"))
    ListCustomModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCustomModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCustomModelsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortModelsBy, location: "querystring", location_name: "sortBy"))
    ListCustomModelsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListCustomModelsRequest.struct_class = Types::ListCustomModelsRequest

    ListCustomModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: CustomModelSummaryList, location_name: "modelSummaries"))
    ListCustomModelsResponse.struct_class = Types::ListCustomModelsResponse

    ListFoundationModelsRequest.add_member(:by_provider, Shapes::ShapeRef.new(shape: Provider, location: "querystring", location_name: "byProvider"))
    ListFoundationModelsRequest.add_member(:by_customization_type, Shapes::ShapeRef.new(shape: ModelCustomization, location: "querystring", location_name: "byCustomizationType"))
    ListFoundationModelsRequest.add_member(:by_output_modality, Shapes::ShapeRef.new(shape: ModelModality, location: "querystring", location_name: "byOutputModality"))
    ListFoundationModelsRequest.add_member(:by_inference_type, Shapes::ShapeRef.new(shape: InferenceType, location: "querystring", location_name: "byInferenceType"))
    ListFoundationModelsRequest.struct_class = Types::ListFoundationModelsRequest

    ListFoundationModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: FoundationModelSummaryList, location_name: "modelSummaries"))
    ListFoundationModelsResponse.struct_class = Types::ListFoundationModelsResponse

    ListModelCustomizationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListModelCustomizationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListModelCustomizationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: FineTuningJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelCustomizationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: JobName, location: "querystring", location_name: "nameContains"))
    ListModelCustomizationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelCustomizationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelCustomizationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelCustomizationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelCustomizationJobsRequest.struct_class = Types::ListModelCustomizationJobsRequest

    ListModelCustomizationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCustomizationJobsResponse.add_member(:model_customization_job_summaries, Shapes::ShapeRef.new(shape: ModelCustomizationJobSummaries, location_name: "modelCustomizationJobSummaries"))
    ListModelCustomizationJobsResponse.struct_class = Types::ListModelCustomizationJobsResponse

    ListProvisionedModelThroughputsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListProvisionedModelThroughputsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListProvisionedModelThroughputsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, location: "querystring", location_name: "statusEquals"))
    ListProvisionedModelThroughputsRequest.add_member(:model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "modelArnEquals"))
    ListProvisionedModelThroughputsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ProvisionedModelName, location: "querystring", location_name: "nameContains"))
    ListProvisionedModelThroughputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProvisionedModelThroughputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProvisionedModelThroughputsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByProvisionedModels, location: "querystring", location_name: "sortBy"))
    ListProvisionedModelThroughputsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListProvisionedModelThroughputsRequest.struct_class = Types::ListProvisionedModelThroughputsRequest

    ListProvisionedModelThroughputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProvisionedModelThroughputsResponse.add_member(:provisioned_model_summaries, Shapes::ShapeRef.new(shape: ProvisionedModelSummaries, location_name: "provisionedModelSummaries"))
    ListProvisionedModelThroughputsResponse.struct_class = Types::ListProvisionedModelThroughputsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingConfig.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchConfig, location_name: "cloudWatchConfig"))
    LoggingConfig.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "s3Config"))
    LoggingConfig.add_member(:text_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "textDataDeliveryEnabled"))
    LoggingConfig.add_member(:image_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "imageDataDeliveryEnabled"))
    LoggingConfig.add_member(:embedding_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "embeddingDataDeliveryEnabled"))
    LoggingConfig.struct_class = Types::LoggingConfig

    ModelCustomizationHyperParameters.key = Shapes::ShapeRef.new(shape: String)
    ModelCustomizationHyperParameters.value = Shapes::ShapeRef.new(shape: String)

    ModelCustomizationJobSummaries.member = Shapes::ShapeRef.new(shape: ModelCustomizationJobSummary)

    ModelCustomizationJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    ModelCustomizationJobSummary.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    ModelCustomizationJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    ModelCustomizationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, required: true, location_name: "status"))
    ModelCustomizationJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelCustomizationJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ModelCustomizationJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelCustomizationJobSummary.add_member(:custom_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "customModelArn"))
    ModelCustomizationJobSummary.add_member(:custom_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "customModelName"))
    ModelCustomizationJobSummary.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    ModelCustomizationJobSummary.struct_class = Types::ModelCustomizationJobSummary

    ModelCustomizationList.member = Shapes::ShapeRef.new(shape: ModelCustomization)

    ModelModalityList.member = Shapes::ShapeRef.new(shape: ModelModality)

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ProvisionedModelSummaries.member = Shapes::ShapeRef.new(shape: ProvisionedModelSummary)

    ProvisionedModelSummary.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    ProvisionedModelSummary.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    ProvisionedModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    ProvisionedModelSummary.add_member(:desired_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "desiredModelArn"))
    ProvisionedModelSummary.add_member(:foundation_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "foundationModelArn"))
    ProvisionedModelSummary.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    ProvisionedModelSummary.add_member(:desired_model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "desiredModelUnits"))
    ProvisionedModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, required: true, location_name: "status"))
    ProvisionedModelSummary.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    ProvisionedModelSummary.add_member(:commitment_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    ProvisionedModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ProvisionedModelSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    ProvisionedModelSummary.struct_class = Types::ProvisionedModelSummary

    PutModelInvocationLoggingConfigurationRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, required: true, location_name: "loggingConfig"))
    PutModelInvocationLoggingConfigurationRequest.struct_class = Types::PutModelInvocationLoggingConfigurationRequest

    PutModelInvocationLoggingConfigurationResponse.struct_class = Types::PutModelInvocationLoggingConfigurationResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Config.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Config.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    S3Config.struct_class = Types::S3Config

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StopModelCustomizationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    StopModelCustomizationJobRequest.struct_class = Types::StopModelCustomizationJobRequest

    StopModelCustomizationJobResponse.struct_class = Types::StopModelCustomizationJobResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TrainingDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    TrainingDataConfig.struct_class = Types::TrainingDataConfig

    TrainingMetrics.add_member(:training_loss, Shapes::ShapeRef.new(shape: MetricFloat, location_name: "trainingLoss"))
    TrainingMetrics.struct_class = Types::TrainingMetrics

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "desiredProvisionedModelName"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_model_id, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "desiredModelId"))
    UpdateProvisionedModelThroughputRequest.struct_class = Types::UpdateProvisionedModelThroughputRequest

    UpdateProvisionedModelThroughputResponse.struct_class = Types::UpdateProvisionedModelThroughputResponse

    ValidationDataConfig.add_member(:validators, Shapes::ShapeRef.new(shape: Validators, required: true, location_name: "validators"))
    ValidationDataConfig.struct_class = Types::ValidationDataConfig

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationMetrics.member = Shapes::ShapeRef.new(shape: ValidatorMetric)

    Validator.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    Validator.struct_class = Types::Validator

    ValidatorMetric.add_member(:validation_loss, Shapes::ShapeRef.new(shape: MetricFloat, location_name: "validationLoss"))
    ValidatorMetric.struct_class = Types::ValidatorMetric

    Validators.member = Shapes::ShapeRef.new(shape: Validator)

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "securityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-04-20"

      api.metadata = {
        "apiVersion" => "2023-04-20",
        "endpointPrefix" => "bedrock",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Bedrock",
        "serviceId" => "Bedrock",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-2023-04-20",
      }

      api.add_operation(:create_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelCustomizationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProvisionedModelThroughput"
        o.http_method = "POST"
        o.http_request_uri = "/provisioned-model-throughput"
        o.input = Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/custom-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelInvocationLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisionedModelThroughput"
        o.http_method = "DELETE"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomModel"
        o.http_method = "GET"
        o.http_request_uri = "/custom-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_foundation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFoundationModel"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetFoundationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFoundationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelCustomizationJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization-jobs/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelInvocationLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProvisionedModelThroughput"
        o.http_method = "GET"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_custom_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomModels"
        o.http_method = "GET"
        o.http_request_uri = "/custom-models"
        o.input = Shapes::ShapeRef.new(shape: ListCustomModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_foundation_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFoundationModels"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-models"
        o.input = Shapes::ShapeRef.new(shape: ListFoundationModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFoundationModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_model_customization_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelCustomizationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelCustomizationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelCustomizationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_provisioned_model_throughputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisionedModelThroughputs"
        o.http_method = "GET"
        o.http_request_uri = "/provisioned-model-throughputs"
        o.input = Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/listTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutModelInvocationLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopModelCustomizationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization-jobs/{jobIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProvisionedModelThroughput"
        o.http_method = "PATCH"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end

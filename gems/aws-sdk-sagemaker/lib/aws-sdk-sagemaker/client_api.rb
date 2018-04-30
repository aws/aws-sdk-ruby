# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMaker
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AlgorithmImage = Shapes::StringShape.new(name: 'AlgorithmImage')
    AlgorithmSpecification = Shapes::StructureShape.new(name: 'AlgorithmSpecification')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    CompressionType = Shapes::StringShape.new(name: 'CompressionType')
    ContainerDefinition = Shapes::StructureShape.new(name: 'ContainerDefinition')
    ContainerHostname = Shapes::StringShape.new(name: 'ContainerHostname')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateEndpointConfigInput = Shapes::StructureShape.new(name: 'CreateEndpointConfigInput')
    CreateEndpointConfigOutput = Shapes::StructureShape.new(name: 'CreateEndpointConfigOutput')
    CreateEndpointInput = Shapes::StructureShape.new(name: 'CreateEndpointInput')
    CreateEndpointOutput = Shapes::StructureShape.new(name: 'CreateEndpointOutput')
    CreateModelInput = Shapes::StructureShape.new(name: 'CreateModelInput')
    CreateModelOutput = Shapes::StructureShape.new(name: 'CreateModelOutput')
    CreateNotebookInstanceInput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceInput')
    CreateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceLifecycleConfigInput')
    CreateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceLifecycleConfigOutput')
    CreateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'CreateNotebookInstanceOutput')
    CreatePresignedNotebookInstanceUrlInput = Shapes::StructureShape.new(name: 'CreatePresignedNotebookInstanceUrlInput')
    CreatePresignedNotebookInstanceUrlOutput = Shapes::StructureShape.new(name: 'CreatePresignedNotebookInstanceUrlOutput')
    CreateTrainingJobRequest = Shapes::StructureShape.new(name: 'CreateTrainingJobRequest')
    CreateTrainingJobResponse = Shapes::StructureShape.new(name: 'CreateTrainingJobResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DeleteEndpointConfigInput = Shapes::StructureShape.new(name: 'DeleteEndpointConfigInput')
    DeleteEndpointInput = Shapes::StructureShape.new(name: 'DeleteEndpointInput')
    DeleteModelInput = Shapes::StructureShape.new(name: 'DeleteModelInput')
    DeleteNotebookInstanceInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceInput')
    DeleteNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceLifecycleConfigInput')
    DeleteTagsInput = Shapes::StructureShape.new(name: 'DeleteTagsInput')
    DeleteTagsOutput = Shapes::StructureShape.new(name: 'DeleteTagsOutput')
    DescribeEndpointConfigInput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigInput')
    DescribeEndpointConfigOutput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigOutput')
    DescribeEndpointInput = Shapes::StructureShape.new(name: 'DescribeEndpointInput')
    DescribeEndpointOutput = Shapes::StructureShape.new(name: 'DescribeEndpointOutput')
    DescribeModelInput = Shapes::StructureShape.new(name: 'DescribeModelInput')
    DescribeModelOutput = Shapes::StructureShape.new(name: 'DescribeModelOutput')
    DescribeNotebookInstanceInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceInput')
    DescribeNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigInput')
    DescribeNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigOutput')
    DescribeNotebookInstanceOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceOutput')
    DescribeTrainingJobRequest = Shapes::StructureShape.new(name: 'DescribeTrainingJobRequest')
    DescribeTrainingJobResponse = Shapes::StructureShape.new(name: 'DescribeTrainingJobResponse')
    DesiredWeightAndCapacity = Shapes::StructureShape.new(name: 'DesiredWeightAndCapacity')
    DesiredWeightAndCapacityList = Shapes::ListShape.new(name: 'DesiredWeightAndCapacityList')
    DirectInternetAccess = Shapes::StringShape.new(name: 'DirectInternetAccess')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointConfigArn = Shapes::StringShape.new(name: 'EndpointConfigArn')
    EndpointConfigName = Shapes::StringShape.new(name: 'EndpointConfigName')
    EndpointConfigNameContains = Shapes::StringShape.new(name: 'EndpointConfigNameContains')
    EndpointConfigSortKey = Shapes::StringShape.new(name: 'EndpointConfigSortKey')
    EndpointConfigSummary = Shapes::StructureShape.new(name: 'EndpointConfigSummary')
    EndpointConfigSummaryList = Shapes::ListShape.new(name: 'EndpointConfigSummaryList')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EndpointNameContains = Shapes::StringShape.new(name: 'EndpointNameContains')
    EndpointSortKey = Shapes::StringShape.new(name: 'EndpointSortKey')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    EndpointSummary = Shapes::StructureShape.new(name: 'EndpointSummary')
    EndpointSummaryList = Shapes::ListShape.new(name: 'EndpointSummaryList')
    EnvironmentKey = Shapes::StringShape.new(name: 'EnvironmentKey')
    EnvironmentMap = Shapes::MapShape.new(name: 'EnvironmentMap')
    EnvironmentValue = Shapes::StringShape.new(name: 'EnvironmentValue')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    Image = Shapes::StringShape.new(name: 'Image')
    InputDataConfig = Shapes::ListShape.new(name: 'InputDataConfig')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastModifiedTime = Shapes::TimestampShape.new(name: 'LastModifiedTime')
    ListEndpointConfigsInput = Shapes::StructureShape.new(name: 'ListEndpointConfigsInput')
    ListEndpointConfigsOutput = Shapes::StructureShape.new(name: 'ListEndpointConfigsOutput')
    ListEndpointsInput = Shapes::StructureShape.new(name: 'ListEndpointsInput')
    ListEndpointsOutput = Shapes::StructureShape.new(name: 'ListEndpointsOutput')
    ListModelsInput = Shapes::StructureShape.new(name: 'ListModelsInput')
    ListModelsOutput = Shapes::StructureShape.new(name: 'ListModelsOutput')
    ListNotebookInstanceLifecycleConfigsInput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsInput')
    ListNotebookInstanceLifecycleConfigsOutput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsOutput')
    ListNotebookInstancesInput = Shapes::StructureShape.new(name: 'ListNotebookInstancesInput')
    ListNotebookInstancesOutput = Shapes::StructureShape.new(name: 'ListNotebookInstancesOutput')
    ListTagsInput = Shapes::StructureShape.new(name: 'ListTagsInput')
    ListTagsMaxResults = Shapes::IntegerShape.new(name: 'ListTagsMaxResults')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    ListTrainingJobsRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsRequest')
    ListTrainingJobsResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimeInSeconds')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelArtifacts = Shapes::StructureShape.new(name: 'ModelArtifacts')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelNameContains = Shapes::StringShape.new(name: 'ModelNameContains')
    ModelSortKey = Shapes::StringShape.new(name: 'ModelSortKey')
    ModelSummary = Shapes::StructureShape.new(name: 'ModelSummary')
    ModelSummaryList = Shapes::ListShape.new(name: 'ModelSummaryList')
    NameContains = Shapes::StringShape.new(name: 'NameContains')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotebookInstanceArn = Shapes::StringShape.new(name: 'NotebookInstanceArn')
    NotebookInstanceLifecycleConfigArn = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigArn')
    NotebookInstanceLifecycleConfigContent = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigContent')
    NotebookInstanceLifecycleConfigList = Shapes::ListShape.new(name: 'NotebookInstanceLifecycleConfigList')
    NotebookInstanceLifecycleConfigName = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigName')
    NotebookInstanceLifecycleConfigNameContains = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigNameContains')
    NotebookInstanceLifecycleConfigSortKey = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigSortKey')
    NotebookInstanceLifecycleConfigSortOrder = Shapes::StringShape.new(name: 'NotebookInstanceLifecycleConfigSortOrder')
    NotebookInstanceLifecycleConfigSummary = Shapes::StructureShape.new(name: 'NotebookInstanceLifecycleConfigSummary')
    NotebookInstanceLifecycleConfigSummaryList = Shapes::ListShape.new(name: 'NotebookInstanceLifecycleConfigSummaryList')
    NotebookInstanceLifecycleHook = Shapes::StructureShape.new(name: 'NotebookInstanceLifecycleHook')
    NotebookInstanceName = Shapes::StringShape.new(name: 'NotebookInstanceName')
    NotebookInstanceNameContains = Shapes::StringShape.new(name: 'NotebookInstanceNameContains')
    NotebookInstanceSortKey = Shapes::StringShape.new(name: 'NotebookInstanceSortKey')
    NotebookInstanceSortOrder = Shapes::StringShape.new(name: 'NotebookInstanceSortOrder')
    NotebookInstanceStatus = Shapes::StringShape.new(name: 'NotebookInstanceStatus')
    NotebookInstanceSummary = Shapes::StructureShape.new(name: 'NotebookInstanceSummary')
    NotebookInstanceSummaryList = Shapes::ListShape.new(name: 'NotebookInstanceSummaryList')
    NotebookInstanceUrl = Shapes::StringShape.new(name: 'NotebookInstanceUrl')
    OrderKey = Shapes::StringShape.new(name: 'OrderKey')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ProductionVariant = Shapes::StructureShape.new(name: 'ProductionVariant')
    ProductionVariantInstanceType = Shapes::StringShape.new(name: 'ProductionVariantInstanceType')
    ProductionVariantList = Shapes::ListShape.new(name: 'ProductionVariantList')
    ProductionVariantSummary = Shapes::StructureShape.new(name: 'ProductionVariantSummary')
    ProductionVariantSummaryList = Shapes::ListShape.new(name: 'ProductionVariantSummaryList')
    RecordWrapper = Shapes::StringShape.new(name: 'RecordWrapper')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfig = Shapes::StructureShape.new(name: 'ResourceConfig')
    ResourceInUse = Shapes::StructureShape.new(name: 'ResourceInUse')
    ResourceLimitExceeded = Shapes::StructureShape.new(name: 'ResourceLimitExceeded')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3DataDistribution = Shapes::StringShape.new(name: 'S3DataDistribution')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3DataType = Shapes::StringShape.new(name: 'S3DataType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SecondaryStatus = Shapes::StringShape.new(name: 'SecondaryStatus')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SessionExpirationDurationInSeconds = Shapes::IntegerShape.new(name: 'SessionExpirationDurationInSeconds')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartNotebookInstanceInput = Shapes::StructureShape.new(name: 'StartNotebookInstanceInput')
    StopNotebookInstanceInput = Shapes::StructureShape.new(name: 'StopNotebookInstanceInput')
    StopTrainingJobRequest = Shapes::StructureShape.new(name: 'StopTrainingJobRequest')
    StoppingCondition = Shapes::StructureShape.new(name: 'StoppingCondition')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskCount = Shapes::IntegerShape.new(name: 'TaskCount')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrainingInputMode = Shapes::StringShape.new(name: 'TrainingInputMode')
    TrainingInstanceCount = Shapes::IntegerShape.new(name: 'TrainingInstanceCount')
    TrainingInstanceType = Shapes::StringShape.new(name: 'TrainingInstanceType')
    TrainingJobArn = Shapes::StringShape.new(name: 'TrainingJobArn')
    TrainingJobName = Shapes::StringShape.new(name: 'TrainingJobName')
    TrainingJobStatus = Shapes::StringShape.new(name: 'TrainingJobStatus')
    TrainingJobSummaries = Shapes::ListShape.new(name: 'TrainingJobSummaries')
    TrainingJobSummary = Shapes::StructureShape.new(name: 'TrainingJobSummary')
    UpdateEndpointInput = Shapes::StructureShape.new(name: 'UpdateEndpointInput')
    UpdateEndpointOutput = Shapes::StructureShape.new(name: 'UpdateEndpointOutput')
    UpdateEndpointWeightsAndCapacitiesInput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesInput')
    UpdateEndpointWeightsAndCapacitiesOutput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesOutput')
    UpdateNotebookInstanceInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceInput')
    UpdateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigInput')
    UpdateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigOutput')
    UpdateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceOutput')
    Url = Shapes::StringShape.new(name: 'Url')
    VariantName = Shapes::StringShape.new(name: 'VariantName')
    VariantWeight = Shapes::FloatShape.new(name: 'VariantWeight')
    VolumeSizeInGB = Shapes::IntegerShape.new(name: 'VolumeSizeInGB')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcSecurityGroupIds = Shapes::ListShape.new(name: 'VpcSecurityGroupIds')

    AddTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AddTagsOutput.struct_class = Types::AddTagsOutput

    AlgorithmSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: AlgorithmImage, required: true, location_name: "TrainingImage"))
    AlgorithmSpecification.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    AlgorithmSpecification.struct_class = Types::AlgorithmSpecification

    Channel.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    Channel.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    Channel.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Channel.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    Channel.add_member(:record_wrapper_type, Shapes::ShapeRef.new(shape: RecordWrapper, location_name: "RecordWrapperType"))
    Channel.struct_class = Types::Channel

    ContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    ContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentMap, location_name: "Environment"))
    ContainerDefinition.struct_class = Types::ContainerDefinition

    CreateEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    CreateEndpointConfigInput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantList, required: true, location_name: "ProductionVariants"))
    CreateEndpointConfigInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointConfigInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateEndpointConfigInput.struct_class = Types::CreateEndpointConfigInput

    CreateEndpointConfigOutput.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    CreateEndpointConfigOutput.struct_class = Types::CreateEndpointConfigOutput

    CreateEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    CreateEndpointInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    CreateEndpointInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointInput.struct_class = Types::CreateEndpointInput

    CreateEndpointOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    CreateEndpointOutput.struct_class = Types::CreateEndpointOutput

    CreateModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateModelInput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, required: true, location_name: "PrimaryContainer"))
    CreateModelInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateModelInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelInput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateModelInput.struct_class = Types::CreateModelInput

    CreateModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    CreateModelOutput.struct_class = Types::CreateModelOutput

    CreateNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    CreateNotebookInstanceInput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
    CreateNotebookInstanceInput.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    CreateNotebookInstanceInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateNotebookInstanceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateNotebookInstanceInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateNotebookInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateNotebookInstanceInput.add_member(:lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "LifecycleConfigName"))
    CreateNotebookInstanceInput.add_member(:direct_internet_access, Shapes::ShapeRef.new(shape: DirectInternetAccess, location_name: "DirectInternetAccess"))
    CreateNotebookInstanceInput.struct_class = Types::CreateNotebookInstanceInput

    CreateNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    CreateNotebookInstanceLifecycleConfigInput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    CreateNotebookInstanceLifecycleConfigInput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    CreateNotebookInstanceLifecycleConfigInput.struct_class = Types::CreateNotebookInstanceLifecycleConfigInput

    CreateNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, location_name: "NotebookInstanceLifecycleConfigArn"))
    CreateNotebookInstanceLifecycleConfigOutput.struct_class = Types::CreateNotebookInstanceLifecycleConfigOutput

    CreateNotebookInstanceOutput.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, location_name: "NotebookInstanceArn"))
    CreateNotebookInstanceOutput.struct_class = Types::CreateNotebookInstanceOutput

    CreatePresignedNotebookInstanceUrlInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    CreatePresignedNotebookInstanceUrlInput.add_member(:session_expiration_duration_in_seconds, Shapes::ShapeRef.new(shape: SessionExpirationDurationInSeconds, location_name: "SessionExpirationDurationInSeconds"))
    CreatePresignedNotebookInstanceUrlInput.struct_class = Types::CreatePresignedNotebookInstanceUrlInput

    CreatePresignedNotebookInstanceUrlOutput.add_member(:authorized_url, Shapes::ShapeRef.new(shape: NotebookInstanceUrl, location_name: "AuthorizedUrl"))
    CreatePresignedNotebookInstanceUrlOutput.struct_class = Types::CreatePresignedNotebookInstanceUrlOutput

    CreateTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    CreateTrainingJobRequest.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    CreateTrainingJobRequest.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    CreateTrainingJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateTrainingJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    CreateTrainingJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    CreateTrainingJobRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    CreateTrainingJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateTrainingJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    CreateTrainingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrainingJobRequest.struct_class = Types::CreateTrainingJobRequest

    CreateTrainingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    CreateTrainingJobResponse.struct_class = Types::CreateTrainingJobResponse

    DataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataSource, required: true, location_name: "S3DataSource"))
    DataSource.struct_class = Types::DataSource

    DeleteEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DeleteEndpointConfigInput.struct_class = Types::DeleteEndpointConfigInput

    DeleteEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DeleteEndpointInput.struct_class = Types::DeleteEndpointInput

    DeleteModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DeleteModelInput.struct_class = Types::DeleteModelInput

    DeleteNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    DeleteNotebookInstanceInput.struct_class = Types::DeleteNotebookInstanceInput

    DeleteNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    DeleteNotebookInstanceLifecycleConfigInput.struct_class = Types::DeleteNotebookInstanceLifecycleConfigInput

    DeleteTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsInput.struct_class = Types::DeleteTagsInput

    DeleteTagsOutput.struct_class = Types::DeleteTagsOutput

    DescribeEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointConfigInput.struct_class = Types::DescribeEndpointConfigInput

    DescribeEndpointConfigOutput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointConfigOutput.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    DescribeEndpointConfigOutput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantList, required: true, location_name: "ProductionVariants"))
    DescribeEndpointConfigOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeEndpointConfigOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeEndpointConfigOutput.struct_class = Types::DescribeEndpointConfigOutput

    DescribeEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DescribeEndpointInput.struct_class = Types::DescribeEndpointInput

    DescribeEndpointOutput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DescribeEndpointOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    DescribeEndpointOutput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DescribeEndpointOutput.add_member(:production_variants, Shapes::ShapeRef.new(shape: ProductionVariantSummaryList, location_name: "ProductionVariants"))
    DescribeEndpointOutput.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "EndpointStatus"))
    DescribeEndpointOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeEndpointOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeEndpointOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeEndpointOutput.struct_class = Types::DescribeEndpointOutput

    DescribeModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelInput.struct_class = Types::DescribeModelInput

    DescribeModelOutput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelOutput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, required: true, location_name: "PrimaryContainer"))
    DescribeModelOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    DescribeModelOutput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeModelOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    DescribeModelOutput.struct_class = Types::DescribeModelOutput

    DescribeNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    DescribeNotebookInstanceInput.struct_class = Types::DescribeNotebookInstanceInput

    DescribeNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    DescribeNotebookInstanceLifecycleConfigInput.struct_class = Types::DescribeNotebookInstanceLifecycleConfigInput

    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, location_name: "NotebookInstanceLifecycleConfigArn"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigName"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeNotebookInstanceLifecycleConfigOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeNotebookInstanceLifecycleConfigOutput.struct_class = Types::DescribeNotebookInstanceLifecycleConfigOutput

    DescribeNotebookInstanceOutput.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, location_name: "NotebookInstanceArn"))
    DescribeNotebookInstanceOutput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, location_name: "NotebookInstanceName"))
    DescribeNotebookInstanceOutput.add_member(:notebook_instance_status, Shapes::ShapeRef.new(shape: NotebookInstanceStatus, location_name: "NotebookInstanceStatus"))
    DescribeNotebookInstanceOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeNotebookInstanceOutput.add_member(:url, Shapes::ShapeRef.new(shape: NotebookInstanceUrl, location_name: "Url"))
    DescribeNotebookInstanceOutput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    DescribeNotebookInstanceOutput.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    DescribeNotebookInstanceOutput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroups"))
    DescribeNotebookInstanceOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeNotebookInstanceOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeNotebookInstanceOutput.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    DescribeNotebookInstanceOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeNotebookInstanceOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DescribeNotebookInstanceOutput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigName"))
    DescribeNotebookInstanceOutput.add_member(:direct_internet_access, Shapes::ShapeRef.new(shape: DirectInternetAccess, location_name: "DirectInternetAccess"))
    DescribeNotebookInstanceOutput.struct_class = Types::DescribeNotebookInstanceOutput

    DescribeTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    DescribeTrainingJobRequest.struct_class = Types::DescribeTrainingJobRequest

    DescribeTrainingJobResponse.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    DescribeTrainingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    DescribeTrainingJobResponse.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, required: true, location_name: "ModelArtifacts"))
    DescribeTrainingJobResponse.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    DescribeTrainingJobResponse.add_member(:secondary_status, Shapes::ShapeRef.new(shape: SecondaryStatus, required: true, location_name: "SecondaryStatus"))
    DescribeTrainingJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeTrainingJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    DescribeTrainingJobResponse.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    DescribeTrainingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeTrainingJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    DescribeTrainingJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    DescribeTrainingJobResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    DescribeTrainingJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeTrainingJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    DescribeTrainingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeTrainingJobResponse.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    DescribeTrainingJobResponse.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    DescribeTrainingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeTrainingJobResponse.struct_class = Types::DescribeTrainingJobResponse

    DesiredWeightAndCapacity.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    DesiredWeightAndCapacity.add_member(:desired_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "DesiredWeight"))
    DesiredWeightAndCapacity.add_member(:desired_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "DesiredInstanceCount"))
    DesiredWeightAndCapacity.struct_class = Types::DesiredWeightAndCapacity

    DesiredWeightAndCapacityList.member = Shapes::ShapeRef.new(shape: DesiredWeightAndCapacity)

    EndpointConfigSummary.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    EndpointConfigSummary.add_member(:endpoint_config_arn, Shapes::ShapeRef.new(shape: EndpointConfigArn, required: true, location_name: "EndpointConfigArn"))
    EndpointConfigSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    EndpointConfigSummary.struct_class = Types::EndpointConfigSummary

    EndpointConfigSummaryList.member = Shapes::ShapeRef.new(shape: EndpointConfigSummary)

    EndpointSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    EndpointSummary.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    EndpointSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    EndpointSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    EndpointSummary.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "EndpointStatus"))
    EndpointSummary.struct_class = Types::EndpointSummary

    EndpointSummaryList.member = Shapes::ShapeRef.new(shape: EndpointSummary)

    EnvironmentMap.key = Shapes::ShapeRef.new(shape: EnvironmentKey)
    EnvironmentMap.value = Shapes::ShapeRef.new(shape: EnvironmentValue)

    HyperParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    HyperParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    InputDataConfig.member = Shapes::ShapeRef.new(shape: Channel)

    ListEndpointConfigsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: EndpointConfigSortKey, location_name: "SortBy"))
    ListEndpointConfigsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: OrderKey, location_name: "SortOrder"))
    ListEndpointConfigsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointConfigsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointConfigsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: EndpointConfigNameContains, location_name: "NameContains"))
    ListEndpointConfigsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListEndpointConfigsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListEndpointConfigsInput.struct_class = Types::ListEndpointConfigsInput

    ListEndpointConfigsOutput.add_member(:endpoint_configs, Shapes::ShapeRef.new(shape: EndpointConfigSummaryList, required: true, location_name: "EndpointConfigs"))
    ListEndpointConfigsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointConfigsOutput.struct_class = Types::ListEndpointConfigsOutput

    ListEndpointsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: EndpointSortKey, location_name: "SortBy"))
    ListEndpointsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: OrderKey, location_name: "SortOrder"))
    ListEndpointsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: EndpointNameContains, location_name: "NameContains"))
    ListEndpointsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListEndpointsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListEndpointsInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListEndpointsInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListEndpointsInput.add_member(:status_equals, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "StatusEquals"))
    ListEndpointsInput.struct_class = Types::ListEndpointsInput

    ListEndpointsOutput.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointSummaryList, required: true, location_name: "Endpoints"))
    ListEndpointsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEndpointsOutput.struct_class = Types::ListEndpointsOutput

    ListModelsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ModelSortKey, location_name: "SortBy"))
    ListModelsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: OrderKey, location_name: "SortOrder"))
    ListModelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListModelsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: ModelNameContains, location_name: "NameContains"))
    ListModelsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListModelsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListModelsInput.struct_class = Types::ListModelsInput

    ListModelsOutput.add_member(:models, Shapes::ShapeRef.new(shape: ModelSummaryList, required: true, location_name: "Models"))
    ListModelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListModelsOutput.struct_class = Types::ListModelsOutput

    ListNotebookInstanceLifecycleConfigsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSortKey, location_name: "SortBy"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSortOrder, location_name: "SortOrder"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigNameContains, location_name: "NameContains"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListNotebookInstanceLifecycleConfigsInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListNotebookInstanceLifecycleConfigsInput.struct_class = Types::ListNotebookInstanceLifecycleConfigsInput

    ListNotebookInstanceLifecycleConfigsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstanceLifecycleConfigsOutput.add_member(:notebook_instance_lifecycle_configs, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSummaryList, location_name: "NotebookInstanceLifecycleConfigs"))
    ListNotebookInstanceLifecycleConfigsOutput.struct_class = Types::ListNotebookInstanceLifecycleConfigsOutput

    ListNotebookInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListNotebookInstancesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: NotebookInstanceSortKey, location_name: "SortBy"))
    ListNotebookInstancesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: NotebookInstanceSortOrder, location_name: "SortOrder"))
    ListNotebookInstancesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NotebookInstanceNameContains, location_name: "NameContains"))
    ListNotebookInstancesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListNotebookInstancesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListNotebookInstancesInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListNotebookInstancesInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListNotebookInstancesInput.add_member(:status_equals, Shapes::ShapeRef.new(shape: NotebookInstanceStatus, location_name: "StatusEquals"))
    ListNotebookInstancesInput.add_member(:notebook_instance_lifecycle_config_name_contains, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigNameContains"))
    ListNotebookInstancesInput.struct_class = Types::ListNotebookInstancesInput

    ListNotebookInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstancesOutput.add_member(:notebook_instances, Shapes::ShapeRef.new(shape: NotebookInstanceSummaryList, location_name: "NotebookInstances"))
    ListNotebookInstancesOutput.struct_class = Types::ListNotebookInstancesOutput

    ListTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTagsMaxResults, location_name: "MaxResults"))
    ListTagsInput.struct_class = Types::ListTagsInput

    ListTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsOutput.struct_class = Types::ListTagsOutput

    ListTrainingJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTrainingJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListTrainingJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListTrainingJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListTrainingJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListTrainingJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListTrainingJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: TrainingJobStatus, location_name: "StatusEquals"))
    ListTrainingJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListTrainingJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTrainingJobsRequest.struct_class = Types::ListTrainingJobsRequest

    ListTrainingJobsResponse.add_member(:training_job_summaries, Shapes::ShapeRef.new(shape: TrainingJobSummaries, required: true, location_name: "TrainingJobSummaries"))
    ListTrainingJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsResponse.struct_class = Types::ListTrainingJobsResponse

    ModelArtifacts.add_member(:s3_model_artifacts, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3ModelArtifacts"))
    ModelArtifacts.struct_class = Types::ModelArtifacts

    ModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    ModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    ModelSummary.struct_class = Types::ModelSummary

    ModelSummaryList.member = Shapes::ShapeRef.new(shape: ModelSummary)

    NotebookInstanceLifecycleConfigList.member = Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleHook)

    NotebookInstanceLifecycleConfigSummary.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    NotebookInstanceLifecycleConfigSummary.add_member(:notebook_instance_lifecycle_config_arn, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigArn, required: true, location_name: "NotebookInstanceLifecycleConfigArn"))
    NotebookInstanceLifecycleConfigSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    NotebookInstanceLifecycleConfigSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    NotebookInstanceLifecycleConfigSummary.struct_class = Types::NotebookInstanceLifecycleConfigSummary

    NotebookInstanceLifecycleConfigSummaryList.member = Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigSummary)

    NotebookInstanceLifecycleHook.add_member(:content, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigContent, location_name: "Content"))
    NotebookInstanceLifecycleHook.struct_class = Types::NotebookInstanceLifecycleHook

    NotebookInstanceSummary.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    NotebookInstanceSummary.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NotebookInstanceArn, required: true, location_name: "NotebookInstanceArn"))
    NotebookInstanceSummary.add_member(:notebook_instance_status, Shapes::ShapeRef.new(shape: NotebookInstanceStatus, location_name: "NotebookInstanceStatus"))
    NotebookInstanceSummary.add_member(:url, Shapes::ShapeRef.new(shape: NotebookInstanceUrl, location_name: "Url"))
    NotebookInstanceSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    NotebookInstanceSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    NotebookInstanceSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    NotebookInstanceSummary.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "NotebookInstanceLifecycleConfigName"))
    NotebookInstanceSummary.struct_class = Types::NotebookInstanceSummary

    NotebookInstanceSummaryList.member = Shapes::ShapeRef.new(shape: NotebookInstanceSummary)

    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ProductionVariant.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariant.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ProductionVariant.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: TaskCount, required: true, location_name: "InitialInstanceCount"))
    ProductionVariant.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, required: true, location_name: "InstanceType"))
    ProductionVariant.add_member(:initial_variant_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "InitialVariantWeight"))
    ProductionVariant.struct_class = Types::ProductionVariant

    ProductionVariantList.member = Shapes::ShapeRef.new(shape: ProductionVariant)

    ProductionVariantSummary.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariantSummary.add_member(:current_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "CurrentWeight"))
    ProductionVariantSummary.add_member(:desired_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "DesiredWeight"))
    ProductionVariantSummary.add_member(:current_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "CurrentInstanceCount"))
    ProductionVariantSummary.add_member(:desired_instance_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "DesiredInstanceCount"))
    ProductionVariantSummary.struct_class = Types::ProductionVariantSummary

    ProductionVariantSummaryList.member = Shapes::ShapeRef.new(shape: ProductionVariantSummary)

    ResourceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: TrainingInstanceType, required: true, location_name: "InstanceType"))
    ResourceConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: TrainingInstanceCount, required: true, location_name: "InstanceCount"))
    ResourceConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: VolumeSizeInGB, required: true, location_name: "VolumeSizeInGB"))
    ResourceConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    ResourceConfig.struct_class = Types::ResourceConfig

    S3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3DataSource.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: S3DataDistribution, location_name: "S3DataDistributionType"))
    S3DataSource.struct_class = Types::S3DataSource

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    StartNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StartNotebookInstanceInput.struct_class = Types::StartNotebookInstanceInput

    StopNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StopNotebookInstanceInput.struct_class = Types::StopNotebookInstanceInput

    StopTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    StopTrainingJobRequest.struct_class = Types::StopTrainingJobRequest

    StoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MaxRuntimeInSeconds, location_name: "MaxRuntimeInSeconds"))
    StoppingCondition.struct_class = Types::StoppingCondition

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TrainingJobSummaries.member = Shapes::ShapeRef.new(shape: TrainingJobSummary)

    TrainingJobSummary.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    TrainingJobSummary.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    TrainingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    TrainingJobSummary.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    TrainingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrainingJobSummary.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    TrainingJobSummary.struct_class = Types::TrainingJobSummary

    UpdateEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    UpdateEndpointInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    UpdateEndpointInput.struct_class = Types::UpdateEndpointInput

    UpdateEndpointOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    UpdateEndpointOutput.struct_class = Types::UpdateEndpointOutput

    UpdateEndpointWeightsAndCapacitiesInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    UpdateEndpointWeightsAndCapacitiesInput.add_member(:desired_weights_and_capacities, Shapes::ShapeRef.new(shape: DesiredWeightAndCapacityList, required: true, location_name: "DesiredWeightsAndCapacities"))
    UpdateEndpointWeightsAndCapacitiesInput.struct_class = Types::UpdateEndpointWeightsAndCapacitiesInput

    UpdateEndpointWeightsAndCapacitiesOutput.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "EndpointArn"))
    UpdateEndpointWeightsAndCapacitiesOutput.struct_class = Types::UpdateEndpointWeightsAndCapacitiesOutput

    UpdateNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    UpdateNotebookInstanceInput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    UpdateNotebookInstanceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateNotebookInstanceInput.struct_class = Types::UpdateNotebookInstanceInput

    UpdateNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    UpdateNotebookInstanceLifecycleConfigInput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    UpdateNotebookInstanceLifecycleConfigInput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    UpdateNotebookInstanceLifecycleConfigInput.struct_class = Types::UpdateNotebookInstanceLifecycleConfigInput

    UpdateNotebookInstanceLifecycleConfigOutput.struct_class = Types::UpdateNotebookInstanceLifecycleConfigOutput

    UpdateNotebookInstanceOutput.struct_class = Types::UpdateNotebookInstanceOutput

    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcSecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-24"

      api.metadata = {
        "endpointPrefix" => "sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon SageMaker Service",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "targetPrefix" => "SageMaker",
      }

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
      end)

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_endpoint_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpointConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelInput)
        o.output = Shapes::ShapeRef.new(shape: CreateModelOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNotebookInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNotebookInstanceLifecycleConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:create_presigned_notebook_instance_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePresignedNotebookInstanceUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePresignedNotebookInstanceUrlInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePresignedNotebookInstanceUrlOutput)
      end)

      api.add_operation(:create_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrainingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_endpoint_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpointConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointConfigInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagsOutput)
      end)

      api.add_operation(:describe_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointOutput)
      end)

      api.add_operation(:describe_endpoint_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointConfigInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointConfigOutput)
      end)

      api.add_operation(:describe_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelOutput)
      end)

      api.add_operation(:describe_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceOutput)
      end)

      api.add_operation(:describe_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotebookInstanceLifecycleConfigOutput)
      end)

      api.add_operation(:describe_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrainingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:list_endpoint_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpointConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointConfigsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointConfigsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelsInput)
        o.output = Shapes::ShapeRef.new(shape: ListModelsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notebook_instance_lifecycle_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookInstanceLifecycleConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookInstanceLifecycleConfigsInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookInstanceLifecycleConfigsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notebook_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookInstancesOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_training_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainingJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrainingJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainingJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:stop_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:stop_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTrainingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:update_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_endpoint_weights_and_capacities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpointWeightsAndCapacities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointWeightsAndCapacitiesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointWeightsAndCapacitiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_notebook_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotebookInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:update_notebook_instance_lifecycle_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotebookInstanceLifecycleConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceLifecycleConfigInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotebookInstanceLifecycleConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)
    end

  end
end

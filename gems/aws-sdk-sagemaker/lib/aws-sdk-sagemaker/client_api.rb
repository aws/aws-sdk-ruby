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

    Accept = Shapes::StringShape.new(name: 'Accept')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AlgorithmImage = Shapes::StringShape.new(name: 'AlgorithmImage')
    AlgorithmSpecification = Shapes::StructureShape.new(name: 'AlgorithmSpecification')
    AssemblyType = Shapes::StringShape.new(name: 'AssemblyType')
    BatchStrategy = Shapes::StringShape.new(name: 'BatchStrategy')
    CategoricalParameterRange = Shapes::StructureShape.new(name: 'CategoricalParameterRange')
    CategoricalParameterRanges = Shapes::ListShape.new(name: 'CategoricalParameterRanges')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    CompressionType = Shapes::StringShape.new(name: 'CompressionType')
    ContainerDefinition = Shapes::StructureShape.new(name: 'ContainerDefinition')
    ContainerHostname = Shapes::StringShape.new(name: 'ContainerHostname')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ContinuousParameterRange = Shapes::StructureShape.new(name: 'ContinuousParameterRange')
    ContinuousParameterRanges = Shapes::ListShape.new(name: 'ContinuousParameterRanges')
    CreateEndpointConfigInput = Shapes::StructureShape.new(name: 'CreateEndpointConfigInput')
    CreateEndpointConfigOutput = Shapes::StructureShape.new(name: 'CreateEndpointConfigOutput')
    CreateEndpointInput = Shapes::StructureShape.new(name: 'CreateEndpointInput')
    CreateEndpointOutput = Shapes::StructureShape.new(name: 'CreateEndpointOutput')
    CreateHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobRequest')
    CreateHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobResponse')
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
    CreateTransformJobRequest = Shapes::StructureShape.new(name: 'CreateTransformJobRequest')
    CreateTransformJobResponse = Shapes::StructureShape.new(name: 'CreateTransformJobResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DeleteEndpointConfigInput = Shapes::StructureShape.new(name: 'DeleteEndpointConfigInput')
    DeleteEndpointInput = Shapes::StructureShape.new(name: 'DeleteEndpointInput')
    DeleteModelInput = Shapes::StructureShape.new(name: 'DeleteModelInput')
    DeleteNotebookInstanceInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceInput')
    DeleteNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceLifecycleConfigInput')
    DeleteTagsInput = Shapes::StructureShape.new(name: 'DeleteTagsInput')
    DeleteTagsOutput = Shapes::StructureShape.new(name: 'DeleteTagsOutput')
    DeployedImage = Shapes::StructureShape.new(name: 'DeployedImage')
    DeployedImages = Shapes::ListShape.new(name: 'DeployedImages')
    DescribeEndpointConfigInput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigInput')
    DescribeEndpointConfigOutput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigOutput')
    DescribeEndpointInput = Shapes::StructureShape.new(name: 'DescribeEndpointInput')
    DescribeEndpointOutput = Shapes::StructureShape.new(name: 'DescribeEndpointOutput')
    DescribeHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobRequest')
    DescribeHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobResponse')
    DescribeModelInput = Shapes::StructureShape.new(name: 'DescribeModelInput')
    DescribeModelOutput = Shapes::StructureShape.new(name: 'DescribeModelOutput')
    DescribeNotebookInstanceInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceInput')
    DescribeNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigInput')
    DescribeNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigOutput')
    DescribeNotebookInstanceOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceOutput')
    DescribeTrainingJobRequest = Shapes::StructureShape.new(name: 'DescribeTrainingJobRequest')
    DescribeTrainingJobResponse = Shapes::StructureShape.new(name: 'DescribeTrainingJobResponse')
    DescribeTransformJobRequest = Shapes::StructureShape.new(name: 'DescribeTransformJobRequest')
    DescribeTransformJobResponse = Shapes::StructureShape.new(name: 'DescribeTransformJobResponse')
    DesiredWeightAndCapacity = Shapes::StructureShape.new(name: 'DesiredWeightAndCapacity')
    DesiredWeightAndCapacityList = Shapes::ListShape.new(name: 'DesiredWeightAndCapacityList')
    DirectInternetAccess = Shapes::StringShape.new(name: 'DirectInternetAccess')
    DisassociateNotebookInstanceLifecycleConfig = Shapes::BooleanShape.new(name: 'DisassociateNotebookInstanceLifecycleConfig')
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
    FinalHyperParameterTuningJobObjectiveMetric = Shapes::StructureShape.new(name: 'FinalHyperParameterTuningJobObjectiveMetric')
    HyperParameterAlgorithmSpecification = Shapes::StructureShape.new(name: 'HyperParameterAlgorithmSpecification')
    HyperParameterTrainingJobDefinition = Shapes::StructureShape.new(name: 'HyperParameterTrainingJobDefinition')
    HyperParameterTrainingJobSummaries = Shapes::ListShape.new(name: 'HyperParameterTrainingJobSummaries')
    HyperParameterTrainingJobSummary = Shapes::StructureShape.new(name: 'HyperParameterTrainingJobSummary')
    HyperParameterTuningJobArn = Shapes::StringShape.new(name: 'HyperParameterTuningJobArn')
    HyperParameterTuningJobConfig = Shapes::StructureShape.new(name: 'HyperParameterTuningJobConfig')
    HyperParameterTuningJobName = Shapes::StringShape.new(name: 'HyperParameterTuningJobName')
    HyperParameterTuningJobObjective = Shapes::StructureShape.new(name: 'HyperParameterTuningJobObjective')
    HyperParameterTuningJobObjectiveType = Shapes::StringShape.new(name: 'HyperParameterTuningJobObjectiveType')
    HyperParameterTuningJobSortByOptions = Shapes::StringShape.new(name: 'HyperParameterTuningJobSortByOptions')
    HyperParameterTuningJobStatus = Shapes::StringShape.new(name: 'HyperParameterTuningJobStatus')
    HyperParameterTuningJobStrategyType = Shapes::StringShape.new(name: 'HyperParameterTuningJobStrategyType')
    HyperParameterTuningJobSummaries = Shapes::ListShape.new(name: 'HyperParameterTuningJobSummaries')
    HyperParameterTuningJobSummary = Shapes::StructureShape.new(name: 'HyperParameterTuningJobSummary')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    Image = Shapes::StringShape.new(name: 'Image')
    InputDataConfig = Shapes::ListShape.new(name: 'InputDataConfig')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    IntegerParameterRange = Shapes::StructureShape.new(name: 'IntegerParameterRange')
    IntegerParameterRanges = Shapes::ListShape.new(name: 'IntegerParameterRanges')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastModifiedTime = Shapes::TimestampShape.new(name: 'LastModifiedTime')
    ListEndpointConfigsInput = Shapes::StructureShape.new(name: 'ListEndpointConfigsInput')
    ListEndpointConfigsOutput = Shapes::StructureShape.new(name: 'ListEndpointConfigsOutput')
    ListEndpointsInput = Shapes::StructureShape.new(name: 'ListEndpointsInput')
    ListEndpointsOutput = Shapes::StructureShape.new(name: 'ListEndpointsOutput')
    ListHyperParameterTuningJobsRequest = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsRequest')
    ListHyperParameterTuningJobsResponse = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsResponse')
    ListModelsInput = Shapes::StructureShape.new(name: 'ListModelsInput')
    ListModelsOutput = Shapes::StructureShape.new(name: 'ListModelsOutput')
    ListNotebookInstanceLifecycleConfigsInput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsInput')
    ListNotebookInstanceLifecycleConfigsOutput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsOutput')
    ListNotebookInstancesInput = Shapes::StructureShape.new(name: 'ListNotebookInstancesInput')
    ListNotebookInstancesOutput = Shapes::StructureShape.new(name: 'ListNotebookInstancesOutput')
    ListTagsInput = Shapes::StructureShape.new(name: 'ListTagsInput')
    ListTagsMaxResults = Shapes::IntegerShape.new(name: 'ListTagsMaxResults')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    ListTrainingJobsForHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsForHyperParameterTuningJobRequest')
    ListTrainingJobsForHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsForHyperParameterTuningJobResponse')
    ListTrainingJobsRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsRequest')
    ListTrainingJobsResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsResponse')
    ListTransformJobsRequest = Shapes::StructureShape.new(name: 'ListTransformJobsRequest')
    ListTransformJobsResponse = Shapes::StructureShape.new(name: 'ListTransformJobsResponse')
    MaxConcurrentTransforms = Shapes::IntegerShape.new(name: 'MaxConcurrentTransforms')
    MaxNumberOfTrainingJobs = Shapes::IntegerShape.new(name: 'MaxNumberOfTrainingJobs')
    MaxParallelTrainingJobs = Shapes::IntegerShape.new(name: 'MaxParallelTrainingJobs')
    MaxPayloadInMB = Shapes::IntegerShape.new(name: 'MaxPayloadInMB')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimeInSeconds')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionList = Shapes::ListShape.new(name: 'MetricDefinitionList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricRegex = Shapes::StringShape.new(name: 'MetricRegex')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
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
    ObjectiveStatus = Shapes::StringShape.new(name: 'ObjectiveStatus')
    ObjectiveStatusCounter = Shapes::IntegerShape.new(name: 'ObjectiveStatusCounter')
    ObjectiveStatusCounters = Shapes::StructureShape.new(name: 'ObjectiveStatusCounters')
    OrderKey = Shapes::StringShape.new(name: 'OrderKey')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterRanges = Shapes::StructureShape.new(name: 'ParameterRanges')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParameterValues = Shapes::ListShape.new(name: 'ParameterValues')
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
    ResourceLimits = Shapes::StructureShape.new(name: 'ResourceLimits')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3DataDistribution = Shapes::StringShape.new(name: 'S3DataDistribution')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3DataType = Shapes::StringShape.new(name: 'S3DataType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SecondaryStatus = Shapes::StringShape.new(name: 'SecondaryStatus')
    SecondaryStatusTransition = Shapes::StructureShape.new(name: 'SecondaryStatusTransition')
    SecondaryStatusTransitions = Shapes::ListShape.new(name: 'SecondaryStatusTransitions')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SessionExpirationDurationInSeconds = Shapes::IntegerShape.new(name: 'SessionExpirationDurationInSeconds')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SplitType = Shapes::StringShape.new(name: 'SplitType')
    StartNotebookInstanceInput = Shapes::StructureShape.new(name: 'StartNotebookInstanceInput')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'StopHyperParameterTuningJobRequest')
    StopNotebookInstanceInput = Shapes::StructureShape.new(name: 'StopNotebookInstanceInput')
    StopTrainingJobRequest = Shapes::StructureShape.new(name: 'StopTrainingJobRequest')
    StopTransformJobRequest = Shapes::StructureShape.new(name: 'StopTransformJobRequest')
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
    TrainingJobSortByOptions = Shapes::StringShape.new(name: 'TrainingJobSortByOptions')
    TrainingJobStatus = Shapes::StringShape.new(name: 'TrainingJobStatus')
    TrainingJobStatusCounter = Shapes::IntegerShape.new(name: 'TrainingJobStatusCounter')
    TrainingJobStatusCounters = Shapes::StructureShape.new(name: 'TrainingJobStatusCounters')
    TrainingJobSummaries = Shapes::ListShape.new(name: 'TrainingJobSummaries')
    TrainingJobSummary = Shapes::StructureShape.new(name: 'TrainingJobSummary')
    TransformDataSource = Shapes::StructureShape.new(name: 'TransformDataSource')
    TransformEnvironmentKey = Shapes::StringShape.new(name: 'TransformEnvironmentKey')
    TransformEnvironmentMap = Shapes::MapShape.new(name: 'TransformEnvironmentMap')
    TransformEnvironmentValue = Shapes::StringShape.new(name: 'TransformEnvironmentValue')
    TransformInput = Shapes::StructureShape.new(name: 'TransformInput')
    TransformInstanceCount = Shapes::IntegerShape.new(name: 'TransformInstanceCount')
    TransformInstanceType = Shapes::StringShape.new(name: 'TransformInstanceType')
    TransformJobArn = Shapes::StringShape.new(name: 'TransformJobArn')
    TransformJobName = Shapes::StringShape.new(name: 'TransformJobName')
    TransformJobStatus = Shapes::StringShape.new(name: 'TransformJobStatus')
    TransformJobSummaries = Shapes::ListShape.new(name: 'TransformJobSummaries')
    TransformJobSummary = Shapes::StructureShape.new(name: 'TransformJobSummary')
    TransformOutput = Shapes::StructureShape.new(name: 'TransformOutput')
    TransformResources = Shapes::StructureShape.new(name: 'TransformResources')
    TransformS3DataSource = Shapes::StructureShape.new(name: 'TransformS3DataSource')
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

    CategoricalParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    CategoricalParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRange.struct_class = Types::CategoricalParameterRange

    CategoricalParameterRanges.member = Shapes::ShapeRef.new(shape: CategoricalParameterRange)

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

    ContinuousParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    ContinuousParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRange.struct_class = Types::ContinuousParameterRange

    ContinuousParameterRanges.member = Shapes::ShapeRef.new(shape: ContinuousParameterRange)

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

    CreateHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    CreateHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobConfig, required: true, location_name: "HyperParameterTuningJobConfig"))
    CreateHyperParameterTuningJobRequest.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition, required: true, location_name: "TrainingJobDefinition"))
    CreateHyperParameterTuningJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHyperParameterTuningJobRequest.struct_class = Types::CreateHyperParameterTuningJobRequest

    CreateHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    CreateHyperParameterTuningJobResponse.struct_class = Types::CreateHyperParameterTuningJobResponse

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

    CreateTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    CreateTransformJobRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateTransformJobRequest.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    CreateTransformJobRequest.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    CreateTransformJobRequest.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    CreateTransformJobRequest.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    CreateTransformJobRequest.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, required: true, location_name: "TransformInput"))
    CreateTransformJobRequest.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, required: true, location_name: "TransformOutput"))
    CreateTransformJobRequest.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, required: true, location_name: "TransformResources"))
    CreateTransformJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTransformJobRequest.struct_class = Types::CreateTransformJobRequest

    CreateTransformJobResponse.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, required: true, location_name: "TransformJobArn"))
    CreateTransformJobResponse.struct_class = Types::CreateTransformJobResponse

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

    DeployedImage.add_member(:specified_image, Shapes::ShapeRef.new(shape: Image, location_name: "SpecifiedImage"))
    DeployedImage.add_member(:resolved_image, Shapes::ShapeRef.new(shape: Image, location_name: "ResolvedImage"))
    DeployedImage.add_member(:resolution_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResolutionTime"))
    DeployedImage.struct_class = Types::DeployedImage

    DeployedImages.member = Shapes::ShapeRef.new(shape: DeployedImage)

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

    DescribeHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    DescribeHyperParameterTuningJobRequest.struct_class = Types::DescribeHyperParameterTuningJobRequest

    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobConfig, required: true, location_name: "HyperParameterTuningJobConfig"))
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition, required: true, location_name: "TrainingJobDefinition"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_status, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, required: true, location_name: "HyperParameterTuningJobStatus"))
    DescribeHyperParameterTuningJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "HyperParameterTuningEndTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_status_counters, Shapes::ShapeRef.new(shape: TrainingJobStatusCounters, required: true, location_name: "TrainingJobStatusCounters"))
    DescribeHyperParameterTuningJobResponse.add_member(:objective_status_counters, Shapes::ShapeRef.new(shape: ObjectiveStatusCounters, required: true, location_name: "ObjectiveStatusCounters"))
    DescribeHyperParameterTuningJobResponse.add_member(:best_training_job, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary, location_name: "BestTrainingJob"))
    DescribeHyperParameterTuningJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeHyperParameterTuningJobResponse.struct_class = Types::DescribeHyperParameterTuningJobResponse

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
    DescribeTrainingJobResponse.add_member(:tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, location_name: "TuningJobArn"))
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
    DescribeTrainingJobResponse.add_member(:secondary_status_transitions, Shapes::ShapeRef.new(shape: SecondaryStatusTransitions, location_name: "SecondaryStatusTransitions"))
    DescribeTrainingJobResponse.struct_class = Types::DescribeTrainingJobResponse

    DescribeTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    DescribeTransformJobRequest.struct_class = Types::DescribeTransformJobRequest

    DescribeTransformJobResponse.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    DescribeTransformJobResponse.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, required: true, location_name: "TransformJobArn"))
    DescribeTransformJobResponse.add_member(:transform_job_status, Shapes::ShapeRef.new(shape: TransformJobStatus, required: true, location_name: "TransformJobStatus"))
    DescribeTransformJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeTransformJobResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeTransformJobResponse.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    DescribeTransformJobResponse.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    DescribeTransformJobResponse.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    DescribeTransformJobResponse.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    DescribeTransformJobResponse.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, required: true, location_name: "TransformInput"))
    DescribeTransformJobResponse.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, location_name: "TransformOutput"))
    DescribeTransformJobResponse.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, required: true, location_name: "TransformResources"))
    DescribeTransformJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeTransformJobResponse.add_member(:transform_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformStartTime"))
    DescribeTransformJobResponse.add_member(:transform_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformEndTime"))
    DescribeTransformJobResponse.struct_class = Types::DescribeTransformJobResponse

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

    FinalHyperParameterTuningJobObjectiveMetric.add_member(:type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectiveType, location_name: "Type"))
    FinalHyperParameterTuningJobObjectiveMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    FinalHyperParameterTuningJobObjectiveMetric.add_member(:value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "Value"))
    FinalHyperParameterTuningJobObjectiveMetric.struct_class = Types::FinalHyperParameterTuningJobObjectiveMetric

    HyperParameterAlgorithmSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: AlgorithmImage, required: true, location_name: "TrainingImage"))
    HyperParameterAlgorithmSpecification.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    HyperParameterAlgorithmSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    HyperParameterAlgorithmSpecification.struct_class = Types::HyperParameterAlgorithmSpecification

    HyperParameterTrainingJobDefinition.add_member(:static_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "StaticHyperParameters"))
    HyperParameterTrainingJobDefinition.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: HyperParameterAlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    HyperParameterTrainingJobDefinition.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    HyperParameterTrainingJobDefinition.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    HyperParameterTrainingJobDefinition.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    HyperParameterTrainingJobDefinition.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    HyperParameterTrainingJobDefinition.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    HyperParameterTrainingJobDefinition.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    HyperParameterTrainingJobDefinition.struct_class = Types::HyperParameterTrainingJobDefinition

    HyperParameterTrainingJobSummaries.member = Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary)

    HyperParameterTrainingJobSummary.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    HyperParameterTrainingJobSummary.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    HyperParameterTrainingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    HyperParameterTrainingJobSummary.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    HyperParameterTrainingJobSummary.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    HyperParameterTrainingJobSummary.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    HyperParameterTrainingJobSummary.add_member(:tuned_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, required: true, location_name: "TunedHyperParameters"))
    HyperParameterTrainingJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    HyperParameterTrainingJobSummary.add_member(:final_hyper_parameter_tuning_job_objective_metric, Shapes::ShapeRef.new(shape: FinalHyperParameterTuningJobObjectiveMetric, location_name: "FinalHyperParameterTuningJobObjectiveMetric"))
    HyperParameterTrainingJobSummary.add_member(:objective_status, Shapes::ShapeRef.new(shape: ObjectiveStatus, location_name: "ObjectiveStatus"))
    HyperParameterTrainingJobSummary.struct_class = Types::HyperParameterTrainingJobSummary

    HyperParameterTuningJobConfig.add_member(:strategy, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStrategyType, required: true, location_name: "Strategy"))
    HyperParameterTuningJobConfig.add_member(:hyper_parameter_tuning_job_objective, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjective, required: true, location_name: "HyperParameterTuningJobObjective"))
    HyperParameterTuningJobConfig.add_member(:resource_limits, Shapes::ShapeRef.new(shape: ResourceLimits, required: true, location_name: "ResourceLimits"))
    HyperParameterTuningJobConfig.add_member(:parameter_ranges, Shapes::ShapeRef.new(shape: ParameterRanges, required: true, location_name: "ParameterRanges"))
    HyperParameterTuningJobConfig.struct_class = Types::HyperParameterTuningJobConfig

    HyperParameterTuningJobObjective.add_member(:type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectiveType, required: true, location_name: "Type"))
    HyperParameterTuningJobObjective.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    HyperParameterTuningJobObjective.struct_class = Types::HyperParameterTuningJobObjective

    HyperParameterTuningJobSummaries.member = Shapes::ShapeRef.new(shape: HyperParameterTuningJobSummary)

    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_job_status, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, required: true, location_name: "HyperParameterTuningJobStatus"))
    HyperParameterTuningJobSummary.add_member(:strategy, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStrategyType, required: true, location_name: "Strategy"))
    HyperParameterTuningJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    HyperParameterTuningJobSummary.add_member(:hyper_parameter_tuning_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "HyperParameterTuningEndTime"))
    HyperParameterTuningJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    HyperParameterTuningJobSummary.add_member(:training_job_status_counters, Shapes::ShapeRef.new(shape: TrainingJobStatusCounters, required: true, location_name: "TrainingJobStatusCounters"))
    HyperParameterTuningJobSummary.add_member(:objective_status_counters, Shapes::ShapeRef.new(shape: ObjectiveStatusCounters, required: true, location_name: "ObjectiveStatusCounters"))
    HyperParameterTuningJobSummary.add_member(:resource_limits, Shapes::ShapeRef.new(shape: ResourceLimits, location_name: "ResourceLimits"))
    HyperParameterTuningJobSummary.struct_class = Types::HyperParameterTuningJobSummary

    HyperParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    HyperParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    InputDataConfig.member = Shapes::ShapeRef.new(shape: Channel)

    IntegerParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    IntegerParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    IntegerParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    IntegerParameterRange.struct_class = Types::IntegerParameterRange

    IntegerParameterRanges.member = Shapes::ShapeRef.new(shape: IntegerParameterRange)

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

    ListHyperParameterTuningJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHyperParameterTuningJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListHyperParameterTuningJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: HyperParameterTuningJobSortByOptions, location_name: "SortBy"))
    ListHyperParameterTuningJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListHyperParameterTuningJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListHyperParameterTuningJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListHyperParameterTuningJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListHyperParameterTuningJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListHyperParameterTuningJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListHyperParameterTuningJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, location_name: "StatusEquals"))
    ListHyperParameterTuningJobsRequest.struct_class = Types::ListHyperParameterTuningJobsRequest

    ListHyperParameterTuningJobsResponse.add_member(:hyper_parameter_tuning_job_summaries, Shapes::ShapeRef.new(shape: HyperParameterTuningJobSummaries, required: true, location_name: "HyperParameterTuningJobSummaries"))
    ListHyperParameterTuningJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHyperParameterTuningJobsResponse.struct_class = Types::ListHyperParameterTuningJobsResponse

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

    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: TrainingJobStatus, location_name: "StatusEquals"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: TrainingJobSortByOptions, location_name: "SortBy"))
    ListTrainingJobsForHyperParameterTuningJobRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTrainingJobsForHyperParameterTuningJobRequest.struct_class = Types::ListTrainingJobsForHyperParameterTuningJobRequest

    ListTrainingJobsForHyperParameterTuningJobResponse.add_member(:training_job_summaries, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummaries, required: true, location_name: "TrainingJobSummaries"))
    ListTrainingJobsForHyperParameterTuningJobResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTrainingJobsForHyperParameterTuningJobResponse.struct_class = Types::ListTrainingJobsForHyperParameterTuningJobResponse

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

    ListTransformJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListTransformJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListTransformJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListTransformJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListTransformJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListTransformJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: TransformJobStatus, location_name: "StatusEquals"))
    ListTransformJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListTransformJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListTransformJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTransformJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTransformJobsRequest.struct_class = Types::ListTransformJobsRequest

    ListTransformJobsResponse.add_member(:transform_job_summaries, Shapes::ShapeRef.new(shape: TransformJobSummaries, required: true, location_name: "TransformJobSummaries"))
    ListTransformJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTransformJobsResponse.struct_class = Types::ListTransformJobsResponse

    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "Name"))
    MetricDefinition.add_member(:regex, Shapes::ShapeRef.new(shape: MetricRegex, required: true, location_name: "Regex"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionList.member = Shapes::ShapeRef.new(shape: MetricDefinition)

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

    ObjectiveStatusCounters.add_member(:succeeded, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Succeeded"))
    ObjectiveStatusCounters.add_member(:pending, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Pending"))
    ObjectiveStatusCounters.add_member(:failed, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Failed"))
    ObjectiveStatusCounters.struct_class = Types::ObjectiveStatusCounters

    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ParameterRanges.add_member(:integer_parameter_ranges, Shapes::ShapeRef.new(shape: IntegerParameterRanges, location_name: "IntegerParameterRanges"))
    ParameterRanges.add_member(:continuous_parameter_ranges, Shapes::ShapeRef.new(shape: ContinuousParameterRanges, location_name: "ContinuousParameterRanges"))
    ParameterRanges.add_member(:categorical_parameter_ranges, Shapes::ShapeRef.new(shape: CategoricalParameterRanges, location_name: "CategoricalParameterRanges"))
    ParameterRanges.struct_class = Types::ParameterRanges

    ParameterValues.member = Shapes::ShapeRef.new(shape: ParameterValue)

    ProductionVariant.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariant.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ProductionVariant.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: TaskCount, required: true, location_name: "InitialInstanceCount"))
    ProductionVariant.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, required: true, location_name: "InstanceType"))
    ProductionVariant.add_member(:initial_variant_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "InitialVariantWeight"))
    ProductionVariant.struct_class = Types::ProductionVariant

    ProductionVariantList.member = Shapes::ShapeRef.new(shape: ProductionVariant)

    ProductionVariantSummary.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariantSummary.add_member(:deployed_images, Shapes::ShapeRef.new(shape: DeployedImages, location_name: "DeployedImages"))
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

    ResourceLimits.add_member(:max_number_of_training_jobs, Shapes::ShapeRef.new(shape: MaxNumberOfTrainingJobs, required: true, location_name: "MaxNumberOfTrainingJobs"))
    ResourceLimits.add_member(:max_parallel_training_jobs, Shapes::ShapeRef.new(shape: MaxParallelTrainingJobs, required: true, location_name: "MaxParallelTrainingJobs"))
    ResourceLimits.struct_class = Types::ResourceLimits

    S3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3DataSource.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: S3DataDistribution, location_name: "S3DataDistributionType"))
    S3DataSource.struct_class = Types::S3DataSource

    SecondaryStatusTransition.add_member(:status, Shapes::ShapeRef.new(shape: SecondaryStatus, required: true, location_name: "Status"))
    SecondaryStatusTransition.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    SecondaryStatusTransition.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    SecondaryStatusTransition.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    SecondaryStatusTransition.struct_class = Types::SecondaryStatusTransition

    SecondaryStatusTransitions.member = Shapes::ShapeRef.new(shape: SecondaryStatusTransition)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    StartNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StartNotebookInstanceInput.struct_class = Types::StartNotebookInstanceInput

    StopHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    StopHyperParameterTuningJobRequest.struct_class = Types::StopHyperParameterTuningJobRequest

    StopNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StopNotebookInstanceInput.struct_class = Types::StopNotebookInstanceInput

    StopTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    StopTrainingJobRequest.struct_class = Types::StopTrainingJobRequest

    StopTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    StopTransformJobRequest.struct_class = Types::StopTransformJobRequest

    StoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MaxRuntimeInSeconds, location_name: "MaxRuntimeInSeconds"))
    StoppingCondition.struct_class = Types::StoppingCondition

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TrainingJobStatusCounters.add_member(:completed, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "Completed"))
    TrainingJobStatusCounters.add_member(:in_progress, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "InProgress"))
    TrainingJobStatusCounters.add_member(:retryable_error, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "RetryableError"))
    TrainingJobStatusCounters.add_member(:non_retryable_error, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "NonRetryableError"))
    TrainingJobStatusCounters.add_member(:stopped, Shapes::ShapeRef.new(shape: TrainingJobStatusCounter, location_name: "Stopped"))
    TrainingJobStatusCounters.struct_class = Types::TrainingJobStatusCounters

    TrainingJobSummaries.member = Shapes::ShapeRef.new(shape: TrainingJobSummary)

    TrainingJobSummary.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    TrainingJobSummary.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    TrainingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    TrainingJobSummary.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    TrainingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrainingJobSummary.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    TrainingJobSummary.struct_class = Types::TrainingJobSummary

    TransformDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: TransformS3DataSource, required: true, location_name: "S3DataSource"))
    TransformDataSource.struct_class = Types::TransformDataSource

    TransformEnvironmentMap.key = Shapes::ShapeRef.new(shape: TransformEnvironmentKey)
    TransformEnvironmentMap.value = Shapes::ShapeRef.new(shape: TransformEnvironmentValue)

    TransformInput.add_member(:data_source, Shapes::ShapeRef.new(shape: TransformDataSource, required: true, location_name: "DataSource"))
    TransformInput.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    TransformInput.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    TransformInput.add_member(:split_type, Shapes::ShapeRef.new(shape: SplitType, location_name: "SplitType"))
    TransformInput.struct_class = Types::TransformInput

    TransformJobSummaries.member = Shapes::ShapeRef.new(shape: TransformJobSummary)

    TransformJobSummary.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    TransformJobSummary.add_member(:transform_job_arn, Shapes::ShapeRef.new(shape: TransformJobArn, required: true, location_name: "TransformJobArn"))
    TransformJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    TransformJobSummary.add_member(:transform_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TransformEndTime"))
    TransformJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TransformJobSummary.add_member(:transform_job_status, Shapes::ShapeRef.new(shape: TransformJobStatus, required: true, location_name: "TransformJobStatus"))
    TransformJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TransformJobSummary.struct_class = Types::TransformJobSummary

    TransformOutput.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    TransformOutput.add_member(:accept, Shapes::ShapeRef.new(shape: Accept, location_name: "Accept"))
    TransformOutput.add_member(:assemble_with, Shapes::ShapeRef.new(shape: AssemblyType, location_name: "AssembleWith"))
    TransformOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    TransformOutput.struct_class = Types::TransformOutput

    TransformResources.add_member(:instance_type, Shapes::ShapeRef.new(shape: TransformInstanceType, required: true, location_name: "InstanceType"))
    TransformResources.add_member(:instance_count, Shapes::ShapeRef.new(shape: TransformInstanceCount, required: true, location_name: "InstanceCount"))
    TransformResources.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    TransformResources.struct_class = Types::TransformResources

    TransformS3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    TransformS3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    TransformS3DataSource.struct_class = Types::TransformS3DataSource

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
    UpdateNotebookInstanceInput.add_member(:lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "LifecycleConfigName"))
    UpdateNotebookInstanceInput.add_member(:disassociate_lifecycle_config, Shapes::ShapeRef.new(shape: DisassociateNotebookInstanceLifecycleConfig, location_name: "DisassociateLifecycleConfig"))
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
        "apiVersion" => "2017-07-24",
        "endpointPrefix" => "api.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "SageMaker",
        "serviceFullName" => "Amazon SageMaker Service",
        "serviceId" => "SageMaker",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "targetPrefix" => "SageMaker",
        "uid" => "sagemaker-2017-07-24",
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

      api.add_operation(:create_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHyperParameterTuningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
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

      api.add_operation(:create_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTransformJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTransformJobResponse)
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

      api.add_operation(:describe_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHyperParameterTuningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
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

      api.add_operation(:describe_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTransformJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTransformJobResponse)
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

      api.add_operation(:list_hyper_parameter_tuning_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHyperParameterTuningJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHyperParameterTuningJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHyperParameterTuningJobsResponse)
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

      api.add_operation(:list_training_jobs_for_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrainingJobsForHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrainingJobsForHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrainingJobsForHyperParameterTuningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_transform_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTransformJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTransformJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTransformJobsResponse)
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

      api.add_operation(:stop_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
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

      api.add_operation(:stop_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTransformJobRequest)
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

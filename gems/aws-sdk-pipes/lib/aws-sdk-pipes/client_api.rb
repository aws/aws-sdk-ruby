# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pipes
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnOrJsonPath = Shapes::StringShape.new(name: 'ArnOrJsonPath')
    ArnOrUrl = Shapes::StringShape.new(name: 'ArnOrUrl')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    BatchArrayProperties = Shapes::StructureShape.new(name: 'BatchArrayProperties')
    BatchArraySize = Shapes::IntegerShape.new(name: 'BatchArraySize')
    BatchContainerOverrides = Shapes::StructureShape.new(name: 'BatchContainerOverrides')
    BatchDependsOn = Shapes::ListShape.new(name: 'BatchDependsOn')
    BatchEnvironmentVariable = Shapes::StructureShape.new(name: 'BatchEnvironmentVariable')
    BatchEnvironmentVariableList = Shapes::ListShape.new(name: 'BatchEnvironmentVariableList')
    BatchJobDependency = Shapes::StructureShape.new(name: 'BatchJobDependency')
    BatchJobDependencyType = Shapes::StringShape.new(name: 'BatchJobDependencyType')
    BatchParametersMap = Shapes::MapShape.new(name: 'BatchParametersMap')
    BatchResourceRequirement = Shapes::StructureShape.new(name: 'BatchResourceRequirement')
    BatchResourceRequirementType = Shapes::StringShape.new(name: 'BatchResourceRequirementType')
    BatchResourceRequirementsList = Shapes::ListShape.new(name: 'BatchResourceRequirementsList')
    BatchRetryAttempts = Shapes::IntegerShape.new(name: 'BatchRetryAttempts')
    BatchRetryStrategy = Shapes::StructureShape.new(name: 'BatchRetryStrategy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CapacityProvider = Shapes::StringShape.new(name: 'CapacityProvider')
    CapacityProviderStrategy = Shapes::ListShape.new(name: 'CapacityProviderStrategy')
    CapacityProviderStrategyItem = Shapes::StructureShape.new(name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemBase')
    CapacityProviderStrategyItemWeight = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemWeight')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreatePipeRequest = Shapes::StructureShape.new(name: 'CreatePipeRequest')
    CreatePipeResponse = Shapes::StructureShape.new(name: 'CreatePipeResponse')
    Database = Shapes::StringShape.new(name: 'Database')
    DbUser = Shapes::StringShape.new(name: 'DbUser')
    DeadLetterConfig = Shapes::StructureShape.new(name: 'DeadLetterConfig')
    DeletePipeRequest = Shapes::StructureShape.new(name: 'DeletePipeRequest')
    DeletePipeResponse = Shapes::StructureShape.new(name: 'DeletePipeResponse')
    DescribePipeRequest = Shapes::StructureShape.new(name: 'DescribePipeRequest')
    DescribePipeResponse = Shapes::StructureShape.new(name: 'DescribePipeResponse')
    DynamoDBStreamStartPosition = Shapes::StringShape.new(name: 'DynamoDBStreamStartPosition')
    EcsContainerOverride = Shapes::StructureShape.new(name: 'EcsContainerOverride')
    EcsContainerOverrideList = Shapes::ListShape.new(name: 'EcsContainerOverrideList')
    EcsEnvironmentFile = Shapes::StructureShape.new(name: 'EcsEnvironmentFile')
    EcsEnvironmentFileList = Shapes::ListShape.new(name: 'EcsEnvironmentFileList')
    EcsEnvironmentFileType = Shapes::StringShape.new(name: 'EcsEnvironmentFileType')
    EcsEnvironmentVariable = Shapes::StructureShape.new(name: 'EcsEnvironmentVariable')
    EcsEnvironmentVariableList = Shapes::ListShape.new(name: 'EcsEnvironmentVariableList')
    EcsEphemeralStorage = Shapes::StructureShape.new(name: 'EcsEphemeralStorage')
    EcsInferenceAcceleratorOverride = Shapes::StructureShape.new(name: 'EcsInferenceAcceleratorOverride')
    EcsInferenceAcceleratorOverrideList = Shapes::ListShape.new(name: 'EcsInferenceAcceleratorOverrideList')
    EcsResourceRequirement = Shapes::StructureShape.new(name: 'EcsResourceRequirement')
    EcsResourceRequirementType = Shapes::StringShape.new(name: 'EcsResourceRequirementType')
    EcsResourceRequirementsList = Shapes::ListShape.new(name: 'EcsResourceRequirementsList')
    EcsTaskOverride = Shapes::StructureShape.new(name: 'EcsTaskOverride')
    EndpointString = Shapes::StringShape.new(name: 'EndpointString')
    EphemeralStorageSize = Shapes::IntegerShape.new(name: 'EphemeralStorageSize')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventBridgeDetailType = Shapes::StringShape.new(name: 'EventBridgeDetailType')
    EventBridgeEndpointId = Shapes::StringShape.new(name: 'EventBridgeEndpointId')
    EventBridgeEventResourceList = Shapes::ListShape.new(name: 'EventBridgeEventResourceList')
    EventBridgeEventSource = Shapes::StringShape.new(name: 'EventBridgeEventSource')
    EventPattern = Shapes::StringShape.new(name: 'EventPattern')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterCriteria = Shapes::StructureShape.new(name: 'FilterCriteria')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    HeaderKey = Shapes::StringShape.new(name: 'HeaderKey')
    HeaderParametersMap = Shapes::MapShape.new(name: 'HeaderParametersMap')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    InputTemplate = Shapes::StringShape.new(name: 'InputTemplate')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    JsonPath = Shapes::StringShape.new(name: 'JsonPath')
    KafkaBootstrapServers = Shapes::ListShape.new(name: 'KafkaBootstrapServers')
    KafkaTopicName = Shapes::StringShape.new(name: 'KafkaTopicName')
    KinesisPartitionKey = Shapes::StringShape.new(name: 'KinesisPartitionKey')
    KinesisStreamStartPosition = Shapes::StringShape.new(name: 'KinesisStreamStartPosition')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    LimitMax10 = Shapes::IntegerShape.new(name: 'LimitMax10')
    LimitMax100 = Shapes::IntegerShape.new(name: 'LimitMax100')
    LimitMax10000 = Shapes::IntegerShape.new(name: 'LimitMax10000')
    LimitMin1 = Shapes::IntegerShape.new(name: 'LimitMin1')
    ListPipesRequest = Shapes::StructureShape.new(name: 'ListPipesRequest')
    ListPipesResponse = Shapes::StructureShape.new(name: 'ListPipesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    MQBrokerAccessCredentials = Shapes::UnionShape.new(name: 'MQBrokerAccessCredentials')
    MQBrokerQueueName = Shapes::StringShape.new(name: 'MQBrokerQueueName')
    MSKAccessCredentials = Shapes::UnionShape.new(name: 'MSKAccessCredentials')
    MSKStartPosition = Shapes::StringShape.new(name: 'MSKStartPosition')
    MaximumBatchingWindowInSeconds = Shapes::IntegerShape.new(name: 'MaximumBatchingWindowInSeconds')
    MaximumRecordAgeInSeconds = Shapes::IntegerShape.new(name: 'MaximumRecordAgeInSeconds')
    MaximumRetryAttemptsESM = Shapes::IntegerShape.new(name: 'MaximumRetryAttemptsESM')
    MessageDeduplicationId = Shapes::StringShape.new(name: 'MessageDeduplicationId')
    MessageGroupId = Shapes::StringShape.new(name: 'MessageGroupId')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OnPartialBatchItemFailureStreams = Shapes::StringShape.new(name: 'OnPartialBatchItemFailureStreams')
    OptionalArn = Shapes::StringShape.new(name: 'OptionalArn')
    PathParameter = Shapes::StringShape.new(name: 'PathParameter')
    PathParameterList = Shapes::ListShape.new(name: 'PathParameterList')
    Pipe = Shapes::StructureShape.new(name: 'Pipe')
    PipeArn = Shapes::StringShape.new(name: 'PipeArn')
    PipeDescription = Shapes::StringShape.new(name: 'PipeDescription')
    PipeEnrichmentHttpParameters = Shapes::StructureShape.new(name: 'PipeEnrichmentHttpParameters')
    PipeEnrichmentParameters = Shapes::StructureShape.new(name: 'PipeEnrichmentParameters')
    PipeList = Shapes::ListShape.new(name: 'PipeList')
    PipeName = Shapes::StringShape.new(name: 'PipeName')
    PipeSourceActiveMQBrokerParameters = Shapes::StructureShape.new(name: 'PipeSourceActiveMQBrokerParameters')
    PipeSourceDynamoDBStreamParameters = Shapes::StructureShape.new(name: 'PipeSourceDynamoDBStreamParameters')
    PipeSourceKinesisStreamParameters = Shapes::StructureShape.new(name: 'PipeSourceKinesisStreamParameters')
    PipeSourceManagedStreamingKafkaParameters = Shapes::StructureShape.new(name: 'PipeSourceManagedStreamingKafkaParameters')
    PipeSourceParameters = Shapes::StructureShape.new(name: 'PipeSourceParameters')
    PipeSourceRabbitMQBrokerParameters = Shapes::StructureShape.new(name: 'PipeSourceRabbitMQBrokerParameters')
    PipeSourceSelfManagedKafkaParameters = Shapes::StructureShape.new(name: 'PipeSourceSelfManagedKafkaParameters')
    PipeSourceSqsQueueParameters = Shapes::StructureShape.new(name: 'PipeSourceSqsQueueParameters')
    PipeState = Shapes::StringShape.new(name: 'PipeState')
    PipeStateReason = Shapes::StringShape.new(name: 'PipeStateReason')
    PipeTargetBatchJobParameters = Shapes::StructureShape.new(name: 'PipeTargetBatchJobParameters')
    PipeTargetCloudWatchLogsParameters = Shapes::StructureShape.new(name: 'PipeTargetCloudWatchLogsParameters')
    PipeTargetEcsTaskParameters = Shapes::StructureShape.new(name: 'PipeTargetEcsTaskParameters')
    PipeTargetEventBridgeEventBusParameters = Shapes::StructureShape.new(name: 'PipeTargetEventBridgeEventBusParameters')
    PipeTargetHttpParameters = Shapes::StructureShape.new(name: 'PipeTargetHttpParameters')
    PipeTargetInvocationType = Shapes::StringShape.new(name: 'PipeTargetInvocationType')
    PipeTargetKinesisStreamParameters = Shapes::StructureShape.new(name: 'PipeTargetKinesisStreamParameters')
    PipeTargetLambdaFunctionParameters = Shapes::StructureShape.new(name: 'PipeTargetLambdaFunctionParameters')
    PipeTargetParameters = Shapes::StructureShape.new(name: 'PipeTargetParameters')
    PipeTargetRedshiftDataParameters = Shapes::StructureShape.new(name: 'PipeTargetRedshiftDataParameters')
    PipeTargetSageMakerPipelineParameters = Shapes::StructureShape.new(name: 'PipeTargetSageMakerPipelineParameters')
    PipeTargetSqsQueueParameters = Shapes::StructureShape.new(name: 'PipeTargetSqsQueueParameters')
    PipeTargetStateMachineParameters = Shapes::StructureShape.new(name: 'PipeTargetStateMachineParameters')
    PlacementConstraint = Shapes::StructureShape.new(name: 'PlacementConstraint')
    PlacementConstraintExpression = Shapes::StringShape.new(name: 'PlacementConstraintExpression')
    PlacementConstraintType = Shapes::StringShape.new(name: 'PlacementConstraintType')
    PlacementConstraints = Shapes::ListShape.new(name: 'PlacementConstraints')
    PlacementStrategies = Shapes::ListShape.new(name: 'PlacementStrategies')
    PlacementStrategy = Shapes::StructureShape.new(name: 'PlacementStrategy')
    PlacementStrategyField = Shapes::StringShape.new(name: 'PlacementStrategyField')
    PlacementStrategyType = Shapes::StringShape.new(name: 'PlacementStrategyType')
    PropagateTags = Shapes::StringShape.new(name: 'PropagateTags')
    QueryStringKey = Shapes::StringShape.new(name: 'QueryStringKey')
    QueryStringParametersMap = Shapes::MapShape.new(name: 'QueryStringParametersMap')
    QueryStringValue = Shapes::StringShape.new(name: 'QueryStringValue')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    RequestedPipeState = Shapes::StringShape.new(name: 'RequestedPipeState')
    RequestedPipeStateDescribeResponse = Shapes::StringShape.new(name: 'RequestedPipeStateDescribeResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SageMakerPipelineParameter = Shapes::StructureShape.new(name: 'SageMakerPipelineParameter')
    SageMakerPipelineParameterList = Shapes::ListShape.new(name: 'SageMakerPipelineParameterList')
    SageMakerPipelineParameterName = Shapes::StringShape.new(name: 'SageMakerPipelineParameterName')
    SageMakerPipelineParameterValue = Shapes::StringShape.new(name: 'SageMakerPipelineParameterValue')
    SecretManagerArn = Shapes::StringShape.new(name: 'SecretManagerArn')
    SecretManagerArnOrJsonPath = Shapes::StringShape.new(name: 'SecretManagerArnOrJsonPath')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SelfManagedKafkaAccessConfigurationCredentials = Shapes::UnionShape.new(name: 'SelfManagedKafkaAccessConfigurationCredentials')
    SelfManagedKafkaAccessConfigurationVpc = Shapes::StructureShape.new(name: 'SelfManagedKafkaAccessConfigurationVpc')
    SelfManagedKafkaStartPosition = Shapes::StringShape.new(name: 'SelfManagedKafkaStartPosition')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sql = Shapes::StringShape.new(name: 'Sql')
    Sqls = Shapes::ListShape.new(name: 'Sqls')
    StartPipeRequest = Shapes::StructureShape.new(name: 'StartPipeRequest')
    StartPipeResponse = Shapes::StructureShape.new(name: 'StartPipeResponse')
    StatementName = Shapes::StringShape.new(name: 'StatementName')
    StopPipeRequest = Shapes::StructureShape.new(name: 'StopPipeRequest')
    StopPipeResponse = Shapes::StructureShape.new(name: 'StopPipeResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subnet = Shapes::StringShape.new(name: 'Subnet')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    URI = Shapes::StringShape.new(name: 'URI')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdatePipeRequest = Shapes::StructureShape.new(name: 'UpdatePipeRequest')
    UpdatePipeResponse = Shapes::StructureShape.new(name: 'UpdatePipeResponse')
    UpdatePipeSourceActiveMQBrokerParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceActiveMQBrokerParameters')
    UpdatePipeSourceDynamoDBStreamParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceDynamoDBStreamParameters')
    UpdatePipeSourceKinesisStreamParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceKinesisStreamParameters')
    UpdatePipeSourceManagedStreamingKafkaParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceManagedStreamingKafkaParameters')
    UpdatePipeSourceParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceParameters')
    UpdatePipeSourceRabbitMQBrokerParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceRabbitMQBrokerParameters')
    UpdatePipeSourceSelfManagedKafkaParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceSelfManagedKafkaParameters')
    UpdatePipeSourceSqsQueueParameters = Shapes::StructureShape.new(name: 'UpdatePipeSourceSqsQueueParameters')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')

    AwsVpcConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "AssignPublicIp"))
    AwsVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    AwsVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    AwsVpcConfiguration.struct_class = Types::AwsVpcConfiguration

    BatchArrayProperties.add_member(:size, Shapes::ShapeRef.new(shape: BatchArraySize, location_name: "Size"))
    BatchArrayProperties.struct_class = Types::BatchArrayProperties

    BatchContainerOverrides.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "Command"))
    BatchContainerOverrides.add_member(:environment, Shapes::ShapeRef.new(shape: BatchEnvironmentVariableList, location_name: "Environment"))
    BatchContainerOverrides.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    BatchContainerOverrides.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: BatchResourceRequirementsList, location_name: "ResourceRequirements"))
    BatchContainerOverrides.struct_class = Types::BatchContainerOverrides

    BatchDependsOn.member = Shapes::ShapeRef.new(shape: BatchJobDependency)

    BatchEnvironmentVariable.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    BatchEnvironmentVariable.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    BatchEnvironmentVariable.struct_class = Types::BatchEnvironmentVariable

    BatchEnvironmentVariableList.member = Shapes::ShapeRef.new(shape: BatchEnvironmentVariable)

    BatchJobDependency.add_member(:job_id, Shapes::ShapeRef.new(shape: String, location_name: "JobId"))
    BatchJobDependency.add_member(:type, Shapes::ShapeRef.new(shape: BatchJobDependencyType, location_name: "Type"))
    BatchJobDependency.struct_class = Types::BatchJobDependency

    BatchParametersMap.key = Shapes::ShapeRef.new(shape: String)
    BatchParametersMap.value = Shapes::ShapeRef.new(shape: String)

    BatchResourceRequirement.add_member(:type, Shapes::ShapeRef.new(shape: BatchResourceRequirementType, required: true, location_name: "Type"))
    BatchResourceRequirement.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    BatchResourceRequirement.struct_class = Types::BatchResourceRequirement

    BatchResourceRequirementsList.member = Shapes::ShapeRef.new(shape: BatchResourceRequirement)

    BatchRetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: BatchRetryAttempts, location_name: "Attempts"))
    BatchRetryStrategy.struct_class = Types::BatchRetryStrategy

    CapacityProviderStrategy.member = Shapes::ShapeRef.new(shape: CapacityProviderStrategyItem)

    CapacityProviderStrategyItem.add_member(:base, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemBase, location_name: "base"))
    CapacityProviderStrategyItem.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "capacityProvider"))
    CapacityProviderStrategyItem.add_member(:weight, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemWeight, location_name: "weight"))
    CapacityProviderStrategyItem.struct_class = Types::CapacityProviderStrategyItem

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreatePipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: PipeDescription, location_name: "Description"))
    CreatePipeRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    CreatePipeRequest.add_member(:enrichment, Shapes::ShapeRef.new(shape: OptionalArn, location_name: "Enrichment"))
    CreatePipeRequest.add_member(:enrichment_parameters, Shapes::ShapeRef.new(shape: PipeEnrichmentParameters, location_name: "EnrichmentParameters"))
    CreatePipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, required: true, location: "uri", location_name: "Name"))
    CreatePipeRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreatePipeRequest.add_member(:source, Shapes::ShapeRef.new(shape: ArnOrUrl, required: true, location_name: "Source"))
    CreatePipeRequest.add_member(:source_parameters, Shapes::ShapeRef.new(shape: PipeSourceParameters, location_name: "SourceParameters"))
    CreatePipeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePipeRequest.add_member(:target, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Target"))
    CreatePipeRequest.add_member(:target_parameters, Shapes::ShapeRef.new(shape: PipeTargetParameters, location_name: "TargetParameters"))
    CreatePipeRequest.struct_class = Types::CreatePipeRequest

    CreatePipeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    CreatePipeResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreatePipeResponse.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    CreatePipeResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    CreatePipeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    CreatePipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    CreatePipeResponse.struct_class = Types::CreatePipeResponse

    DeadLetterConfig.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeadLetterConfig.struct_class = Types::DeadLetterConfig

    DeletePipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, required: true, location: "uri", location_name: "Name"))
    DeletePipeRequest.struct_class = Types::DeletePipeRequest

    DeletePipeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    DeletePipeResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DeletePipeResponse.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    DeletePipeResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeStateDescribeResponse, location_name: "DesiredState"))
    DeletePipeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DeletePipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    DeletePipeResponse.struct_class = Types::DeletePipeResponse

    DescribePipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, required: true, location: "uri", location_name: "Name"))
    DescribePipeRequest.struct_class = Types::DescribePipeRequest

    DescribePipeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    DescribePipeResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribePipeResponse.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    DescribePipeResponse.add_member(:description, Shapes::ShapeRef.new(shape: PipeDescription, location_name: "Description"))
    DescribePipeResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeStateDescribeResponse, location_name: "DesiredState"))
    DescribePipeResponse.add_member(:enrichment, Shapes::ShapeRef.new(shape: OptionalArn, location_name: "Enrichment"))
    DescribePipeResponse.add_member(:enrichment_parameters, Shapes::ShapeRef.new(shape: PipeEnrichmentParameters, location_name: "EnrichmentParameters"))
    DescribePipeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribePipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    DescribePipeResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribePipeResponse.add_member(:source, Shapes::ShapeRef.new(shape: ArnOrUrl, location_name: "Source"))
    DescribePipeResponse.add_member(:source_parameters, Shapes::ShapeRef.new(shape: PipeSourceParameters, location_name: "SourceParameters"))
    DescribePipeResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: PipeStateReason, location_name: "StateReason"))
    DescribePipeResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribePipeResponse.add_member(:target, Shapes::ShapeRef.new(shape: Arn, location_name: "Target"))
    DescribePipeResponse.add_member(:target_parameters, Shapes::ShapeRef.new(shape: PipeTargetParameters, location_name: "TargetParameters"))
    DescribePipeResponse.struct_class = Types::DescribePipeResponse

    EcsContainerOverride.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "Command"))
    EcsContainerOverride.add_member(:cpu, Shapes::ShapeRef.new(shape: Integer, location_name: "Cpu"))
    EcsContainerOverride.add_member(:environment, Shapes::ShapeRef.new(shape: EcsEnvironmentVariableList, location_name: "Environment"))
    EcsContainerOverride.add_member(:environment_files, Shapes::ShapeRef.new(shape: EcsEnvironmentFileList, location_name: "EnvironmentFiles"))
    EcsContainerOverride.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, location_name: "Memory"))
    EcsContainerOverride.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: Integer, location_name: "MemoryReservation"))
    EcsContainerOverride.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EcsContainerOverride.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: EcsResourceRequirementsList, location_name: "ResourceRequirements"))
    EcsContainerOverride.struct_class = Types::EcsContainerOverride

    EcsContainerOverrideList.member = Shapes::ShapeRef.new(shape: EcsContainerOverride)

    EcsEnvironmentFile.add_member(:type, Shapes::ShapeRef.new(shape: EcsEnvironmentFileType, required: true, location_name: "type"))
    EcsEnvironmentFile.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    EcsEnvironmentFile.struct_class = Types::EcsEnvironmentFile

    EcsEnvironmentFileList.member = Shapes::ShapeRef.new(shape: EcsEnvironmentFile)

    EcsEnvironmentVariable.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EcsEnvironmentVariable.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    EcsEnvironmentVariable.struct_class = Types::EcsEnvironmentVariable

    EcsEnvironmentVariableList.member = Shapes::ShapeRef.new(shape: EcsEnvironmentVariable)

    EcsEphemeralStorage.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: EphemeralStorageSize, required: true, location_name: "sizeInGiB"))
    EcsEphemeralStorage.struct_class = Types::EcsEphemeralStorage

    EcsInferenceAcceleratorOverride.add_member(:device_name, Shapes::ShapeRef.new(shape: String, location_name: "deviceName"))
    EcsInferenceAcceleratorOverride.add_member(:device_type, Shapes::ShapeRef.new(shape: String, location_name: "deviceType"))
    EcsInferenceAcceleratorOverride.struct_class = Types::EcsInferenceAcceleratorOverride

    EcsInferenceAcceleratorOverrideList.member = Shapes::ShapeRef.new(shape: EcsInferenceAcceleratorOverride)

    EcsResourceRequirement.add_member(:type, Shapes::ShapeRef.new(shape: EcsResourceRequirementType, required: true, location_name: "type"))
    EcsResourceRequirement.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    EcsResourceRequirement.struct_class = Types::EcsResourceRequirement

    EcsResourceRequirementsList.member = Shapes::ShapeRef.new(shape: EcsResourceRequirement)

    EcsTaskOverride.add_member(:container_overrides, Shapes::ShapeRef.new(shape: EcsContainerOverrideList, location_name: "ContainerOverrides"))
    EcsTaskOverride.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "Cpu"))
    EcsTaskOverride.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EcsEphemeralStorage, location_name: "EphemeralStorage"))
    EcsTaskOverride.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ArnOrJsonPath, location_name: "ExecutionRoleArn"))
    EcsTaskOverride.add_member(:inference_accelerator_overrides, Shapes::ShapeRef.new(shape: EcsInferenceAcceleratorOverrideList, location_name: "InferenceAcceleratorOverrides"))
    EcsTaskOverride.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "Memory"))
    EcsTaskOverride.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: ArnOrJsonPath, location_name: "TaskRoleArn"))
    EcsTaskOverride.struct_class = Types::EcsTaskOverride

    EventBridgeEventResourceList.member = Shapes::ShapeRef.new(shape: ArnOrJsonPath)

    Filter.add_member(:pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "Pattern"))
    Filter.struct_class = Types::Filter

    FilterCriteria.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    FilterCriteria.struct_class = Types::FilterCriteria

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    HeaderParametersMap.key = Shapes::ShapeRef.new(shape: HeaderKey)
    HeaderParametersMap.value = Shapes::ShapeRef.new(shape: HeaderValue)

    InternalException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalException.struct_class = Types::InternalException

    KafkaBootstrapServers.member = Shapes::ShapeRef.new(shape: EndpointString)

    ListPipesRequest.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location: "querystring", location_name: "CurrentState"))
    ListPipesRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location: "querystring", location_name: "DesiredState"))
    ListPipesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location: "querystring", location_name: "Limit"))
    ListPipesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: PipeName, location: "querystring", location_name: "NamePrefix"))
    ListPipesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListPipesRequest.add_member(:source_prefix, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "SourcePrefix"))
    ListPipesRequest.add_member(:target_prefix, Shapes::ShapeRef.new(shape: ResourceArn, location: "querystring", location_name: "TargetPrefix"))
    ListPipesRequest.struct_class = Types::ListPipesRequest

    ListPipesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipesResponse.add_member(:pipes, Shapes::ShapeRef.new(shape: PipeList, location_name: "Pipes"))
    ListPipesResponse.struct_class = Types::ListPipesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipeArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MQBrokerAccessCredentials.add_member(:basic_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "BasicAuth"))
    MQBrokerAccessCredentials.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MQBrokerAccessCredentials.add_member_subclass(:basic_auth, Types::MQBrokerAccessCredentials::BasicAuth)
    MQBrokerAccessCredentials.add_member_subclass(:unknown, Types::MQBrokerAccessCredentials::Unknown)
    MQBrokerAccessCredentials.struct_class = Types::MQBrokerAccessCredentials

    MSKAccessCredentials.add_member(:client_certificate_tls_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "ClientCertificateTlsAuth"))
    MSKAccessCredentials.add_member(:sasl_scram_512_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "SaslScram512Auth"))
    MSKAccessCredentials.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MSKAccessCredentials.add_member_subclass(:client_certificate_tls_auth, Types::MSKAccessCredentials::ClientCertificateTlsAuth)
    MSKAccessCredentials.add_member_subclass(:sasl_scram_512_auth, Types::MSKAccessCredentials::SaslScram512Auth)
    MSKAccessCredentials.add_member_subclass(:unknown, Types::MSKAccessCredentials::Unknown)
    MSKAccessCredentials.struct_class = Types::MSKAccessCredentials

    NetworkConfiguration.add_member(:awsvpc_configuration, Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PathParameterList.member = Shapes::ShapeRef.new(shape: PathParameter)

    Pipe.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    Pipe.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Pipe.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    Pipe.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    Pipe.add_member(:enrichment, Shapes::ShapeRef.new(shape: OptionalArn, location_name: "Enrichment"))
    Pipe.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Pipe.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    Pipe.add_member(:source, Shapes::ShapeRef.new(shape: ArnOrUrl, location_name: "Source"))
    Pipe.add_member(:state_reason, Shapes::ShapeRef.new(shape: PipeStateReason, location_name: "StateReason"))
    Pipe.add_member(:target, Shapes::ShapeRef.new(shape: Arn, location_name: "Target"))
    Pipe.struct_class = Types::Pipe

    PipeEnrichmentHttpParameters.add_member(:header_parameters, Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: "HeaderParameters"))
    PipeEnrichmentHttpParameters.add_member(:path_parameter_values, Shapes::ShapeRef.new(shape: PathParameterList, location_name: "PathParameterValues"))
    PipeEnrichmentHttpParameters.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: "QueryStringParameters"))
    PipeEnrichmentHttpParameters.struct_class = Types::PipeEnrichmentHttpParameters

    PipeEnrichmentParameters.add_member(:http_parameters, Shapes::ShapeRef.new(shape: PipeEnrichmentHttpParameters, location_name: "HttpParameters"))
    PipeEnrichmentParameters.add_member(:input_template, Shapes::ShapeRef.new(shape: InputTemplate, location_name: "InputTemplate"))
    PipeEnrichmentParameters.struct_class = Types::PipeEnrichmentParameters

    PipeList.member = Shapes::ShapeRef.new(shape: Pipe)

    PipeSourceActiveMQBrokerParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceActiveMQBrokerParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: MQBrokerAccessCredentials, required: true, location_name: "Credentials"))
    PipeSourceActiveMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceActiveMQBrokerParameters.add_member(:queue_name, Shapes::ShapeRef.new(shape: MQBrokerQueueName, required: true, location_name: "QueueName"))
    PipeSourceActiveMQBrokerParameters.struct_class = Types::PipeSourceActiveMQBrokerParameters

    PipeSourceDynamoDBStreamParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceDynamoDBStreamParameters.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    PipeSourceDynamoDBStreamParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceDynamoDBStreamParameters.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    PipeSourceDynamoDBStreamParameters.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsESM, location_name: "MaximumRetryAttempts"))
    PipeSourceDynamoDBStreamParameters.add_member(:on_partial_batch_item_failure, Shapes::ShapeRef.new(shape: OnPartialBatchItemFailureStreams, location_name: "OnPartialBatchItemFailure"))
    PipeSourceDynamoDBStreamParameters.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: LimitMax10, location_name: "ParallelizationFactor"))
    PipeSourceDynamoDBStreamParameters.add_member(:starting_position, Shapes::ShapeRef.new(shape: DynamoDBStreamStartPosition, required: true, location_name: "StartingPosition"))
    PipeSourceDynamoDBStreamParameters.struct_class = Types::PipeSourceDynamoDBStreamParameters

    PipeSourceKinesisStreamParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceKinesisStreamParameters.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    PipeSourceKinesisStreamParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceKinesisStreamParameters.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    PipeSourceKinesisStreamParameters.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsESM, location_name: "MaximumRetryAttempts"))
    PipeSourceKinesisStreamParameters.add_member(:on_partial_batch_item_failure, Shapes::ShapeRef.new(shape: OnPartialBatchItemFailureStreams, location_name: "OnPartialBatchItemFailure"))
    PipeSourceKinesisStreamParameters.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: LimitMax10, location_name: "ParallelizationFactor"))
    PipeSourceKinesisStreamParameters.add_member(:starting_position, Shapes::ShapeRef.new(shape: KinesisStreamStartPosition, required: true, location_name: "StartingPosition"))
    PipeSourceKinesisStreamParameters.add_member(:starting_position_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartingPositionTimestamp"))
    PipeSourceKinesisStreamParameters.struct_class = Types::PipeSourceKinesisStreamParameters

    PipeSourceManagedStreamingKafkaParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:consumer_group_id, Shapes::ShapeRef.new(shape: URI, location_name: "ConsumerGroupID"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: MSKAccessCredentials, location_name: "Credentials"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:starting_position, Shapes::ShapeRef.new(shape: MSKStartPosition, location_name: "StartingPosition"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:topic_name, Shapes::ShapeRef.new(shape: KafkaTopicName, required: true, location_name: "TopicName"))
    PipeSourceManagedStreamingKafkaParameters.struct_class = Types::PipeSourceManagedStreamingKafkaParameters

    PipeSourceParameters.add_member(:active_mq_broker_parameters, Shapes::ShapeRef.new(shape: PipeSourceActiveMQBrokerParameters, location_name: "ActiveMQBrokerParameters"))
    PipeSourceParameters.add_member(:dynamo_db_stream_parameters, Shapes::ShapeRef.new(shape: PipeSourceDynamoDBStreamParameters, location_name: "DynamoDBStreamParameters"))
    PipeSourceParameters.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "FilterCriteria"))
    PipeSourceParameters.add_member(:kinesis_stream_parameters, Shapes::ShapeRef.new(shape: PipeSourceKinesisStreamParameters, location_name: "KinesisStreamParameters"))
    PipeSourceParameters.add_member(:managed_streaming_kafka_parameters, Shapes::ShapeRef.new(shape: PipeSourceManagedStreamingKafkaParameters, location_name: "ManagedStreamingKafkaParameters"))
    PipeSourceParameters.add_member(:rabbit_mq_broker_parameters, Shapes::ShapeRef.new(shape: PipeSourceRabbitMQBrokerParameters, location_name: "RabbitMQBrokerParameters"))
    PipeSourceParameters.add_member(:self_managed_kafka_parameters, Shapes::ShapeRef.new(shape: PipeSourceSelfManagedKafkaParameters, location_name: "SelfManagedKafkaParameters"))
    PipeSourceParameters.add_member(:sqs_queue_parameters, Shapes::ShapeRef.new(shape: PipeSourceSqsQueueParameters, location_name: "SqsQueueParameters"))
    PipeSourceParameters.struct_class = Types::PipeSourceParameters

    PipeSourceRabbitMQBrokerParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceRabbitMQBrokerParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: MQBrokerAccessCredentials, required: true, location_name: "Credentials"))
    PipeSourceRabbitMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceRabbitMQBrokerParameters.add_member(:queue_name, Shapes::ShapeRef.new(shape: MQBrokerQueueName, required: true, location_name: "QueueName"))
    PipeSourceRabbitMQBrokerParameters.add_member(:virtual_host, Shapes::ShapeRef.new(shape: URI, location_name: "VirtualHost"))
    PipeSourceRabbitMQBrokerParameters.struct_class = Types::PipeSourceRabbitMQBrokerParameters

    PipeSourceSelfManagedKafkaParameters.add_member(:additional_bootstrap_servers, Shapes::ShapeRef.new(shape: KafkaBootstrapServers, location_name: "AdditionalBootstrapServers"))
    PipeSourceSelfManagedKafkaParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceSelfManagedKafkaParameters.add_member(:consumer_group_id, Shapes::ShapeRef.new(shape: URI, location_name: "ConsumerGroupID"))
    PipeSourceSelfManagedKafkaParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: SelfManagedKafkaAccessConfigurationCredentials, location_name: "Credentials"))
    PipeSourceSelfManagedKafkaParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceSelfManagedKafkaParameters.add_member(:server_root_ca_certificate, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "ServerRootCaCertificate"))
    PipeSourceSelfManagedKafkaParameters.add_member(:starting_position, Shapes::ShapeRef.new(shape: SelfManagedKafkaStartPosition, location_name: "StartingPosition"))
    PipeSourceSelfManagedKafkaParameters.add_member(:topic_name, Shapes::ShapeRef.new(shape: KafkaTopicName, required: true, location_name: "TopicName"))
    PipeSourceSelfManagedKafkaParameters.add_member(:vpc, Shapes::ShapeRef.new(shape: SelfManagedKafkaAccessConfigurationVpc, location_name: "Vpc"))
    PipeSourceSelfManagedKafkaParameters.struct_class = Types::PipeSourceSelfManagedKafkaParameters

    PipeSourceSqsQueueParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    PipeSourceSqsQueueParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    PipeSourceSqsQueueParameters.struct_class = Types::PipeSourceSqsQueueParameters

    PipeTargetBatchJobParameters.add_member(:array_properties, Shapes::ShapeRef.new(shape: BatchArrayProperties, location_name: "ArrayProperties"))
    PipeTargetBatchJobParameters.add_member(:container_overrides, Shapes::ShapeRef.new(shape: BatchContainerOverrides, location_name: "ContainerOverrides"))
    PipeTargetBatchJobParameters.add_member(:depends_on, Shapes::ShapeRef.new(shape: BatchDependsOn, location_name: "DependsOn"))
    PipeTargetBatchJobParameters.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "JobDefinition"))
    PipeTargetBatchJobParameters.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "JobName"))
    PipeTargetBatchJobParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: BatchParametersMap, location_name: "Parameters"))
    PipeTargetBatchJobParameters.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: BatchRetryStrategy, location_name: "RetryStrategy"))
    PipeTargetBatchJobParameters.struct_class = Types::PipeTargetBatchJobParameters

    PipeTargetCloudWatchLogsParameters.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "LogStreamName"))
    PipeTargetCloudWatchLogsParameters.add_member(:timestamp, Shapes::ShapeRef.new(shape: JsonPath, location_name: "Timestamp"))
    PipeTargetCloudWatchLogsParameters.struct_class = Types::PipeTargetCloudWatchLogsParameters

    PipeTargetEcsTaskParameters.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "CapacityProviderStrategy"))
    PipeTargetEcsTaskParameters.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableECSManagedTags"))
    PipeTargetEcsTaskParameters.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableExecuteCommand"))
    PipeTargetEcsTaskParameters.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "Group"))
    PipeTargetEcsTaskParameters.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "LaunchType"))
    PipeTargetEcsTaskParameters.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    PipeTargetEcsTaskParameters.add_member(:overrides, Shapes::ShapeRef.new(shape: EcsTaskOverride, location_name: "Overrides"))
    PipeTargetEcsTaskParameters.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "PlacementConstraints"))
    PipeTargetEcsTaskParameters.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "PlacementStrategy"))
    PipeTargetEcsTaskParameters.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    PipeTargetEcsTaskParameters.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "PropagateTags"))
    PipeTargetEcsTaskParameters.add_member(:reference_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "ReferenceId"))
    PipeTargetEcsTaskParameters.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PipeTargetEcsTaskParameters.add_member(:task_count, Shapes::ShapeRef.new(shape: LimitMin1, location_name: "TaskCount"))
    PipeTargetEcsTaskParameters.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: ArnOrJsonPath, required: true, location_name: "TaskDefinitionArn"))
    PipeTargetEcsTaskParameters.struct_class = Types::PipeTargetEcsTaskParameters

    PipeTargetEventBridgeEventBusParameters.add_member(:detail_type, Shapes::ShapeRef.new(shape: EventBridgeDetailType, location_name: "DetailType"))
    PipeTargetEventBridgeEventBusParameters.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EventBridgeEndpointId, location_name: "EndpointId"))
    PipeTargetEventBridgeEventBusParameters.add_member(:resources, Shapes::ShapeRef.new(shape: EventBridgeEventResourceList, location_name: "Resources"))
    PipeTargetEventBridgeEventBusParameters.add_member(:source, Shapes::ShapeRef.new(shape: EventBridgeEventSource, location_name: "Source"))
    PipeTargetEventBridgeEventBusParameters.add_member(:time, Shapes::ShapeRef.new(shape: JsonPath, location_name: "Time"))
    PipeTargetEventBridgeEventBusParameters.struct_class = Types::PipeTargetEventBridgeEventBusParameters

    PipeTargetHttpParameters.add_member(:header_parameters, Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: "HeaderParameters"))
    PipeTargetHttpParameters.add_member(:path_parameter_values, Shapes::ShapeRef.new(shape: PathParameterList, location_name: "PathParameterValues"))
    PipeTargetHttpParameters.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: "QueryStringParameters"))
    PipeTargetHttpParameters.struct_class = Types::PipeTargetHttpParameters

    PipeTargetKinesisStreamParameters.add_member(:partition_key, Shapes::ShapeRef.new(shape: KinesisPartitionKey, required: true, location_name: "PartitionKey"))
    PipeTargetKinesisStreamParameters.struct_class = Types::PipeTargetKinesisStreamParameters

    PipeTargetLambdaFunctionParameters.add_member(:invocation_type, Shapes::ShapeRef.new(shape: PipeTargetInvocationType, location_name: "InvocationType"))
    PipeTargetLambdaFunctionParameters.struct_class = Types::PipeTargetLambdaFunctionParameters

    PipeTargetParameters.add_member(:batch_job_parameters, Shapes::ShapeRef.new(shape: PipeTargetBatchJobParameters, location_name: "BatchJobParameters"))
    PipeTargetParameters.add_member(:cloud_watch_logs_parameters, Shapes::ShapeRef.new(shape: PipeTargetCloudWatchLogsParameters, location_name: "CloudWatchLogsParameters"))
    PipeTargetParameters.add_member(:ecs_task_parameters, Shapes::ShapeRef.new(shape: PipeTargetEcsTaskParameters, location_name: "EcsTaskParameters"))
    PipeTargetParameters.add_member(:event_bridge_event_bus_parameters, Shapes::ShapeRef.new(shape: PipeTargetEventBridgeEventBusParameters, location_name: "EventBridgeEventBusParameters"))
    PipeTargetParameters.add_member(:http_parameters, Shapes::ShapeRef.new(shape: PipeTargetHttpParameters, location_name: "HttpParameters"))
    PipeTargetParameters.add_member(:input_template, Shapes::ShapeRef.new(shape: InputTemplate, location_name: "InputTemplate"))
    PipeTargetParameters.add_member(:kinesis_stream_parameters, Shapes::ShapeRef.new(shape: PipeTargetKinesisStreamParameters, location_name: "KinesisStreamParameters"))
    PipeTargetParameters.add_member(:lambda_function_parameters, Shapes::ShapeRef.new(shape: PipeTargetLambdaFunctionParameters, location_name: "LambdaFunctionParameters"))
    PipeTargetParameters.add_member(:redshift_data_parameters, Shapes::ShapeRef.new(shape: PipeTargetRedshiftDataParameters, location_name: "RedshiftDataParameters"))
    PipeTargetParameters.add_member(:sage_maker_pipeline_parameters, Shapes::ShapeRef.new(shape: PipeTargetSageMakerPipelineParameters, location_name: "SageMakerPipelineParameters"))
    PipeTargetParameters.add_member(:sqs_queue_parameters, Shapes::ShapeRef.new(shape: PipeTargetSqsQueueParameters, location_name: "SqsQueueParameters"))
    PipeTargetParameters.add_member(:step_function_state_machine_parameters, Shapes::ShapeRef.new(shape: PipeTargetStateMachineParameters, location_name: "StepFunctionStateMachineParameters"))
    PipeTargetParameters.struct_class = Types::PipeTargetParameters

    PipeTargetRedshiftDataParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    PipeTargetRedshiftDataParameters.add_member(:db_user, Shapes::ShapeRef.new(shape: DbUser, location_name: "DbUser"))
    PipeTargetRedshiftDataParameters.add_member(:secret_manager_arn, Shapes::ShapeRef.new(shape: SecretManagerArnOrJsonPath, location_name: "SecretManagerArn"))
    PipeTargetRedshiftDataParameters.add_member(:sqls, Shapes::ShapeRef.new(shape: Sqls, required: true, location_name: "Sqls"))
    PipeTargetRedshiftDataParameters.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, location_name: "StatementName"))
    PipeTargetRedshiftDataParameters.add_member(:with_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithEvent"))
    PipeTargetRedshiftDataParameters.struct_class = Types::PipeTargetRedshiftDataParameters

    PipeTargetSageMakerPipelineParameters.add_member(:pipeline_parameter_list, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterList, location_name: "PipelineParameterList"))
    PipeTargetSageMakerPipelineParameters.struct_class = Types::PipeTargetSageMakerPipelineParameters

    PipeTargetSqsQueueParameters.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: MessageDeduplicationId, location_name: "MessageDeduplicationId"))
    PipeTargetSqsQueueParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: MessageGroupId, location_name: "MessageGroupId"))
    PipeTargetSqsQueueParameters.struct_class = Types::PipeTargetSqsQueueParameters

    PipeTargetStateMachineParameters.add_member(:invocation_type, Shapes::ShapeRef.new(shape: PipeTargetInvocationType, location_name: "InvocationType"))
    PipeTargetStateMachineParameters.struct_class = Types::PipeTargetStateMachineParameters

    PlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: PlacementConstraintExpression, location_name: "expression"))
    PlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: "type"))
    PlacementConstraint.struct_class = Types::PlacementConstraint

    PlacementConstraints.member = Shapes::ShapeRef.new(shape: PlacementConstraint)

    PlacementStrategies.member = Shapes::ShapeRef.new(shape: PlacementStrategy)

    PlacementStrategy.add_member(:field, Shapes::ShapeRef.new(shape: PlacementStrategyField, location_name: "field"))
    PlacementStrategy.add_member(:type, Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: "type"))
    PlacementStrategy.struct_class = Types::PlacementStrategy

    QueryStringParametersMap.key = Shapes::ShapeRef.new(shape: QueryStringKey)
    QueryStringParametersMap.value = Shapes::ShapeRef.new(shape: QueryStringValue)

    SageMakerPipelineParameter.add_member(:name, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterName, required: true, location_name: "Name"))
    SageMakerPipelineParameter.add_member(:value, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterValue, required: true, location_name: "Value"))
    SageMakerPipelineParameter.struct_class = Types::SageMakerPipelineParameter

    SageMakerPipelineParameterList.member = Shapes::ShapeRef.new(shape: SageMakerPipelineParameter)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    SelfManagedKafkaAccessConfigurationCredentials.add_member(:basic_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "BasicAuth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:client_certificate_tls_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "ClientCertificateTlsAuth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:sasl_scram_256_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "SaslScram256Auth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:sasl_scram_512_auth, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "SaslScram512Auth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SelfManagedKafkaAccessConfigurationCredentials.add_member_subclass(:basic_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::BasicAuth)
    SelfManagedKafkaAccessConfigurationCredentials.add_member_subclass(:client_certificate_tls_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::ClientCertificateTlsAuth)
    SelfManagedKafkaAccessConfigurationCredentials.add_member_subclass(:sasl_scram_256_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::SaslScram256Auth)
    SelfManagedKafkaAccessConfigurationCredentials.add_member_subclass(:sasl_scram_512_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::SaslScram512Auth)
    SelfManagedKafkaAccessConfigurationCredentials.add_member_subclass(:unknown, Types::SelfManagedKafkaAccessConfigurationCredentials::Unknown)
    SelfManagedKafkaAccessConfigurationCredentials.struct_class = Types::SelfManagedKafkaAccessConfigurationCredentials

    SelfManagedKafkaAccessConfigurationVpc.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroup"))
    SelfManagedKafkaAccessConfigurationVpc.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "Subnets"))
    SelfManagedKafkaAccessConfigurationVpc.struct_class = Types::SelfManagedKafkaAccessConfigurationVpc

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Sqls.member = Shapes::ShapeRef.new(shape: Sql)

    StartPipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, required: true, location: "uri", location_name: "Name"))
    StartPipeRequest.struct_class = Types::StartPipeRequest

    StartPipeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    StartPipeResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StartPipeResponse.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    StartPipeResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    StartPipeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    StartPipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    StartPipeResponse.struct_class = Types::StartPipeResponse

    StopPipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, required: true, location: "uri", location_name: "Name"))
    StopPipeRequest.struct_class = Types::StopPipeRequest

    StopPipeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    StopPipeResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StopPipeResponse.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    StopPipeResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    StopPipeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    StopPipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    StopPipeResponse.struct_class = Types::StopPipeResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Subnets.member = Shapes::ShapeRef.new(shape: Subnet)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipeArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipeArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdatePipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: PipeDescription, location_name: "Description"))
    UpdatePipeRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    UpdatePipeRequest.add_member(:enrichment, Shapes::ShapeRef.new(shape: OptionalArn, location_name: "Enrichment"))
    UpdatePipeRequest.add_member(:enrichment_parameters, Shapes::ShapeRef.new(shape: PipeEnrichmentParameters, location_name: "EnrichmentParameters"))
    UpdatePipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, required: true, location: "uri", location_name: "Name"))
    UpdatePipeRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    UpdatePipeRequest.add_member(:source_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceParameters, location_name: "SourceParameters"))
    UpdatePipeRequest.add_member(:target, Shapes::ShapeRef.new(shape: Arn, location_name: "Target"))
    UpdatePipeRequest.add_member(:target_parameters, Shapes::ShapeRef.new(shape: PipeTargetParameters, location_name: "TargetParameters"))
    UpdatePipeRequest.struct_class = Types::UpdatePipeRequest

    UpdatePipeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PipeArn, location_name: "Arn"))
    UpdatePipeResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    UpdatePipeResponse.add_member(:current_state, Shapes::ShapeRef.new(shape: PipeState, location_name: "CurrentState"))
    UpdatePipeResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: RequestedPipeState, location_name: "DesiredState"))
    UpdatePipeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UpdatePipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: PipeName, location_name: "Name"))
    UpdatePipeResponse.struct_class = Types::UpdatePipeResponse

    UpdatePipeSourceActiveMQBrokerParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceActiveMQBrokerParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: MQBrokerAccessCredentials, required: true, location_name: "Credentials"))
    UpdatePipeSourceActiveMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceActiveMQBrokerParameters.struct_class = Types::UpdatePipeSourceActiveMQBrokerParameters

    UpdatePipeSourceDynamoDBStreamParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsESM, location_name: "MaximumRetryAttempts"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:on_partial_batch_item_failure, Shapes::ShapeRef.new(shape: OnPartialBatchItemFailureStreams, location_name: "OnPartialBatchItemFailure"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: LimitMax10, location_name: "ParallelizationFactor"))
    UpdatePipeSourceDynamoDBStreamParameters.struct_class = Types::UpdatePipeSourceDynamoDBStreamParameters

    UpdatePipeSourceKinesisStreamParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsESM, location_name: "MaximumRetryAttempts"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:on_partial_batch_item_failure, Shapes::ShapeRef.new(shape: OnPartialBatchItemFailureStreams, location_name: "OnPartialBatchItemFailure"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: LimitMax10, location_name: "ParallelizationFactor"))
    UpdatePipeSourceKinesisStreamParameters.struct_class = Types::UpdatePipeSourceKinesisStreamParameters

    UpdatePipeSourceManagedStreamingKafkaParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceManagedStreamingKafkaParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: MSKAccessCredentials, location_name: "Credentials"))
    UpdatePipeSourceManagedStreamingKafkaParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceManagedStreamingKafkaParameters.struct_class = Types::UpdatePipeSourceManagedStreamingKafkaParameters

    UpdatePipeSourceParameters.add_member(:active_mq_broker_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceActiveMQBrokerParameters, location_name: "ActiveMQBrokerParameters"))
    UpdatePipeSourceParameters.add_member(:dynamo_db_stream_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceDynamoDBStreamParameters, location_name: "DynamoDBStreamParameters"))
    UpdatePipeSourceParameters.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "FilterCriteria"))
    UpdatePipeSourceParameters.add_member(:kinesis_stream_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceKinesisStreamParameters, location_name: "KinesisStreamParameters"))
    UpdatePipeSourceParameters.add_member(:managed_streaming_kafka_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceManagedStreamingKafkaParameters, location_name: "ManagedStreamingKafkaParameters"))
    UpdatePipeSourceParameters.add_member(:rabbit_mq_broker_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceRabbitMQBrokerParameters, location_name: "RabbitMQBrokerParameters"))
    UpdatePipeSourceParameters.add_member(:self_managed_kafka_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceSelfManagedKafkaParameters, location_name: "SelfManagedKafkaParameters"))
    UpdatePipeSourceParameters.add_member(:sqs_queue_parameters, Shapes::ShapeRef.new(shape: UpdatePipeSourceSqsQueueParameters, location_name: "SqsQueueParameters"))
    UpdatePipeSourceParameters.struct_class = Types::UpdatePipeSourceParameters

    UpdatePipeSourceRabbitMQBrokerParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceRabbitMQBrokerParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: MQBrokerAccessCredentials, required: true, location_name: "Credentials"))
    UpdatePipeSourceRabbitMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceRabbitMQBrokerParameters.struct_class = Types::UpdatePipeSourceRabbitMQBrokerParameters

    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: SelfManagedKafkaAccessConfigurationCredentials, location_name: "Credentials"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:server_root_ca_certificate, Shapes::ShapeRef.new(shape: SecretManagerArn, location_name: "ServerRootCaCertificate"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:vpc, Shapes::ShapeRef.new(shape: SelfManagedKafkaAccessConfigurationVpc, location_name: "Vpc"))
    UpdatePipeSourceSelfManagedKafkaParameters.struct_class = Types::UpdatePipeSourceSelfManagedKafkaParameters

    UpdatePipeSourceSqsQueueParameters.add_member(:batch_size, Shapes::ShapeRef.new(shape: LimitMax10000, location_name: "BatchSize"))
    UpdatePipeSourceSqsQueueParameters.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceSqsQueueParameters.struct_class = Types::UpdatePipeSourceSqsQueueParameters

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-10-07"

      api.metadata = {
        "apiVersion" => "2015-10-07",
        "endpointPrefix" => "pipes",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon EventBridge Pipes",
        "serviceId" => "Pipes",
        "signatureVersion" => "v4",
        "signingName" => "pipes",
        "uid" => "pipes-2015-10-07",
      }

      api.add_operation(:create_pipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipe"
        o.http_method = "POST"
        o.http_request_uri = "/v1/pipes/{Name}"
        o.input = Shapes::ShapeRef.new(shape: CreatePipeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_pipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipe"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/pipes/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeletePipeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_pipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipe"
        o.http_method = "GET"
        o.http_request_uri = "/v1/pipes/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DescribePipeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_pipes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipes"
        o.http_method = "GET"
        o.http_request_uri = "/v1/pipes"
        o.input = Shapes::ShapeRef.new(shape: ListPipesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:start_pipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipe"
        o.http_method = "POST"
        o.http_request_uri = "/v1/pipes/{Name}/start"
        o.input = Shapes::ShapeRef.new(shape: StartPipeRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_pipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPipe"
        o.http_method = "POST"
        o.http_request_uri = "/v1/pipes/{Name}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopPipeRequest)
        o.output = Shapes::ShapeRef.new(shape: StopPipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_pipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipe"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/pipes/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end

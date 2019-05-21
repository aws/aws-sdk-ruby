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
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AdditionalCodeRepositoryNamesOrUrls = Shapes::ListShape.new(name: 'AdditionalCodeRepositoryNamesOrUrls')
    AlgorithmArn = Shapes::StringShape.new(name: 'AlgorithmArn')
    AlgorithmImage = Shapes::StringShape.new(name: 'AlgorithmImage')
    AlgorithmSortBy = Shapes::StringShape.new(name: 'AlgorithmSortBy')
    AlgorithmSpecification = Shapes::StructureShape.new(name: 'AlgorithmSpecification')
    AlgorithmStatus = Shapes::StringShape.new(name: 'AlgorithmStatus')
    AlgorithmStatusDetails = Shapes::StructureShape.new(name: 'AlgorithmStatusDetails')
    AlgorithmStatusItem = Shapes::StructureShape.new(name: 'AlgorithmStatusItem')
    AlgorithmStatusItemList = Shapes::ListShape.new(name: 'AlgorithmStatusItemList')
    AlgorithmSummary = Shapes::StructureShape.new(name: 'AlgorithmSummary')
    AlgorithmSummaryList = Shapes::ListShape.new(name: 'AlgorithmSummaryList')
    AlgorithmValidationProfile = Shapes::StructureShape.new(name: 'AlgorithmValidationProfile')
    AlgorithmValidationProfiles = Shapes::ListShape.new(name: 'AlgorithmValidationProfiles')
    AlgorithmValidationSpecification = Shapes::StructureShape.new(name: 'AlgorithmValidationSpecification')
    AnnotationConsolidationConfig = Shapes::StructureShape.new(name: 'AnnotationConsolidationConfig')
    ArnOrName = Shapes::StringShape.new(name: 'ArnOrName')
    AssemblyType = Shapes::StringShape.new(name: 'AssemblyType')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeNames = Shapes::ListShape.new(name: 'AttributeNames')
    BatchStrategy = Shapes::StringShape.new(name: 'BatchStrategy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOperator = Shapes::StringShape.new(name: 'BooleanOperator')
    Branch = Shapes::StringShape.new(name: 'Branch')
    CategoricalParameterRange = Shapes::StructureShape.new(name: 'CategoricalParameterRange')
    CategoricalParameterRangeSpecification = Shapes::StructureShape.new(name: 'CategoricalParameterRangeSpecification')
    CategoricalParameterRanges = Shapes::ListShape.new(name: 'CategoricalParameterRanges')
    Cents = Shapes::IntegerShape.new(name: 'Cents')
    CertifyForMarketplace = Shapes::BooleanShape.new(name: 'CertifyForMarketplace')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelSpecification = Shapes::StructureShape.new(name: 'ChannelSpecification')
    ChannelSpecifications = Shapes::ListShape.new(name: 'ChannelSpecifications')
    CodeRepositoryArn = Shapes::StringShape.new(name: 'CodeRepositoryArn')
    CodeRepositoryContains = Shapes::StringShape.new(name: 'CodeRepositoryContains')
    CodeRepositoryNameContains = Shapes::StringShape.new(name: 'CodeRepositoryNameContains')
    CodeRepositoryNameOrUrl = Shapes::StringShape.new(name: 'CodeRepositoryNameOrUrl')
    CodeRepositorySortBy = Shapes::StringShape.new(name: 'CodeRepositorySortBy')
    CodeRepositorySortOrder = Shapes::StringShape.new(name: 'CodeRepositorySortOrder')
    CodeRepositorySummary = Shapes::StructureShape.new(name: 'CodeRepositorySummary')
    CodeRepositorySummaryList = Shapes::ListShape.new(name: 'CodeRepositorySummaryList')
    CognitoClientId = Shapes::StringShape.new(name: 'CognitoClientId')
    CognitoMemberDefinition = Shapes::StructureShape.new(name: 'CognitoMemberDefinition')
    CognitoUserGroup = Shapes::StringShape.new(name: 'CognitoUserGroup')
    CognitoUserPool = Shapes::StringShape.new(name: 'CognitoUserPool')
    CompilationJobArn = Shapes::StringShape.new(name: 'CompilationJobArn')
    CompilationJobStatus = Shapes::StringShape.new(name: 'CompilationJobStatus')
    CompilationJobSummaries = Shapes::ListShape.new(name: 'CompilationJobSummaries')
    CompilationJobSummary = Shapes::StructureShape.new(name: 'CompilationJobSummary')
    CompressionType = Shapes::StringShape.new(name: 'CompressionType')
    CompressionTypes = Shapes::ListShape.new(name: 'CompressionTypes')
    ContainerDefinition = Shapes::StructureShape.new(name: 'ContainerDefinition')
    ContainerDefinitionList = Shapes::ListShape.new(name: 'ContainerDefinitionList')
    ContainerHostname = Shapes::StringShape.new(name: 'ContainerHostname')
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ContentTypes = Shapes::ListShape.new(name: 'ContentTypes')
    ContinuousParameterRange = Shapes::StructureShape.new(name: 'ContinuousParameterRange')
    ContinuousParameterRangeSpecification = Shapes::StructureShape.new(name: 'ContinuousParameterRangeSpecification')
    ContinuousParameterRanges = Shapes::ListShape.new(name: 'ContinuousParameterRanges')
    CreateAlgorithmInput = Shapes::StructureShape.new(name: 'CreateAlgorithmInput')
    CreateAlgorithmOutput = Shapes::StructureShape.new(name: 'CreateAlgorithmOutput')
    CreateCodeRepositoryInput = Shapes::StructureShape.new(name: 'CreateCodeRepositoryInput')
    CreateCodeRepositoryOutput = Shapes::StructureShape.new(name: 'CreateCodeRepositoryOutput')
    CreateCompilationJobRequest = Shapes::StructureShape.new(name: 'CreateCompilationJobRequest')
    CreateCompilationJobResponse = Shapes::StructureShape.new(name: 'CreateCompilationJobResponse')
    CreateEndpointConfigInput = Shapes::StructureShape.new(name: 'CreateEndpointConfigInput')
    CreateEndpointConfigOutput = Shapes::StructureShape.new(name: 'CreateEndpointConfigOutput')
    CreateEndpointInput = Shapes::StructureShape.new(name: 'CreateEndpointInput')
    CreateEndpointOutput = Shapes::StructureShape.new(name: 'CreateEndpointOutput')
    CreateHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobRequest')
    CreateHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'CreateHyperParameterTuningJobResponse')
    CreateLabelingJobRequest = Shapes::StructureShape.new(name: 'CreateLabelingJobRequest')
    CreateLabelingJobResponse = Shapes::StructureShape.new(name: 'CreateLabelingJobResponse')
    CreateModelInput = Shapes::StructureShape.new(name: 'CreateModelInput')
    CreateModelOutput = Shapes::StructureShape.new(name: 'CreateModelOutput')
    CreateModelPackageInput = Shapes::StructureShape.new(name: 'CreateModelPackageInput')
    CreateModelPackageOutput = Shapes::StructureShape.new(name: 'CreateModelPackageOutput')
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
    CreateWorkteamRequest = Shapes::StructureShape.new(name: 'CreateWorkteamRequest')
    CreateWorkteamResponse = Shapes::StructureShape.new(name: 'CreateWorkteamResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DataInputConfig = Shapes::StringShape.new(name: 'DataInputConfig')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DeleteAlgorithmInput = Shapes::StructureShape.new(name: 'DeleteAlgorithmInput')
    DeleteCodeRepositoryInput = Shapes::StructureShape.new(name: 'DeleteCodeRepositoryInput')
    DeleteEndpointConfigInput = Shapes::StructureShape.new(name: 'DeleteEndpointConfigInput')
    DeleteEndpointInput = Shapes::StructureShape.new(name: 'DeleteEndpointInput')
    DeleteModelInput = Shapes::StructureShape.new(name: 'DeleteModelInput')
    DeleteModelPackageInput = Shapes::StructureShape.new(name: 'DeleteModelPackageInput')
    DeleteNotebookInstanceInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceInput')
    DeleteNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DeleteNotebookInstanceLifecycleConfigInput')
    DeleteTagsInput = Shapes::StructureShape.new(name: 'DeleteTagsInput')
    DeleteTagsOutput = Shapes::StructureShape.new(name: 'DeleteTagsOutput')
    DeleteWorkteamRequest = Shapes::StructureShape.new(name: 'DeleteWorkteamRequest')
    DeleteWorkteamResponse = Shapes::StructureShape.new(name: 'DeleteWorkteamResponse')
    DeployedImage = Shapes::StructureShape.new(name: 'DeployedImage')
    DeployedImages = Shapes::ListShape.new(name: 'DeployedImages')
    DescribeAlgorithmInput = Shapes::StructureShape.new(name: 'DescribeAlgorithmInput')
    DescribeAlgorithmOutput = Shapes::StructureShape.new(name: 'DescribeAlgorithmOutput')
    DescribeCodeRepositoryInput = Shapes::StructureShape.new(name: 'DescribeCodeRepositoryInput')
    DescribeCodeRepositoryOutput = Shapes::StructureShape.new(name: 'DescribeCodeRepositoryOutput')
    DescribeCompilationJobRequest = Shapes::StructureShape.new(name: 'DescribeCompilationJobRequest')
    DescribeCompilationJobResponse = Shapes::StructureShape.new(name: 'DescribeCompilationJobResponse')
    DescribeEndpointConfigInput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigInput')
    DescribeEndpointConfigOutput = Shapes::StructureShape.new(name: 'DescribeEndpointConfigOutput')
    DescribeEndpointInput = Shapes::StructureShape.new(name: 'DescribeEndpointInput')
    DescribeEndpointOutput = Shapes::StructureShape.new(name: 'DescribeEndpointOutput')
    DescribeHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobRequest')
    DescribeHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'DescribeHyperParameterTuningJobResponse')
    DescribeLabelingJobRequest = Shapes::StructureShape.new(name: 'DescribeLabelingJobRequest')
    DescribeLabelingJobResponse = Shapes::StructureShape.new(name: 'DescribeLabelingJobResponse')
    DescribeModelInput = Shapes::StructureShape.new(name: 'DescribeModelInput')
    DescribeModelOutput = Shapes::StructureShape.new(name: 'DescribeModelOutput')
    DescribeModelPackageInput = Shapes::StructureShape.new(name: 'DescribeModelPackageInput')
    DescribeModelPackageOutput = Shapes::StructureShape.new(name: 'DescribeModelPackageOutput')
    DescribeNotebookInstanceInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceInput')
    DescribeNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigInput')
    DescribeNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceLifecycleConfigOutput')
    DescribeNotebookInstanceOutput = Shapes::StructureShape.new(name: 'DescribeNotebookInstanceOutput')
    DescribeSubscribedWorkteamRequest = Shapes::StructureShape.new(name: 'DescribeSubscribedWorkteamRequest')
    DescribeSubscribedWorkteamResponse = Shapes::StructureShape.new(name: 'DescribeSubscribedWorkteamResponse')
    DescribeTrainingJobRequest = Shapes::StructureShape.new(name: 'DescribeTrainingJobRequest')
    DescribeTrainingJobResponse = Shapes::StructureShape.new(name: 'DescribeTrainingJobResponse')
    DescribeTransformJobRequest = Shapes::StructureShape.new(name: 'DescribeTransformJobRequest')
    DescribeTransformJobResponse = Shapes::StructureShape.new(name: 'DescribeTransformJobResponse')
    DescribeWorkteamRequest = Shapes::StructureShape.new(name: 'DescribeWorkteamRequest')
    DescribeWorkteamResponse = Shapes::StructureShape.new(name: 'DescribeWorkteamResponse')
    DesiredWeightAndCapacity = Shapes::StructureShape.new(name: 'DesiredWeightAndCapacity')
    DesiredWeightAndCapacityList = Shapes::ListShape.new(name: 'DesiredWeightAndCapacityList')
    DetailedAlgorithmStatus = Shapes::StringShape.new(name: 'DetailedAlgorithmStatus')
    DetailedModelPackageStatus = Shapes::StringShape.new(name: 'DetailedModelPackageStatus')
    DirectInternetAccess = Shapes::StringShape.new(name: 'DirectInternetAccess')
    DisassociateAdditionalCodeRepositories = Shapes::BooleanShape.new(name: 'DisassociateAdditionalCodeRepositories')
    DisassociateDefaultCodeRepository = Shapes::BooleanShape.new(name: 'DisassociateDefaultCodeRepository')
    DisassociateNotebookInstanceAcceleratorTypes = Shapes::BooleanShape.new(name: 'DisassociateNotebookInstanceAcceleratorTypes')
    DisassociateNotebookInstanceLifecycleConfig = Shapes::BooleanShape.new(name: 'DisassociateNotebookInstanceLifecycleConfig')
    Dollars = Shapes::IntegerShape.new(name: 'Dollars')
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
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EnvironmentKey = Shapes::StringShape.new(name: 'EnvironmentKey')
    EnvironmentMap = Shapes::MapShape.new(name: 'EnvironmentMap')
    EnvironmentValue = Shapes::StringShape.new(name: 'EnvironmentValue')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FinalHyperParameterTuningJobObjectiveMetric = Shapes::StructureShape.new(name: 'FinalHyperParameterTuningJobObjectiveMetric')
    FinalMetricDataList = Shapes::ListShape.new(name: 'FinalMetricDataList')
    Float = Shapes::FloatShape.new(name: 'Float')
    Framework = Shapes::StringShape.new(name: 'Framework')
    GetSearchSuggestionsRequest = Shapes::StructureShape.new(name: 'GetSearchSuggestionsRequest')
    GetSearchSuggestionsResponse = Shapes::StructureShape.new(name: 'GetSearchSuggestionsResponse')
    GitConfig = Shapes::StructureShape.new(name: 'GitConfig')
    GitConfigForUpdate = Shapes::StructureShape.new(name: 'GitConfigForUpdate')
    GitConfigUrl = Shapes::StringShape.new(name: 'GitConfigUrl')
    HumanTaskConfig = Shapes::StructureShape.new(name: 'HumanTaskConfig')
    HyperParameterAlgorithmSpecification = Shapes::StructureShape.new(name: 'HyperParameterAlgorithmSpecification')
    HyperParameterScalingType = Shapes::StringShape.new(name: 'HyperParameterScalingType')
    HyperParameterSpecification = Shapes::StructureShape.new(name: 'HyperParameterSpecification')
    HyperParameterSpecifications = Shapes::ListShape.new(name: 'HyperParameterSpecifications')
    HyperParameterTrainingJobDefinition = Shapes::StructureShape.new(name: 'HyperParameterTrainingJobDefinition')
    HyperParameterTrainingJobSummaries = Shapes::ListShape.new(name: 'HyperParameterTrainingJobSummaries')
    HyperParameterTrainingJobSummary = Shapes::StructureShape.new(name: 'HyperParameterTrainingJobSummary')
    HyperParameterTuningJobArn = Shapes::StringShape.new(name: 'HyperParameterTuningJobArn')
    HyperParameterTuningJobConfig = Shapes::StructureShape.new(name: 'HyperParameterTuningJobConfig')
    HyperParameterTuningJobName = Shapes::StringShape.new(name: 'HyperParameterTuningJobName')
    HyperParameterTuningJobObjective = Shapes::StructureShape.new(name: 'HyperParameterTuningJobObjective')
    HyperParameterTuningJobObjectiveType = Shapes::StringShape.new(name: 'HyperParameterTuningJobObjectiveType')
    HyperParameterTuningJobObjectives = Shapes::ListShape.new(name: 'HyperParameterTuningJobObjectives')
    HyperParameterTuningJobSortByOptions = Shapes::StringShape.new(name: 'HyperParameterTuningJobSortByOptions')
    HyperParameterTuningJobStatus = Shapes::StringShape.new(name: 'HyperParameterTuningJobStatus')
    HyperParameterTuningJobStrategyType = Shapes::StringShape.new(name: 'HyperParameterTuningJobStrategyType')
    HyperParameterTuningJobSummaries = Shapes::ListShape.new(name: 'HyperParameterTuningJobSummaries')
    HyperParameterTuningJobSummary = Shapes::StructureShape.new(name: 'HyperParameterTuningJobSummary')
    HyperParameterTuningJobWarmStartConfig = Shapes::StructureShape.new(name: 'HyperParameterTuningJobWarmStartConfig')
    HyperParameterTuningJobWarmStartType = Shapes::StringShape.new(name: 'HyperParameterTuningJobWarmStartType')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    Image = Shapes::StringShape.new(name: 'Image')
    ImageDigest = Shapes::StringShape.new(name: 'ImageDigest')
    InferenceSpecification = Shapes::StructureShape.new(name: 'InferenceSpecification')
    InputConfig = Shapes::StructureShape.new(name: 'InputConfig')
    InputDataConfig = Shapes::ListShape.new(name: 'InputDataConfig')
    InputModes = Shapes::ListShape.new(name: 'InputModes')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    IntegerParameterRange = Shapes::StructureShape.new(name: 'IntegerParameterRange')
    IntegerParameterRangeSpecification = Shapes::StructureShape.new(name: 'IntegerParameterRangeSpecification')
    IntegerParameterRanges = Shapes::ListShape.new(name: 'IntegerParameterRanges')
    JobReferenceCode = Shapes::StringShape.new(name: 'JobReferenceCode')
    JobReferenceCodeContains = Shapes::StringShape.new(name: 'JobReferenceCodeContains')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LabelAttributeName = Shapes::StringShape.new(name: 'LabelAttributeName')
    LabelCounter = Shapes::IntegerShape.new(name: 'LabelCounter')
    LabelCounters = Shapes::StructureShape.new(name: 'LabelCounters')
    LabelCountersForWorkteam = Shapes::StructureShape.new(name: 'LabelCountersForWorkteam')
    LabelingJobAlgorithmSpecificationArn = Shapes::StringShape.new(name: 'LabelingJobAlgorithmSpecificationArn')
    LabelingJobAlgorithmsConfig = Shapes::StructureShape.new(name: 'LabelingJobAlgorithmsConfig')
    LabelingJobArn = Shapes::StringShape.new(name: 'LabelingJobArn')
    LabelingJobDataAttributes = Shapes::StructureShape.new(name: 'LabelingJobDataAttributes')
    LabelingJobDataSource = Shapes::StructureShape.new(name: 'LabelingJobDataSource')
    LabelingJobForWorkteamSummary = Shapes::StructureShape.new(name: 'LabelingJobForWorkteamSummary')
    LabelingJobForWorkteamSummaryList = Shapes::ListShape.new(name: 'LabelingJobForWorkteamSummaryList')
    LabelingJobInputConfig = Shapes::StructureShape.new(name: 'LabelingJobInputConfig')
    LabelingJobName = Shapes::StringShape.new(name: 'LabelingJobName')
    LabelingJobOutput = Shapes::StructureShape.new(name: 'LabelingJobOutput')
    LabelingJobOutputConfig = Shapes::StructureShape.new(name: 'LabelingJobOutputConfig')
    LabelingJobResourceConfig = Shapes::StructureShape.new(name: 'LabelingJobResourceConfig')
    LabelingJobS3DataSource = Shapes::StructureShape.new(name: 'LabelingJobS3DataSource')
    LabelingJobStatus = Shapes::StringShape.new(name: 'LabelingJobStatus')
    LabelingJobStoppingConditions = Shapes::StructureShape.new(name: 'LabelingJobStoppingConditions')
    LabelingJobSummary = Shapes::StructureShape.new(name: 'LabelingJobSummary')
    LabelingJobSummaryList = Shapes::ListShape.new(name: 'LabelingJobSummaryList')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LastModifiedTime = Shapes::TimestampShape.new(name: 'LastModifiedTime')
    ListAlgorithmsInput = Shapes::StructureShape.new(name: 'ListAlgorithmsInput')
    ListAlgorithmsOutput = Shapes::StructureShape.new(name: 'ListAlgorithmsOutput')
    ListCodeRepositoriesInput = Shapes::StructureShape.new(name: 'ListCodeRepositoriesInput')
    ListCodeRepositoriesOutput = Shapes::StructureShape.new(name: 'ListCodeRepositoriesOutput')
    ListCompilationJobsRequest = Shapes::StructureShape.new(name: 'ListCompilationJobsRequest')
    ListCompilationJobsResponse = Shapes::StructureShape.new(name: 'ListCompilationJobsResponse')
    ListCompilationJobsSortBy = Shapes::StringShape.new(name: 'ListCompilationJobsSortBy')
    ListEndpointConfigsInput = Shapes::StructureShape.new(name: 'ListEndpointConfigsInput')
    ListEndpointConfigsOutput = Shapes::StructureShape.new(name: 'ListEndpointConfigsOutput')
    ListEndpointsInput = Shapes::StructureShape.new(name: 'ListEndpointsInput')
    ListEndpointsOutput = Shapes::StructureShape.new(name: 'ListEndpointsOutput')
    ListHyperParameterTuningJobsRequest = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsRequest')
    ListHyperParameterTuningJobsResponse = Shapes::StructureShape.new(name: 'ListHyperParameterTuningJobsResponse')
    ListLabelingJobsForWorkteamRequest = Shapes::StructureShape.new(name: 'ListLabelingJobsForWorkteamRequest')
    ListLabelingJobsForWorkteamResponse = Shapes::StructureShape.new(name: 'ListLabelingJobsForWorkteamResponse')
    ListLabelingJobsForWorkteamSortByOptions = Shapes::StringShape.new(name: 'ListLabelingJobsForWorkteamSortByOptions')
    ListLabelingJobsRequest = Shapes::StructureShape.new(name: 'ListLabelingJobsRequest')
    ListLabelingJobsResponse = Shapes::StructureShape.new(name: 'ListLabelingJobsResponse')
    ListModelPackagesInput = Shapes::StructureShape.new(name: 'ListModelPackagesInput')
    ListModelPackagesOutput = Shapes::StructureShape.new(name: 'ListModelPackagesOutput')
    ListModelsInput = Shapes::StructureShape.new(name: 'ListModelsInput')
    ListModelsOutput = Shapes::StructureShape.new(name: 'ListModelsOutput')
    ListNotebookInstanceLifecycleConfigsInput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsInput')
    ListNotebookInstanceLifecycleConfigsOutput = Shapes::StructureShape.new(name: 'ListNotebookInstanceLifecycleConfigsOutput')
    ListNotebookInstancesInput = Shapes::StructureShape.new(name: 'ListNotebookInstancesInput')
    ListNotebookInstancesOutput = Shapes::StructureShape.new(name: 'ListNotebookInstancesOutput')
    ListSubscribedWorkteamsRequest = Shapes::StructureShape.new(name: 'ListSubscribedWorkteamsRequest')
    ListSubscribedWorkteamsResponse = Shapes::StructureShape.new(name: 'ListSubscribedWorkteamsResponse')
    ListTagsInput = Shapes::StructureShape.new(name: 'ListTagsInput')
    ListTagsMaxResults = Shapes::IntegerShape.new(name: 'ListTagsMaxResults')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    ListTrainingJobsForHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsForHyperParameterTuningJobRequest')
    ListTrainingJobsForHyperParameterTuningJobResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsForHyperParameterTuningJobResponse')
    ListTrainingJobsRequest = Shapes::StructureShape.new(name: 'ListTrainingJobsRequest')
    ListTrainingJobsResponse = Shapes::StructureShape.new(name: 'ListTrainingJobsResponse')
    ListTransformJobsRequest = Shapes::StructureShape.new(name: 'ListTransformJobsRequest')
    ListTransformJobsResponse = Shapes::StructureShape.new(name: 'ListTransformJobsResponse')
    ListWorkteamsRequest = Shapes::StructureShape.new(name: 'ListWorkteamsRequest')
    ListWorkteamsResponse = Shapes::StructureShape.new(name: 'ListWorkteamsResponse')
    ListWorkteamsSortByOptions = Shapes::StringShape.new(name: 'ListWorkteamsSortByOptions')
    MaxConcurrentTaskCount = Shapes::IntegerShape.new(name: 'MaxConcurrentTaskCount')
    MaxConcurrentTransforms = Shapes::IntegerShape.new(name: 'MaxConcurrentTransforms')
    MaxHumanLabeledObjectCount = Shapes::IntegerShape.new(name: 'MaxHumanLabeledObjectCount')
    MaxNumberOfTrainingJobs = Shapes::IntegerShape.new(name: 'MaxNumberOfTrainingJobs')
    MaxParallelTrainingJobs = Shapes::IntegerShape.new(name: 'MaxParallelTrainingJobs')
    MaxPayloadInMB = Shapes::IntegerShape.new(name: 'MaxPayloadInMB')
    MaxPercentageOfInputDatasetLabeled = Shapes::IntegerShape.new(name: 'MaxPercentageOfInputDatasetLabeled')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxRuntimeInSeconds = Shapes::IntegerShape.new(name: 'MaxRuntimeInSeconds')
    MemberDefinition = Shapes::StructureShape.new(name: 'MemberDefinition')
    MemberDefinitions = Shapes::ListShape.new(name: 'MemberDefinitions')
    MetricData = Shapes::StructureShape.new(name: 'MetricData')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionList = Shapes::ListShape.new(name: 'MetricDefinitionList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricRegex = Shapes::StringShape.new(name: 'MetricRegex')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelArtifacts = Shapes::StructureShape.new(name: 'ModelArtifacts')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelNameContains = Shapes::StringShape.new(name: 'ModelNameContains')
    ModelPackageArn = Shapes::StringShape.new(name: 'ModelPackageArn')
    ModelPackageContainerDefinition = Shapes::StructureShape.new(name: 'ModelPackageContainerDefinition')
    ModelPackageContainerDefinitionList = Shapes::ListShape.new(name: 'ModelPackageContainerDefinitionList')
    ModelPackageSortBy = Shapes::StringShape.new(name: 'ModelPackageSortBy')
    ModelPackageStatus = Shapes::StringShape.new(name: 'ModelPackageStatus')
    ModelPackageStatusDetails = Shapes::StructureShape.new(name: 'ModelPackageStatusDetails')
    ModelPackageStatusItem = Shapes::StructureShape.new(name: 'ModelPackageStatusItem')
    ModelPackageStatusItemList = Shapes::ListShape.new(name: 'ModelPackageStatusItemList')
    ModelPackageSummary = Shapes::StructureShape.new(name: 'ModelPackageSummary')
    ModelPackageSummaryList = Shapes::ListShape.new(name: 'ModelPackageSummaryList')
    ModelPackageValidationProfile = Shapes::StructureShape.new(name: 'ModelPackageValidationProfile')
    ModelPackageValidationProfiles = Shapes::ListShape.new(name: 'ModelPackageValidationProfiles')
    ModelPackageValidationSpecification = Shapes::StructureShape.new(name: 'ModelPackageValidationSpecification')
    ModelSortKey = Shapes::StringShape.new(name: 'ModelSortKey')
    ModelSummary = Shapes::StructureShape.new(name: 'ModelSummary')
    ModelSummaryList = Shapes::ListShape.new(name: 'ModelSummaryList')
    NameContains = Shapes::StringShape.new(name: 'NameContains')
    NestedFilters = Shapes::StructureShape.new(name: 'NestedFilters')
    NestedFiltersList = Shapes::ListShape.new(name: 'NestedFiltersList')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotebookInstanceAcceleratorType = Shapes::StringShape.new(name: 'NotebookInstanceAcceleratorType')
    NotebookInstanceAcceleratorTypes = Shapes::ListShape.new(name: 'NotebookInstanceAcceleratorTypes')
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
    NotebookInstanceVolumeSizeInGB = Shapes::IntegerShape.new(name: 'NotebookInstanceVolumeSizeInGB')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    NotificationTopicArn = Shapes::StringShape.new(name: 'NotificationTopicArn')
    NumberOfHumanWorkersPerDataObject = Shapes::IntegerShape.new(name: 'NumberOfHumanWorkersPerDataObject')
    ObjectiveStatus = Shapes::StringShape.new(name: 'ObjectiveStatus')
    ObjectiveStatusCounter = Shapes::IntegerShape.new(name: 'ObjectiveStatusCounter')
    ObjectiveStatusCounters = Shapes::StructureShape.new(name: 'ObjectiveStatusCounters')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OrderKey = Shapes::StringShape.new(name: 'OrderKey')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterRange = Shapes::StructureShape.new(name: 'ParameterRange')
    ParameterRanges = Shapes::StructureShape.new(name: 'ParameterRanges')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParameterValues = Shapes::ListShape.new(name: 'ParameterValues')
    ParentHyperParameterTuningJob = Shapes::StructureShape.new(name: 'ParentHyperParameterTuningJob')
    ParentHyperParameterTuningJobs = Shapes::ListShape.new(name: 'ParentHyperParameterTuningJobs')
    ProductId = Shapes::StringShape.new(name: 'ProductId')
    ProductListings = Shapes::ListShape.new(name: 'ProductListings')
    ProductionVariant = Shapes::StructureShape.new(name: 'ProductionVariant')
    ProductionVariantAcceleratorType = Shapes::StringShape.new(name: 'ProductionVariantAcceleratorType')
    ProductionVariantInstanceType = Shapes::StringShape.new(name: 'ProductionVariantInstanceType')
    ProductionVariantList = Shapes::ListShape.new(name: 'ProductionVariantList')
    ProductionVariantSummary = Shapes::StructureShape.new(name: 'ProductionVariantSummary')
    ProductionVariantSummaryList = Shapes::ListShape.new(name: 'ProductionVariantSummaryList')
    PropertyNameHint = Shapes::StringShape.new(name: 'PropertyNameHint')
    PropertyNameQuery = Shapes::StructureShape.new(name: 'PropertyNameQuery')
    PropertyNameSuggestion = Shapes::StructureShape.new(name: 'PropertyNameSuggestion')
    PropertyNameSuggestionList = Shapes::ListShape.new(name: 'PropertyNameSuggestionList')
    PublicWorkforceTaskPrice = Shapes::StructureShape.new(name: 'PublicWorkforceTaskPrice')
    RealtimeInferenceInstanceTypes = Shapes::ListShape.new(name: 'RealtimeInferenceInstanceTypes')
    RecordWrapper = Shapes::StringShape.new(name: 'RecordWrapper')
    RenderUiTemplateRequest = Shapes::StructureShape.new(name: 'RenderUiTemplateRequest')
    RenderUiTemplateResponse = Shapes::StructureShape.new(name: 'RenderUiTemplateResponse')
    RenderableTask = Shapes::StructureShape.new(name: 'RenderableTask')
    RenderingError = Shapes::StructureShape.new(name: 'RenderingError')
    RenderingErrorList = Shapes::ListShape.new(name: 'RenderingErrorList')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfig = Shapes::StructureShape.new(name: 'ResourceConfig')
    ResourceInUse = Shapes::StructureShape.new(name: 'ResourceInUse')
    ResourceLimitExceeded = Shapes::StructureShape.new(name: 'ResourceLimitExceeded')
    ResourceLimits = Shapes::StructureShape.new(name: 'ResourceLimits')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ResourcePropertyName = Shapes::StringShape.new(name: 'ResourcePropertyName')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseMIMEType = Shapes::StringShape.new(name: 'ResponseMIMEType')
    ResponseMIMETypes = Shapes::ListShape.new(name: 'ResponseMIMETypes')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RootAccess = Shapes::StringShape.new(name: 'RootAccess')
    S3DataDistribution = Shapes::StringShape.new(name: 'S3DataDistribution')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3DataType = Shapes::StringShape.new(name: 'S3DataType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SearchExpression = Shapes::StructureShape.new(name: 'SearchExpression')
    SearchExpressionList = Shapes::ListShape.new(name: 'SearchExpressionList')
    SearchRecord = Shapes::StructureShape.new(name: 'SearchRecord')
    SearchRequest = Shapes::StructureShape.new(name: 'SearchRequest')
    SearchResponse = Shapes::StructureShape.new(name: 'SearchResponse')
    SearchResultsList = Shapes::ListShape.new(name: 'SearchResultsList')
    SearchSortOrder = Shapes::StringShape.new(name: 'SearchSortOrder')
    SecondaryStatus = Shapes::StringShape.new(name: 'SecondaryStatus')
    SecondaryStatusTransition = Shapes::StructureShape.new(name: 'SecondaryStatusTransition')
    SecondaryStatusTransitions = Shapes::ListShape.new(name: 'SecondaryStatusTransitions')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    Seed = Shapes::IntegerShape.new(name: 'Seed')
    SessionExpirationDurationInSeconds = Shapes::IntegerShape.new(name: 'SessionExpirationDurationInSeconds')
    ShuffleConfig = Shapes::StructureShape.new(name: 'ShuffleConfig')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceAlgorithm = Shapes::StructureShape.new(name: 'SourceAlgorithm')
    SourceAlgorithmList = Shapes::ListShape.new(name: 'SourceAlgorithmList')
    SourceAlgorithmSpecification = Shapes::StructureShape.new(name: 'SourceAlgorithmSpecification')
    SplitType = Shapes::StringShape.new(name: 'SplitType')
    StartNotebookInstanceInput = Shapes::StructureShape.new(name: 'StartNotebookInstanceInput')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopCompilationJobRequest = Shapes::StructureShape.new(name: 'StopCompilationJobRequest')
    StopHyperParameterTuningJobRequest = Shapes::StructureShape.new(name: 'StopHyperParameterTuningJobRequest')
    StopLabelingJobRequest = Shapes::StructureShape.new(name: 'StopLabelingJobRequest')
    StopNotebookInstanceInput = Shapes::StructureShape.new(name: 'StopNotebookInstanceInput')
    StopTrainingJobRequest = Shapes::StructureShape.new(name: 'StopTrainingJobRequest')
    StopTransformJobRequest = Shapes::StructureShape.new(name: 'StopTransformJobRequest')
    StoppingCondition = Shapes::StructureShape.new(name: 'StoppingCondition')
    String = Shapes::StringShape.new(name: 'String')
    String200 = Shapes::StringShape.new(name: 'String200')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SubscribedWorkteam = Shapes::StructureShape.new(name: 'SubscribedWorkteam')
    SubscribedWorkteams = Shapes::ListShape.new(name: 'SubscribedWorkteams')
    Success = Shapes::BooleanShape.new(name: 'Success')
    SuggestionQuery = Shapes::StructureShape.new(name: 'SuggestionQuery')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetDevice = Shapes::StringShape.new(name: 'TargetDevice')
    TaskAvailabilityLifetimeInSeconds = Shapes::IntegerShape.new(name: 'TaskAvailabilityLifetimeInSeconds')
    TaskCount = Shapes::IntegerShape.new(name: 'TaskCount')
    TaskDescription = Shapes::StringShape.new(name: 'TaskDescription')
    TaskInput = Shapes::StringShape.new(name: 'TaskInput')
    TaskKeyword = Shapes::StringShape.new(name: 'TaskKeyword')
    TaskKeywords = Shapes::ListShape.new(name: 'TaskKeywords')
    TaskTimeLimitInSeconds = Shapes::IntegerShape.new(name: 'TaskTimeLimitInSeconds')
    TaskTitle = Shapes::StringShape.new(name: 'TaskTitle')
    TemplateContent = Shapes::StringShape.new(name: 'TemplateContent')
    TenthFractionsOfACent = Shapes::IntegerShape.new(name: 'TenthFractionsOfACent')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrainingInputMode = Shapes::StringShape.new(name: 'TrainingInputMode')
    TrainingInstanceCount = Shapes::IntegerShape.new(name: 'TrainingInstanceCount')
    TrainingInstanceType = Shapes::StringShape.new(name: 'TrainingInstanceType')
    TrainingInstanceTypes = Shapes::ListShape.new(name: 'TrainingInstanceTypes')
    TrainingJob = Shapes::StructureShape.new(name: 'TrainingJob')
    TrainingJobArn = Shapes::StringShape.new(name: 'TrainingJobArn')
    TrainingJobDefinition = Shapes::StructureShape.new(name: 'TrainingJobDefinition')
    TrainingJobEarlyStoppingType = Shapes::StringShape.new(name: 'TrainingJobEarlyStoppingType')
    TrainingJobName = Shapes::StringShape.new(name: 'TrainingJobName')
    TrainingJobSortByOptions = Shapes::StringShape.new(name: 'TrainingJobSortByOptions')
    TrainingJobStatus = Shapes::StringShape.new(name: 'TrainingJobStatus')
    TrainingJobStatusCounter = Shapes::IntegerShape.new(name: 'TrainingJobStatusCounter')
    TrainingJobStatusCounters = Shapes::StructureShape.new(name: 'TrainingJobStatusCounters')
    TrainingJobSummaries = Shapes::ListShape.new(name: 'TrainingJobSummaries')
    TrainingJobSummary = Shapes::StructureShape.new(name: 'TrainingJobSummary')
    TrainingSpecification = Shapes::StructureShape.new(name: 'TrainingSpecification')
    TransformDataSource = Shapes::StructureShape.new(name: 'TransformDataSource')
    TransformEnvironmentKey = Shapes::StringShape.new(name: 'TransformEnvironmentKey')
    TransformEnvironmentMap = Shapes::MapShape.new(name: 'TransformEnvironmentMap')
    TransformEnvironmentValue = Shapes::StringShape.new(name: 'TransformEnvironmentValue')
    TransformInput = Shapes::StructureShape.new(name: 'TransformInput')
    TransformInstanceCount = Shapes::IntegerShape.new(name: 'TransformInstanceCount')
    TransformInstanceType = Shapes::StringShape.new(name: 'TransformInstanceType')
    TransformInstanceTypes = Shapes::ListShape.new(name: 'TransformInstanceTypes')
    TransformJobArn = Shapes::StringShape.new(name: 'TransformJobArn')
    TransformJobDefinition = Shapes::StructureShape.new(name: 'TransformJobDefinition')
    TransformJobName = Shapes::StringShape.new(name: 'TransformJobName')
    TransformJobStatus = Shapes::StringShape.new(name: 'TransformJobStatus')
    TransformJobSummaries = Shapes::ListShape.new(name: 'TransformJobSummaries')
    TransformJobSummary = Shapes::StructureShape.new(name: 'TransformJobSummary')
    TransformOutput = Shapes::StructureShape.new(name: 'TransformOutput')
    TransformResources = Shapes::StructureShape.new(name: 'TransformResources')
    TransformS3DataSource = Shapes::StructureShape.new(name: 'TransformS3DataSource')
    USD = Shapes::StructureShape.new(name: 'USD')
    UiConfig = Shapes::StructureShape.new(name: 'UiConfig')
    UiTemplate = Shapes::StructureShape.new(name: 'UiTemplate')
    UpdateCodeRepositoryInput = Shapes::StructureShape.new(name: 'UpdateCodeRepositoryInput')
    UpdateCodeRepositoryOutput = Shapes::StructureShape.new(name: 'UpdateCodeRepositoryOutput')
    UpdateEndpointInput = Shapes::StructureShape.new(name: 'UpdateEndpointInput')
    UpdateEndpointOutput = Shapes::StructureShape.new(name: 'UpdateEndpointOutput')
    UpdateEndpointWeightsAndCapacitiesInput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesInput')
    UpdateEndpointWeightsAndCapacitiesOutput = Shapes::StructureShape.new(name: 'UpdateEndpointWeightsAndCapacitiesOutput')
    UpdateNotebookInstanceInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceInput')
    UpdateNotebookInstanceLifecycleConfigInput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigInput')
    UpdateNotebookInstanceLifecycleConfigOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceLifecycleConfigOutput')
    UpdateNotebookInstanceOutput = Shapes::StructureShape.new(name: 'UpdateNotebookInstanceOutput')
    UpdateWorkteamRequest = Shapes::StructureShape.new(name: 'UpdateWorkteamRequest')
    UpdateWorkteamResponse = Shapes::StructureShape.new(name: 'UpdateWorkteamResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    VariantName = Shapes::StringShape.new(name: 'VariantName')
    VariantWeight = Shapes::FloatShape.new(name: 'VariantWeight')
    VolumeSizeInGB = Shapes::IntegerShape.new(name: 'VolumeSizeInGB')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcSecurityGroupIds = Shapes::ListShape.new(name: 'VpcSecurityGroupIds')
    Workteam = Shapes::StructureShape.new(name: 'Workteam')
    WorkteamArn = Shapes::StringShape.new(name: 'WorkteamArn')
    WorkteamName = Shapes::StringShape.new(name: 'WorkteamName')
    Workteams = Shapes::ListShape.new(name: 'Workteams')

    AddTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AddTagsOutput.struct_class = Types::AddTagsOutput

    AdditionalCodeRepositoryNamesOrUrls.member = Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl)

    AlgorithmSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: "TrainingImage"))
    AlgorithmSpecification.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "AlgorithmName"))
    AlgorithmSpecification.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    AlgorithmSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    AlgorithmSpecification.struct_class = Types::AlgorithmSpecification

    AlgorithmStatusDetails.add_member(:validation_statuses, Shapes::ShapeRef.new(shape: AlgorithmStatusItemList, location_name: "ValidationStatuses"))
    AlgorithmStatusDetails.add_member(:image_scan_statuses, Shapes::ShapeRef.new(shape: AlgorithmStatusItemList, location_name: "ImageScanStatuses"))
    AlgorithmStatusDetails.struct_class = Types::AlgorithmStatusDetails

    AlgorithmStatusItem.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    AlgorithmStatusItem.add_member(:status, Shapes::ShapeRef.new(shape: DetailedAlgorithmStatus, required: true, location_name: "Status"))
    AlgorithmStatusItem.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    AlgorithmStatusItem.struct_class = Types::AlgorithmStatusItem

    AlgorithmStatusItemList.member = Shapes::ShapeRef.new(shape: AlgorithmStatusItem)

    AlgorithmSummary.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    AlgorithmSummary.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    AlgorithmSummary.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    AlgorithmSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    AlgorithmSummary.add_member(:algorithm_status, Shapes::ShapeRef.new(shape: AlgorithmStatus, required: true, location_name: "AlgorithmStatus"))
    AlgorithmSummary.struct_class = Types::AlgorithmSummary

    AlgorithmSummaryList.member = Shapes::ShapeRef.new(shape: AlgorithmSummary)

    AlgorithmValidationProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ProfileName"))
    AlgorithmValidationProfile.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: TrainingJobDefinition, required: true, location_name: "TrainingJobDefinition"))
    AlgorithmValidationProfile.add_member(:transform_job_definition, Shapes::ShapeRef.new(shape: TransformJobDefinition, location_name: "TransformJobDefinition"))
    AlgorithmValidationProfile.struct_class = Types::AlgorithmValidationProfile

    AlgorithmValidationProfiles.member = Shapes::ShapeRef.new(shape: AlgorithmValidationProfile)

    AlgorithmValidationSpecification.add_member(:validation_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ValidationRole"))
    AlgorithmValidationSpecification.add_member(:validation_profiles, Shapes::ShapeRef.new(shape: AlgorithmValidationProfiles, required: true, location_name: "ValidationProfiles"))
    AlgorithmValidationSpecification.struct_class = Types::AlgorithmValidationSpecification

    AnnotationConsolidationConfig.add_member(:annotation_consolidation_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "AnnotationConsolidationLambdaArn"))
    AnnotationConsolidationConfig.struct_class = Types::AnnotationConsolidationConfig

    AttributeNames.member = Shapes::ShapeRef.new(shape: AttributeName)

    CategoricalParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    CategoricalParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRange.struct_class = Types::CategoricalParameterRange

    CategoricalParameterRangeSpecification.add_member(:values, Shapes::ShapeRef.new(shape: ParameterValues, required: true, location_name: "Values"))
    CategoricalParameterRangeSpecification.struct_class = Types::CategoricalParameterRangeSpecification

    CategoricalParameterRanges.member = Shapes::ShapeRef.new(shape: CategoricalParameterRange)

    Channel.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    Channel.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "DataSource"))
    Channel.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Channel.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    Channel.add_member(:record_wrapper_type, Shapes::ShapeRef.new(shape: RecordWrapper, location_name: "RecordWrapperType"))
    Channel.add_member(:input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: "InputMode"))
    Channel.add_member(:shuffle_config, Shapes::ShapeRef.new(shape: ShuffleConfig, location_name: "ShuffleConfig"))
    Channel.struct_class = Types::Channel

    ChannelSpecification.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "Name"))
    ChannelSpecification.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    ChannelSpecification.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRequired"))
    ChannelSpecification.add_member(:supported_content_types, Shapes::ShapeRef.new(shape: ContentTypes, required: true, location_name: "SupportedContentTypes"))
    ChannelSpecification.add_member(:supported_compression_types, Shapes::ShapeRef.new(shape: CompressionTypes, location_name: "SupportedCompressionTypes"))
    ChannelSpecification.add_member(:supported_input_modes, Shapes::ShapeRef.new(shape: InputModes, required: true, location_name: "SupportedInputModes"))
    ChannelSpecification.struct_class = Types::ChannelSpecification

    ChannelSpecifications.member = Shapes::ShapeRef.new(shape: ChannelSpecification)

    CodeRepositorySummary.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    CodeRepositorySummary.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    CodeRepositorySummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    CodeRepositorySummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    CodeRepositorySummary.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, location_name: "GitConfig"))
    CodeRepositorySummary.struct_class = Types::CodeRepositorySummary

    CodeRepositorySummaryList.member = Shapes::ShapeRef.new(shape: CodeRepositorySummary)

    CognitoMemberDefinition.add_member(:user_pool, Shapes::ShapeRef.new(shape: CognitoUserPool, required: true, location_name: "UserPool"))
    CognitoMemberDefinition.add_member(:user_group, Shapes::ShapeRef.new(shape: CognitoUserGroup, required: true, location_name: "UserGroup"))
    CognitoMemberDefinition.add_member(:client_id, Shapes::ShapeRef.new(shape: CognitoClientId, required: true, location_name: "ClientId"))
    CognitoMemberDefinition.struct_class = Types::CognitoMemberDefinition

    CompilationJobSummaries.member = Shapes::ShapeRef.new(shape: CompilationJobSummary)

    CompilationJobSummary.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    CompilationJobSummary.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    CompilationJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    CompilationJobSummary.add_member(:compilation_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationStartTime"))
    CompilationJobSummary.add_member(:compilation_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationEndTime"))
    CompilationJobSummary.add_member(:compilation_target_device, Shapes::ShapeRef.new(shape: TargetDevice, required: true, location_name: "CompilationTargetDevice"))
    CompilationJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    CompilationJobSummary.add_member(:compilation_job_status, Shapes::ShapeRef.new(shape: CompilationJobStatus, required: true, location_name: "CompilationJobStatus"))
    CompilationJobSummary.struct_class = Types::CompilationJobSummary

    CompressionTypes.member = Shapes::ShapeRef.new(shape: CompressionType)

    ContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "Image"))
    ContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentMap, location_name: "Environment"))
    ContainerDefinition.add_member(:model_package_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "ModelPackageName"))
    ContainerDefinition.struct_class = Types::ContainerDefinition

    ContainerDefinitionList.member = Shapes::ShapeRef.new(shape: ContainerDefinition)

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    ContentTypes.member = Shapes::ShapeRef.new(shape: ContentType)

    ContinuousParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    ContinuousParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: HyperParameterScalingType, location_name: "ScalingType"))
    ContinuousParameterRange.struct_class = Types::ContinuousParameterRange

    ContinuousParameterRangeSpecification.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    ContinuousParameterRangeSpecification.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    ContinuousParameterRangeSpecification.struct_class = Types::ContinuousParameterRangeSpecification

    ContinuousParameterRanges.member = Shapes::ShapeRef.new(shape: ContinuousParameterRange)

    CreateAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    CreateAlgorithmInput.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    CreateAlgorithmInput.add_member(:training_specification, Shapes::ShapeRef.new(shape: TrainingSpecification, required: true, location_name: "TrainingSpecification"))
    CreateAlgorithmInput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    CreateAlgorithmInput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: AlgorithmValidationSpecification, location_name: "ValidationSpecification"))
    CreateAlgorithmInput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    CreateAlgorithmInput.struct_class = Types::CreateAlgorithmInput

    CreateAlgorithmOutput.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    CreateAlgorithmOutput.struct_class = Types::CreateAlgorithmOutput

    CreateCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    CreateCodeRepositoryInput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, required: true, location_name: "GitConfig"))
    CreateCodeRepositoryInput.struct_class = Types::CreateCodeRepositoryInput

    CreateCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    CreateCodeRepositoryOutput.struct_class = Types::CreateCodeRepositoryOutput

    CreateCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    CreateCompilationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateCompilationJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfig, required: true, location_name: "InputConfig"))
    CreateCompilationJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateCompilationJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    CreateCompilationJobRequest.struct_class = Types::CreateCompilationJobRequest

    CreateCompilationJobResponse.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    CreateCompilationJobResponse.struct_class = Types::CreateCompilationJobResponse

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
    CreateHyperParameterTuningJobRequest.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition, location_name: "TrainingJobDefinition"))
    CreateHyperParameterTuningJobRequest.add_member(:warm_start_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobWarmStartConfig, location_name: "WarmStartConfig"))
    CreateHyperParameterTuningJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHyperParameterTuningJobRequest.struct_class = Types::CreateHyperParameterTuningJobRequest

    CreateHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, required: true, location_name: "HyperParameterTuningJobArn"))
    CreateHyperParameterTuningJobResponse.struct_class = Types::CreateHyperParameterTuningJobResponse

    CreateLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    CreateLabelingJobRequest.add_member(:label_attribute_name, Shapes::ShapeRef.new(shape: LabelAttributeName, required: true, location_name: "LabelAttributeName"))
    CreateLabelingJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: LabelingJobInputConfig, required: true, location_name: "InputConfig"))
    CreateLabelingJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: LabelingJobOutputConfig, required: true, location_name: "OutputConfig"))
    CreateLabelingJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateLabelingJobRequest.add_member(:label_category_config_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "LabelCategoryConfigS3Uri"))
    CreateLabelingJobRequest.add_member(:stopping_conditions, Shapes::ShapeRef.new(shape: LabelingJobStoppingConditions, location_name: "StoppingConditions"))
    CreateLabelingJobRequest.add_member(:labeling_job_algorithms_config, Shapes::ShapeRef.new(shape: LabelingJobAlgorithmsConfig, location_name: "LabelingJobAlgorithmsConfig"))
    CreateLabelingJobRequest.add_member(:human_task_config, Shapes::ShapeRef.new(shape: HumanTaskConfig, required: true, location_name: "HumanTaskConfig"))
    CreateLabelingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLabelingJobRequest.struct_class = Types::CreateLabelingJobRequest

    CreateLabelingJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, required: true, location_name: "LabelingJobArn"))
    CreateLabelingJobResponse.struct_class = Types::CreateLabelingJobResponse

    CreateModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    CreateModelInput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, location_name: "PrimaryContainer"))
    CreateModelInput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerDefinitionList, location_name: "Containers"))
    CreateModelInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateModelInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateModelInput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateModelInput.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    CreateModelInput.struct_class = Types::CreateModelInput

    CreateModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    CreateModelOutput.struct_class = Types::CreateModelOutput

    CreateModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    CreateModelPackageInput.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    CreateModelPackageInput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    CreateModelPackageInput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    CreateModelPackageInput.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    CreateModelPackageInput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    CreateModelPackageInput.struct_class = Types::CreateModelPackageInput

    CreateModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    CreateModelPackageOutput.struct_class = Types::CreateModelPackageOutput

    CreateNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    CreateNotebookInstanceInput.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
    CreateNotebookInstanceInput.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    CreateNotebookInstanceInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateNotebookInstanceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateNotebookInstanceInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateNotebookInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateNotebookInstanceInput.add_member(:lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, location_name: "LifecycleConfigName"))
    CreateNotebookInstanceInput.add_member(:direct_internet_access, Shapes::ShapeRef.new(shape: DirectInternetAccess, location_name: "DirectInternetAccess"))
    CreateNotebookInstanceInput.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: NotebookInstanceVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    CreateNotebookInstanceInput.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorTypes, location_name: "AcceleratorTypes"))
    CreateNotebookInstanceInput.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    CreateNotebookInstanceInput.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    CreateNotebookInstanceInput.add_member(:root_access, Shapes::ShapeRef.new(shape: RootAccess, location_name: "RootAccess"))
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
    CreateTrainingJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    CreateTrainingJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    CreateTrainingJobRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    CreateTrainingJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateTrainingJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    CreateTrainingJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrainingJobRequest.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    CreateTrainingJobRequest.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
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

    CreateWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    CreateWorkteamRequest.add_member(:member_definitions, Shapes::ShapeRef.new(shape: MemberDefinitions, required: true, location_name: "MemberDefinitions"))
    CreateWorkteamRequest.add_member(:description, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "Description"))
    CreateWorkteamRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    CreateWorkteamRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkteamRequest.struct_class = Types::CreateWorkteamRequest

    CreateWorkteamResponse.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, location_name: "WorkteamArn"))
    CreateWorkteamResponse.struct_class = Types::CreateWorkteamResponse

    DataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataSource, location_name: "S3DataSource"))
    DataSource.struct_class = Types::DataSource

    DeleteAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    DeleteAlgorithmInput.struct_class = Types::DeleteAlgorithmInput

    DeleteCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DeleteCodeRepositoryInput.struct_class = Types::DeleteCodeRepositoryInput

    DeleteEndpointConfigInput.add_member(:endpoint_config_name, Shapes::ShapeRef.new(shape: EndpointConfigName, required: true, location_name: "EndpointConfigName"))
    DeleteEndpointConfigInput.struct_class = Types::DeleteEndpointConfigInput

    DeleteEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    DeleteEndpointInput.struct_class = Types::DeleteEndpointInput

    DeleteModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DeleteModelInput.struct_class = Types::DeleteModelInput

    DeleteModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    DeleteModelPackageInput.struct_class = Types::DeleteModelPackageInput

    DeleteNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    DeleteNotebookInstanceInput.struct_class = Types::DeleteNotebookInstanceInput

    DeleteNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    DeleteNotebookInstanceLifecycleConfigInput.struct_class = Types::DeleteNotebookInstanceLifecycleConfigInput

    DeleteTagsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsInput.struct_class = Types::DeleteTagsInput

    DeleteTagsOutput.struct_class = Types::DeleteTagsOutput

    DeleteWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    DeleteWorkteamRequest.struct_class = Types::DeleteWorkteamRequest

    DeleteWorkteamResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, required: true, location_name: "Success"))
    DeleteWorkteamResponse.struct_class = Types::DeleteWorkteamResponse

    DeployedImage.add_member(:specified_image, Shapes::ShapeRef.new(shape: Image, location_name: "SpecifiedImage"))
    DeployedImage.add_member(:resolved_image, Shapes::ShapeRef.new(shape: Image, location_name: "ResolvedImage"))
    DeployedImage.add_member(:resolution_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResolutionTime"))
    DeployedImage.struct_class = Types::DeployedImage

    DeployedImages.member = Shapes::ShapeRef.new(shape: DeployedImage)

    DescribeAlgorithmInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "AlgorithmName"))
    DescribeAlgorithmInput.struct_class = Types::DescribeAlgorithmInput

    DescribeAlgorithmOutput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "AlgorithmName"))
    DescribeAlgorithmOutput.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: AlgorithmArn, required: true, location_name: "AlgorithmArn"))
    DescribeAlgorithmOutput.add_member(:algorithm_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "AlgorithmDescription"))
    DescribeAlgorithmOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeAlgorithmOutput.add_member(:training_specification, Shapes::ShapeRef.new(shape: TrainingSpecification, required: true, location_name: "TrainingSpecification"))
    DescribeAlgorithmOutput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    DescribeAlgorithmOutput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: AlgorithmValidationSpecification, location_name: "ValidationSpecification"))
    DescribeAlgorithmOutput.add_member(:algorithm_status, Shapes::ShapeRef.new(shape: AlgorithmStatus, required: true, location_name: "AlgorithmStatus"))
    DescribeAlgorithmOutput.add_member(:algorithm_status_details, Shapes::ShapeRef.new(shape: AlgorithmStatusDetails, required: true, location_name: "AlgorithmStatusDetails"))
    DescribeAlgorithmOutput.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location_name: "ProductId"))
    DescribeAlgorithmOutput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    DescribeAlgorithmOutput.struct_class = Types::DescribeAlgorithmOutput

    DescribeCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DescribeCodeRepositoryInput.struct_class = Types::DescribeCodeRepositoryInput

    DescribeCodeRepositoryOutput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    DescribeCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    DescribeCodeRepositoryOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeCodeRepositoryOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    DescribeCodeRepositoryOutput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfig, location_name: "GitConfig"))
    DescribeCodeRepositoryOutput.struct_class = Types::DescribeCodeRepositoryOutput

    DescribeCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    DescribeCompilationJobRequest.struct_class = Types::DescribeCompilationJobRequest

    DescribeCompilationJobResponse.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    DescribeCompilationJobResponse.add_member(:compilation_job_arn, Shapes::ShapeRef.new(shape: CompilationJobArn, required: true, location_name: "CompilationJobArn"))
    DescribeCompilationJobResponse.add_member(:compilation_job_status, Shapes::ShapeRef.new(shape: CompilationJobStatus, required: true, location_name: "CompilationJobStatus"))
    DescribeCompilationJobResponse.add_member(:compilation_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationStartTime"))
    DescribeCompilationJobResponse.add_member(:compilation_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompilationEndTime"))
    DescribeCompilationJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    DescribeCompilationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeCompilationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, required: true, location_name: "LastModifiedTime"))
    DescribeCompilationJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, required: true, location_name: "FailureReason"))
    DescribeCompilationJobResponse.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, required: true, location_name: "ModelArtifacts"))
    DescribeCompilationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeCompilationJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfig, required: true, location_name: "InputConfig"))
    DescribeCompilationJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    DescribeCompilationJobResponse.struct_class = Types::DescribeCompilationJobResponse

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
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_definition, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobDefinition, location_name: "TrainingJobDefinition"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_job_status, Shapes::ShapeRef.new(shape: HyperParameterTuningJobStatus, required: true, location_name: "HyperParameterTuningJobStatus"))
    DescribeHyperParameterTuningJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:hyper_parameter_tuning_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "HyperParameterTuningEndTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeHyperParameterTuningJobResponse.add_member(:training_job_status_counters, Shapes::ShapeRef.new(shape: TrainingJobStatusCounters, required: true, location_name: "TrainingJobStatusCounters"))
    DescribeHyperParameterTuningJobResponse.add_member(:objective_status_counters, Shapes::ShapeRef.new(shape: ObjectiveStatusCounters, required: true, location_name: "ObjectiveStatusCounters"))
    DescribeHyperParameterTuningJobResponse.add_member(:best_training_job, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary, location_name: "BestTrainingJob"))
    DescribeHyperParameterTuningJobResponse.add_member(:overall_best_training_job, Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary, location_name: "OverallBestTrainingJob"))
    DescribeHyperParameterTuningJobResponse.add_member(:warm_start_config, Shapes::ShapeRef.new(shape: HyperParameterTuningJobWarmStartConfig, location_name: "WarmStartConfig"))
    DescribeHyperParameterTuningJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeHyperParameterTuningJobResponse.struct_class = Types::DescribeHyperParameterTuningJobResponse

    DescribeLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    DescribeLabelingJobRequest.struct_class = Types::DescribeLabelingJobRequest

    DescribeLabelingJobResponse.add_member(:labeling_job_status, Shapes::ShapeRef.new(shape: LabelingJobStatus, required: true, location_name: "LabelingJobStatus"))
    DescribeLabelingJobResponse.add_member(:label_counters, Shapes::ShapeRef.new(shape: LabelCounters, required: true, location_name: "LabelCounters"))
    DescribeLabelingJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeLabelingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeLabelingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    DescribeLabelingJobResponse.add_member(:job_reference_code, Shapes::ShapeRef.new(shape: JobReferenceCode, required: true, location_name: "JobReferenceCode"))
    DescribeLabelingJobResponse.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    DescribeLabelingJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, required: true, location_name: "LabelingJobArn"))
    DescribeLabelingJobResponse.add_member(:label_attribute_name, Shapes::ShapeRef.new(shape: LabelAttributeName, location_name: "LabelAttributeName"))
    DescribeLabelingJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: LabelingJobInputConfig, required: true, location_name: "InputConfig"))
    DescribeLabelingJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: LabelingJobOutputConfig, required: true, location_name: "OutputConfig"))
    DescribeLabelingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    DescribeLabelingJobResponse.add_member(:label_category_config_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "LabelCategoryConfigS3Uri"))
    DescribeLabelingJobResponse.add_member(:stopping_conditions, Shapes::ShapeRef.new(shape: LabelingJobStoppingConditions, location_name: "StoppingConditions"))
    DescribeLabelingJobResponse.add_member(:labeling_job_algorithms_config, Shapes::ShapeRef.new(shape: LabelingJobAlgorithmsConfig, location_name: "LabelingJobAlgorithmsConfig"))
    DescribeLabelingJobResponse.add_member(:human_task_config, Shapes::ShapeRef.new(shape: HumanTaskConfig, required: true, location_name: "HumanTaskConfig"))
    DescribeLabelingJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DescribeLabelingJobResponse.add_member(:labeling_job_output, Shapes::ShapeRef.new(shape: LabelingJobOutput, location_name: "LabelingJobOutput"))
    DescribeLabelingJobResponse.struct_class = Types::DescribeLabelingJobResponse

    DescribeModelInput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelInput.struct_class = Types::DescribeModelInput

    DescribeModelOutput.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    DescribeModelOutput.add_member(:primary_container, Shapes::ShapeRef.new(shape: ContainerDefinition, location_name: "PrimaryContainer"))
    DescribeModelOutput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerDefinitionList, location_name: "Containers"))
    DescribeModelOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    DescribeModelOutput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeModelOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeModelOutput.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    DescribeModelOutput.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    DescribeModelOutput.struct_class = Types::DescribeModelOutput

    DescribeModelPackageInput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "ModelPackageName"))
    DescribeModelPackageInput.struct_class = Types::DescribeModelPackageInput

    DescribeModelPackageOutput.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    DescribeModelPackageOutput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    DescribeModelPackageOutput.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    DescribeModelPackageOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DescribeModelPackageOutput.add_member(:inference_specification, Shapes::ShapeRef.new(shape: InferenceSpecification, location_name: "InferenceSpecification"))
    DescribeModelPackageOutput.add_member(:source_algorithm_specification, Shapes::ShapeRef.new(shape: SourceAlgorithmSpecification, location_name: "SourceAlgorithmSpecification"))
    DescribeModelPackageOutput.add_member(:validation_specification, Shapes::ShapeRef.new(shape: ModelPackageValidationSpecification, location_name: "ValidationSpecification"))
    DescribeModelPackageOutput.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    DescribeModelPackageOutput.add_member(:model_package_status_details, Shapes::ShapeRef.new(shape: ModelPackageStatusDetails, required: true, location_name: "ModelPackageStatusDetails"))
    DescribeModelPackageOutput.add_member(:certify_for_marketplace, Shapes::ShapeRef.new(shape: CertifyForMarketplace, location_name: "CertifyForMarketplace"))
    DescribeModelPackageOutput.struct_class = Types::DescribeModelPackageOutput

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
    DescribeNotebookInstanceOutput.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: NotebookInstanceVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    DescribeNotebookInstanceOutput.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorTypes, location_name: "AcceleratorTypes"))
    DescribeNotebookInstanceOutput.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    DescribeNotebookInstanceOutput.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    DescribeNotebookInstanceOutput.add_member(:root_access, Shapes::ShapeRef.new(shape: RootAccess, location_name: "RootAccess"))
    DescribeNotebookInstanceOutput.struct_class = Types::DescribeNotebookInstanceOutput

    DescribeSubscribedWorkteamRequest.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    DescribeSubscribedWorkteamRequest.struct_class = Types::DescribeSubscribedWorkteamRequest

    DescribeSubscribedWorkteamResponse.add_member(:subscribed_workteam, Shapes::ShapeRef.new(shape: SubscribedWorkteam, required: true, location_name: "SubscribedWorkteam"))
    DescribeSubscribedWorkteamResponse.struct_class = Types::DescribeSubscribedWorkteamResponse

    DescribeTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    DescribeTrainingJobRequest.struct_class = Types::DescribeTrainingJobRequest

    DescribeTrainingJobResponse.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    DescribeTrainingJobResponse.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    DescribeTrainingJobResponse.add_member(:tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, location_name: "TuningJobArn"))
    DescribeTrainingJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    DescribeTrainingJobResponse.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, required: true, location_name: "ModelArtifacts"))
    DescribeTrainingJobResponse.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, required: true, location_name: "TrainingJobStatus"))
    DescribeTrainingJobResponse.add_member(:secondary_status, Shapes::ShapeRef.new(shape: SecondaryStatus, required: true, location_name: "SecondaryStatus"))
    DescribeTrainingJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    DescribeTrainingJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    DescribeTrainingJobResponse.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    DescribeTrainingJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeTrainingJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    DescribeTrainingJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    DescribeTrainingJobResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    DescribeTrainingJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    DescribeTrainingJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    DescribeTrainingJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeTrainingJobResponse.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    DescribeTrainingJobResponse.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    DescribeTrainingJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeTrainingJobResponse.add_member(:secondary_status_transitions, Shapes::ShapeRef.new(shape: SecondaryStatusTransitions, location_name: "SecondaryStatusTransitions"))
    DescribeTrainingJobResponse.add_member(:final_metric_data_list, Shapes::ShapeRef.new(shape: FinalMetricDataList, location_name: "FinalMetricDataList"))
    DescribeTrainingJobResponse.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    DescribeTrainingJobResponse.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
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
    DescribeTransformJobResponse.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    DescribeTransformJobResponse.struct_class = Types::DescribeTransformJobResponse

    DescribeWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    DescribeWorkteamRequest.struct_class = Types::DescribeWorkteamRequest

    DescribeWorkteamResponse.add_member(:workteam, Shapes::ShapeRef.new(shape: Workteam, required: true, location_name: "Workteam"))
    DescribeWorkteamResponse.struct_class = Types::DescribeWorkteamResponse

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

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: ResourcePropertyName, required: true, location_name: "Name"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "Operator"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, location_name: "Value"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FinalHyperParameterTuningJobObjectiveMetric.add_member(:type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectiveType, location_name: "Type"))
    FinalHyperParameterTuningJobObjectiveMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    FinalHyperParameterTuningJobObjectiveMetric.add_member(:value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "Value"))
    FinalHyperParameterTuningJobObjectiveMetric.struct_class = Types::FinalHyperParameterTuningJobObjectiveMetric

    FinalMetricDataList.member = Shapes::ShapeRef.new(shape: MetricData)

    GetSearchSuggestionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "Resource"))
    GetSearchSuggestionsRequest.add_member(:suggestion_query, Shapes::ShapeRef.new(shape: SuggestionQuery, location_name: "SuggestionQuery"))
    GetSearchSuggestionsRequest.struct_class = Types::GetSearchSuggestionsRequest

    GetSearchSuggestionsResponse.add_member(:property_name_suggestions, Shapes::ShapeRef.new(shape: PropertyNameSuggestionList, location_name: "PropertyNameSuggestions"))
    GetSearchSuggestionsResponse.struct_class = Types::GetSearchSuggestionsResponse

    GitConfig.add_member(:repository_url, Shapes::ShapeRef.new(shape: GitConfigUrl, required: true, location_name: "RepositoryUrl"))
    GitConfig.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "Branch"))
    GitConfig.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    GitConfig.struct_class = Types::GitConfig

    GitConfigForUpdate.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    GitConfigForUpdate.struct_class = Types::GitConfigForUpdate

    HumanTaskConfig.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    HumanTaskConfig.add_member(:ui_config, Shapes::ShapeRef.new(shape: UiConfig, required: true, location_name: "UiConfig"))
    HumanTaskConfig.add_member(:pre_human_task_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "PreHumanTaskLambdaArn"))
    HumanTaskConfig.add_member(:task_keywords, Shapes::ShapeRef.new(shape: TaskKeywords, location_name: "TaskKeywords"))
    HumanTaskConfig.add_member(:task_title, Shapes::ShapeRef.new(shape: TaskTitle, required: true, location_name: "TaskTitle"))
    HumanTaskConfig.add_member(:task_description, Shapes::ShapeRef.new(shape: TaskDescription, required: true, location_name: "TaskDescription"))
    HumanTaskConfig.add_member(:number_of_human_workers_per_data_object, Shapes::ShapeRef.new(shape: NumberOfHumanWorkersPerDataObject, required: true, location_name: "NumberOfHumanWorkersPerDataObject"))
    HumanTaskConfig.add_member(:task_time_limit_in_seconds, Shapes::ShapeRef.new(shape: TaskTimeLimitInSeconds, required: true, location_name: "TaskTimeLimitInSeconds"))
    HumanTaskConfig.add_member(:task_availability_lifetime_in_seconds, Shapes::ShapeRef.new(shape: TaskAvailabilityLifetimeInSeconds, location_name: "TaskAvailabilityLifetimeInSeconds"))
    HumanTaskConfig.add_member(:max_concurrent_task_count, Shapes::ShapeRef.new(shape: MaxConcurrentTaskCount, location_name: "MaxConcurrentTaskCount"))
    HumanTaskConfig.add_member(:annotation_consolidation_config, Shapes::ShapeRef.new(shape: AnnotationConsolidationConfig, required: true, location_name: "AnnotationConsolidationConfig"))
    HumanTaskConfig.add_member(:public_workforce_task_price, Shapes::ShapeRef.new(shape: PublicWorkforceTaskPrice, location_name: "PublicWorkforceTaskPrice"))
    HumanTaskConfig.struct_class = Types::HumanTaskConfig

    HyperParameterAlgorithmSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: "TrainingImage"))
    HyperParameterAlgorithmSpecification.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    HyperParameterAlgorithmSpecification.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, location_name: "AlgorithmName"))
    HyperParameterAlgorithmSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    HyperParameterAlgorithmSpecification.struct_class = Types::HyperParameterAlgorithmSpecification

    HyperParameterSpecification.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "Name"))
    HyperParameterSpecification.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "Description"))
    HyperParameterSpecification.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "Type"))
    HyperParameterSpecification.add_member(:range, Shapes::ShapeRef.new(shape: ParameterRange, location_name: "Range"))
    HyperParameterSpecification.add_member(:is_tunable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsTunable"))
    HyperParameterSpecification.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRequired"))
    HyperParameterSpecification.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "DefaultValue"))
    HyperParameterSpecification.struct_class = Types::HyperParameterSpecification

    HyperParameterSpecifications.member = Shapes::ShapeRef.new(shape: HyperParameterSpecification)

    HyperParameterTrainingJobDefinition.add_member(:static_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "StaticHyperParameters"))
    HyperParameterTrainingJobDefinition.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: HyperParameterAlgorithmSpecification, required: true, location_name: "AlgorithmSpecification"))
    HyperParameterTrainingJobDefinition.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    HyperParameterTrainingJobDefinition.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    HyperParameterTrainingJobDefinition.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    HyperParameterTrainingJobDefinition.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    HyperParameterTrainingJobDefinition.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    HyperParameterTrainingJobDefinition.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    HyperParameterTrainingJobDefinition.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    HyperParameterTrainingJobDefinition.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    HyperParameterTrainingJobDefinition.struct_class = Types::HyperParameterTrainingJobDefinition

    HyperParameterTrainingJobSummaries.member = Shapes::ShapeRef.new(shape: HyperParameterTrainingJobSummary)

    HyperParameterTrainingJobSummary.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    HyperParameterTrainingJobSummary.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, required: true, location_name: "TrainingJobArn"))
    HyperParameterTrainingJobSummary.add_member(:tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, location_name: "TuningJobName"))
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
    HyperParameterTuningJobConfig.add_member(:hyper_parameter_tuning_job_objective, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjective, location_name: "HyperParameterTuningJobObjective"))
    HyperParameterTuningJobConfig.add_member(:resource_limits, Shapes::ShapeRef.new(shape: ResourceLimits, required: true, location_name: "ResourceLimits"))
    HyperParameterTuningJobConfig.add_member(:parameter_ranges, Shapes::ShapeRef.new(shape: ParameterRanges, location_name: "ParameterRanges"))
    HyperParameterTuningJobConfig.add_member(:training_job_early_stopping_type, Shapes::ShapeRef.new(shape: TrainingJobEarlyStoppingType, location_name: "TrainingJobEarlyStoppingType"))
    HyperParameterTuningJobConfig.struct_class = Types::HyperParameterTuningJobConfig

    HyperParameterTuningJobObjective.add_member(:type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectiveType, required: true, location_name: "Type"))
    HyperParameterTuningJobObjective.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    HyperParameterTuningJobObjective.struct_class = Types::HyperParameterTuningJobObjective

    HyperParameterTuningJobObjectives.member = Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjective)

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

    HyperParameterTuningJobWarmStartConfig.add_member(:parent_hyper_parameter_tuning_jobs, Shapes::ShapeRef.new(shape: ParentHyperParameterTuningJobs, required: true, location_name: "ParentHyperParameterTuningJobs"))
    HyperParameterTuningJobWarmStartConfig.add_member(:warm_start_type, Shapes::ShapeRef.new(shape: HyperParameterTuningJobWarmStartType, required: true, location_name: "WarmStartType"))
    HyperParameterTuningJobWarmStartConfig.struct_class = Types::HyperParameterTuningJobWarmStartConfig

    HyperParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    HyperParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    InferenceSpecification.add_member(:containers, Shapes::ShapeRef.new(shape: ModelPackageContainerDefinitionList, required: true, location_name: "Containers"))
    InferenceSpecification.add_member(:supported_transform_instance_types, Shapes::ShapeRef.new(shape: TransformInstanceTypes, required: true, location_name: "SupportedTransformInstanceTypes"))
    InferenceSpecification.add_member(:supported_realtime_inference_instance_types, Shapes::ShapeRef.new(shape: RealtimeInferenceInstanceTypes, required: true, location_name: "SupportedRealtimeInferenceInstanceTypes"))
    InferenceSpecification.add_member(:supported_content_types, Shapes::ShapeRef.new(shape: ContentTypes, required: true, location_name: "SupportedContentTypes"))
    InferenceSpecification.add_member(:supported_response_mime_types, Shapes::ShapeRef.new(shape: ResponseMIMETypes, required: true, location_name: "SupportedResponseMIMETypes"))
    InferenceSpecification.struct_class = Types::InferenceSpecification

    InputConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputConfig.add_member(:data_input_config, Shapes::ShapeRef.new(shape: DataInputConfig, required: true, location_name: "DataInputConfig"))
    InputConfig.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, required: true, location_name: "Framework"))
    InputConfig.struct_class = Types::InputConfig

    InputDataConfig.member = Shapes::ShapeRef.new(shape: Channel)

    InputModes.member = Shapes::ShapeRef.new(shape: TrainingInputMode)

    IntegerParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterKey, required: true, location_name: "Name"))
    IntegerParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    IntegerParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    IntegerParameterRange.add_member(:scaling_type, Shapes::ShapeRef.new(shape: HyperParameterScalingType, location_name: "ScalingType"))
    IntegerParameterRange.struct_class = Types::IntegerParameterRange

    IntegerParameterRangeSpecification.add_member(:min_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MinValue"))
    IntegerParameterRangeSpecification.add_member(:max_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "MaxValue"))
    IntegerParameterRangeSpecification.struct_class = Types::IntegerParameterRangeSpecification

    IntegerParameterRanges.member = Shapes::ShapeRef.new(shape: IntegerParameterRange)

    LabelCounters.add_member(:total_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "TotalLabeled"))
    LabelCounters.add_member(:human_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "HumanLabeled"))
    LabelCounters.add_member(:machine_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "MachineLabeled"))
    LabelCounters.add_member(:failed_non_retryable_error, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "FailedNonRetryableError"))
    LabelCounters.add_member(:unlabeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "Unlabeled"))
    LabelCounters.struct_class = Types::LabelCounters

    LabelCountersForWorkteam.add_member(:human_labeled, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "HumanLabeled"))
    LabelCountersForWorkteam.add_member(:pending_human, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "PendingHuman"))
    LabelCountersForWorkteam.add_member(:total, Shapes::ShapeRef.new(shape: LabelCounter, location_name: "Total"))
    LabelCountersForWorkteam.struct_class = Types::LabelCountersForWorkteam

    LabelingJobAlgorithmsConfig.add_member(:labeling_job_algorithm_specification_arn, Shapes::ShapeRef.new(shape: LabelingJobAlgorithmSpecificationArn, required: true, location_name: "LabelingJobAlgorithmSpecificationArn"))
    LabelingJobAlgorithmsConfig.add_member(:initial_active_learning_model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "InitialActiveLearningModelArn"))
    LabelingJobAlgorithmsConfig.add_member(:labeling_job_resource_config, Shapes::ShapeRef.new(shape: LabelingJobResourceConfig, location_name: "LabelingJobResourceConfig"))
    LabelingJobAlgorithmsConfig.struct_class = Types::LabelingJobAlgorithmsConfig

    LabelingJobDataAttributes.add_member(:content_classifiers, Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: "ContentClassifiers"))
    LabelingJobDataAttributes.struct_class = Types::LabelingJobDataAttributes

    LabelingJobDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: LabelingJobS3DataSource, required: true, location_name: "S3DataSource"))
    LabelingJobDataSource.struct_class = Types::LabelingJobDataSource

    LabelingJobForWorkteamSummary.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, location_name: "LabelingJobName"))
    LabelingJobForWorkteamSummary.add_member(:job_reference_code, Shapes::ShapeRef.new(shape: JobReferenceCode, required: true, location_name: "JobReferenceCode"))
    LabelingJobForWorkteamSummary.add_member(:work_requester_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "WorkRequesterAccountId"))
    LabelingJobForWorkteamSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    LabelingJobForWorkteamSummary.add_member(:label_counters, Shapes::ShapeRef.new(shape: LabelCountersForWorkteam, location_name: "LabelCounters"))
    LabelingJobForWorkteamSummary.add_member(:number_of_human_workers_per_data_object, Shapes::ShapeRef.new(shape: NumberOfHumanWorkersPerDataObject, location_name: "NumberOfHumanWorkersPerDataObject"))
    LabelingJobForWorkteamSummary.struct_class = Types::LabelingJobForWorkteamSummary

    LabelingJobForWorkteamSummaryList.member = Shapes::ShapeRef.new(shape: LabelingJobForWorkteamSummary)

    LabelingJobInputConfig.add_member(:data_source, Shapes::ShapeRef.new(shape: LabelingJobDataSource, required: true, location_name: "DataSource"))
    LabelingJobInputConfig.add_member(:data_attributes, Shapes::ShapeRef.new(shape: LabelingJobDataAttributes, location_name: "DataAttributes"))
    LabelingJobInputConfig.struct_class = Types::LabelingJobInputConfig

    LabelingJobOutput.add_member(:output_dataset_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "OutputDatasetS3Uri"))
    LabelingJobOutput.add_member(:final_active_learning_model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "FinalActiveLearningModelArn"))
    LabelingJobOutput.struct_class = Types::LabelingJobOutput

    LabelingJobOutputConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    LabelingJobOutputConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    LabelingJobOutputConfig.struct_class = Types::LabelingJobOutputConfig

    LabelingJobResourceConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    LabelingJobResourceConfig.struct_class = Types::LabelingJobResourceConfig

    LabelingJobS3DataSource.add_member(:manifest_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "ManifestS3Uri"))
    LabelingJobS3DataSource.struct_class = Types::LabelingJobS3DataSource

    LabelingJobStoppingConditions.add_member(:max_human_labeled_object_count, Shapes::ShapeRef.new(shape: MaxHumanLabeledObjectCount, location_name: "MaxHumanLabeledObjectCount"))
    LabelingJobStoppingConditions.add_member(:max_percentage_of_input_dataset_labeled, Shapes::ShapeRef.new(shape: MaxPercentageOfInputDatasetLabeled, location_name: "MaxPercentageOfInputDatasetLabeled"))
    LabelingJobStoppingConditions.struct_class = Types::LabelingJobStoppingConditions

    LabelingJobSummary.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    LabelingJobSummary.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, required: true, location_name: "LabelingJobArn"))
    LabelingJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    LabelingJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    LabelingJobSummary.add_member(:labeling_job_status, Shapes::ShapeRef.new(shape: LabelingJobStatus, required: true, location_name: "LabelingJobStatus"))
    LabelingJobSummary.add_member(:label_counters, Shapes::ShapeRef.new(shape: LabelCounters, required: true, location_name: "LabelCounters"))
    LabelingJobSummary.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    LabelingJobSummary.add_member(:pre_human_task_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "PreHumanTaskLambdaArn"))
    LabelingJobSummary.add_member(:annotation_consolidation_lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, location_name: "AnnotationConsolidationLambdaArn"))
    LabelingJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    LabelingJobSummary.add_member(:labeling_job_output, Shapes::ShapeRef.new(shape: LabelingJobOutput, location_name: "LabelingJobOutput"))
    LabelingJobSummary.add_member(:input_config, Shapes::ShapeRef.new(shape: LabelingJobInputConfig, location_name: "InputConfig"))
    LabelingJobSummary.struct_class = Types::LabelingJobSummary

    LabelingJobSummaryList.member = Shapes::ShapeRef.new(shape: LabelingJobSummary)

    ListAlgorithmsInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListAlgorithmsInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListAlgorithmsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAlgorithmsInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListAlgorithmsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAlgorithmsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: AlgorithmSortBy, location_name: "SortBy"))
    ListAlgorithmsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListAlgorithmsInput.struct_class = Types::ListAlgorithmsInput

    ListAlgorithmsOutput.add_member(:algorithm_summary_list, Shapes::ShapeRef.new(shape: AlgorithmSummaryList, required: true, location_name: "AlgorithmSummaryList"))
    ListAlgorithmsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAlgorithmsOutput.struct_class = Types::ListAlgorithmsOutput

    ListCodeRepositoriesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListCodeRepositoriesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListCodeRepositoriesInput.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListCodeRepositoriesInput.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListCodeRepositoriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCodeRepositoriesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: CodeRepositoryNameContains, location_name: "NameContains"))
    ListCodeRepositoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCodeRepositoriesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: CodeRepositorySortBy, location_name: "SortBy"))
    ListCodeRepositoriesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: CodeRepositorySortOrder, location_name: "SortOrder"))
    ListCodeRepositoriesInput.struct_class = Types::ListCodeRepositoriesInput

    ListCodeRepositoriesOutput.add_member(:code_repository_summary_list, Shapes::ShapeRef.new(shape: CodeRepositorySummaryList, required: true, location_name: "CodeRepositorySummaryList"))
    ListCodeRepositoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCodeRepositoriesOutput.struct_class = Types::ListCodeRepositoriesOutput

    ListCompilationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCompilationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListCompilationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListCompilationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListCompilationJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeAfter"))
    ListCompilationJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTimeBefore"))
    ListCompilationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListCompilationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: CompilationJobStatus, location_name: "StatusEquals"))
    ListCompilationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListCompilationJobsSortBy, location_name: "SortBy"))
    ListCompilationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListCompilationJobsRequest.struct_class = Types::ListCompilationJobsRequest

    ListCompilationJobsResponse.add_member(:compilation_job_summaries, Shapes::ShapeRef.new(shape: CompilationJobSummaries, required: true, location_name: "CompilationJobSummaries"))
    ListCompilationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCompilationJobsResponse.struct_class = Types::ListCompilationJobsResponse

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

    ListLabelingJobsForWorkteamRequest.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    ListLabelingJobsForWorkteamRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLabelingJobsForWorkteamRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsForWorkteamRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListLabelingJobsForWorkteamRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListLabelingJobsForWorkteamRequest.add_member(:job_reference_code_contains, Shapes::ShapeRef.new(shape: JobReferenceCodeContains, location_name: "JobReferenceCodeContains"))
    ListLabelingJobsForWorkteamRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListLabelingJobsForWorkteamSortByOptions, location_name: "SortBy"))
    ListLabelingJobsForWorkteamRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListLabelingJobsForWorkteamRequest.struct_class = Types::ListLabelingJobsForWorkteamRequest

    ListLabelingJobsForWorkteamResponse.add_member(:labeling_job_summary_list, Shapes::ShapeRef.new(shape: LabelingJobForWorkteamSummaryList, required: true, location_name: "LabelingJobSummaryList"))
    ListLabelingJobsForWorkteamResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsForWorkteamResponse.struct_class = Types::ListLabelingJobsForWorkteamResponse

    ListLabelingJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter"))
    ListLabelingJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore"))
    ListLabelingJobsRequest.add_member(:last_modified_time_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeAfter"))
    ListLabelingJobsRequest.add_member(:last_modified_time_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimeBefore"))
    ListLabelingJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLabelingJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListLabelingJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListLabelingJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListLabelingJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: LabelingJobStatus, location_name: "StatusEquals"))
    ListLabelingJobsRequest.struct_class = Types::ListLabelingJobsRequest

    ListLabelingJobsResponse.add_member(:labeling_job_summary_list, Shapes::ShapeRef.new(shape: LabelingJobSummaryList, location_name: "LabelingJobSummaryList"))
    ListLabelingJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLabelingJobsResponse.struct_class = Types::ListLabelingJobsResponse

    ListModelPackagesInput.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeAfter"))
    ListModelPackagesInput.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTimeBefore"))
    ListModelPackagesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListModelPackagesInput.add_member(:name_contains, Shapes::ShapeRef.new(shape: NameContains, location_name: "NameContains"))
    ListModelPackagesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackagesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ModelPackageSortBy, location_name: "SortBy"))
    ListModelPackagesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListModelPackagesInput.struct_class = Types::ListModelPackagesInput

    ListModelPackagesOutput.add_member(:model_package_summary_list, Shapes::ShapeRef.new(shape: ModelPackageSummaryList, required: true, location_name: "ModelPackageSummaryList"))
    ListModelPackagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListModelPackagesOutput.struct_class = Types::ListModelPackagesOutput

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
    ListNotebookInstancesInput.add_member(:default_code_repository_contains, Shapes::ShapeRef.new(shape: CodeRepositoryContains, location_name: "DefaultCodeRepositoryContains"))
    ListNotebookInstancesInput.add_member(:additional_code_repository_equals, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "AdditionalCodeRepositoryEquals"))
    ListNotebookInstancesInput.struct_class = Types::ListNotebookInstancesInput

    ListNotebookInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotebookInstancesOutput.add_member(:notebook_instances, Shapes::ShapeRef.new(shape: NotebookInstanceSummaryList, location_name: "NotebookInstances"))
    ListNotebookInstancesOutput.struct_class = Types::ListNotebookInstancesOutput

    ListSubscribedWorkteamsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: WorkteamName, location_name: "NameContains"))
    ListSubscribedWorkteamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubscribedWorkteamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListSubscribedWorkteamsRequest.struct_class = Types::ListSubscribedWorkteamsRequest

    ListSubscribedWorkteamsResponse.add_member(:subscribed_workteams, Shapes::ShapeRef.new(shape: SubscribedWorkteams, required: true, location_name: "SubscribedWorkteams"))
    ListSubscribedWorkteamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubscribedWorkteamsResponse.struct_class = Types::ListSubscribedWorkteamsResponse

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

    ListWorkteamsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListWorkteamsSortByOptions, location_name: "SortBy"))
    ListWorkteamsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListWorkteamsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: WorkteamName, location_name: "NameContains"))
    ListWorkteamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkteamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListWorkteamsRequest.struct_class = Types::ListWorkteamsRequest

    ListWorkteamsResponse.add_member(:workteams, Shapes::ShapeRef.new(shape: Workteams, required: true, location_name: "Workteams"))
    ListWorkteamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkteamsResponse.struct_class = Types::ListWorkteamsResponse

    MemberDefinition.add_member(:cognito_member_definition, Shapes::ShapeRef.new(shape: CognitoMemberDefinition, location_name: "CognitoMemberDefinition"))
    MemberDefinition.struct_class = Types::MemberDefinition

    MemberDefinitions.member = Shapes::ShapeRef.new(shape: MemberDefinition)

    MetricData.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    MetricData.add_member(:value, Shapes::ShapeRef.new(shape: Float, location_name: "Value"))
    MetricData.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    MetricData.struct_class = Types::MetricData

    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "Name"))
    MetricDefinition.add_member(:regex, Shapes::ShapeRef.new(shape: MetricRegex, required: true, location_name: "Regex"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionList.member = Shapes::ShapeRef.new(shape: MetricDefinition)

    ModelArtifacts.add_member(:s3_model_artifacts, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3ModelArtifacts"))
    ModelArtifacts.struct_class = Types::ModelArtifacts

    ModelPackageContainerDefinition.add_member(:container_hostname, Shapes::ShapeRef.new(shape: ContainerHostname, location_name: "ContainerHostname"))
    ModelPackageContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "Image"))
    ModelPackageContainerDefinition.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "ImageDigest"))
    ModelPackageContainerDefinition.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    ModelPackageContainerDefinition.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, location_name: "ProductId"))
    ModelPackageContainerDefinition.struct_class = Types::ModelPackageContainerDefinition

    ModelPackageContainerDefinitionList.member = Shapes::ShapeRef.new(shape: ModelPackageContainerDefinition)

    ModelPackageStatusDetails.add_member(:validation_statuses, Shapes::ShapeRef.new(shape: ModelPackageStatusItemList, required: true, location_name: "ValidationStatuses"))
    ModelPackageStatusDetails.add_member(:image_scan_statuses, Shapes::ShapeRef.new(shape: ModelPackageStatusItemList, location_name: "ImageScanStatuses"))
    ModelPackageStatusDetails.struct_class = Types::ModelPackageStatusDetails

    ModelPackageStatusItem.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "Name"))
    ModelPackageStatusItem.add_member(:status, Shapes::ShapeRef.new(shape: DetailedModelPackageStatus, required: true, location_name: "Status"))
    ModelPackageStatusItem.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    ModelPackageStatusItem.struct_class = Types::ModelPackageStatusItem

    ModelPackageStatusItemList.member = Shapes::ShapeRef.new(shape: ModelPackageStatusItem)

    ModelPackageSummary.add_member(:model_package_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ModelPackageName"))
    ModelPackageSummary.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: ModelPackageArn, required: true, location_name: "ModelPackageArn"))
    ModelPackageSummary.add_member(:model_package_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "ModelPackageDescription"))
    ModelPackageSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    ModelPackageSummary.add_member(:model_package_status, Shapes::ShapeRef.new(shape: ModelPackageStatus, required: true, location_name: "ModelPackageStatus"))
    ModelPackageSummary.struct_class = Types::ModelPackageSummary

    ModelPackageSummaryList.member = Shapes::ShapeRef.new(shape: ModelPackageSummary)

    ModelPackageValidationProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "ProfileName"))
    ModelPackageValidationProfile.add_member(:transform_job_definition, Shapes::ShapeRef.new(shape: TransformJobDefinition, required: true, location_name: "TransformJobDefinition"))
    ModelPackageValidationProfile.struct_class = Types::ModelPackageValidationProfile

    ModelPackageValidationProfiles.member = Shapes::ShapeRef.new(shape: ModelPackageValidationProfile)

    ModelPackageValidationSpecification.add_member(:validation_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ValidationRole"))
    ModelPackageValidationSpecification.add_member(:validation_profiles, Shapes::ShapeRef.new(shape: ModelPackageValidationProfiles, required: true, location_name: "ValidationProfiles"))
    ModelPackageValidationSpecification.struct_class = Types::ModelPackageValidationSpecification

    ModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "ModelArn"))
    ModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    ModelSummary.struct_class = Types::ModelSummary

    ModelSummaryList.member = Shapes::ShapeRef.new(shape: ModelSummary)

    NestedFilters.add_member(:nested_property_name, Shapes::ShapeRef.new(shape: ResourcePropertyName, required: true, location_name: "NestedPropertyName"))
    NestedFilters.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "Filters"))
    NestedFilters.struct_class = Types::NestedFilters

    NestedFiltersList.member = Shapes::ShapeRef.new(shape: NestedFilters)

    NotebookInstanceAcceleratorTypes.member = Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorType)

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
    NotebookInstanceSummary.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    NotebookInstanceSummary.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    NotebookInstanceSummary.struct_class = Types::NotebookInstanceSummary

    NotebookInstanceSummaryList.member = Shapes::ShapeRef.new(shape: NotebookInstanceSummary)

    NotificationConfiguration.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: NotificationTopicArn, location_name: "NotificationTopicArn"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    ObjectiveStatusCounters.add_member(:succeeded, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Succeeded"))
    ObjectiveStatusCounters.add_member(:pending, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Pending"))
    ObjectiveStatusCounters.add_member(:failed, Shapes::ShapeRef.new(shape: ObjectiveStatusCounter, location_name: "Failed"))
    ObjectiveStatusCounters.struct_class = Types::ObjectiveStatusCounters

    OutputConfig.add_member(:s3_output_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputLocation"))
    OutputConfig.add_member(:target_device, Shapes::ShapeRef.new(shape: TargetDevice, required: true, location_name: "TargetDevice"))
    OutputConfig.struct_class = Types::OutputConfig

    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3OutputPath"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    ParameterRange.add_member(:integer_parameter_range_specification, Shapes::ShapeRef.new(shape: IntegerParameterRangeSpecification, location_name: "IntegerParameterRangeSpecification"))
    ParameterRange.add_member(:continuous_parameter_range_specification, Shapes::ShapeRef.new(shape: ContinuousParameterRangeSpecification, location_name: "ContinuousParameterRangeSpecification"))
    ParameterRange.add_member(:categorical_parameter_range_specification, Shapes::ShapeRef.new(shape: CategoricalParameterRangeSpecification, location_name: "CategoricalParameterRangeSpecification"))
    ParameterRange.struct_class = Types::ParameterRange

    ParameterRanges.add_member(:integer_parameter_ranges, Shapes::ShapeRef.new(shape: IntegerParameterRanges, location_name: "IntegerParameterRanges"))
    ParameterRanges.add_member(:continuous_parameter_ranges, Shapes::ShapeRef.new(shape: ContinuousParameterRanges, location_name: "ContinuousParameterRanges"))
    ParameterRanges.add_member(:categorical_parameter_ranges, Shapes::ShapeRef.new(shape: CategoricalParameterRanges, location_name: "CategoricalParameterRanges"))
    ParameterRanges.struct_class = Types::ParameterRanges

    ParameterValues.member = Shapes::ShapeRef.new(shape: ParameterValue)

    ParentHyperParameterTuningJob.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, location_name: "HyperParameterTuningJobName"))
    ParentHyperParameterTuningJob.struct_class = Types::ParentHyperParameterTuningJob

    ParentHyperParameterTuningJobs.member = Shapes::ShapeRef.new(shape: ParentHyperParameterTuningJob)

    ProductListings.member = Shapes::ShapeRef.new(shape: String)

    ProductionVariant.add_member(:variant_name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "VariantName"))
    ProductionVariant.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "ModelName"))
    ProductionVariant.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: TaskCount, required: true, location_name: "InitialInstanceCount"))
    ProductionVariant.add_member(:instance_type, Shapes::ShapeRef.new(shape: ProductionVariantInstanceType, required: true, location_name: "InstanceType"))
    ProductionVariant.add_member(:initial_variant_weight, Shapes::ShapeRef.new(shape: VariantWeight, location_name: "InitialVariantWeight"))
    ProductionVariant.add_member(:accelerator_type, Shapes::ShapeRef.new(shape: ProductionVariantAcceleratorType, location_name: "AcceleratorType"))
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

    PropertyNameQuery.add_member(:property_name_hint, Shapes::ShapeRef.new(shape: PropertyNameHint, required: true, location_name: "PropertyNameHint"))
    PropertyNameQuery.struct_class = Types::PropertyNameQuery

    PropertyNameSuggestion.add_member(:property_name, Shapes::ShapeRef.new(shape: ResourcePropertyName, location_name: "PropertyName"))
    PropertyNameSuggestion.struct_class = Types::PropertyNameSuggestion

    PropertyNameSuggestionList.member = Shapes::ShapeRef.new(shape: PropertyNameSuggestion)

    PublicWorkforceTaskPrice.add_member(:amount_in_usd, Shapes::ShapeRef.new(shape: USD, location_name: "AmountInUsd"))
    PublicWorkforceTaskPrice.struct_class = Types::PublicWorkforceTaskPrice

    RealtimeInferenceInstanceTypes.member = Shapes::ShapeRef.new(shape: ProductionVariantInstanceType)

    RenderUiTemplateRequest.add_member(:ui_template, Shapes::ShapeRef.new(shape: UiTemplate, required: true, location_name: "UiTemplate"))
    RenderUiTemplateRequest.add_member(:task, Shapes::ShapeRef.new(shape: RenderableTask, required: true, location_name: "Task"))
    RenderUiTemplateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    RenderUiTemplateRequest.struct_class = Types::RenderUiTemplateRequest

    RenderUiTemplateResponse.add_member(:rendered_content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RenderedContent"))
    RenderUiTemplateResponse.add_member(:errors, Shapes::ShapeRef.new(shape: RenderingErrorList, required: true, location_name: "Errors"))
    RenderUiTemplateResponse.struct_class = Types::RenderUiTemplateResponse

    RenderableTask.add_member(:input, Shapes::ShapeRef.new(shape: TaskInput, required: true, location_name: "Input"))
    RenderableTask.struct_class = Types::RenderableTask

    RenderingError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Code"))
    RenderingError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    RenderingError.struct_class = Types::RenderingError

    RenderingErrorList.member = Shapes::ShapeRef.new(shape: RenderingError)

    ResourceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: TrainingInstanceType, required: true, location_name: "InstanceType"))
    ResourceConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: TrainingInstanceCount, required: true, location_name: "InstanceCount"))
    ResourceConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: VolumeSizeInGB, required: true, location_name: "VolumeSizeInGB"))
    ResourceConfig.add_member(:volume_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "VolumeKmsKeyId"))
    ResourceConfig.struct_class = Types::ResourceConfig

    ResourceInUse.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceInUse.struct_class = Types::ResourceInUse

    ResourceLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceLimitExceeded.struct_class = Types::ResourceLimitExceeded

    ResourceLimits.add_member(:max_number_of_training_jobs, Shapes::ShapeRef.new(shape: MaxNumberOfTrainingJobs, required: true, location_name: "MaxNumberOfTrainingJobs"))
    ResourceLimits.add_member(:max_parallel_training_jobs, Shapes::ShapeRef.new(shape: MaxParallelTrainingJobs, required: true, location_name: "MaxParallelTrainingJobs"))
    ResourceLimits.struct_class = Types::ResourceLimits

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    ResponseMIMETypes.member = Shapes::ShapeRef.new(shape: ResponseMIMEType)

    S3DataSource.add_member(:s3_data_type, Shapes::ShapeRef.new(shape: S3DataType, required: true, location_name: "S3DataType"))
    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    S3DataSource.add_member(:s3_data_distribution_type, Shapes::ShapeRef.new(shape: S3DataDistribution, location_name: "S3DataDistributionType"))
    S3DataSource.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNames, location_name: "AttributeNames"))
    S3DataSource.struct_class = Types::S3DataSource

    SearchExpression.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchExpression.add_member(:nested_filters, Shapes::ShapeRef.new(shape: NestedFiltersList, location_name: "NestedFilters"))
    SearchExpression.add_member(:sub_expressions, Shapes::ShapeRef.new(shape: SearchExpressionList, location_name: "SubExpressions"))
    SearchExpression.add_member(:operator, Shapes::ShapeRef.new(shape: BooleanOperator, location_name: "Operator"))
    SearchExpression.struct_class = Types::SearchExpression

    SearchExpressionList.member = Shapes::ShapeRef.new(shape: SearchExpression)

    SearchRecord.add_member(:training_job, Shapes::ShapeRef.new(shape: TrainingJob, location_name: "TrainingJob"))
    SearchRecord.struct_class = Types::SearchRecord

    SearchRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "Resource"))
    SearchRequest.add_member(:search_expression, Shapes::ShapeRef.new(shape: SearchExpression, location_name: "SearchExpression"))
    SearchRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ResourcePropertyName, location_name: "SortBy"))
    SearchRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SearchSortOrder, location_name: "SortOrder"))
    SearchRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchRequest.struct_class = Types::SearchRequest

    SearchResponse.add_member(:results, Shapes::ShapeRef.new(shape: SearchResultsList, location_name: "Results"))
    SearchResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchResponse.struct_class = Types::SearchResponse

    SearchResultsList.member = Shapes::ShapeRef.new(shape: SearchRecord)

    SecondaryStatusTransition.add_member(:status, Shapes::ShapeRef.new(shape: SecondaryStatus, required: true, location_name: "Status"))
    SecondaryStatusTransition.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    SecondaryStatusTransition.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    SecondaryStatusTransition.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    SecondaryStatusTransition.struct_class = Types::SecondaryStatusTransition

    SecondaryStatusTransitions.member = Shapes::ShapeRef.new(shape: SecondaryStatusTransition)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ShuffleConfig.add_member(:seed, Shapes::ShapeRef.new(shape: Seed, required: true, location_name: "Seed"))
    ShuffleConfig.struct_class = Types::ShuffleConfig

    SourceAlgorithm.add_member(:model_data_url, Shapes::ShapeRef.new(shape: Url, location_name: "ModelDataUrl"))
    SourceAlgorithm.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: ArnOrName, required: true, location_name: "AlgorithmName"))
    SourceAlgorithm.struct_class = Types::SourceAlgorithm

    SourceAlgorithmList.member = Shapes::ShapeRef.new(shape: SourceAlgorithm)

    SourceAlgorithmSpecification.add_member(:source_algorithms, Shapes::ShapeRef.new(shape: SourceAlgorithmList, required: true, location_name: "SourceAlgorithms"))
    SourceAlgorithmSpecification.struct_class = Types::SourceAlgorithmSpecification

    StartNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StartNotebookInstanceInput.struct_class = Types::StartNotebookInstanceInput

    StopCompilationJobRequest.add_member(:compilation_job_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CompilationJobName"))
    StopCompilationJobRequest.struct_class = Types::StopCompilationJobRequest

    StopHyperParameterTuningJobRequest.add_member(:hyper_parameter_tuning_job_name, Shapes::ShapeRef.new(shape: HyperParameterTuningJobName, required: true, location_name: "HyperParameterTuningJobName"))
    StopHyperParameterTuningJobRequest.struct_class = Types::StopHyperParameterTuningJobRequest

    StopLabelingJobRequest.add_member(:labeling_job_name, Shapes::ShapeRef.new(shape: LabelingJobName, required: true, location_name: "LabelingJobName"))
    StopLabelingJobRequest.struct_class = Types::StopLabelingJobRequest

    StopNotebookInstanceInput.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NotebookInstanceName, required: true, location_name: "NotebookInstanceName"))
    StopNotebookInstanceInput.struct_class = Types::StopNotebookInstanceInput

    StopTrainingJobRequest.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, required: true, location_name: "TrainingJobName"))
    StopTrainingJobRequest.struct_class = Types::StopTrainingJobRequest

    StopTransformJobRequest.add_member(:transform_job_name, Shapes::ShapeRef.new(shape: TransformJobName, required: true, location_name: "TransformJobName"))
    StopTransformJobRequest.struct_class = Types::StopTransformJobRequest

    StoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: MaxRuntimeInSeconds, location_name: "MaxRuntimeInSeconds"))
    StoppingCondition.struct_class = Types::StoppingCondition

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    SubscribedWorkteam.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    SubscribedWorkteam.add_member(:marketplace_title, Shapes::ShapeRef.new(shape: String200, location_name: "MarketplaceTitle"))
    SubscribedWorkteam.add_member(:seller_name, Shapes::ShapeRef.new(shape: String, location_name: "SellerName"))
    SubscribedWorkteam.add_member(:marketplace_description, Shapes::ShapeRef.new(shape: String200, location_name: "MarketplaceDescription"))
    SubscribedWorkteam.add_member(:listing_id, Shapes::ShapeRef.new(shape: String, location_name: "ListingId"))
    SubscribedWorkteam.struct_class = Types::SubscribedWorkteam

    SubscribedWorkteams.member = Shapes::ShapeRef.new(shape: SubscribedWorkteam)

    SuggestionQuery.add_member(:property_name_query, Shapes::ShapeRef.new(shape: PropertyNameQuery, location_name: "PropertyNameQuery"))
    SuggestionQuery.struct_class = Types::SuggestionQuery

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TaskKeywords.member = Shapes::ShapeRef.new(shape: TaskKeyword)

    TrainingInstanceTypes.member = Shapes::ShapeRef.new(shape: TrainingInstanceType)

    TrainingJob.add_member(:training_job_name, Shapes::ShapeRef.new(shape: TrainingJobName, location_name: "TrainingJobName"))
    TrainingJob.add_member(:training_job_arn, Shapes::ShapeRef.new(shape: TrainingJobArn, location_name: "TrainingJobArn"))
    TrainingJob.add_member(:tuning_job_arn, Shapes::ShapeRef.new(shape: HyperParameterTuningJobArn, location_name: "TuningJobArn"))
    TrainingJob.add_member(:labeling_job_arn, Shapes::ShapeRef.new(shape: LabelingJobArn, location_name: "LabelingJobArn"))
    TrainingJob.add_member(:model_artifacts, Shapes::ShapeRef.new(shape: ModelArtifacts, location_name: "ModelArtifacts"))
    TrainingJob.add_member(:training_job_status, Shapes::ShapeRef.new(shape: TrainingJobStatus, location_name: "TrainingJobStatus"))
    TrainingJob.add_member(:secondary_status, Shapes::ShapeRef.new(shape: SecondaryStatus, location_name: "SecondaryStatus"))
    TrainingJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TrainingJob.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    TrainingJob.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, location_name: "AlgorithmSpecification"))
    TrainingJob.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    TrainingJob.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    TrainingJob.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    TrainingJob.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "ResourceConfig"))
    TrainingJob.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    TrainingJob.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, location_name: "StoppingCondition"))
    TrainingJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    TrainingJob.add_member(:training_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingStartTime"))
    TrainingJob.add_member(:training_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TrainingEndTime"))
    TrainingJob.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    TrainingJob.add_member(:secondary_status_transitions, Shapes::ShapeRef.new(shape: SecondaryStatusTransitions, location_name: "SecondaryStatusTransitions"))
    TrainingJob.add_member(:final_metric_data_list, Shapes::ShapeRef.new(shape: FinalMetricDataList, location_name: "FinalMetricDataList"))
    TrainingJob.add_member(:enable_network_isolation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNetworkIsolation"))
    TrainingJob.add_member(:enable_inter_container_traffic_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInterContainerTrafficEncryption"))
    TrainingJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TrainingJob.struct_class = Types::TrainingJob

    TrainingJobDefinition.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, required: true, location_name: "TrainingInputMode"))
    TrainingJobDefinition.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "HyperParameters"))
    TrainingJobDefinition.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    TrainingJobDefinition.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    TrainingJobDefinition.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "ResourceConfig"))
    TrainingJobDefinition.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: StoppingCondition, required: true, location_name: "StoppingCondition"))
    TrainingJobDefinition.struct_class = Types::TrainingJobDefinition

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

    TrainingSpecification.add_member(:training_image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "TrainingImage"))
    TrainingSpecification.add_member(:training_image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "TrainingImageDigest"))
    TrainingSpecification.add_member(:supported_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameterSpecifications, location_name: "SupportedHyperParameters"))
    TrainingSpecification.add_member(:supported_training_instance_types, Shapes::ShapeRef.new(shape: TrainingInstanceTypes, required: true, location_name: "SupportedTrainingInstanceTypes"))
    TrainingSpecification.add_member(:supports_distributed_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsDistributedTraining"))
    TrainingSpecification.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: "MetricDefinitions"))
    TrainingSpecification.add_member(:training_channels, Shapes::ShapeRef.new(shape: ChannelSpecifications, required: true, location_name: "TrainingChannels"))
    TrainingSpecification.add_member(:supported_tuning_job_objective_metrics, Shapes::ShapeRef.new(shape: HyperParameterTuningJobObjectives, location_name: "SupportedTuningJobObjectiveMetrics"))
    TrainingSpecification.struct_class = Types::TrainingSpecification

    TransformDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: TransformS3DataSource, required: true, location_name: "S3DataSource"))
    TransformDataSource.struct_class = Types::TransformDataSource

    TransformEnvironmentMap.key = Shapes::ShapeRef.new(shape: TransformEnvironmentKey)
    TransformEnvironmentMap.value = Shapes::ShapeRef.new(shape: TransformEnvironmentValue)

    TransformInput.add_member(:data_source, Shapes::ShapeRef.new(shape: TransformDataSource, required: true, location_name: "DataSource"))
    TransformInput.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    TransformInput.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "CompressionType"))
    TransformInput.add_member(:split_type, Shapes::ShapeRef.new(shape: SplitType, location_name: "SplitType"))
    TransformInput.struct_class = Types::TransformInput

    TransformInstanceTypes.member = Shapes::ShapeRef.new(shape: TransformInstanceType)

    TransformJobDefinition.add_member(:max_concurrent_transforms, Shapes::ShapeRef.new(shape: MaxConcurrentTransforms, location_name: "MaxConcurrentTransforms"))
    TransformJobDefinition.add_member(:max_payload_in_mb, Shapes::ShapeRef.new(shape: MaxPayloadInMB, location_name: "MaxPayloadInMB"))
    TransformJobDefinition.add_member(:batch_strategy, Shapes::ShapeRef.new(shape: BatchStrategy, location_name: "BatchStrategy"))
    TransformJobDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: TransformEnvironmentMap, location_name: "Environment"))
    TransformJobDefinition.add_member(:transform_input, Shapes::ShapeRef.new(shape: TransformInput, required: true, location_name: "TransformInput"))
    TransformJobDefinition.add_member(:transform_output, Shapes::ShapeRef.new(shape: TransformOutput, required: true, location_name: "TransformOutput"))
    TransformJobDefinition.add_member(:transform_resources, Shapes::ShapeRef.new(shape: TransformResources, required: true, location_name: "TransformResources"))
    TransformJobDefinition.struct_class = Types::TransformJobDefinition

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

    USD.add_member(:dollars, Shapes::ShapeRef.new(shape: Dollars, location_name: "Dollars"))
    USD.add_member(:cents, Shapes::ShapeRef.new(shape: Cents, location_name: "Cents"))
    USD.add_member(:tenth_fractions_of_a_cent, Shapes::ShapeRef.new(shape: TenthFractionsOfACent, location_name: "TenthFractionsOfACent"))
    USD.struct_class = Types::USD

    UiConfig.add_member(:ui_template_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "UiTemplateS3Uri"))
    UiConfig.struct_class = Types::UiConfig

    UiTemplate.add_member(:content, Shapes::ShapeRef.new(shape: TemplateContent, required: true, location_name: "Content"))
    UiTemplate.struct_class = Types::UiTemplate

    UpdateCodeRepositoryInput.add_member(:code_repository_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "CodeRepositoryName"))
    UpdateCodeRepositoryInput.add_member(:git_config, Shapes::ShapeRef.new(shape: GitConfigForUpdate, location_name: "GitConfig"))
    UpdateCodeRepositoryInput.struct_class = Types::UpdateCodeRepositoryInput

    UpdateCodeRepositoryOutput.add_member(:code_repository_arn, Shapes::ShapeRef.new(shape: CodeRepositoryArn, required: true, location_name: "CodeRepositoryArn"))
    UpdateCodeRepositoryOutput.struct_class = Types::UpdateCodeRepositoryOutput

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
    UpdateNotebookInstanceInput.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: NotebookInstanceVolumeSizeInGB, location_name: "VolumeSizeInGB"))
    UpdateNotebookInstanceInput.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryNameOrUrl, location_name: "DefaultCodeRepository"))
    UpdateNotebookInstanceInput.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: AdditionalCodeRepositoryNamesOrUrls, location_name: "AdditionalCodeRepositories"))
    UpdateNotebookInstanceInput.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NotebookInstanceAcceleratorTypes, location_name: "AcceleratorTypes"))
    UpdateNotebookInstanceInput.add_member(:disassociate_accelerator_types, Shapes::ShapeRef.new(shape: DisassociateNotebookInstanceAcceleratorTypes, location_name: "DisassociateAcceleratorTypes"))
    UpdateNotebookInstanceInput.add_member(:disassociate_default_code_repository, Shapes::ShapeRef.new(shape: DisassociateDefaultCodeRepository, location_name: "DisassociateDefaultCodeRepository"))
    UpdateNotebookInstanceInput.add_member(:disassociate_additional_code_repositories, Shapes::ShapeRef.new(shape: DisassociateAdditionalCodeRepositories, location_name: "DisassociateAdditionalCodeRepositories"))
    UpdateNotebookInstanceInput.add_member(:root_access, Shapes::ShapeRef.new(shape: RootAccess, location_name: "RootAccess"))
    UpdateNotebookInstanceInput.struct_class = Types::UpdateNotebookInstanceInput

    UpdateNotebookInstanceLifecycleConfigInput.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigName, required: true, location_name: "NotebookInstanceLifecycleConfigName"))
    UpdateNotebookInstanceLifecycleConfigInput.add_member(:on_create, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnCreate"))
    UpdateNotebookInstanceLifecycleConfigInput.add_member(:on_start, Shapes::ShapeRef.new(shape: NotebookInstanceLifecycleConfigList, location_name: "OnStart"))
    UpdateNotebookInstanceLifecycleConfigInput.struct_class = Types::UpdateNotebookInstanceLifecycleConfigInput

    UpdateNotebookInstanceLifecycleConfigOutput.struct_class = Types::UpdateNotebookInstanceLifecycleConfigOutput

    UpdateNotebookInstanceOutput.struct_class = Types::UpdateNotebookInstanceOutput

    UpdateWorkteamRequest.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    UpdateWorkteamRequest.add_member(:member_definitions, Shapes::ShapeRef.new(shape: MemberDefinitions, location_name: "MemberDefinitions"))
    UpdateWorkteamRequest.add_member(:description, Shapes::ShapeRef.new(shape: String200, location_name: "Description"))
    UpdateWorkteamRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    UpdateWorkteamRequest.struct_class = Types::UpdateWorkteamRequest

    UpdateWorkteamResponse.add_member(:workteam, Shapes::ShapeRef.new(shape: Workteam, required: true, location_name: "Workteam"))
    UpdateWorkteamResponse.struct_class = Types::UpdateWorkteamResponse

    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcSecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    Workteam.add_member(:workteam_name, Shapes::ShapeRef.new(shape: WorkteamName, required: true, location_name: "WorkteamName"))
    Workteam.add_member(:member_definitions, Shapes::ShapeRef.new(shape: MemberDefinitions, required: true, location_name: "MemberDefinitions"))
    Workteam.add_member(:workteam_arn, Shapes::ShapeRef.new(shape: WorkteamArn, required: true, location_name: "WorkteamArn"))
    Workteam.add_member(:product_listing_ids, Shapes::ShapeRef.new(shape: ProductListings, location_name: "ProductListingIds"))
    Workteam.add_member(:description, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "Description"))
    Workteam.add_member(:sub_domain, Shapes::ShapeRef.new(shape: String, location_name: "SubDomain"))
    Workteam.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    Workteam.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedDate"))
    Workteam.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    Workteam.struct_class = Types::Workteam

    Workteams.member = Shapes::ShapeRef.new(shape: Workteam)


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

      api.add_operation(:create_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAlgorithmInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAlgorithmOutput)
      end)

      api.add_operation(:create_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeRepositoryOutput)
      end)

      api.add_operation(:create_compilation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCompilationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCompilationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCompilationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
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

      api.add_operation(:create_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLabelingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLabelingJobResponse)
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

      api.add_operation(:create_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: CreateModelPackageOutput)
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

      api.add_operation(:create_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:delete_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlgorithmInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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

      api.add_operation(:delete_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelPackageInput)
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

      api.add_operation(:delete_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)

      api.add_operation(:describe_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlgorithmInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlgorithmOutput)
      end)

      api.add_operation(:describe_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCodeRepositoryOutput)
      end)

      api.add_operation(:describe_compilation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCompilationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCompilationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCompilationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
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

      api.add_operation(:describe_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLabelingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLabelingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:describe_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelOutput)
      end)

      api.add_operation(:describe_model_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeModelPackage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeModelPackageInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeModelPackageOutput)
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

      api.add_operation(:describe_subscribed_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscribedWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscribedWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscribedWorkteamResponse)
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

      api.add_operation(:describe_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkteamResponse)
      end)

      api.add_operation(:get_search_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSearchSuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSearchSuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSearchSuggestionsResponse)
      end)

      api.add_operation(:list_algorithms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlgorithms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAlgorithmsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAlgorithmsOutput)
      end)

      api.add_operation(:list_code_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCodeRepositoriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeRepositoriesOutput)
      end)

      api.add_operation(:list_compilation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCompilationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCompilationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCompilationJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:list_labeling_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLabelingJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLabelingJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLabelingJobsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_labeling_jobs_for_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLabelingJobsForWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLabelingJobsForWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLabelingJobsForWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelPackages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelPackagesInput)
        o.output = Shapes::ShapeRef.new(shape: ListModelPackagesOutput)
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

      api.add_operation(:list_subscribed_workteams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscribedWorkteams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSubscribedWorkteamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscribedWorkteamsResponse)
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

      api.add_operation(:list_workteams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkteams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkteamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkteamsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:render_ui_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenderUiTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenderUiTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: RenderUiTemplateResponse)
      end)

      api.add_operation(:search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Search"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchResponse)
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

      api.add_operation(:stop_compilation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCompilationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopCompilationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_hyper_parameter_tuning_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopHyperParameterTuningJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopHyperParameterTuningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
      end)

      api.add_operation(:stop_labeling_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopLabelingJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopLabelingJobRequest)
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

      api.add_operation(:update_code_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeRepositoryOutput)
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

      api.add_operation(:update_workteam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkteam"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkteamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkteamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
      end)
    end

  end
end

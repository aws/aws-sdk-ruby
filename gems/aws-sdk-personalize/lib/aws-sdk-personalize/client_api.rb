# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Personalize
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Algorithm = Shapes::StructureShape.new(name: 'Algorithm')
    AlgorithmImage = Shapes::StructureShape.new(name: 'AlgorithmImage')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AutoMLConfig = Shapes::StructureShape.new(name: 'AutoMLConfig')
    AutoMLResult = Shapes::StructureShape.new(name: 'AutoMLResult')
    AvroSchema = Shapes::StringShape.new(name: 'AvroSchema')
    BatchInferenceJob = Shapes::StructureShape.new(name: 'BatchInferenceJob')
    BatchInferenceJobInput = Shapes::StructureShape.new(name: 'BatchInferenceJobInput')
    BatchInferenceJobOutput = Shapes::StructureShape.new(name: 'BatchInferenceJobOutput')
    BatchInferenceJobSummary = Shapes::StructureShape.new(name: 'BatchInferenceJobSummary')
    BatchInferenceJobs = Shapes::ListShape.new(name: 'BatchInferenceJobs')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Campaign = Shapes::StructureShape.new(name: 'Campaign')
    CampaignSummary = Shapes::StructureShape.new(name: 'CampaignSummary')
    CampaignUpdateSummary = Shapes::StructureShape.new(name: 'CampaignUpdateSummary')
    Campaigns = Shapes::ListShape.new(name: 'Campaigns')
    CategoricalHyperParameterRange = Shapes::StructureShape.new(name: 'CategoricalHyperParameterRange')
    CategoricalHyperParameterRanges = Shapes::ListShape.new(name: 'CategoricalHyperParameterRanges')
    CategoricalValue = Shapes::StringShape.new(name: 'CategoricalValue')
    CategoricalValues = Shapes::ListShape.new(name: 'CategoricalValues')
    ContinuousHyperParameterRange = Shapes::StructureShape.new(name: 'ContinuousHyperParameterRange')
    ContinuousHyperParameterRanges = Shapes::ListShape.new(name: 'ContinuousHyperParameterRanges')
    ContinuousMaxValue = Shapes::FloatShape.new(name: 'ContinuousMaxValue')
    ContinuousMinValue = Shapes::FloatShape.new(name: 'ContinuousMinValue')
    CreateBatchInferenceJobRequest = Shapes::StructureShape.new(name: 'CreateBatchInferenceJobRequest')
    CreateBatchInferenceJobResponse = Shapes::StructureShape.new(name: 'CreateBatchInferenceJobResponse')
    CreateCampaignRequest = Shapes::StructureShape.new(name: 'CreateCampaignRequest')
    CreateCampaignResponse = Shapes::StructureShape.new(name: 'CreateCampaignResponse')
    CreateDatasetGroupRequest = Shapes::StructureShape.new(name: 'CreateDatasetGroupRequest')
    CreateDatasetGroupResponse = Shapes::StructureShape.new(name: 'CreateDatasetGroupResponse')
    CreateDatasetImportJobRequest = Shapes::StructureShape.new(name: 'CreateDatasetImportJobRequest')
    CreateDatasetImportJobResponse = Shapes::StructureShape.new(name: 'CreateDatasetImportJobResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateEventTrackerRequest = Shapes::StructureShape.new(name: 'CreateEventTrackerRequest')
    CreateEventTrackerResponse = Shapes::StructureShape.new(name: 'CreateEventTrackerResponse')
    CreateFilterRequest = Shapes::StructureShape.new(name: 'CreateFilterRequest')
    CreateFilterResponse = Shapes::StructureShape.new(name: 'CreateFilterResponse')
    CreateSchemaRequest = Shapes::StructureShape.new(name: 'CreateSchemaRequest')
    CreateSchemaResponse = Shapes::StructureShape.new(name: 'CreateSchemaResponse')
    CreateSolutionRequest = Shapes::StructureShape.new(name: 'CreateSolutionRequest')
    CreateSolutionResponse = Shapes::StructureShape.new(name: 'CreateSolutionResponse')
    CreateSolutionVersionRequest = Shapes::StructureShape.new(name: 'CreateSolutionVersionRequest')
    CreateSolutionVersionResponse = Shapes::StructureShape.new(name: 'CreateSolutionVersionResponse')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetGroup = Shapes::StructureShape.new(name: 'DatasetGroup')
    DatasetGroupSummary = Shapes::StructureShape.new(name: 'DatasetGroupSummary')
    DatasetGroups = Shapes::ListShape.new(name: 'DatasetGroups')
    DatasetImportJob = Shapes::StructureShape.new(name: 'DatasetImportJob')
    DatasetImportJobSummary = Shapes::StructureShape.new(name: 'DatasetImportJobSummary')
    DatasetImportJobs = Shapes::ListShape.new(name: 'DatasetImportJobs')
    DatasetSchema = Shapes::StructureShape.new(name: 'DatasetSchema')
    DatasetSchemaSummary = Shapes::StructureShape.new(name: 'DatasetSchemaSummary')
    DatasetSummary = Shapes::StructureShape.new(name: 'DatasetSummary')
    DatasetType = Shapes::StringShape.new(name: 'DatasetType')
    Datasets = Shapes::ListShape.new(name: 'Datasets')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DefaultCategoricalHyperParameterRange = Shapes::StructureShape.new(name: 'DefaultCategoricalHyperParameterRange')
    DefaultCategoricalHyperParameterRanges = Shapes::ListShape.new(name: 'DefaultCategoricalHyperParameterRanges')
    DefaultContinuousHyperParameterRange = Shapes::StructureShape.new(name: 'DefaultContinuousHyperParameterRange')
    DefaultContinuousHyperParameterRanges = Shapes::ListShape.new(name: 'DefaultContinuousHyperParameterRanges')
    DefaultHyperParameterRanges = Shapes::StructureShape.new(name: 'DefaultHyperParameterRanges')
    DefaultIntegerHyperParameterRange = Shapes::StructureShape.new(name: 'DefaultIntegerHyperParameterRange')
    DefaultIntegerHyperParameterRanges = Shapes::ListShape.new(name: 'DefaultIntegerHyperParameterRanges')
    DeleteCampaignRequest = Shapes::StructureShape.new(name: 'DeleteCampaignRequest')
    DeleteDatasetGroupRequest = Shapes::StructureShape.new(name: 'DeleteDatasetGroupRequest')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteEventTrackerRequest = Shapes::StructureShape.new(name: 'DeleteEventTrackerRequest')
    DeleteFilterRequest = Shapes::StructureShape.new(name: 'DeleteFilterRequest')
    DeleteSchemaRequest = Shapes::StructureShape.new(name: 'DeleteSchemaRequest')
    DeleteSolutionRequest = Shapes::StructureShape.new(name: 'DeleteSolutionRequest')
    DescribeAlgorithmRequest = Shapes::StructureShape.new(name: 'DescribeAlgorithmRequest')
    DescribeAlgorithmResponse = Shapes::StructureShape.new(name: 'DescribeAlgorithmResponse')
    DescribeBatchInferenceJobRequest = Shapes::StructureShape.new(name: 'DescribeBatchInferenceJobRequest')
    DescribeBatchInferenceJobResponse = Shapes::StructureShape.new(name: 'DescribeBatchInferenceJobResponse')
    DescribeCampaignRequest = Shapes::StructureShape.new(name: 'DescribeCampaignRequest')
    DescribeCampaignResponse = Shapes::StructureShape.new(name: 'DescribeCampaignResponse')
    DescribeDatasetGroupRequest = Shapes::StructureShape.new(name: 'DescribeDatasetGroupRequest')
    DescribeDatasetGroupResponse = Shapes::StructureShape.new(name: 'DescribeDatasetGroupResponse')
    DescribeDatasetImportJobRequest = Shapes::StructureShape.new(name: 'DescribeDatasetImportJobRequest')
    DescribeDatasetImportJobResponse = Shapes::StructureShape.new(name: 'DescribeDatasetImportJobResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeEventTrackerRequest = Shapes::StructureShape.new(name: 'DescribeEventTrackerRequest')
    DescribeEventTrackerResponse = Shapes::StructureShape.new(name: 'DescribeEventTrackerResponse')
    DescribeFeatureTransformationRequest = Shapes::StructureShape.new(name: 'DescribeFeatureTransformationRequest')
    DescribeFeatureTransformationResponse = Shapes::StructureShape.new(name: 'DescribeFeatureTransformationResponse')
    DescribeFilterRequest = Shapes::StructureShape.new(name: 'DescribeFilterRequest')
    DescribeFilterResponse = Shapes::StructureShape.new(name: 'DescribeFilterResponse')
    DescribeRecipeRequest = Shapes::StructureShape.new(name: 'DescribeRecipeRequest')
    DescribeRecipeResponse = Shapes::StructureShape.new(name: 'DescribeRecipeResponse')
    DescribeSchemaRequest = Shapes::StructureShape.new(name: 'DescribeSchemaRequest')
    DescribeSchemaResponse = Shapes::StructureShape.new(name: 'DescribeSchemaResponse')
    DescribeSolutionRequest = Shapes::StructureShape.new(name: 'DescribeSolutionRequest')
    DescribeSolutionResponse = Shapes::StructureShape.new(name: 'DescribeSolutionResponse')
    DescribeSolutionVersionRequest = Shapes::StructureShape.new(name: 'DescribeSolutionVersionRequest')
    DescribeSolutionVersionResponse = Shapes::StructureShape.new(name: 'DescribeSolutionVersionResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DockerURI = Shapes::StringShape.new(name: 'DockerURI')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventTracker = Shapes::StructureShape.new(name: 'EventTracker')
    EventTrackerSummary = Shapes::StructureShape.new(name: 'EventTrackerSummary')
    EventTrackers = Shapes::ListShape.new(name: 'EventTrackers')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventValueThreshold = Shapes::StringShape.new(name: 'EventValueThreshold')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FeatureTransformation = Shapes::StructureShape.new(name: 'FeatureTransformation')
    FeatureTransformationParameters = Shapes::MapShape.new(name: 'FeatureTransformationParameters')
    FeaturizationParameters = Shapes::MapShape.new(name: 'FeaturizationParameters')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterExpression = Shapes::StringShape.new(name: 'FilterExpression')
    FilterSummary = Shapes::StructureShape.new(name: 'FilterSummary')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetSolutionMetricsRequest = Shapes::StructureShape.new(name: 'GetSolutionMetricsRequest')
    GetSolutionMetricsResponse = Shapes::StructureShape.new(name: 'GetSolutionMetricsResponse')
    HPOConfig = Shapes::StructureShape.new(name: 'HPOConfig')
    HPOObjective = Shapes::StructureShape.new(name: 'HPOObjective')
    HPOObjectiveType = Shapes::StringShape.new(name: 'HPOObjectiveType')
    HPOResource = Shapes::StringShape.new(name: 'HPOResource')
    HPOResourceConfig = Shapes::StructureShape.new(name: 'HPOResourceConfig')
    HyperParameterRanges = Shapes::StructureShape.new(name: 'HyperParameterRanges')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    IntegerHyperParameterRange = Shapes::StructureShape.new(name: 'IntegerHyperParameterRange')
    IntegerHyperParameterRanges = Shapes::ListShape.new(name: 'IntegerHyperParameterRanges')
    IntegerMaxValue = Shapes::IntegerShape.new(name: 'IntegerMaxValue')
    IntegerMinValue = Shapes::IntegerShape.new(name: 'IntegerMinValue')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListBatchInferenceJobsRequest = Shapes::StructureShape.new(name: 'ListBatchInferenceJobsRequest')
    ListBatchInferenceJobsResponse = Shapes::StructureShape.new(name: 'ListBatchInferenceJobsResponse')
    ListCampaignsRequest = Shapes::StructureShape.new(name: 'ListCampaignsRequest')
    ListCampaignsResponse = Shapes::StructureShape.new(name: 'ListCampaignsResponse')
    ListDatasetGroupsRequest = Shapes::StructureShape.new(name: 'ListDatasetGroupsRequest')
    ListDatasetGroupsResponse = Shapes::StructureShape.new(name: 'ListDatasetGroupsResponse')
    ListDatasetImportJobsRequest = Shapes::StructureShape.new(name: 'ListDatasetImportJobsRequest')
    ListDatasetImportJobsResponse = Shapes::StructureShape.new(name: 'ListDatasetImportJobsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListEventTrackersRequest = Shapes::StructureShape.new(name: 'ListEventTrackersRequest')
    ListEventTrackersResponse = Shapes::StructureShape.new(name: 'ListEventTrackersResponse')
    ListFiltersRequest = Shapes::StructureShape.new(name: 'ListFiltersRequest')
    ListFiltersResponse = Shapes::StructureShape.new(name: 'ListFiltersResponse')
    ListRecipesRequest = Shapes::StructureShape.new(name: 'ListRecipesRequest')
    ListRecipesResponse = Shapes::StructureShape.new(name: 'ListRecipesResponse')
    ListSchemasRequest = Shapes::StructureShape.new(name: 'ListSchemasRequest')
    ListSchemasResponse = Shapes::StructureShape.new(name: 'ListSchemasResponse')
    ListSolutionVersionsRequest = Shapes::StructureShape.new(name: 'ListSolutionVersionsRequest')
    ListSolutionVersionsResponse = Shapes::StructureShape.new(name: 'ListSolutionVersionsResponse')
    ListSolutionsRequest = Shapes::StructureShape.new(name: 'ListSolutionsRequest')
    ListSolutionsResponse = Shapes::StructureShape.new(name: 'ListSolutionsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricRegex = Shapes::StringShape.new(name: 'MetricRegex')
    MetricValue = Shapes::FloatShape.new(name: 'MetricValue')
    Metrics = Shapes::MapShape.new(name: 'Metrics')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NumBatchResults = Shapes::IntegerShape.new(name: 'NumBatchResults')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PerformAutoML = Shapes::BooleanShape.new(name: 'PerformAutoML')
    PerformHPO = Shapes::BooleanShape.new(name: 'PerformHPO')
    Recipe = Shapes::StructureShape.new(name: 'Recipe')
    RecipeProvider = Shapes::StringShape.new(name: 'RecipeProvider')
    RecipeSummary = Shapes::StructureShape.new(name: 'RecipeSummary')
    RecipeType = Shapes::StringShape.new(name: 'RecipeType')
    Recipes = Shapes::ListShape.new(name: 'Recipes')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceConfig = Shapes::MapShape.new(name: 'ResourceConfig')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3DataConfig = Shapes::StructureShape.new(name: 'S3DataConfig')
    S3Location = Shapes::StringShape.new(name: 'S3Location')
    Schemas = Shapes::ListShape.new(name: 'Schemas')
    Solution = Shapes::StructureShape.new(name: 'Solution')
    SolutionConfig = Shapes::StructureShape.new(name: 'SolutionConfig')
    SolutionSummary = Shapes::StructureShape.new(name: 'SolutionSummary')
    SolutionVersion = Shapes::StructureShape.new(name: 'SolutionVersion')
    SolutionVersionSummary = Shapes::StructureShape.new(name: 'SolutionVersionSummary')
    SolutionVersions = Shapes::ListShape.new(name: 'SolutionVersions')
    Solutions = Shapes::ListShape.new(name: 'Solutions')
    Status = Shapes::StringShape.new(name: 'Status')
    TrackingId = Shapes::StringShape.new(name: 'TrackingId')
    TrainingHours = Shapes::FloatShape.new(name: 'TrainingHours')
    TrainingInputMode = Shapes::StringShape.new(name: 'TrainingInputMode')
    TrainingMode = Shapes::StringShape.new(name: 'TrainingMode')
    TransactionsPerSecond = Shapes::IntegerShape.new(name: 'TransactionsPerSecond')
    Tunable = Shapes::BooleanShape.new(name: 'Tunable')
    TunedHPOParams = Shapes::StructureShape.new(name: 'TunedHPOParams')
    UpdateCampaignRequest = Shapes::StructureShape.new(name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = Shapes::StructureShape.new(name: 'UpdateCampaignResponse')

    Algorithm.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Algorithm.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "algorithmArn"))
    Algorithm.add_member(:algorithm_image, Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: "algorithmImage"))
    Algorithm.add_member(:default_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "defaultHyperParameters"))
    Algorithm.add_member(:default_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: DefaultHyperParameterRanges, location_name: "defaultHyperParameterRanges"))
    Algorithm.add_member(:default_resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "defaultResourceConfig"))
    Algorithm.add_member(:training_input_mode, Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: "trainingInputMode"))
    Algorithm.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    Algorithm.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    Algorithm.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    Algorithm.struct_class = Types::Algorithm

    AlgorithmImage.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AlgorithmImage.add_member(:docker_uri, Shapes::ShapeRef.new(shape: DockerURI, required: true, location_name: "dockerURI"))
    AlgorithmImage.struct_class = Types::AlgorithmImage

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AutoMLConfig.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName"))
    AutoMLConfig.add_member(:recipe_list, Shapes::ShapeRef.new(shape: ArnList, location_name: "recipeList"))
    AutoMLConfig.struct_class = Types::AutoMLConfig

    AutoMLResult.add_member(:best_recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "bestRecipeArn"))
    AutoMLResult.struct_class = Types::AutoMLResult

    BatchInferenceJob.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, location_name: "jobName"))
    BatchInferenceJob.add_member(:batch_inference_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "batchInferenceJobArn"))
    BatchInferenceJob.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    BatchInferenceJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    BatchInferenceJob.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    BatchInferenceJob.add_member(:num_results, Shapes::ShapeRef.new(shape: NumBatchResults, location_name: "numResults"))
    BatchInferenceJob.add_member(:job_input, Shapes::ShapeRef.new(shape: BatchInferenceJobInput, location_name: "jobInput"))
    BatchInferenceJob.add_member(:job_output, Shapes::ShapeRef.new(shape: BatchInferenceJobOutput, location_name: "jobOutput"))
    BatchInferenceJob.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    BatchInferenceJob.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    BatchInferenceJob.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    BatchInferenceJob.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    BatchInferenceJob.struct_class = Types::BatchInferenceJob

    BatchInferenceJobInput.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataConfig, required: true, location_name: "s3DataSource"))
    BatchInferenceJobInput.struct_class = Types::BatchInferenceJobInput

    BatchInferenceJobOutput.add_member(:s3_data_destination, Shapes::ShapeRef.new(shape: S3DataConfig, required: true, location_name: "s3DataDestination"))
    BatchInferenceJobOutput.struct_class = Types::BatchInferenceJobOutput

    BatchInferenceJobSummary.add_member(:batch_inference_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "batchInferenceJobArn"))
    BatchInferenceJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, location_name: "jobName"))
    BatchInferenceJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    BatchInferenceJobSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    BatchInferenceJobSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    BatchInferenceJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    BatchInferenceJobSummary.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    BatchInferenceJobSummary.struct_class = Types::BatchInferenceJobSummary

    BatchInferenceJobs.member = Shapes::ShapeRef.new(shape: BatchInferenceJobSummary)

    Campaign.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Campaign.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "campaignArn"))
    Campaign.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    Campaign.add_member(:min_provisioned_tps, Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    Campaign.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    Campaign.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    Campaign.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    Campaign.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    Campaign.add_member(:latest_campaign_update, Shapes::ShapeRef.new(shape: CampaignUpdateSummary, location_name: "latestCampaignUpdate"))
    Campaign.struct_class = Types::Campaign

    CampaignSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CampaignSummary.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "campaignArn"))
    CampaignSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CampaignSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    CampaignSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    CampaignSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    CampaignSummary.struct_class = Types::CampaignSummary

    CampaignUpdateSummary.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    CampaignUpdateSummary.add_member(:min_provisioned_tps, Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    CampaignUpdateSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CampaignUpdateSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    CampaignUpdateSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    CampaignUpdateSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    CampaignUpdateSummary.struct_class = Types::CampaignUpdateSummary

    Campaigns.member = Shapes::ShapeRef.new(shape: CampaignSummary)

    CategoricalHyperParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    CategoricalHyperParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: CategoricalValues, location_name: "values"))
    CategoricalHyperParameterRange.struct_class = Types::CategoricalHyperParameterRange

    CategoricalHyperParameterRanges.member = Shapes::ShapeRef.new(shape: CategoricalHyperParameterRange)

    CategoricalValues.member = Shapes::ShapeRef.new(shape: CategoricalValue)

    ContinuousHyperParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    ContinuousHyperParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ContinuousMinValue, location_name: "minValue"))
    ContinuousHyperParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ContinuousMaxValue, location_name: "maxValue"))
    ContinuousHyperParameterRange.struct_class = Types::ContinuousHyperParameterRange

    ContinuousHyperParameterRanges.member = Shapes::ShapeRef.new(shape: ContinuousHyperParameterRange)

    CreateBatchInferenceJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "jobName"))
    CreateBatchInferenceJobRequest.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionVersionArn"))
    CreateBatchInferenceJobRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    CreateBatchInferenceJobRequest.add_member(:num_results, Shapes::ShapeRef.new(shape: NumBatchResults, location_name: "numResults"))
    CreateBatchInferenceJobRequest.add_member(:job_input, Shapes::ShapeRef.new(shape: BatchInferenceJobInput, required: true, location_name: "jobInput"))
    CreateBatchInferenceJobRequest.add_member(:job_output, Shapes::ShapeRef.new(shape: BatchInferenceJobOutput, required: true, location_name: "jobOutput"))
    CreateBatchInferenceJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateBatchInferenceJobRequest.struct_class = Types::CreateBatchInferenceJobRequest

    CreateBatchInferenceJobResponse.add_member(:batch_inference_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "batchInferenceJobArn"))
    CreateBatchInferenceJobResponse.struct_class = Types::CreateBatchInferenceJobResponse

    CreateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateCampaignRequest.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionVersionArn"))
    CreateCampaignRequest.add_member(:min_provisioned_tps, Shapes::ShapeRef.new(shape: TransactionsPerSecond, required: true, location_name: "minProvisionedTPS"))
    CreateCampaignRequest.struct_class = Types::CreateCampaignRequest

    CreateCampaignResponse.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "campaignArn"))
    CreateCampaignResponse.struct_class = Types::CreateCampaignResponse

    CreateDatasetGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDatasetGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateDatasetGroupRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateDatasetGroupRequest.struct_class = Types::CreateDatasetGroupRequest

    CreateDatasetGroupResponse.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    CreateDatasetGroupResponse.struct_class = Types::CreateDatasetGroupResponse

    CreateDatasetImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "jobName"))
    CreateDatasetImportJobRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetArn"))
    CreateDatasetImportJobRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    CreateDatasetImportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateDatasetImportJobRequest.struct_class = Types::CreateDatasetImportJobRequest

    CreateDatasetImportJobResponse.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetImportJobArn"))
    CreateDatasetImportJobResponse.struct_class = Types::CreateDatasetImportJobResponse

    CreateDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDatasetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "schemaArn"))
    CreateDatasetRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetGroupArn"))
    CreateDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, required: true, location_name: "datasetType"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetArn"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateEventTrackerRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateEventTrackerRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetGroupArn"))
    CreateEventTrackerRequest.struct_class = Types::CreateEventTrackerRequest

    CreateEventTrackerResponse.add_member(:event_tracker_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "eventTrackerArn"))
    CreateEventTrackerResponse.add_member(:tracking_id, Shapes::ShapeRef.new(shape: TrackingId, location_name: "trackingId"))
    CreateEventTrackerResponse.struct_class = Types::CreateEventTrackerResponse

    CreateFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateFilterRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetGroupArn"))
    CreateFilterRequest.add_member(:filter_expression, Shapes::ShapeRef.new(shape: FilterExpression, required: true, location_name: "filterExpression"))
    CreateFilterRequest.struct_class = Types::CreateFilterRequest

    CreateFilterResponse.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    CreateFilterResponse.struct_class = Types::CreateFilterResponse

    CreateSchemaRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSchemaRequest.add_member(:schema, Shapes::ShapeRef.new(shape: AvroSchema, required: true, location_name: "schema"))
    CreateSchemaRequest.struct_class = Types::CreateSchemaRequest

    CreateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "schemaArn"))
    CreateSchemaResponse.struct_class = Types::CreateSchemaResponse

    CreateSolutionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSolutionRequest.add_member(:perform_hpo, Shapes::ShapeRef.new(shape: Boolean, location_name: "performHPO"))
    CreateSolutionRequest.add_member(:perform_auto_ml, Shapes::ShapeRef.new(shape: PerformAutoML, location_name: "performAutoML"))
    CreateSolutionRequest.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "recipeArn"))
    CreateSolutionRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetGroupArn"))
    CreateSolutionRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    CreateSolutionRequest.add_member(:solution_config, Shapes::ShapeRef.new(shape: SolutionConfig, location_name: "solutionConfig"))
    CreateSolutionRequest.struct_class = Types::CreateSolutionRequest

    CreateSolutionResponse.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionArn"))
    CreateSolutionResponse.struct_class = Types::CreateSolutionResponse

    CreateSolutionVersionRequest.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionArn"))
    CreateSolutionVersionRequest.add_member(:training_mode, Shapes::ShapeRef.new(shape: TrainingMode, location_name: "trainingMode"))
    CreateSolutionVersionRequest.struct_class = Types::CreateSolutionVersionRequest

    CreateSolutionVersionResponse.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    CreateSolutionVersionResponse.struct_class = Types::CreateSolutionVersionResponse

    DataSource.add_member(:data_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "dataLocation"))
    DataSource.struct_class = Types::DataSource

    Dataset.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Dataset.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetArn"))
    Dataset.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    Dataset.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "datasetType"))
    Dataset.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "schemaArn"))
    Dataset.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    Dataset.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    Dataset.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    Dataset.struct_class = Types::Dataset

    DatasetGroup.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DatasetGroup.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    DatasetGroup.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DatasetGroup.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DatasetGroup.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    DatasetGroup.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetGroup.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetGroup.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    DatasetGroup.struct_class = Types::DatasetGroup

    DatasetGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DatasetGroupSummary.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    DatasetGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DatasetGroupSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetGroupSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetGroupSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    DatasetGroupSummary.struct_class = Types::DatasetGroupSummary

    DatasetGroups.member = Shapes::ShapeRef.new(shape: DatasetGroupSummary)

    DatasetImportJob.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, location_name: "jobName"))
    DatasetImportJob.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetImportJobArn"))
    DatasetImportJob.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetArn"))
    DatasetImportJob.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    DatasetImportJob.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    DatasetImportJob.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DatasetImportJob.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetImportJob.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetImportJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    DatasetImportJob.struct_class = Types::DatasetImportJob

    DatasetImportJobSummary.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetImportJobArn"))
    DatasetImportJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, location_name: "jobName"))
    DatasetImportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DatasetImportJobSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetImportJobSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetImportJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    DatasetImportJobSummary.struct_class = Types::DatasetImportJobSummary

    DatasetImportJobs.member = Shapes::ShapeRef.new(shape: DatasetImportJobSummary)

    DatasetSchema.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DatasetSchema.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "schemaArn"))
    DatasetSchema.add_member(:schema, Shapes::ShapeRef.new(shape: AvroSchema, location_name: "schema"))
    DatasetSchema.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetSchema.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetSchema.struct_class = Types::DatasetSchema

    DatasetSchemaSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DatasetSchemaSummary.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "schemaArn"))
    DatasetSchemaSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetSchemaSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetSchemaSummary.struct_class = Types::DatasetSchemaSummary

    DatasetSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DatasetSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetArn"))
    DatasetSummary.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetType, location_name: "datasetType"))
    DatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DatasetSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    DatasetSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    DatasetSummary.struct_class = Types::DatasetSummary

    Datasets.member = Shapes::ShapeRef.new(shape: DatasetSummary)

    DefaultCategoricalHyperParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    DefaultCategoricalHyperParameterRange.add_member(:values, Shapes::ShapeRef.new(shape: CategoricalValues, location_name: "values"))
    DefaultCategoricalHyperParameterRange.add_member(:is_tunable, Shapes::ShapeRef.new(shape: Tunable, location_name: "isTunable"))
    DefaultCategoricalHyperParameterRange.struct_class = Types::DefaultCategoricalHyperParameterRange

    DefaultCategoricalHyperParameterRanges.member = Shapes::ShapeRef.new(shape: DefaultCategoricalHyperParameterRange)

    DefaultContinuousHyperParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    DefaultContinuousHyperParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: ContinuousMinValue, location_name: "minValue"))
    DefaultContinuousHyperParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: ContinuousMaxValue, location_name: "maxValue"))
    DefaultContinuousHyperParameterRange.add_member(:is_tunable, Shapes::ShapeRef.new(shape: Tunable, location_name: "isTunable"))
    DefaultContinuousHyperParameterRange.struct_class = Types::DefaultContinuousHyperParameterRange

    DefaultContinuousHyperParameterRanges.member = Shapes::ShapeRef.new(shape: DefaultContinuousHyperParameterRange)

    DefaultHyperParameterRanges.add_member(:integer_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: DefaultIntegerHyperParameterRanges, location_name: "integerHyperParameterRanges"))
    DefaultHyperParameterRanges.add_member(:continuous_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: DefaultContinuousHyperParameterRanges, location_name: "continuousHyperParameterRanges"))
    DefaultHyperParameterRanges.add_member(:categorical_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: DefaultCategoricalHyperParameterRanges, location_name: "categoricalHyperParameterRanges"))
    DefaultHyperParameterRanges.struct_class = Types::DefaultHyperParameterRanges

    DefaultIntegerHyperParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    DefaultIntegerHyperParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: IntegerMinValue, location_name: "minValue"))
    DefaultIntegerHyperParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: IntegerMaxValue, location_name: "maxValue"))
    DefaultIntegerHyperParameterRange.add_member(:is_tunable, Shapes::ShapeRef.new(shape: Tunable, location_name: "isTunable"))
    DefaultIntegerHyperParameterRange.struct_class = Types::DefaultIntegerHyperParameterRange

    DefaultIntegerHyperParameterRanges.member = Shapes::ShapeRef.new(shape: DefaultIntegerHyperParameterRange)

    DeleteCampaignRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "campaignArn"))
    DeleteCampaignRequest.struct_class = Types::DeleteCampaignRequest

    DeleteDatasetGroupRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetGroupArn"))
    DeleteDatasetGroupRequest.struct_class = Types::DeleteDatasetGroupRequest

    DeleteDatasetRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetArn"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteEventTrackerRequest.add_member(:event_tracker_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "eventTrackerArn"))
    DeleteEventTrackerRequest.struct_class = Types::DeleteEventTrackerRequest

    DeleteFilterRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "filterArn"))
    DeleteFilterRequest.struct_class = Types::DeleteFilterRequest

    DeleteSchemaRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "schemaArn"))
    DeleteSchemaRequest.struct_class = Types::DeleteSchemaRequest

    DeleteSolutionRequest.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionArn"))
    DeleteSolutionRequest.struct_class = Types::DeleteSolutionRequest

    DescribeAlgorithmRequest.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "algorithmArn"))
    DescribeAlgorithmRequest.struct_class = Types::DescribeAlgorithmRequest

    DescribeAlgorithmResponse.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    DescribeAlgorithmResponse.struct_class = Types::DescribeAlgorithmResponse

    DescribeBatchInferenceJobRequest.add_member(:batch_inference_job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "batchInferenceJobArn"))
    DescribeBatchInferenceJobRequest.struct_class = Types::DescribeBatchInferenceJobRequest

    DescribeBatchInferenceJobResponse.add_member(:batch_inference_job, Shapes::ShapeRef.new(shape: BatchInferenceJob, location_name: "batchInferenceJob"))
    DescribeBatchInferenceJobResponse.struct_class = Types::DescribeBatchInferenceJobResponse

    DescribeCampaignRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "campaignArn"))
    DescribeCampaignRequest.struct_class = Types::DescribeCampaignRequest

    DescribeCampaignResponse.add_member(:campaign, Shapes::ShapeRef.new(shape: Campaign, location_name: "campaign"))
    DescribeCampaignResponse.struct_class = Types::DescribeCampaignResponse

    DescribeDatasetGroupRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetGroupArn"))
    DescribeDatasetGroupRequest.struct_class = Types::DescribeDatasetGroupRequest

    DescribeDatasetGroupResponse.add_member(:dataset_group, Shapes::ShapeRef.new(shape: DatasetGroup, location_name: "datasetGroup"))
    DescribeDatasetGroupResponse.struct_class = Types::DescribeDatasetGroupResponse

    DescribeDatasetImportJobRequest.add_member(:dataset_import_job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetImportJobArn"))
    DescribeDatasetImportJobRequest.struct_class = Types::DescribeDatasetImportJobRequest

    DescribeDatasetImportJobResponse.add_member(:dataset_import_job, Shapes::ShapeRef.new(shape: DatasetImportJob, location_name: "datasetImportJob"))
    DescribeDatasetImportJobResponse.struct_class = Types::DescribeDatasetImportJobResponse

    DescribeDatasetRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "datasetArn"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: Dataset, location_name: "dataset"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeEventTrackerRequest.add_member(:event_tracker_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "eventTrackerArn"))
    DescribeEventTrackerRequest.struct_class = Types::DescribeEventTrackerRequest

    DescribeEventTrackerResponse.add_member(:event_tracker, Shapes::ShapeRef.new(shape: EventTracker, location_name: "eventTracker"))
    DescribeEventTrackerResponse.struct_class = Types::DescribeEventTrackerResponse

    DescribeFeatureTransformationRequest.add_member(:feature_transformation_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "featureTransformationArn"))
    DescribeFeatureTransformationRequest.struct_class = Types::DescribeFeatureTransformationRequest

    DescribeFeatureTransformationResponse.add_member(:feature_transformation, Shapes::ShapeRef.new(shape: FeatureTransformation, location_name: "featureTransformation"))
    DescribeFeatureTransformationResponse.struct_class = Types::DescribeFeatureTransformationResponse

    DescribeFilterRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "filterArn"))
    DescribeFilterRequest.struct_class = Types::DescribeFilterRequest

    DescribeFilterResponse.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
    DescribeFilterResponse.struct_class = Types::DescribeFilterResponse

    DescribeRecipeRequest.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "recipeArn"))
    DescribeRecipeRequest.struct_class = Types::DescribeRecipeRequest

    DescribeRecipeResponse.add_member(:recipe, Shapes::ShapeRef.new(shape: Recipe, location_name: "recipe"))
    DescribeRecipeResponse.struct_class = Types::DescribeRecipeResponse

    DescribeSchemaRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "schemaArn"))
    DescribeSchemaRequest.struct_class = Types::DescribeSchemaRequest

    DescribeSchemaResponse.add_member(:schema, Shapes::ShapeRef.new(shape: DatasetSchema, location_name: "schema"))
    DescribeSchemaResponse.struct_class = Types::DescribeSchemaResponse

    DescribeSolutionRequest.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionArn"))
    DescribeSolutionRequest.struct_class = Types::DescribeSolutionRequest

    DescribeSolutionResponse.add_member(:solution, Shapes::ShapeRef.new(shape: Solution, location_name: "solution"))
    DescribeSolutionResponse.struct_class = Types::DescribeSolutionResponse

    DescribeSolutionVersionRequest.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionVersionArn"))
    DescribeSolutionVersionRequest.struct_class = Types::DescribeSolutionVersionRequest

    DescribeSolutionVersionResponse.add_member(:solution_version, Shapes::ShapeRef.new(shape: SolutionVersion, location_name: "solutionVersion"))
    DescribeSolutionVersionResponse.struct_class = Types::DescribeSolutionVersionResponse

    EventTracker.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    EventTracker.add_member(:event_tracker_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "eventTrackerArn"))
    EventTracker.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    EventTracker.add_member(:tracking_id, Shapes::ShapeRef.new(shape: TrackingId, location_name: "trackingId"))
    EventTracker.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    EventTracker.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    EventTracker.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    EventTracker.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    EventTracker.struct_class = Types::EventTracker

    EventTrackerSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    EventTrackerSummary.add_member(:event_tracker_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "eventTrackerArn"))
    EventTrackerSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    EventTrackerSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    EventTrackerSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    EventTrackerSummary.struct_class = Types::EventTrackerSummary

    EventTrackers.member = Shapes::ShapeRef.new(shape: EventTrackerSummary)

    FeatureTransformation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    FeatureTransformation.add_member(:feature_transformation_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "featureTransformationArn"))
    FeatureTransformation.add_member(:default_parameters, Shapes::ShapeRef.new(shape: FeaturizationParameters, location_name: "defaultParameters"))
    FeatureTransformation.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    FeatureTransformation.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    FeatureTransformation.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    FeatureTransformation.struct_class = Types::FeatureTransformation

    FeatureTransformationParameters.key = Shapes::ShapeRef.new(shape: ParameterName)
    FeatureTransformationParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    FeaturizationParameters.key = Shapes::ShapeRef.new(shape: ParameterName)
    FeaturizationParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Filter.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    Filter.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    Filter.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    Filter.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    Filter.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    Filter.add_member(:filter_expression, Shapes::ShapeRef.new(shape: FilterExpression, location_name: "filterExpression"))
    Filter.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    Filter.struct_class = Types::Filter

    FilterSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    FilterSummary.add_member(:filter_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "filterArn"))
    FilterSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    FilterSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    FilterSummary.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    FilterSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    FilterSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    FilterSummary.struct_class = Types::FilterSummary

    Filters.member = Shapes::ShapeRef.new(shape: FilterSummary)

    GetSolutionMetricsRequest.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "solutionVersionArn"))
    GetSolutionMetricsRequest.struct_class = Types::GetSolutionMetricsRequest

    GetSolutionMetricsResponse.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    GetSolutionMetricsResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "metrics"))
    GetSolutionMetricsResponse.struct_class = Types::GetSolutionMetricsResponse

    HPOConfig.add_member(:hpo_objective, Shapes::ShapeRef.new(shape: HPOObjective, location_name: "hpoObjective"))
    HPOConfig.add_member(:hpo_resource_config, Shapes::ShapeRef.new(shape: HPOResourceConfig, location_name: "hpoResourceConfig"))
    HPOConfig.add_member(:algorithm_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: HyperParameterRanges, location_name: "algorithmHyperParameterRanges"))
    HPOConfig.struct_class = Types::HPOConfig

    HPOObjective.add_member(:type, Shapes::ShapeRef.new(shape: HPOObjectiveType, location_name: "type"))
    HPOObjective.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName"))
    HPOObjective.add_member(:metric_regex, Shapes::ShapeRef.new(shape: MetricRegex, location_name: "metricRegex"))
    HPOObjective.struct_class = Types::HPOObjective

    HPOResourceConfig.add_member(:max_number_of_training_jobs, Shapes::ShapeRef.new(shape: HPOResource, location_name: "maxNumberOfTrainingJobs"))
    HPOResourceConfig.add_member(:max_parallel_training_jobs, Shapes::ShapeRef.new(shape: HPOResource, location_name: "maxParallelTrainingJobs"))
    HPOResourceConfig.struct_class = Types::HPOResourceConfig

    HyperParameterRanges.add_member(:integer_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: IntegerHyperParameterRanges, location_name: "integerHyperParameterRanges"))
    HyperParameterRanges.add_member(:continuous_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: ContinuousHyperParameterRanges, location_name: "continuousHyperParameterRanges"))
    HyperParameterRanges.add_member(:categorical_hyper_parameter_ranges, Shapes::ShapeRef.new(shape: CategoricalHyperParameterRanges, location_name: "categoricalHyperParameterRanges"))
    HyperParameterRanges.struct_class = Types::HyperParameterRanges

    HyperParameters.key = Shapes::ShapeRef.new(shape: ParameterName)
    HyperParameters.value = Shapes::ShapeRef.new(shape: ParameterValue)

    IntegerHyperParameterRange.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "name"))
    IntegerHyperParameterRange.add_member(:min_value, Shapes::ShapeRef.new(shape: IntegerMinValue, location_name: "minValue"))
    IntegerHyperParameterRange.add_member(:max_value, Shapes::ShapeRef.new(shape: IntegerMaxValue, location_name: "maxValue"))
    IntegerHyperParameterRange.struct_class = Types::IntegerHyperParameterRange

    IntegerHyperParameterRanges.member = Shapes::ShapeRef.new(shape: IntegerHyperParameterRange)

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListBatchInferenceJobsRequest.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    ListBatchInferenceJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBatchInferenceJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBatchInferenceJobsRequest.struct_class = Types::ListBatchInferenceJobsRequest

    ListBatchInferenceJobsResponse.add_member(:batch_inference_jobs, Shapes::ShapeRef.new(shape: BatchInferenceJobs, location_name: "batchInferenceJobs"))
    ListBatchInferenceJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBatchInferenceJobsResponse.struct_class = Types::ListBatchInferenceJobsResponse

    ListCampaignsRequest.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionArn"))
    ListCampaignsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCampaignsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCampaignsRequest.struct_class = Types::ListCampaignsRequest

    ListCampaignsResponse.add_member(:campaigns, Shapes::ShapeRef.new(shape: Campaigns, location_name: "campaigns"))
    ListCampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCampaignsResponse.struct_class = Types::ListCampaignsResponse

    ListDatasetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDatasetGroupsRequest.struct_class = Types::ListDatasetGroupsRequest

    ListDatasetGroupsResponse.add_member(:dataset_groups, Shapes::ShapeRef.new(shape: DatasetGroups, location_name: "datasetGroups"))
    ListDatasetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetGroupsResponse.struct_class = Types::ListDatasetGroupsResponse

    ListDatasetImportJobsRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetArn"))
    ListDatasetImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDatasetImportJobsRequest.struct_class = Types::ListDatasetImportJobsRequest

    ListDatasetImportJobsResponse.add_member(:dataset_import_jobs, Shapes::ShapeRef.new(shape: DatasetImportJobs, location_name: "datasetImportJobs"))
    ListDatasetImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetImportJobsResponse.struct_class = Types::ListDatasetImportJobsResponse

    ListDatasetsRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: Datasets, location_name: "datasets"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListEventTrackersRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    ListEventTrackersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEventTrackersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEventTrackersRequest.struct_class = Types::ListEventTrackersRequest

    ListEventTrackersResponse.add_member(:event_trackers, Shapes::ShapeRef.new(shape: EventTrackers, location_name: "eventTrackers"))
    ListEventTrackersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEventTrackersResponse.struct_class = Types::ListEventTrackersResponse

    ListFiltersRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    ListFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFiltersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFiltersRequest.struct_class = Types::ListFiltersRequest

    ListFiltersResponse.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFiltersResponse.struct_class = Types::ListFiltersResponse

    ListRecipesRequest.add_member(:recipe_provider, Shapes::ShapeRef.new(shape: RecipeProvider, location_name: "recipeProvider"))
    ListRecipesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecipesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRecipesRequest.struct_class = Types::ListRecipesRequest

    ListRecipesResponse.add_member(:recipes, Shapes::ShapeRef.new(shape: Recipes, location_name: "recipes"))
    ListRecipesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecipesResponse.struct_class = Types::ListRecipesResponse

    ListSchemasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSchemasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSchemasRequest.struct_class = Types::ListSchemasRequest

    ListSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: Schemas, location_name: "schemas"))
    ListSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSchemasResponse.struct_class = Types::ListSchemasResponse

    ListSolutionVersionsRequest.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionArn"))
    ListSolutionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSolutionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSolutionVersionsRequest.struct_class = Types::ListSolutionVersionsRequest

    ListSolutionVersionsResponse.add_member(:solution_versions, Shapes::ShapeRef.new(shape: SolutionVersions, location_name: "solutionVersions"))
    ListSolutionVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSolutionVersionsResponse.struct_class = Types::ListSolutionVersionsResponse

    ListSolutionsRequest.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    ListSolutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSolutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSolutionsRequest.struct_class = Types::ListSolutionsRequest

    ListSolutionsResponse.add_member(:solutions, Shapes::ShapeRef.new(shape: Solutions, location_name: "solutions"))
    ListSolutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSolutionsResponse.struct_class = Types::ListSolutionsResponse

    Metrics.key = Shapes::ShapeRef.new(shape: MetricName)
    Metrics.value = Shapes::ShapeRef.new(shape: MetricValue)

    Recipe.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Recipe.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "recipeArn"))
    Recipe.add_member(:algorithm_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "algorithmArn"))
    Recipe.add_member(:feature_transformation_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "featureTransformationArn"))
    Recipe.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    Recipe.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Recipe.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    Recipe.add_member(:recipe_type, Shapes::ShapeRef.new(shape: RecipeType, location_name: "recipeType"))
    Recipe.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    Recipe.struct_class = Types::Recipe

    RecipeSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    RecipeSummary.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "recipeArn"))
    RecipeSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    RecipeSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    RecipeSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    RecipeSummary.struct_class = Types::RecipeSummary

    Recipes.member = Shapes::ShapeRef.new(shape: RecipeSummary)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceConfig.key = Shapes::ShapeRef.new(shape: ParameterName)
    ResourceConfig.value = Shapes::ShapeRef.new(shape: ParameterValue)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DataConfig.add_member(:path, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "path"))
    S3DataConfig.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    S3DataConfig.struct_class = Types::S3DataConfig

    Schemas.member = Shapes::ShapeRef.new(shape: DatasetSchemaSummary)

    Solution.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Solution.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionArn"))
    Solution.add_member(:perform_hpo, Shapes::ShapeRef.new(shape: PerformHPO, location_name: "performHPO"))
    Solution.add_member(:perform_auto_ml, Shapes::ShapeRef.new(shape: PerformAutoML, location_name: "performAutoML"))
    Solution.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "recipeArn"))
    Solution.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    Solution.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    Solution.add_member(:solution_config, Shapes::ShapeRef.new(shape: SolutionConfig, location_name: "solutionConfig"))
    Solution.add_member(:auto_ml_result, Shapes::ShapeRef.new(shape: AutoMLResult, location_name: "autoMLResult"))
    Solution.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    Solution.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    Solution.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    Solution.add_member(:latest_solution_version, Shapes::ShapeRef.new(shape: SolutionVersionSummary, location_name: "latestSolutionVersion"))
    Solution.struct_class = Types::Solution

    SolutionConfig.add_member(:event_value_threshold, Shapes::ShapeRef.new(shape: EventValueThreshold, location_name: "eventValueThreshold"))
    SolutionConfig.add_member(:hpo_config, Shapes::ShapeRef.new(shape: HPOConfig, location_name: "hpoConfig"))
    SolutionConfig.add_member(:algorithm_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "algorithmHyperParameters"))
    SolutionConfig.add_member(:feature_transformation_parameters, Shapes::ShapeRef.new(shape: FeatureTransformationParameters, location_name: "featureTransformationParameters"))
    SolutionConfig.add_member(:auto_ml_config, Shapes::ShapeRef.new(shape: AutoMLConfig, location_name: "autoMLConfig"))
    SolutionConfig.struct_class = Types::SolutionConfig

    SolutionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    SolutionSummary.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionArn"))
    SolutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    SolutionSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    SolutionSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    SolutionSummary.struct_class = Types::SolutionSummary

    SolutionVersion.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    SolutionVersion.add_member(:solution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionArn"))
    SolutionVersion.add_member(:perform_hpo, Shapes::ShapeRef.new(shape: PerformHPO, location_name: "performHPO"))
    SolutionVersion.add_member(:perform_auto_ml, Shapes::ShapeRef.new(shape: PerformAutoML, location_name: "performAutoML"))
    SolutionVersion.add_member(:recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "recipeArn"))
    SolutionVersion.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    SolutionVersion.add_member(:dataset_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "datasetGroupArn"))
    SolutionVersion.add_member(:solution_config, Shapes::ShapeRef.new(shape: SolutionConfig, location_name: "solutionConfig"))
    SolutionVersion.add_member(:training_hours, Shapes::ShapeRef.new(shape: TrainingHours, location_name: "trainingHours"))
    SolutionVersion.add_member(:training_mode, Shapes::ShapeRef.new(shape: TrainingMode, location_name: "trainingMode"))
    SolutionVersion.add_member(:tuned_hpo_params, Shapes::ShapeRef.new(shape: TunedHPOParams, location_name: "tunedHPOParams"))
    SolutionVersion.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    SolutionVersion.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    SolutionVersion.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    SolutionVersion.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    SolutionVersion.struct_class = Types::SolutionVersion

    SolutionVersionSummary.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    SolutionVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    SolutionVersionSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "creationDateTime"))
    SolutionVersionSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDateTime"))
    SolutionVersionSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    SolutionVersionSummary.struct_class = Types::SolutionVersionSummary

    SolutionVersions.member = Shapes::ShapeRef.new(shape: SolutionVersionSummary)

    Solutions.member = Shapes::ShapeRef.new(shape: SolutionSummary)

    TunedHPOParams.add_member(:algorithm_hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "algorithmHyperParameters"))
    TunedHPOParams.struct_class = Types::TunedHPOParams

    UpdateCampaignRequest.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "campaignArn"))
    UpdateCampaignRequest.add_member(:solution_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "solutionVersionArn"))
    UpdateCampaignRequest.add_member(:min_provisioned_tps, Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    UpdateCampaignRequest.struct_class = Types::UpdateCampaignRequest

    UpdateCampaignResponse.add_member(:campaign_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "campaignArn"))
    UpdateCampaignResponse.struct_class = Types::UpdateCampaignResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-22"

      api.metadata = {
        "apiVersion" => "2018-05-22",
        "endpointPrefix" => "personalize",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Personalize",
        "serviceId" => "Personalize",
        "signatureVersion" => "v4",
        "signingName" => "personalize",
        "targetPrefix" => "AmazonPersonalize",
        "uid" => "personalize-2018-05-22",
      }

      api.add_operation(:create_batch_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBatchInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBatchInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBatchInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dataset_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_event_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventTracker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventTrackerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_solution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSolution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSolutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSolutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_solution_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSolutionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSolutionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSolutionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_event_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventTracker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_solution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSolution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSolutionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:describe_algorithm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlgorithm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlgorithmRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlgorithmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_batch_inference_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBatchInferenceJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBatchInferenceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBatchInferenceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_dataset_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatasetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_dataset_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatasetImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_event_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventTracker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventTrackerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_feature_transformation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFeatureTransformation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFeatureTransformationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFeatureTransformationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecipe"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_solution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSolution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSolutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSolutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_solution_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSolutionVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSolutionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSolutionVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_solution_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolutionMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSolutionMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSolutionMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:list_batch_inference_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBatchInferenceJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBatchInferenceJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBatchInferenceJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_campaigns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCampaigns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCampaignsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCampaignsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_trackers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventTrackers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventTrackersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventTrackersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFilters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:list_recipes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecipes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecipesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecipesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSchemasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_solution_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolutionVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSolutionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSolutionVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_solutions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSolutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSolutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end

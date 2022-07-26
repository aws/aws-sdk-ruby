# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GlueDataBrew
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActionId = Shapes::IntegerShape.new(name: 'ActionId')
    AllowedStatisticList = Shapes::ListShape.new(name: 'AllowedStatisticList')
    AllowedStatistics = Shapes::StructureShape.new(name: 'AllowedStatistics')
    AnalyticsMode = Shapes::StringShape.new(name: 'AnalyticsMode')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssumeControl = Shapes::BooleanShape.new(name: 'AssumeControl')
    Attempt = Shapes::IntegerShape.new(name: 'Attempt')
    BatchDeleteRecipeVersionRequest = Shapes::StructureShape.new(name: 'BatchDeleteRecipeVersionRequest')
    BatchDeleteRecipeVersionResponse = Shapes::StructureShape.new(name: 'BatchDeleteRecipeVersionResponse')
    Bucket = Shapes::StringShape.new(name: 'Bucket')
    BucketOwner = Shapes::StringShape.new(name: 'BucketOwner')
    CatalogId = Shapes::StringShape.new(name: 'CatalogId')
    ClientSessionId = Shapes::StringShape.new(name: 'ClientSessionId')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnNameList = Shapes::ListShape.new(name: 'ColumnNameList')
    ColumnRange = Shapes::IntegerShape.new(name: 'ColumnRange')
    ColumnSelector = Shapes::StructureShape.new(name: 'ColumnSelector')
    ColumnSelectorList = Shapes::ListShape.new(name: 'ColumnSelectorList')
    ColumnStatisticsConfiguration = Shapes::StructureShape.new(name: 'ColumnStatisticsConfiguration')
    ColumnStatisticsConfigurationList = Shapes::ListShape.new(name: 'ColumnStatisticsConfigurationList')
    CompressionFormat = Shapes::StringShape.new(name: 'CompressionFormat')
    Condition = Shapes::StringShape.new(name: 'Condition')
    ConditionExpression = Shapes::StructureShape.new(name: 'ConditionExpression')
    ConditionExpressionList = Shapes::ListShape.new(name: 'ConditionExpressionList')
    ConditionValue = Shapes::StringShape.new(name: 'ConditionValue')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateColumn = Shapes::BooleanShape.new(name: 'CreateColumn')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateProfileJobRequest = Shapes::StructureShape.new(name: 'CreateProfileJobRequest')
    CreateProfileJobResponse = Shapes::StructureShape.new(name: 'CreateProfileJobResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    CreateRecipeJobRequest = Shapes::StructureShape.new(name: 'CreateRecipeJobRequest')
    CreateRecipeJobResponse = Shapes::StructureShape.new(name: 'CreateRecipeJobResponse')
    CreateRecipeRequest = Shapes::StructureShape.new(name: 'CreateRecipeRequest')
    CreateRecipeResponse = Shapes::StructureShape.new(name: 'CreateRecipeResponse')
    CreateRulesetRequest = Shapes::StructureShape.new(name: 'CreateRulesetRequest')
    CreateRulesetResponse = Shapes::StructureShape.new(name: 'CreateRulesetResponse')
    CreateScheduleRequest = Shapes::StructureShape.new(name: 'CreateScheduleRequest')
    CreateScheduleResponse = Shapes::StructureShape.new(name: 'CreateScheduleResponse')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    CsvOptions = Shapes::StructureShape.new(name: 'CsvOptions')
    CsvOutputOptions = Shapes::StructureShape.new(name: 'CsvOutputOptions')
    DataCatalogInputDefinition = Shapes::StructureShape.new(name: 'DataCatalogInputDefinition')
    DataCatalogOutput = Shapes::StructureShape.new(name: 'DataCatalogOutput')
    DataCatalogOutputList = Shapes::ListShape.new(name: 'DataCatalogOutputList')
    DatabaseInputDefinition = Shapes::StructureShape.new(name: 'DatabaseInputDefinition')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DatabaseOutput = Shapes::StructureShape.new(name: 'DatabaseOutput')
    DatabaseOutputList = Shapes::ListShape.new(name: 'DatabaseOutputList')
    DatabaseOutputMode = Shapes::StringShape.new(name: 'DatabaseOutputMode')
    DatabaseTableName = Shapes::StringShape.new(name: 'DatabaseTableName')
    DatabaseTableOutputOptions = Shapes::StructureShape.new(name: 'DatabaseTableOutputOptions')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetList = Shapes::ListShape.new(name: 'DatasetList')
    DatasetName = Shapes::StringShape.new(name: 'DatasetName')
    DatasetParameter = Shapes::StructureShape.new(name: 'DatasetParameter')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DatetimeFormat = Shapes::StringShape.new(name: 'DatetimeFormat')
    DatetimeOptions = Shapes::StructureShape.new(name: 'DatetimeOptions')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResponse = Shapes::StructureShape.new(name: 'DeleteJobResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DeleteRecipeVersionRequest = Shapes::StructureShape.new(name: 'DeleteRecipeVersionRequest')
    DeleteRecipeVersionResponse = Shapes::StructureShape.new(name: 'DeleteRecipeVersionResponse')
    DeleteRulesetRequest = Shapes::StructureShape.new(name: 'DeleteRulesetRequest')
    DeleteRulesetResponse = Shapes::StructureShape.new(name: 'DeleteRulesetResponse')
    DeleteScheduleRequest = Shapes::StructureShape.new(name: 'DeleteScheduleRequest')
    DeleteScheduleResponse = Shapes::StructureShape.new(name: 'DeleteScheduleResponse')
    Delimiter = Shapes::StringShape.new(name: 'Delimiter')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeJobRequest = Shapes::StructureShape.new(name: 'DescribeJobRequest')
    DescribeJobResponse = Shapes::StructureShape.new(name: 'DescribeJobResponse')
    DescribeJobRunRequest = Shapes::StructureShape.new(name: 'DescribeJobRunRequest')
    DescribeJobRunResponse = Shapes::StructureShape.new(name: 'DescribeJobRunResponse')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResponse = Shapes::StructureShape.new(name: 'DescribeProjectResponse')
    DescribeRecipeRequest = Shapes::StructureShape.new(name: 'DescribeRecipeRequest')
    DescribeRecipeResponse = Shapes::StructureShape.new(name: 'DescribeRecipeResponse')
    DescribeRulesetRequest = Shapes::StructureShape.new(name: 'DescribeRulesetRequest')
    DescribeRulesetResponse = Shapes::StructureShape.new(name: 'DescribeRulesetResponse')
    DescribeScheduleRequest = Shapes::StructureShape.new(name: 'DescribeScheduleRequest')
    DescribeScheduleResponse = Shapes::StructureShape.new(name: 'DescribeScheduleResponse')
    Disabled = Shapes::BooleanShape.new(name: 'Disabled')
    EncryptionKeyArn = Shapes::StringShape.new(name: 'EncryptionKeyArn')
    EncryptionMode = Shapes::StringShape.new(name: 'EncryptionMode')
    EntityDetectorConfiguration = Shapes::StructureShape.new(name: 'EntityDetectorConfiguration')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypeList = Shapes::ListShape.new(name: 'EntityTypeList')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExcelOptions = Shapes::StructureShape.new(name: 'ExcelOptions')
    ExecutionTime = Shapes::IntegerShape.new(name: 'ExecutionTime')
    Expression = Shapes::StringShape.new(name: 'Expression')
    FilesLimit = Shapes::StructureShape.new(name: 'FilesLimit')
    FilterExpression = Shapes::StructureShape.new(name: 'FilterExpression')
    FormatOptions = Shapes::StructureShape.new(name: 'FormatOptions')
    GlueConnectionName = Shapes::StringShape.new(name: 'GlueConnectionName')
    HeaderRow = Shapes::BooleanShape.new(name: 'HeaderRow')
    HiddenColumnList = Shapes::ListShape.new(name: 'HiddenColumnList')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputFormat = Shapes::StringShape.new(name: 'InputFormat')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobNameList = Shapes::ListShape.new(name: 'JobNameList')
    JobRun = Shapes::StructureShape.new(name: 'JobRun')
    JobRunErrorMessage = Shapes::StringShape.new(name: 'JobRunErrorMessage')
    JobRunId = Shapes::StringShape.new(name: 'JobRunId')
    JobRunList = Shapes::ListShape.new(name: 'JobRunList')
    JobRunState = Shapes::StringShape.new(name: 'JobRunState')
    JobSample = Shapes::StructureShape.new(name: 'JobSample')
    JobSize = Shapes::IntegerShape.new(name: 'JobSize')
    JobType = Shapes::StringShape.new(name: 'JobType')
    JsonOptions = Shapes::StructureShape.new(name: 'JsonOptions')
    Key = Shapes::StringShape.new(name: 'Key')
    LastModifiedBy = Shapes::StringShape.new(name: 'LastModifiedBy')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListJobRunsRequest = Shapes::StructureShape.new(name: 'ListJobRunsRequest')
    ListJobRunsResponse = Shapes::StructureShape.new(name: 'ListJobRunsResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ListRecipeVersionsRequest = Shapes::StructureShape.new(name: 'ListRecipeVersionsRequest')
    ListRecipeVersionsResponse = Shapes::StructureShape.new(name: 'ListRecipeVersionsResponse')
    ListRecipesRequest = Shapes::StructureShape.new(name: 'ListRecipesRequest')
    ListRecipesResponse = Shapes::StructureShape.new(name: 'ListRecipesResponse')
    ListRulesetsRequest = Shapes::StructureShape.new(name: 'ListRulesetsRequest')
    ListRulesetsResponse = Shapes::StructureShape.new(name: 'ListRulesetsResponse')
    ListSchedulesRequest = Shapes::StructureShape.new(name: 'ListSchedulesRequest')
    ListSchedulesResponse = Shapes::StructureShape.new(name: 'ListSchedulesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LocaleCode = Shapes::StringShape.new(name: 'LocaleCode')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogSubscription = Shapes::StringShape.new(name: 'LogSubscription')
    MaxCapacity = Shapes::IntegerShape.new(name: 'MaxCapacity')
    MaxFiles = Shapes::IntegerShape.new(name: 'MaxFiles')
    MaxOutputFiles = Shapes::IntegerShape.new(name: 'MaxOutputFiles')
    MaxResults100 = Shapes::IntegerShape.new(name: 'MaxResults100')
    MaxRetries = Shapes::IntegerShape.new(name: 'MaxRetries')
    Message = Shapes::StringShape.new(name: 'Message')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MultiLine = Shapes::BooleanShape.new(name: 'MultiLine')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OpenedBy = Shapes::StringShape.new(name: 'OpenedBy')
    Operation = Shapes::StringShape.new(name: 'Operation')
    Order = Shapes::StringShape.new(name: 'Order')
    OrderedBy = Shapes::StringShape.new(name: 'OrderedBy')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    OutputFormatOptions = Shapes::StructureShape.new(name: 'OutputFormatOptions')
    OutputList = Shapes::ListShape.new(name: 'OutputList')
    OverwriteOutput = Shapes::BooleanShape.new(name: 'OverwriteOutput')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PathOptions = Shapes::StructureShape.new(name: 'PathOptions')
    PathParameterName = Shapes::StringShape.new(name: 'PathParameterName')
    PathParametersMap = Shapes::MapShape.new(name: 'PathParametersMap')
    Preview = Shapes::BooleanShape.new(name: 'Preview')
    ProfileConfiguration = Shapes::StructureShape.new(name: 'ProfileConfiguration')
    Project = Shapes::StructureShape.new(name: 'Project')
    ProjectList = Shapes::ListShape.new(name: 'ProjectList')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    PublishRecipeRequest = Shapes::StructureShape.new(name: 'PublishRecipeRequest')
    PublishRecipeResponse = Shapes::StructureShape.new(name: 'PublishRecipeResponse')
    PublishedBy = Shapes::StringShape.new(name: 'PublishedBy')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    Recipe = Shapes::StructureShape.new(name: 'Recipe')
    RecipeAction = Shapes::StructureShape.new(name: 'RecipeAction')
    RecipeDescription = Shapes::StringShape.new(name: 'RecipeDescription')
    RecipeErrorList = Shapes::ListShape.new(name: 'RecipeErrorList')
    RecipeErrorMessage = Shapes::StringShape.new(name: 'RecipeErrorMessage')
    RecipeList = Shapes::ListShape.new(name: 'RecipeList')
    RecipeName = Shapes::StringShape.new(name: 'RecipeName')
    RecipeReference = Shapes::StructureShape.new(name: 'RecipeReference')
    RecipeStep = Shapes::StructureShape.new(name: 'RecipeStep')
    RecipeStepList = Shapes::ListShape.new(name: 'RecipeStepList')
    RecipeVersion = Shapes::StringShape.new(name: 'RecipeVersion')
    RecipeVersionErrorDetail = Shapes::StructureShape.new(name: 'RecipeVersionErrorDetail')
    RecipeVersionList = Shapes::ListShape.new(name: 'RecipeVersionList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Result = Shapes::StringShape.new(name: 'Result')
    RowRange = Shapes::IntegerShape.new(name: 'RowRange')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleCount = Shapes::IntegerShape.new(name: 'RuleCount')
    RuleList = Shapes::ListShape.new(name: 'RuleList')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RulesetDescription = Shapes::StringShape.new(name: 'RulesetDescription')
    RulesetItem = Shapes::StructureShape.new(name: 'RulesetItem')
    RulesetItemList = Shapes::ListShape.new(name: 'RulesetItemList')
    RulesetName = Shapes::StringShape.new(name: 'RulesetName')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3TableOutputOptions = Shapes::StructureShape.new(name: 'S3TableOutputOptions')
    Sample = Shapes::StructureShape.new(name: 'Sample')
    SampleMode = Shapes::StringShape.new(name: 'SampleMode')
    SampleSize = Shapes::IntegerShape.new(name: 'SampleSize')
    SampleType = Shapes::StringShape.new(name: 'SampleType')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleList = Shapes::ListShape.new(name: 'ScheduleList')
    ScheduleName = Shapes::StringShape.new(name: 'ScheduleName')
    SendProjectSessionActionRequest = Shapes::StructureShape.new(name: 'SendProjectSessionActionRequest')
    SendProjectSessionActionResponse = Shapes::StructureShape.new(name: 'SendProjectSessionActionResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SheetIndex = Shapes::IntegerShape.new(name: 'SheetIndex')
    SheetIndexList = Shapes::ListShape.new(name: 'SheetIndexList')
    SheetName = Shapes::StringShape.new(name: 'SheetName')
    SheetNameList = Shapes::ListShape.new(name: 'SheetNameList')
    Source = Shapes::StringShape.new(name: 'Source')
    StartColumnIndex = Shapes::IntegerShape.new(name: 'StartColumnIndex')
    StartJobRunRequest = Shapes::StructureShape.new(name: 'StartJobRunRequest')
    StartJobRunResponse = Shapes::StructureShape.new(name: 'StartJobRunResponse')
    StartProjectSessionRequest = Shapes::StructureShape.new(name: 'StartProjectSessionRequest')
    StartProjectSessionResponse = Shapes::StructureShape.new(name: 'StartProjectSessionResponse')
    StartRowIndex = Shapes::IntegerShape.new(name: 'StartRowIndex')
    StartedBy = Shapes::StringShape.new(name: 'StartedBy')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    StatisticList = Shapes::ListShape.new(name: 'StatisticList')
    StatisticOverride = Shapes::StructureShape.new(name: 'StatisticOverride')
    StatisticOverrideList = Shapes::ListShape.new(name: 'StatisticOverrideList')
    StatisticsConfiguration = Shapes::StructureShape.new(name: 'StatisticsConfiguration')
    StepIndex = Shapes::IntegerShape.new(name: 'StepIndex')
    StopJobRunRequest = Shapes::StructureShape.new(name: 'StopJobRunRequest')
    StopJobRunResponse = Shapes::StructureShape.new(name: 'StopJobRunResponse')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetColumn = Shapes::StringShape.new(name: 'TargetColumn')
    Threshold = Shapes::StructureShape.new(name: 'Threshold')
    ThresholdType = Shapes::StringShape.new(name: 'ThresholdType')
    ThresholdUnit = Shapes::StringShape.new(name: 'ThresholdUnit')
    ThresholdValue = Shapes::FloatShape.new(name: 'ThresholdValue')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    TimezoneOffset = Shapes::StringShape.new(name: 'TimezoneOffset')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Shapes::StructureShape.new(name: 'UpdateDatasetResponse')
    UpdateProfileJobRequest = Shapes::StructureShape.new(name: 'UpdateProfileJobRequest')
    UpdateProfileJobResponse = Shapes::StructureShape.new(name: 'UpdateProfileJobResponse')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResponse = Shapes::StructureShape.new(name: 'UpdateProjectResponse')
    UpdateRecipeJobRequest = Shapes::StructureShape.new(name: 'UpdateRecipeJobRequest')
    UpdateRecipeJobResponse = Shapes::StructureShape.new(name: 'UpdateRecipeJobResponse')
    UpdateRecipeRequest = Shapes::StructureShape.new(name: 'UpdateRecipeRequest')
    UpdateRecipeResponse = Shapes::StructureShape.new(name: 'UpdateRecipeResponse')
    UpdateRulesetRequest = Shapes::StructureShape.new(name: 'UpdateRulesetRequest')
    UpdateRulesetResponse = Shapes::StructureShape.new(name: 'UpdateRulesetResponse')
    UpdateScheduleRequest = Shapes::StructureShape.new(name: 'UpdateScheduleRequest')
    UpdateScheduleResponse = Shapes::StructureShape.new(name: 'UpdateScheduleResponse')
    ValidationConfiguration = Shapes::StructureShape.new(name: 'ValidationConfiguration')
    ValidationConfigurationList = Shapes::ListShape.new(name: 'ValidationConfigurationList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationMode = Shapes::StringShape.new(name: 'ValidationMode')
    ValueReference = Shapes::StringShape.new(name: 'ValueReference')
    ValuesMap = Shapes::MapShape.new(name: 'ValuesMap')
    ViewFrame = Shapes::StructureShape.new(name: 'ViewFrame')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AllowedStatisticList.member = Shapes::ShapeRef.new(shape: AllowedStatistics)

    AllowedStatistics.add_member(:statistics, Shapes::ShapeRef.new(shape: StatisticList, required: true, location_name: "Statistics"))
    AllowedStatistics.struct_class = Types::AllowedStatistics

    BatchDeleteRecipeVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location: "uri", location_name: "name"))
    BatchDeleteRecipeVersionRequest.add_member(:recipe_versions, Shapes::ShapeRef.new(shape: RecipeVersionList, required: true, location_name: "RecipeVersions"))
    BatchDeleteRecipeVersionRequest.struct_class = Types::BatchDeleteRecipeVersionRequest

    BatchDeleteRecipeVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    BatchDeleteRecipeVersionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: RecipeErrorList, location_name: "Errors"))
    BatchDeleteRecipeVersionResponse.struct_class = Types::BatchDeleteRecipeVersionResponse

    ColumnNameList.member = Shapes::ShapeRef.new(shape: ColumnName)

    ColumnSelector.add_member(:regex, Shapes::ShapeRef.new(shape: ColumnName, location_name: "Regex"))
    ColumnSelector.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "Name"))
    ColumnSelector.struct_class = Types::ColumnSelector

    ColumnSelectorList.member = Shapes::ShapeRef.new(shape: ColumnSelector)

    ColumnStatisticsConfiguration.add_member(:selectors, Shapes::ShapeRef.new(shape: ColumnSelectorList, location_name: "Selectors"))
    ColumnStatisticsConfiguration.add_member(:statistics, Shapes::ShapeRef.new(shape: StatisticsConfiguration, required: true, location_name: "Statistics"))
    ColumnStatisticsConfiguration.struct_class = Types::ColumnStatisticsConfiguration

    ColumnStatisticsConfigurationList.member = Shapes::ShapeRef.new(shape: ColumnStatisticsConfiguration)

    ConditionExpression.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "Condition"))
    ConditionExpression.add_member(:value, Shapes::ShapeRef.new(shape: ConditionValue, location_name: "Value"))
    ConditionExpression.add_member(:target_column, Shapes::ShapeRef.new(shape: TargetColumn, required: true, location_name: "TargetColumn"))
    ConditionExpression.struct_class = Types::ConditionExpression

    ConditionExpressionList.member = Shapes::ShapeRef.new(shape: ConditionExpression)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "Name"))
    CreateDatasetRequest.add_member(:format, Shapes::ShapeRef.new(shape: InputFormat, location_name: "Format"))
    CreateDatasetRequest.add_member(:format_options, Shapes::ShapeRef.new(shape: FormatOptions, location_name: "FormatOptions"))
    CreateDatasetRequest.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "Input"))
    CreateDatasetRequest.add_member(:path_options, Shapes::ShapeRef.new(shape: PathOptions, location_name: "PathOptions"))
    CreateDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "Name"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateProfileJobRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "DatasetName"))
    CreateProfileJobRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    CreateProfileJobRequest.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    CreateProfileJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    CreateProfileJobRequest.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    CreateProfileJobRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: MaxCapacity, location_name: "MaxCapacity"))
    CreateProfileJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    CreateProfileJobRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "OutputLocation"))
    CreateProfileJobRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "Configuration"))
    CreateProfileJobRequest.add_member(:validation_configurations, Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    CreateProfileJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    CreateProfileJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateProfileJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateProfileJobRequest.add_member(:job_sample, Shapes::ShapeRef.new(shape: JobSample, location_name: "JobSample"))
    CreateProfileJobRequest.struct_class = Types::CreateProfileJobRequest

    CreateProfileJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    CreateProfileJobResponse.struct_class = Types::CreateProfileJobResponse

    CreateProjectRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "DatasetName"))
    CreateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    CreateProjectRequest.add_member(:recipe_name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "RecipeName"))
    CreateProjectRequest.add_member(:sample, Shapes::ShapeRef.new(shape: Sample, location_name: "Sample"))
    CreateProjectRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    CreateProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    CreateRecipeJobRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    CreateRecipeJobRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    CreateRecipeJobRequest.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    CreateRecipeJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    CreateRecipeJobRequest.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    CreateRecipeJobRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: MaxCapacity, location_name: "MaxCapacity"))
    CreateRecipeJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    CreateRecipeJobRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputList, location_name: "Outputs"))
    CreateRecipeJobRequest.add_member(:data_catalog_outputs, Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    CreateRecipeJobRequest.add_member(:database_outputs, Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: "DatabaseOutputs"))
    CreateRecipeJobRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    CreateRecipeJobRequest.add_member(:recipe_reference, Shapes::ShapeRef.new(shape: RecipeReference, location_name: "RecipeReference"))
    CreateRecipeJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    CreateRecipeJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRecipeJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateRecipeJobRequest.struct_class = Types::CreateRecipeJobRequest

    CreateRecipeJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    CreateRecipeJobResponse.struct_class = Types::CreateRecipeJobResponse

    CreateRecipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: RecipeDescription, location_name: "Description"))
    CreateRecipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    CreateRecipeRequest.add_member(:steps, Shapes::ShapeRef.new(shape: RecipeStepList, required: true, location_name: "Steps"))
    CreateRecipeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRecipeRequest.struct_class = Types::CreateRecipeRequest

    CreateRecipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    CreateRecipeResponse.struct_class = Types::CreateRecipeResponse

    CreateRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location_name: "Name"))
    CreateRulesetRequest.add_member(:description, Shapes::ShapeRef.new(shape: RulesetDescription, location_name: "Description"))
    CreateRulesetRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TargetArn"))
    CreateRulesetRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "Rules"))
    CreateRulesetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRulesetRequest.struct_class = Types::CreateRulesetRequest

    CreateRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location_name: "Name"))
    CreateRulesetResponse.struct_class = Types::CreateRulesetResponse

    CreateScheduleRequest.add_member(:job_names, Shapes::ShapeRef.new(shape: JobNameList, location_name: "JobNames"))
    CreateScheduleRequest.add_member(:cron_expression, Shapes::ShapeRef.new(shape: CronExpression, required: true, location_name: "CronExpression"))
    CreateScheduleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location_name: "Name"))
    CreateScheduleRequest.struct_class = Types::CreateScheduleRequest

    CreateScheduleResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location_name: "Name"))
    CreateScheduleResponse.struct_class = Types::CreateScheduleResponse

    CsvOptions.add_member(:delimiter, Shapes::ShapeRef.new(shape: Delimiter, location_name: "Delimiter"))
    CsvOptions.add_member(:header_row, Shapes::ShapeRef.new(shape: HeaderRow, location_name: "HeaderRow"))
    CsvOptions.struct_class = Types::CsvOptions

    CsvOutputOptions.add_member(:delimiter, Shapes::ShapeRef.new(shape: Delimiter, location_name: "Delimiter"))
    CsvOutputOptions.struct_class = Types::CsvOutputOptions

    DataCatalogInputDefinition.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogId, location_name: "CatalogId"))
    DataCatalogInputDefinition.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    DataCatalogInputDefinition.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DataCatalogInputDefinition.add_member(:temp_directory, Shapes::ShapeRef.new(shape: S3Location, location_name: "TempDirectory"))
    DataCatalogInputDefinition.struct_class = Types::DataCatalogInputDefinition

    DataCatalogOutput.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogId, location_name: "CatalogId"))
    DataCatalogOutput.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    DataCatalogOutput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DataCatalogOutput.add_member(:s3_options, Shapes::ShapeRef.new(shape: S3TableOutputOptions, location_name: "S3Options"))
    DataCatalogOutput.add_member(:database_options, Shapes::ShapeRef.new(shape: DatabaseTableOutputOptions, location_name: "DatabaseOptions"))
    DataCatalogOutput.add_member(:overwrite, Shapes::ShapeRef.new(shape: OverwriteOutput, location_name: "Overwrite"))
    DataCatalogOutput.struct_class = Types::DataCatalogOutput

    DataCatalogOutputList.member = Shapes::ShapeRef.new(shape: DataCatalogOutput)

    DatabaseInputDefinition.add_member(:glue_connection_name, Shapes::ShapeRef.new(shape: GlueConnectionName, required: true, location_name: "GlueConnectionName"))
    DatabaseInputDefinition.add_member(:database_table_name, Shapes::ShapeRef.new(shape: DatabaseTableName, location_name: "DatabaseTableName"))
    DatabaseInputDefinition.add_member(:temp_directory, Shapes::ShapeRef.new(shape: S3Location, location_name: "TempDirectory"))
    DatabaseInputDefinition.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString"))
    DatabaseInputDefinition.struct_class = Types::DatabaseInputDefinition

    DatabaseOutput.add_member(:glue_connection_name, Shapes::ShapeRef.new(shape: GlueConnectionName, required: true, location_name: "GlueConnectionName"))
    DatabaseOutput.add_member(:database_options, Shapes::ShapeRef.new(shape: DatabaseTableOutputOptions, required: true, location_name: "DatabaseOptions"))
    DatabaseOutput.add_member(:database_output_mode, Shapes::ShapeRef.new(shape: DatabaseOutputMode, location_name: "DatabaseOutputMode"))
    DatabaseOutput.struct_class = Types::DatabaseOutput

    DatabaseOutputList.member = Shapes::ShapeRef.new(shape: DatabaseOutput)

    DatabaseTableOutputOptions.add_member(:temp_directory, Shapes::ShapeRef.new(shape: S3Location, location_name: "TempDirectory"))
    DatabaseTableOutputOptions.add_member(:table_name, Shapes::ShapeRef.new(shape: DatabaseTableName, required: true, location_name: "TableName"))
    DatabaseTableOutputOptions.struct_class = Types::DatabaseTableOutputOptions

    Dataset.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Dataset.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    Dataset.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    Dataset.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "Name"))
    Dataset.add_member(:format, Shapes::ShapeRef.new(shape: InputFormat, location_name: "Format"))
    Dataset.add_member(:format_options, Shapes::ShapeRef.new(shape: FormatOptions, location_name: "FormatOptions"))
    Dataset.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "Input"))
    Dataset.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Dataset.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    Dataset.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "Source"))
    Dataset.add_member(:path_options, Shapes::ShapeRef.new(shape: PathOptions, location_name: "PathOptions"))
    Dataset.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Dataset.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Dataset.struct_class = Types::Dataset

    DatasetList.member = Shapes::ShapeRef.new(shape: Dataset)

    DatasetParameter.add_member(:name, Shapes::ShapeRef.new(shape: PathParameterName, required: true, location_name: "Name"))
    DatasetParameter.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "Type"))
    DatasetParameter.add_member(:datetime_options, Shapes::ShapeRef.new(shape: DatetimeOptions, location_name: "DatetimeOptions"))
    DatasetParameter.add_member(:create_column, Shapes::ShapeRef.new(shape: CreateColumn, location_name: "CreateColumn"))
    DatasetParameter.add_member(:filter, Shapes::ShapeRef.new(shape: FilterExpression, location_name: "Filter"))
    DatasetParameter.struct_class = Types::DatasetParameter

    DatetimeOptions.add_member(:format, Shapes::ShapeRef.new(shape: DatetimeFormat, required: true, location_name: "Format"))
    DatetimeOptions.add_member(:timezone_offset, Shapes::ShapeRef.new(shape: TimezoneOffset, location_name: "TimezoneOffset"))
    DatetimeOptions.add_member(:locale_code, Shapes::ShapeRef.new(shape: LocaleCode, location_name: "LocaleCode"))
    DatetimeOptions.struct_class = Types::DatetimeOptions

    DeleteDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "name"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "Name"))
    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DeleteJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    DeleteJobResponse.struct_class = Types::DeleteJobResponse

    DeleteProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "name"))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DeleteRecipeVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location: "uri", location_name: "name"))
    DeleteRecipeVersionRequest.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, required: true, location: "uri", location_name: "recipeVersion"))
    DeleteRecipeVersionRequest.struct_class = Types::DeleteRecipeVersionRequest

    DeleteRecipeVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    DeleteRecipeVersionResponse.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, required: true, location_name: "RecipeVersion"))
    DeleteRecipeVersionResponse.struct_class = Types::DeleteRecipeVersionResponse

    DeleteRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location: "uri", location_name: "name"))
    DeleteRulesetRequest.struct_class = Types::DeleteRulesetRequest

    DeleteRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location_name: "Name"))
    DeleteRulesetResponse.struct_class = Types::DeleteRulesetResponse

    DeleteScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location: "uri", location_name: "name"))
    DeleteScheduleRequest.struct_class = Types::DeleteScheduleRequest

    DeleteScheduleResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location_name: "Name"))
    DeleteScheduleResponse.struct_class = Types::DeleteScheduleResponse

    DescribeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "name"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeDatasetResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    DescribeDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "Name"))
    DescribeDatasetResponse.add_member(:format, Shapes::ShapeRef.new(shape: InputFormat, location_name: "Format"))
    DescribeDatasetResponse.add_member(:format_options, Shapes::ShapeRef.new(shape: FormatOptions, location_name: "FormatOptions"))
    DescribeDatasetResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "Input"))
    DescribeDatasetResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    DescribeDatasetResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeDatasetResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "Source"))
    DescribeDatasetResponse.add_member(:path_options, Shapes::ShapeRef.new(shape: PathOptions, location_name: "PathOptions"))
    DescribeDatasetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeDatasetResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    DescribeJobRequest.struct_class = Types::DescribeJobRequest

    DescribeJobResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    DescribeJobResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeJobResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DescribeJobResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    DescribeJobResponse.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    DescribeJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    DescribeJobResponse.add_member(:type, Shapes::ShapeRef.new(shape: JobType, location_name: "Type"))
    DescribeJobResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeJobResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    DescribeJobResponse.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    DescribeJobResponse.add_member(:max_capacity, Shapes::ShapeRef.new(shape: MaxCapacity, location_name: "MaxCapacity"))
    DescribeJobResponse.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    DescribeJobResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputList, location_name: "Outputs"))
    DescribeJobResponse.add_member(:data_catalog_outputs, Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    DescribeJobResponse.add_member(:database_outputs, Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: "DatabaseOutputs"))
    DescribeJobResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    DescribeJobResponse.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "ProfileConfiguration"))
    DescribeJobResponse.add_member(:validation_configurations, Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    DescribeJobResponse.add_member(:recipe_reference, Shapes::ShapeRef.new(shape: RecipeReference, location_name: "RecipeReference"))
    DescribeJobResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    DescribeJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    DescribeJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeJobResponse.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    DescribeJobResponse.add_member(:job_sample, Shapes::ShapeRef.new(shape: JobSample, location_name: "JobSample"))
    DescribeJobResponse.struct_class = Types::DescribeJobResponse

    DescribeJobRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    DescribeJobRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location: "uri", location_name: "runId"))
    DescribeJobRunRequest.struct_class = Types::DescribeJobRunRequest

    DescribeJobRunResponse.add_member(:attempt, Shapes::ShapeRef.new(shape: Attempt, location_name: "Attempt"))
    DescribeJobRunResponse.add_member(:completed_on, Shapes::ShapeRef.new(shape: Date, location_name: "CompletedOn"))
    DescribeJobRunResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DescribeJobRunResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: JobRunErrorMessage, location_name: "ErrorMessage"))
    DescribeJobRunResponse.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    DescribeJobRunResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "JobName"))
    DescribeJobRunResponse.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "ProfileConfiguration"))
    DescribeJobRunResponse.add_member(:validation_configurations, Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    DescribeJobRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: JobRunId, location_name: "RunId"))
    DescribeJobRunResponse.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "State"))
    DescribeJobRunResponse.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    DescribeJobRunResponse.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
    DescribeJobRunResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputList, location_name: "Outputs"))
    DescribeJobRunResponse.add_member(:data_catalog_outputs, Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    DescribeJobRunResponse.add_member(:database_outputs, Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: "DatabaseOutputs"))
    DescribeJobRunResponse.add_member(:recipe_reference, Shapes::ShapeRef.new(shape: RecipeReference, location_name: "RecipeReference"))
    DescribeJobRunResponse.add_member(:started_by, Shapes::ShapeRef.new(shape: StartedBy, location_name: "StartedBy"))
    DescribeJobRunResponse.add_member(:started_on, Shapes::ShapeRef.new(shape: Date, location_name: "StartedOn"))
    DescribeJobRunResponse.add_member(:job_sample, Shapes::ShapeRef.new(shape: JobSample, location_name: "JobSample"))
    DescribeJobRunResponse.struct_class = Types::DescribeJobRunResponse

    DescribeProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "name"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    DescribeProjectResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeProjectResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    DescribeProjectResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    DescribeProjectResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeProjectResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    DescribeProjectResponse.add_member(:recipe_name, Shapes::ShapeRef.new(shape: RecipeName, location_name: "RecipeName"))
    DescribeProjectResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    DescribeProjectResponse.add_member(:sample, Shapes::ShapeRef.new(shape: Sample, location_name: "Sample"))
    DescribeProjectResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    DescribeProjectResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeProjectResponse.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "SessionStatus"))
    DescribeProjectResponse.add_member(:opened_by, Shapes::ShapeRef.new(shape: OpenedBy, location_name: "OpenedBy"))
    DescribeProjectResponse.add_member(:open_date, Shapes::ShapeRef.new(shape: Date, location_name: "OpenDate"))
    DescribeProjectResponse.struct_class = Types::DescribeProjectResponse

    DescribeRecipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location: "uri", location_name: "name"))
    DescribeRecipeRequest.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, location: "querystring", location_name: "recipeVersion"))
    DescribeRecipeRequest.struct_class = Types::DescribeRecipeRequest

    DescribeRecipeResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeRecipeResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    DescribeRecipeResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeRecipeResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    DescribeRecipeResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    DescribeRecipeResponse.add_member(:published_by, Shapes::ShapeRef.new(shape: PublishedBy, location_name: "PublishedBy"))
    DescribeRecipeResponse.add_member(:published_date, Shapes::ShapeRef.new(shape: Date, location_name: "PublishedDate"))
    DescribeRecipeResponse.add_member(:description, Shapes::ShapeRef.new(shape: RecipeDescription, location_name: "Description"))
    DescribeRecipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    DescribeRecipeResponse.add_member(:steps, Shapes::ShapeRef.new(shape: RecipeStepList, location_name: "Steps"))
    DescribeRecipeResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeRecipeResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    DescribeRecipeResponse.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, location_name: "RecipeVersion"))
    DescribeRecipeResponse.struct_class = Types::DescribeRecipeResponse

    DescribeRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location: "uri", location_name: "name"))
    DescribeRulesetRequest.struct_class = Types::DescribeRulesetRequest

    DescribeRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location_name: "Name"))
    DescribeRulesetResponse.add_member(:description, Shapes::ShapeRef.new(shape: RulesetDescription, location_name: "Description"))
    DescribeRulesetResponse.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TargetArn"))
    DescribeRulesetResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, location_name: "Rules"))
    DescribeRulesetResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    DescribeRulesetResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeRulesetResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeRulesetResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    DescribeRulesetResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    DescribeRulesetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeRulesetResponse.struct_class = Types::DescribeRulesetResponse

    DescribeScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location: "uri", location_name: "name"))
    DescribeScheduleRequest.struct_class = Types::DescribeScheduleRequest

    DescribeScheduleResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    DescribeScheduleResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeScheduleResponse.add_member(:job_names, Shapes::ShapeRef.new(shape: JobNameList, location_name: "JobNames"))
    DescribeScheduleResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeScheduleResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    DescribeScheduleResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    DescribeScheduleResponse.add_member(:cron_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "CronExpression"))
    DescribeScheduleResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeScheduleResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location_name: "Name"))
    DescribeScheduleResponse.struct_class = Types::DescribeScheduleResponse

    EntityDetectorConfiguration.add_member(:entity_types, Shapes::ShapeRef.new(shape: EntityTypeList, required: true, location_name: "EntityTypes"))
    EntityDetectorConfiguration.add_member(:allowed_statistics, Shapes::ShapeRef.new(shape: AllowedStatisticList, location_name: "AllowedStatistics"))
    EntityDetectorConfiguration.struct_class = Types::EntityDetectorConfiguration

    EntityTypeList.member = Shapes::ShapeRef.new(shape: EntityType)

    ExcelOptions.add_member(:sheet_names, Shapes::ShapeRef.new(shape: SheetNameList, location_name: "SheetNames"))
    ExcelOptions.add_member(:sheet_indexes, Shapes::ShapeRef.new(shape: SheetIndexList, location_name: "SheetIndexes"))
    ExcelOptions.add_member(:header_row, Shapes::ShapeRef.new(shape: HeaderRow, location_name: "HeaderRow"))
    ExcelOptions.struct_class = Types::ExcelOptions

    FilesLimit.add_member(:max_files, Shapes::ShapeRef.new(shape: MaxFiles, required: true, location_name: "MaxFiles"))
    FilesLimit.add_member(:ordered_by, Shapes::ShapeRef.new(shape: OrderedBy, location_name: "OrderedBy"))
    FilesLimit.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "Order"))
    FilesLimit.struct_class = Types::FilesLimit

    FilterExpression.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    FilterExpression.add_member(:values_map, Shapes::ShapeRef.new(shape: ValuesMap, required: true, location_name: "ValuesMap"))
    FilterExpression.struct_class = Types::FilterExpression

    FormatOptions.add_member(:json, Shapes::ShapeRef.new(shape: JsonOptions, location_name: "Json"))
    FormatOptions.add_member(:excel, Shapes::ShapeRef.new(shape: ExcelOptions, location_name: "Excel"))
    FormatOptions.add_member(:csv, Shapes::ShapeRef.new(shape: CsvOptions, location_name: "Csv"))
    FormatOptions.struct_class = Types::FormatOptions

    HiddenColumnList.member = Shapes::ShapeRef.new(shape: ColumnName)

    Input.add_member(:s3_input_definition, Shapes::ShapeRef.new(shape: S3Location, location_name: "S3InputDefinition"))
    Input.add_member(:data_catalog_input_definition, Shapes::ShapeRef.new(shape: DataCatalogInputDefinition, location_name: "DataCatalogInputDefinition"))
    Input.add_member(:database_input_definition, Shapes::ShapeRef.new(shape: DatabaseInputDefinition, location_name: "DatabaseInputDefinition"))
    Input.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    Input.struct_class = Types::Input

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    Job.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Job.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    Job.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    Job.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    Job.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    Job.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    Job.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    Job.add_member(:type, Shapes::ShapeRef.new(shape: JobType, location_name: "Type"))
    Job.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    Job.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Job.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    Job.add_member(:max_capacity, Shapes::ShapeRef.new(shape: MaxCapacity, location_name: "MaxCapacity"))
    Job.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    Job.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputList, location_name: "Outputs"))
    Job.add_member(:data_catalog_outputs, Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    Job.add_member(:database_outputs, Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: "DatabaseOutputs"))
    Job.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    Job.add_member(:recipe_reference, Shapes::ShapeRef.new(shape: RecipeReference, location_name: "RecipeReference"))
    Job.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Job.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    Job.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    Job.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Job.add_member(:job_sample, Shapes::ShapeRef.new(shape: JobSample, location_name: "JobSample"))
    Job.add_member(:validation_configurations, Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    Job.struct_class = Types::Job

    JobList.member = Shapes::ShapeRef.new(shape: Job)

    JobNameList.member = Shapes::ShapeRef.new(shape: JobName)

    JobRun.add_member(:attempt, Shapes::ShapeRef.new(shape: Attempt, location_name: "Attempt"))
    JobRun.add_member(:completed_on, Shapes::ShapeRef.new(shape: Date, location_name: "CompletedOn"))
    JobRun.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    JobRun.add_member(:error_message, Shapes::ShapeRef.new(shape: JobRunErrorMessage, location_name: "ErrorMessage"))
    JobRun.add_member(:execution_time, Shapes::ShapeRef.new(shape: ExecutionTime, location_name: "ExecutionTime"))
    JobRun.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    JobRun.add_member(:run_id, Shapes::ShapeRef.new(shape: JobRunId, location_name: "RunId"))
    JobRun.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "State"))
    JobRun.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    JobRun.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
    JobRun.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputList, location_name: "Outputs"))
    JobRun.add_member(:data_catalog_outputs, Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    JobRun.add_member(:database_outputs, Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: "DatabaseOutputs"))
    JobRun.add_member(:recipe_reference, Shapes::ShapeRef.new(shape: RecipeReference, location_name: "RecipeReference"))
    JobRun.add_member(:started_by, Shapes::ShapeRef.new(shape: StartedBy, location_name: "StartedBy"))
    JobRun.add_member(:started_on, Shapes::ShapeRef.new(shape: Date, location_name: "StartedOn"))
    JobRun.add_member(:job_sample, Shapes::ShapeRef.new(shape: JobSample, location_name: "JobSample"))
    JobRun.add_member(:validation_configurations, Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    JobRun.struct_class = Types::JobRun

    JobRunList.member = Shapes::ShapeRef.new(shape: JobRun)

    JobSample.add_member(:mode, Shapes::ShapeRef.new(shape: SampleMode, location_name: "Mode"))
    JobSample.add_member(:size, Shapes::ShapeRef.new(shape: JobSize, location_name: "Size"))
    JobSample.struct_class = Types::JobSample

    JsonOptions.add_member(:multi_line, Shapes::ShapeRef.new(shape: MultiLine, location_name: "MultiLine"))
    JsonOptions.struct_class = Types::JsonOptions

    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetList, required: true, location_name: "Datasets"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListJobRunsRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    ListJobRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListJobRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobRunsRequest.struct_class = Types::ListJobRunsRequest

    ListJobRunsResponse.add_member(:job_runs, Shapes::ShapeRef.new(shape: JobRunList, required: true, location_name: "JobRuns"))
    ListJobRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListJobRunsResponse.struct_class = Types::ListJobRunsResponse

    ListJobsRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location: "querystring", location_name: "datasetName"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location: "querystring", location_name: "projectName"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, required: true, location_name: "Jobs"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectList, required: true, location_name: "Projects"))
    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ListRecipeVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListRecipeVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRecipeVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location: "querystring", location_name: "name"))
    ListRecipeVersionsRequest.struct_class = Types::ListRecipeVersionsRequest

    ListRecipeVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRecipeVersionsResponse.add_member(:recipes, Shapes::ShapeRef.new(shape: RecipeList, required: true, location_name: "Recipes"))
    ListRecipeVersionsResponse.struct_class = Types::ListRecipeVersionsResponse

    ListRecipesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListRecipesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRecipesRequest.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, location: "querystring", location_name: "recipeVersion"))
    ListRecipesRequest.struct_class = Types::ListRecipesRequest

    ListRecipesResponse.add_member(:recipes, Shapes::ShapeRef.new(shape: RecipeList, required: true, location_name: "Recipes"))
    ListRecipesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRecipesResponse.struct_class = Types::ListRecipesResponse

    ListRulesetsRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "targetArn"))
    ListRulesetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListRulesetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRulesetsRequest.struct_class = Types::ListRulesetsRequest

    ListRulesetsResponse.add_member(:rulesets, Shapes::ShapeRef.new(shape: RulesetItemList, required: true, location_name: "Rulesets"))
    ListRulesetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesetsResponse.struct_class = Types::ListRulesetsResponse

    ListSchedulesRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location: "querystring", location_name: "jobName"))
    ListSchedulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location: "querystring", location_name: "maxResults"))
    ListSchedulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSchedulesRequest.struct_class = Types::ListSchedulesRequest

    ListSchedulesResponse.add_member(:schedules, Shapes::ShapeRef.new(shape: ScheduleList, required: true, location_name: "Schedules"))
    ListSchedulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSchedulesResponse.struct_class = Types::ListSchedulesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Metadata.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceArn"))
    Metadata.struct_class = Types::Metadata

    Output.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    Output.add_member(:format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "Format"))
    Output.add_member(:partition_columns, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "PartitionColumns"))
    Output.add_member(:location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "Location"))
    Output.add_member(:overwrite, Shapes::ShapeRef.new(shape: OverwriteOutput, location_name: "Overwrite"))
    Output.add_member(:format_options, Shapes::ShapeRef.new(shape: OutputFormatOptions, location_name: "FormatOptions"))
    Output.add_member(:max_output_files, Shapes::ShapeRef.new(shape: MaxOutputFiles, location_name: "MaxOutputFiles"))
    Output.struct_class = Types::Output

    OutputFormatOptions.add_member(:csv, Shapes::ShapeRef.new(shape: CsvOutputOptions, location_name: "Csv"))
    OutputFormatOptions.struct_class = Types::OutputFormatOptions

    OutputList.member = Shapes::ShapeRef.new(shape: Output)

    ParameterMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterValue)

    PathOptions.add_member(:last_modified_date_condition, Shapes::ShapeRef.new(shape: FilterExpression, location_name: "LastModifiedDateCondition"))
    PathOptions.add_member(:files_limit, Shapes::ShapeRef.new(shape: FilesLimit, location_name: "FilesLimit"))
    PathOptions.add_member(:parameters, Shapes::ShapeRef.new(shape: PathParametersMap, location_name: "Parameters"))
    PathOptions.struct_class = Types::PathOptions

    PathParametersMap.key = Shapes::ShapeRef.new(shape: PathParameterName)
    PathParametersMap.value = Shapes::ShapeRef.new(shape: DatasetParameter)

    ProfileConfiguration.add_member(:dataset_statistics_configuration, Shapes::ShapeRef.new(shape: StatisticsConfiguration, location_name: "DatasetStatisticsConfiguration"))
    ProfileConfiguration.add_member(:profile_columns, Shapes::ShapeRef.new(shape: ColumnSelectorList, location_name: "ProfileColumns"))
    ProfileConfiguration.add_member(:column_statistics_configurations, Shapes::ShapeRef.new(shape: ColumnStatisticsConfigurationList, location_name: "ColumnStatisticsConfigurations"))
    ProfileConfiguration.add_member(:entity_detector_configuration, Shapes::ShapeRef.new(shape: EntityDetectorConfiguration, location_name: "EntityDetectorConfiguration"))
    ProfileConfiguration.struct_class = Types::ProfileConfiguration

    Project.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Project.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    Project.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    Project.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    Project.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Project.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    Project.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    Project.add_member(:recipe_name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "RecipeName"))
    Project.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Project.add_member(:sample, Shapes::ShapeRef.new(shape: Sample, location_name: "Sample"))
    Project.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Project.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    Project.add_member(:opened_by, Shapes::ShapeRef.new(shape: OpenedBy, location_name: "OpenedBy"))
    Project.add_member(:open_date, Shapes::ShapeRef.new(shape: Date, location_name: "OpenDate"))
    Project.struct_class = Types::Project

    ProjectList.member = Shapes::ShapeRef.new(shape: Project)

    PublishRecipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: RecipeDescription, location_name: "Description"))
    PublishRecipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location: "uri", location_name: "name"))
    PublishRecipeRequest.struct_class = Types::PublishRecipeRequest

    PublishRecipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    PublishRecipeResponse.struct_class = Types::PublishRecipeResponse

    Recipe.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    Recipe.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    Recipe.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    Recipe.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Recipe.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "ProjectName"))
    Recipe.add_member(:published_by, Shapes::ShapeRef.new(shape: PublishedBy, location_name: "PublishedBy"))
    Recipe.add_member(:published_date, Shapes::ShapeRef.new(shape: Date, location_name: "PublishedDate"))
    Recipe.add_member(:description, Shapes::ShapeRef.new(shape: RecipeDescription, location_name: "Description"))
    Recipe.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    Recipe.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Recipe.add_member(:steps, Shapes::ShapeRef.new(shape: RecipeStepList, location_name: "Steps"))
    Recipe.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Recipe.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, location_name: "RecipeVersion"))
    Recipe.struct_class = Types::Recipe

    RecipeAction.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "Operation"))
    RecipeAction.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    RecipeAction.struct_class = Types::RecipeAction

    RecipeErrorList.member = Shapes::ShapeRef.new(shape: RecipeVersionErrorDetail)

    RecipeList.member = Shapes::ShapeRef.new(shape: Recipe)

    RecipeReference.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    RecipeReference.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, location_name: "RecipeVersion"))
    RecipeReference.struct_class = Types::RecipeReference

    RecipeStep.add_member(:action, Shapes::ShapeRef.new(shape: RecipeAction, required: true, location_name: "Action"))
    RecipeStep.add_member(:condition_expressions, Shapes::ShapeRef.new(shape: ConditionExpressionList, location_name: "ConditionExpressions"))
    RecipeStep.struct_class = Types::RecipeStep

    RecipeStepList.member = Shapes::ShapeRef.new(shape: RecipeStep)

    RecipeVersionErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    RecipeVersionErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: RecipeErrorMessage, location_name: "ErrorMessage"))
    RecipeVersionErrorDetail.add_member(:recipe_version, Shapes::ShapeRef.new(shape: RecipeVersion, location_name: "RecipeVersion"))
    RecipeVersionErrorDetail.struct_class = Types::RecipeVersionErrorDetail

    RecipeVersionList.member = Shapes::ShapeRef.new(shape: RecipeVersion)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Rule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    Rule.add_member(:disabled, Shapes::ShapeRef.new(shape: Disabled, location_name: "Disabled"))
    Rule.add_member(:check_expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "CheckExpression"))
    Rule.add_member(:substitution_map, Shapes::ShapeRef.new(shape: ValuesMap, location_name: "SubstitutionMap"))
    Rule.add_member(:threshold, Shapes::ShapeRef.new(shape: Threshold, location_name: "Threshold"))
    Rule.add_member(:column_selectors, Shapes::ShapeRef.new(shape: ColumnSelectorList, location_name: "ColumnSelectors"))
    Rule.struct_class = Types::Rule

    RuleList.member = Shapes::ShapeRef.new(shape: Rule)

    RulesetItem.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    RulesetItem.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    RulesetItem.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    RulesetItem.add_member(:description, Shapes::ShapeRef.new(shape: RulesetDescription, location_name: "Description"))
    RulesetItem.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    RulesetItem.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    RulesetItem.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location_name: "Name"))
    RulesetItem.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    RulesetItem.add_member(:rule_count, Shapes::ShapeRef.new(shape: RuleCount, location_name: "RuleCount"))
    RulesetItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    RulesetItem.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TargetArn"))
    RulesetItem.struct_class = Types::RulesetItem

    RulesetItemList.member = Shapes::ShapeRef.new(shape: RulesetItem)

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: Bucket, required: true, location_name: "Bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    S3Location.add_member(:bucket_owner, Shapes::ShapeRef.new(shape: BucketOwner, location_name: "BucketOwner"))
    S3Location.struct_class = Types::S3Location

    S3TableOutputOptions.add_member(:location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "Location"))
    S3TableOutputOptions.struct_class = Types::S3TableOutputOptions

    Sample.add_member(:size, Shapes::ShapeRef.new(shape: SampleSize, location_name: "Size"))
    Sample.add_member(:type, Shapes::ShapeRef.new(shape: SampleType, required: true, location_name: "Type"))
    Sample.struct_class = Types::Sample

    Schedule.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Schedule.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    Schedule.add_member(:create_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreateDate"))
    Schedule.add_member(:job_names, Shapes::ShapeRef.new(shape: JobNameList, location_name: "JobNames"))
    Schedule.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: "LastModifiedBy"))
    Schedule.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Schedule.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Schedule.add_member(:cron_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "CronExpression"))
    Schedule.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Schedule.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location_name: "Name"))
    Schedule.struct_class = Types::Schedule

    ScheduleList.member = Shapes::ShapeRef.new(shape: Schedule)

    SendProjectSessionActionRequest.add_member(:preview, Shapes::ShapeRef.new(shape: Preview, location_name: "Preview"))
    SendProjectSessionActionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "name"))
    SendProjectSessionActionRequest.add_member(:recipe_step, Shapes::ShapeRef.new(shape: RecipeStep, location_name: "RecipeStep"))
    SendProjectSessionActionRequest.add_member(:step_index, Shapes::ShapeRef.new(shape: StepIndex, location_name: "StepIndex"))
    SendProjectSessionActionRequest.add_member(:client_session_id, Shapes::ShapeRef.new(shape: ClientSessionId, location_name: "ClientSessionId"))
    SendProjectSessionActionRequest.add_member(:view_frame, Shapes::ShapeRef.new(shape: ViewFrame, location_name: "ViewFrame"))
    SendProjectSessionActionRequest.struct_class = Types::SendProjectSessionActionRequest

    SendProjectSessionActionResponse.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "Result"))
    SendProjectSessionActionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    SendProjectSessionActionResponse.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, location_name: "ActionId"))
    SendProjectSessionActionResponse.struct_class = Types::SendProjectSessionActionResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SheetIndexList.member = Shapes::ShapeRef.new(shape: SheetIndex)

    SheetNameList.member = Shapes::ShapeRef.new(shape: SheetName)

    StartJobRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    StartJobRunRequest.struct_class = Types::StartJobRunRequest

    StartJobRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location_name: "RunId"))
    StartJobRunResponse.struct_class = Types::StartJobRunResponse

    StartProjectSessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "name"))
    StartProjectSessionRequest.add_member(:assume_control, Shapes::ShapeRef.new(shape: AssumeControl, location_name: "AssumeControl"))
    StartProjectSessionRequest.struct_class = Types::StartProjectSessionRequest

    StartProjectSessionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    StartProjectSessionResponse.add_member(:client_session_id, Shapes::ShapeRef.new(shape: ClientSessionId, location_name: "ClientSessionId"))
    StartProjectSessionResponse.struct_class = Types::StartProjectSessionResponse

    StatisticList.member = Shapes::ShapeRef.new(shape: Statistic)

    StatisticOverride.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, required: true, location_name: "Statistic"))
    StatisticOverride.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, required: true, location_name: "Parameters"))
    StatisticOverride.struct_class = Types::StatisticOverride

    StatisticOverrideList.member = Shapes::ShapeRef.new(shape: StatisticOverride)

    StatisticsConfiguration.add_member(:included_statistics, Shapes::ShapeRef.new(shape: StatisticList, location_name: "IncludedStatistics"))
    StatisticsConfiguration.add_member(:overrides, Shapes::ShapeRef.new(shape: StatisticOverrideList, location_name: "Overrides"))
    StatisticsConfiguration.struct_class = Types::StatisticsConfiguration

    StopJobRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    StopJobRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location: "uri", location_name: "runId"))
    StopJobRunRequest.struct_class = Types::StopJobRunRequest

    StopJobRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location_name: "RunId"))
    StopJobRunResponse.struct_class = Types::StopJobRunResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Threshold.add_member(:value, Shapes::ShapeRef.new(shape: ThresholdValue, required: true, location_name: "Value"))
    Threshold.add_member(:type, Shapes::ShapeRef.new(shape: ThresholdType, location_name: "Type"))
    Threshold.add_member(:unit, Shapes::ShapeRef.new(shape: ThresholdUnit, location_name: "Unit"))
    Threshold.struct_class = Types::Threshold

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "name"))
    UpdateDatasetRequest.add_member(:format, Shapes::ShapeRef.new(shape: InputFormat, location_name: "Format"))
    UpdateDatasetRequest.add_member(:format_options, Shapes::ShapeRef.new(shape: FormatOptions, location_name: "FormatOptions"))
    UpdateDatasetRequest.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "Input"))
    UpdateDatasetRequest.add_member(:path_options, Shapes::ShapeRef.new(shape: PathOptions, location_name: "PathOptions"))
    UpdateDatasetRequest.struct_class = Types::UpdateDatasetRequest

    UpdateDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "Name"))
    UpdateDatasetResponse.struct_class = Types::UpdateDatasetResponse

    UpdateProfileJobRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: "Configuration"))
    UpdateProfileJobRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    UpdateProfileJobRequest.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    UpdateProfileJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    UpdateProfileJobRequest.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    UpdateProfileJobRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: MaxCapacity, location_name: "MaxCapacity"))
    UpdateProfileJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    UpdateProfileJobRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "OutputLocation"))
    UpdateProfileJobRequest.add_member(:validation_configurations, Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    UpdateProfileJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    UpdateProfileJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    UpdateProfileJobRequest.add_member(:job_sample, Shapes::ShapeRef.new(shape: JobSample, location_name: "JobSample"))
    UpdateProfileJobRequest.struct_class = Types::UpdateProfileJobRequest

    UpdateProfileJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    UpdateProfileJobResponse.struct_class = Types::UpdateProfileJobResponse

    UpdateProjectRequest.add_member(:sample, Shapes::ShapeRef.new(shape: Sample, location_name: "Sample"))
    UpdateProjectRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    UpdateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "name"))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

    UpdateProjectResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    UpdateProjectResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "Name"))
    UpdateProjectResponse.struct_class = Types::UpdateProjectResponse

    UpdateRecipeJobRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    UpdateRecipeJobRequest.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    UpdateRecipeJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location: "uri", location_name: "name"))
    UpdateRecipeJobRequest.add_member(:log_subscription, Shapes::ShapeRef.new(shape: LogSubscription, location_name: "LogSubscription"))
    UpdateRecipeJobRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: MaxCapacity, location_name: "MaxCapacity"))
    UpdateRecipeJobRequest.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, location_name: "MaxRetries"))
    UpdateRecipeJobRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputList, location_name: "Outputs"))
    UpdateRecipeJobRequest.add_member(:data_catalog_outputs, Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    UpdateRecipeJobRequest.add_member(:database_outputs, Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: "DatabaseOutputs"))
    UpdateRecipeJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    UpdateRecipeJobRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    UpdateRecipeJobRequest.struct_class = Types::UpdateRecipeJobRequest

    UpdateRecipeJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    UpdateRecipeJobResponse.struct_class = Types::UpdateRecipeJobResponse

    UpdateRecipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: RecipeDescription, location_name: "Description"))
    UpdateRecipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location: "uri", location_name: "name"))
    UpdateRecipeRequest.add_member(:steps, Shapes::ShapeRef.new(shape: RecipeStepList, location_name: "Steps"))
    UpdateRecipeRequest.struct_class = Types::UpdateRecipeRequest

    UpdateRecipeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecipeName, required: true, location_name: "Name"))
    UpdateRecipeResponse.struct_class = Types::UpdateRecipeResponse

    UpdateRulesetRequest.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location: "uri", location_name: "name"))
    UpdateRulesetRequest.add_member(:description, Shapes::ShapeRef.new(shape: RulesetDescription, location_name: "Description"))
    UpdateRulesetRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleList, required: true, location_name: "Rules"))
    UpdateRulesetRequest.struct_class = Types::UpdateRulesetRequest

    UpdateRulesetResponse.add_member(:name, Shapes::ShapeRef.new(shape: RulesetName, required: true, location_name: "Name"))
    UpdateRulesetResponse.struct_class = Types::UpdateRulesetResponse

    UpdateScheduleRequest.add_member(:job_names, Shapes::ShapeRef.new(shape: JobNameList, location_name: "JobNames"))
    UpdateScheduleRequest.add_member(:cron_expression, Shapes::ShapeRef.new(shape: CronExpression, required: true, location_name: "CronExpression"))
    UpdateScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location: "uri", location_name: "name"))
    UpdateScheduleRequest.struct_class = Types::UpdateScheduleRequest

    UpdateScheduleResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, required: true, location_name: "Name"))
    UpdateScheduleResponse.struct_class = Types::UpdateScheduleResponse

    ValidationConfiguration.add_member(:ruleset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RulesetArn"))
    ValidationConfiguration.add_member(:validation_mode, Shapes::ShapeRef.new(shape: ValidationMode, location_name: "ValidationMode"))
    ValidationConfiguration.struct_class = Types::ValidationConfiguration

    ValidationConfigurationList.member = Shapes::ShapeRef.new(shape: ValidationConfiguration)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValuesMap.key = Shapes::ShapeRef.new(shape: ValueReference)
    ValuesMap.value = Shapes::ShapeRef.new(shape: ConditionValue)

    ViewFrame.add_member(:start_column_index, Shapes::ShapeRef.new(shape: StartColumnIndex, required: true, location_name: "StartColumnIndex"))
    ViewFrame.add_member(:column_range, Shapes::ShapeRef.new(shape: ColumnRange, location_name: "ColumnRange"))
    ViewFrame.add_member(:hidden_columns, Shapes::ShapeRef.new(shape: HiddenColumnList, location_name: "HiddenColumns"))
    ViewFrame.add_member(:start_row_index, Shapes::ShapeRef.new(shape: StartRowIndex, location_name: "StartRowIndex"))
    ViewFrame.add_member(:row_range, Shapes::ShapeRef.new(shape: RowRange, location_name: "RowRange"))
    ViewFrame.add_member(:analytics, Shapes::ShapeRef.new(shape: AnalyticsMode, location_name: "Analytics"))
    ViewFrame.struct_class = Types::ViewFrame


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "databrew",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Glue DataBrew",
        "serviceId" => "DataBrew",
        "signatureVersion" => "v4",
        "signingName" => "databrew",
        "uid" => "databrew-2017-07-25",
      }

      api.add_operation(:batch_delete_recipe_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteRecipeVersion"
        o.http_method = "POST"
        o.http_request_uri = "/recipes/{name}/batchDeleteRecipeVersion"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteRecipeVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteRecipeVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_profile_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfileJob"
        o.http_method = "POST"
        o.http_request_uri = "/profileJobs"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRecipe"
        o.http_method = "POST"
        o.http_request_uri = "/recipes"
        o.input = Shapes::ShapeRef.new(shape: CreateRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_recipe_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRecipeJob"
        o.http_method = "POST"
        o.http_request_uri = "/recipeJobs"
        o.input = Shapes::ShapeRef.new(shape: CreateRecipeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRecipeJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleset"
        o.http_method = "POST"
        o.http_request_uri = "/rulesets"
        o.input = Shapes::ShapeRef.new(shape: CreateRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/schedules"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/jobs/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_recipe_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecipeVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/recipes/{name}/recipeVersion/{recipeVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecipeVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRecipeVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleset"
        o.http_method = "DELETE"
        o.http_request_uri = "/rulesets/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/schedules/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJob"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobRun"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{name}/jobRun/{runId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecipe"
        o.http_method = "GET"
        o.http_request_uri = "/recipes/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuleset"
        o.http_method = "GET"
        o.http_request_uri = "/rulesets/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/schedules/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_job_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobRuns"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{name}/jobRuns"
        o.input = Shapes::ShapeRef.new(shape: ListJobRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recipe_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecipeVersions"
        o.http_method = "GET"
        o.http_request_uri = "/recipeVersions"
        o.input = Shapes::ShapeRef.new(shape: ListRecipeVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecipeVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recipes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecipes"
        o.http_method = "GET"
        o.http_request_uri = "/recipes"
        o.input = Shapes::ShapeRef.new(shape: ListRecipesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecipesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rulesets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRulesets"
        o.http_method = "GET"
        o.http_request_uri = "/rulesets"
        o.input = Shapes::ShapeRef.new(shape: ListRulesetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchedules"
        o.http_method = "GET"
        o.http_request_uri = "/schedules"
        o.input = Shapes::ShapeRef.new(shape: ListSchedulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchedulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:publish_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishRecipe"
        o.http_method = "POST"
        o.http_request_uri = "/recipes/{name}/publishRecipe"
        o.input = Shapes::ShapeRef.new(shape: PublishRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:send_project_session_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendProjectSessionAction"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{name}/sendProjectSessionAction"
        o.input = Shapes::ShapeRef.new(shape: SendProjectSessionActionRequest)
        o.output = Shapes::ShapeRef.new(shape: SendProjectSessionActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/jobs/{name}/startJobRun"
        o.input = Shapes::ShapeRef.new(shape: StartJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_project_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProjectSession"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{name}/startProjectSession"
        o.input = Shapes::ShapeRef.new(shape: StartProjectSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartProjectSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:stop_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/jobs/{name}/jobRun/{runId}/stopJobRun"
        o.input = Shapes::ShapeRef.new(shape: StopJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StopJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_profile_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfileJob"
        o.http_method = "PUT"
        o.http_request_uri = "/profileJobs/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecipe"
        o.http_method = "PUT"
        o.http_request_uri = "/recipes/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_recipe_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecipeJob"
        o.http_method = "PUT"
        o.http_request_uri = "/recipeJobs/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecipeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecipeJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_ruleset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleset"
        o.http_method = "PUT"
        o.http_request_uri = "/rulesets/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRulesetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRulesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchedule"
        o.http_method = "PUT"
        o.http_request_uri = "/schedules/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end

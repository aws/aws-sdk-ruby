# frozen_string_literal: true

# This is generated code!

module Aws::DataBrew
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ActionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#ActionId", name: "ActionId")
    AllowedStatisticList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#AllowedStatisticList", name: "AllowedStatisticList", traits: {"smithy.api#length" => {"min" => 1}})
    AllowedStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#AllowedStatistics", name: "AllowedStatistics")
    AnalyticsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#AnalyticsMode", name: "AnalyticsMode")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AssumeControl = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#AssumeControl", name: "AssumeControl", traits: {"smithy.api#default" => false})
    Attempt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#Attempt", name: "Attempt", traits: {"smithy.api#default" => 0})
    BatchDeleteRecipeVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#BatchDeleteRecipeVersionRequest", name: "BatchDeleteRecipeVersionRequest")
    BatchDeleteRecipeVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#BatchDeleteRecipeVersionResponse", name: "BatchDeleteRecipeVersionResponse")
    Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Bucket", name: "Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    BucketOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#BucketOwner", name: "BucketOwner", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    CatalogId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#CatalogId", name: "CatalogId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ClientSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ClientSessionId", name: "ClientSessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$", "smithy.api#sensitive" => {}})
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ColumnNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ColumnNameList", name: "ColumnNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ColumnRange = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#ColumnRange", name: "ColumnRange", traits: {"smithy.api#range" => {"min" => 0, "max" => 20}})
    ColumnSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ColumnSelector", name: "ColumnSelector")
    ColumnSelectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ColumnSelectorList", name: "ColumnSelectorList", traits: {"smithy.api#length" => {"min" => 1}})
    ColumnStatisticsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ColumnStatisticsConfiguration", name: "ColumnStatisticsConfiguration")
    ColumnStatisticsConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ColumnStatisticsConfigurationList", name: "ColumnStatisticsConfigurationList", traits: {"smithy.api#length" => {"min" => 1}})
    CompressionFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#CompressionFormat", name: "CompressionFormat")
    Condition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Condition", name: "Condition", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z\\_]+$"})
    ConditionExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ConditionExpression", name: "ConditionExpression")
    ConditionExpressionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ConditionExpressionList", name: "ConditionExpressionList")
    ConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ConditionValue", name: "ConditionValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateColumn = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#CreateColumn", name: "CreateColumn", traits: {"smithy.api#default" => false})
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateProfileJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateProfileJobRequest", name: "CreateProfileJobRequest")
    CreateProfileJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateProfileJobResponse", name: "CreateProfileJobResponse")
    CreateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateProjectRequest", name: "CreateProjectRequest")
    CreateProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateProjectResponse", name: "CreateProjectResponse")
    CreateRecipeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateRecipeJobRequest", name: "CreateRecipeJobRequest")
    CreateRecipeJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateRecipeJobResponse", name: "CreateRecipeJobResponse")
    CreateRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateRecipeRequest", name: "CreateRecipeRequest")
    CreateRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateRecipeResponse", name: "CreateRecipeResponse")
    CreateRulesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateRulesetRequest", name: "CreateRulesetRequest")
    CreateRulesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateRulesetResponse", name: "CreateRulesetResponse")
    CreateScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateScheduleRequest", name: "CreateScheduleRequest")
    CreateScheduleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CreateScheduleResponse", name: "CreateScheduleResponse")
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#CreatedBy", name: "CreatedBy")
    CronExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#CronExpression", name: "CronExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CsvOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CsvOptions", name: "CsvOptions")
    CsvOutputOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#CsvOutputOptions", name: "CsvOutputOptions")
    DataCatalogInputDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DataCatalogInputDefinition", name: "DataCatalogInputDefinition")
    DataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DataCatalogOutput", name: "DataCatalogOutput")
    DataCatalogOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#DataCatalogOutputList", name: "DataCatalogOutputList", traits: {"smithy.api#length" => {"min" => 1}})
    DatabaseInputDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DatabaseInputDefinition", name: "DatabaseInputDefinition")
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DatabaseOutput", name: "DatabaseOutput")
    DatabaseOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#DatabaseOutputList", name: "DatabaseOutputList", traits: {"smithy.api#length" => {"min" => 1}})
    DatabaseOutputMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#DatabaseOutputMode", name: "DatabaseOutputMode")
    DatabaseTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#DatabaseTableName", name: "DatabaseTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DatabaseTableOutputOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DatabaseTableOutputOptions", name: "DatabaseTableOutputOptions")
    Dataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Dataset", name: "Dataset")
    DatasetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#DatasetList", name: "DatasetList")
    DatasetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#DatasetName", name: "DatasetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DatasetParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DatasetParameter", name: "DatasetParameter")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.databrew#Date", name: "Date")
    DatetimeFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#DatetimeFormat", name: "DatetimeFormat", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}})
    DatetimeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DatetimeOptions", name: "DatetimeOptions")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteDatasetResponse", name: "DeleteDatasetResponse")
    DeleteJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteJobRequest", name: "DeleteJobRequest")
    DeleteJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteJobResponse", name: "DeleteJobResponse")
    DeleteProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteProjectRequest", name: "DeleteProjectRequest")
    DeleteProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteProjectResponse", name: "DeleteProjectResponse")
    DeleteRecipeVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteRecipeVersionRequest", name: "DeleteRecipeVersionRequest")
    DeleteRecipeVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteRecipeVersionResponse", name: "DeleteRecipeVersionResponse")
    DeleteRulesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteRulesetRequest", name: "DeleteRulesetRequest")
    DeleteRulesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteRulesetResponse", name: "DeleteRulesetResponse")
    DeleteScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteScheduleRequest", name: "DeleteScheduleRequest")
    DeleteScheduleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DeleteScheduleResponse", name: "DeleteScheduleResponse")
    Delimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Delimiter", name: "Delimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeJobRequest", name: "DescribeJobRequest")
    DescribeJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeJobResponse", name: "DescribeJobResponse")
    DescribeJobRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeJobRunRequest", name: "DescribeJobRunRequest")
    DescribeJobRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeJobRunResponse", name: "DescribeJobRunResponse")
    DescribeProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeProjectRequest", name: "DescribeProjectRequest")
    DescribeProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeProjectResponse", name: "DescribeProjectResponse")
    DescribeRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeRecipeRequest", name: "DescribeRecipeRequest")
    DescribeRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeRecipeResponse", name: "DescribeRecipeResponse")
    DescribeRulesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeRulesetRequest", name: "DescribeRulesetRequest")
    DescribeRulesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeRulesetResponse", name: "DescribeRulesetResponse")
    DescribeScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeScheduleRequest", name: "DescribeScheduleRequest")
    DescribeScheduleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#DescribeScheduleResponse", name: "DescribeScheduleResponse")
    Disabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#Disabled", name: "Disabled", traits: {"smithy.api#default" => false})
    EncryptionKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#EncryptionKeyArn", name: "EncryptionKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    EncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#EncryptionMode", name: "EncryptionMode")
    EntityDetectorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#EntityDetectorConfiguration", name: "EntityDetectorConfiguration")
    EntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#EntityType", name: "EntityType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z_][A-Z\\\\d_]*$"})
    EntityTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#EntityTypeList", name: "EntityTypeList", traits: {"smithy.api#length" => {"min" => 1}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ErrorCode", name: "ErrorCode", traits: {"smithy.api#pattern" => "^[1-5][0-9][0-9]$"})
    ExcelOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ExcelOptions", name: "ExcelOptions")
    ExecutionTime = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#ExecutionTime", name: "ExecutionTime", traits: {"smithy.api#default" => 0})
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^[<>0-9A-Za-z_.,:)(!= ]+$"})
    FilesLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#FilesLimit", name: "FilesLimit")
    FilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#FilterExpression", name: "FilterExpression")
    FormatOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#FormatOptions", name: "FormatOptions")
    GlueConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#GlueConnectionName", name: "GlueConnectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HeaderRow = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#HeaderRow", name: "HeaderRow")
    HiddenColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#HiddenColumnList", name: "HiddenColumnList")
    Input = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Input", name: "Input")
    InputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#InputFormat", name: "InputFormat")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Job", name: "Job")
    JobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#JobList", name: "JobList")
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 240}})
    JobNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#JobNameList", name: "JobNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    JobRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#JobRun", name: "JobRun")
    JobRunErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#JobRunErrorMessage", name: "JobRunErrorMessage")
    JobRunId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#JobRunId", name: "JobRunId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    JobRunList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#JobRunList", name: "JobRunList")
    JobRunState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#JobRunState", name: "JobRunState")
    JobSample = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#JobSample", name: "JobSample")
    JobSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#JobSize", name: "JobSize")
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#JobType", name: "JobType")
    JsonOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#JsonOptions", name: "JsonOptions")
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Key", name: "Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1280}})
    LastModifiedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#LastModifiedBy", name: "LastModifiedBy")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListJobRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListJobRunsRequest", name: "ListJobRunsRequest")
    ListJobRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListJobRunsResponse", name: "ListJobRunsResponse")
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListJobsRequest", name: "ListJobsRequest")
    ListJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListJobsResponse", name: "ListJobsResponse")
    ListProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListProjectsRequest", name: "ListProjectsRequest")
    ListProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListProjectsResponse", name: "ListProjectsResponse")
    ListRecipeVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListRecipeVersionsRequest", name: "ListRecipeVersionsRequest")
    ListRecipeVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListRecipeVersionsResponse", name: "ListRecipeVersionsResponse")
    ListRecipesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListRecipesRequest", name: "ListRecipesRequest")
    ListRecipesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListRecipesResponse", name: "ListRecipesResponse")
    ListRulesetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListRulesetsRequest", name: "ListRulesetsRequest")
    ListRulesetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListRulesetsResponse", name: "ListRulesetsResponse")
    ListSchedulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListSchedulesRequest", name: "ListSchedulesRequest")
    ListSchedulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListSchedulesResponse", name: "ListSchedulesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LocaleCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#LocaleCode", name: "LocaleCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.\#@\\-]+$"})
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogSubscription = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#LogSubscription", name: "LogSubscription")
    MaxCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#MaxCapacity", name: "MaxCapacity", traits: {"smithy.api#default" => 0})
    MaxFiles = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#MaxFiles", name: "MaxFiles", traits: {"smithy.api#range" => {"min" => 1}})
    MaxOutputFiles = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#MaxOutputFiles", name: "MaxOutputFiles", traits: {"smithy.api#range" => {"min" => 1, "max" => 999}})
    MaxResults100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#MaxResults100", name: "MaxResults100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#MaxRetries", name: "MaxRetries", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Message", name: "Message")
    Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Metadata", name: "Metadata")
    MultiLine = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#MultiLine", name: "MultiLine", traits: {"smithy.api#default" => false})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    OpenedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#OpenedBy", name: "OpenedBy")
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Operation", name: "Operation", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z\\_]+$"})
    Order = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#Order", name: "Order")
    OrderedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#OrderedBy", name: "OrderedBy")
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Output", name: "Output")
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#OutputFormat", name: "OutputFormat")
    OutputFormatOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#OutputFormatOptions", name: "OutputFormatOptions")
    OutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#OutputList", name: "OutputList", traits: {"smithy.api#length" => {"min" => 1}})
    OverwriteOutput = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#OverwriteOutput", name: "OverwriteOutput", traits: {"smithy.api#default" => false})
    ParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.databrew#ParameterMap", name: "ParameterMap")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ParameterName", name: "ParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    ParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#ParameterType", name: "ParameterType")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    PathOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#PathOptions", name: "PathOptions")
    PathParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#PathParameterName", name: "PathParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PathParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.databrew#PathParametersMap", name: "PathParametersMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Preview = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databrew#Preview", name: "Preview", traits: {"smithy.api#default" => false})
    ProfileConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ProfileConfiguration", name: "ProfileConfiguration")
    Project = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Project", name: "Project")
    ProjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ProjectList", name: "ProjectList")
    ProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ProjectName", name: "ProjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PublishRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#PublishRecipeRequest", name: "PublishRecipeRequest")
    PublishRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#PublishRecipeResponse", name: "PublishRecipeResponse")
    PublishedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#PublishedBy", name: "PublishedBy")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    Recipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Recipe", name: "Recipe")
    RecipeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#RecipeAction", name: "RecipeAction")
    RecipeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RecipeDescription", name: "RecipeDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RecipeErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#RecipeErrorList", name: "RecipeErrorList")
    RecipeErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RecipeErrorMessage", name: "RecipeErrorMessage")
    RecipeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#RecipeList", name: "RecipeList")
    RecipeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RecipeName", name: "RecipeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RecipeReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#RecipeReference", name: "RecipeReference")
    RecipeStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#RecipeStep", name: "RecipeStep")
    RecipeStepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#RecipeStepList", name: "RecipeStepList")
    RecipeVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RecipeVersion", name: "RecipeVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    RecipeVersionErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#RecipeVersionErrorDetail", name: "RecipeVersionErrorDetail")
    RecipeVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#RecipeVersionList", name: "RecipeVersionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Result = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Result", name: "Result")
    RowRange = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#RowRange", name: "RowRange")
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Rule", name: "Rule")
    RuleCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#RuleCount", name: "RuleCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    RuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#RuleList", name: "RuleList", traits: {"smithy.api#length" => {"min" => 1}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RulesetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RulesetDescription", name: "RulesetDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RulesetItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#RulesetItem", name: "RulesetItem")
    RulesetItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#RulesetItemList", name: "RulesetItemList")
    RulesetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#RulesetName", name: "RulesetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#S3Location", name: "S3Location")
    S3TableOutputOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#S3TableOutputOptions", name: "S3TableOutputOptions")
    Sample = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Sample", name: "Sample")
    SampleMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#SampleMode", name: "SampleMode")
    SampleSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#SampleSize", name: "SampleSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    SampleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#SampleType", name: "SampleType")
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Schedule", name: "Schedule")
    ScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ScheduleList", name: "ScheduleList")
    ScheduleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ScheduleName", name: "ScheduleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SendProjectSessionActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#SendProjectSessionActionRequest", name: "SendProjectSessionActionRequest")
    SendProjectSessionActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#SendProjectSessionActionResponse", name: "SendProjectSessionActionResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#SessionStatus", name: "SessionStatus")
    SheetIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#SheetIndex", name: "SheetIndex", traits: {"smithy.api#range" => {"min" => 0, "max" => 200}})
    SheetIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#SheetIndexList", name: "SheetIndexList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SheetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#SheetName", name: "SheetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 31}})
    SheetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#SheetNameList", name: "SheetNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Source = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#Source", name: "Source")
    StartColumnIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#StartColumnIndex", name: "StartColumnIndex", traits: {"smithy.api#range" => {"min" => 0}})
    StartJobRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StartJobRunRequest", name: "StartJobRunRequest")
    StartJobRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StartJobRunResponse", name: "StartJobRunResponse")
    StartProjectSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StartProjectSessionRequest", name: "StartProjectSessionRequest")
    StartProjectSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StartProjectSessionResponse", name: "StartProjectSessionResponse")
    StartRowIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#StartRowIndex", name: "StartRowIndex", traits: {"smithy.api#range" => {"min" => 0}})
    StartedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#StartedBy", name: "StartedBy")
    Statistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#Statistic", name: "Statistic", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z\\_]+$"})
    StatisticList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#StatisticList", name: "StatisticList", traits: {"smithy.api#length" => {"min" => 1}})
    StatisticOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StatisticOverride", name: "StatisticOverride")
    StatisticOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#StatisticOverrideList", name: "StatisticOverrideList", traits: {"smithy.api#length" => {"min" => 1}})
    StatisticsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StatisticsConfiguration", name: "StatisticsConfiguration")
    StepIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#StepIndex", name: "StepIndex", traits: {"smithy.api#range" => {"min" => 0}})
    StopJobRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StopJobRunRequest", name: "StopJobRunRequest")
    StopJobRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#StopJobRunResponse", name: "StopJobRunResponse")
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.databrew#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetColumn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#TargetColumn", name: "TargetColumn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Threshold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#Threshold", name: "Threshold")
    ThresholdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#ThresholdType", name: "ThresholdType")
    ThresholdUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#ThresholdUnit", name: "ThresholdUnit")
    ThresholdValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.databrew#ThresholdValue", name: "ThresholdValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Timeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databrew#Timeout", name: "Timeout", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    TimezoneOffset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#TimezoneOffset", name: "TimezoneOffset", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^(Z|[-+](\\d|\\d{2}|\\d{2}:?\\d{2}))$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateDatasetRequest", name: "UpdateDatasetRequest")
    UpdateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateDatasetResponse", name: "UpdateDatasetResponse")
    UpdateProfileJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateProfileJobRequest", name: "UpdateProfileJobRequest")
    UpdateProfileJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateProfileJobResponse", name: "UpdateProfileJobResponse")
    UpdateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateProjectRequest", name: "UpdateProjectRequest")
    UpdateProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateProjectResponse", name: "UpdateProjectResponse")
    UpdateRecipeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateRecipeJobRequest", name: "UpdateRecipeJobRequest")
    UpdateRecipeJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateRecipeJobResponse", name: "UpdateRecipeJobResponse")
    UpdateRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateRecipeRequest", name: "UpdateRecipeRequest")
    UpdateRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateRecipeResponse", name: "UpdateRecipeResponse")
    UpdateRulesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateRulesetRequest", name: "UpdateRulesetRequest")
    UpdateRulesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateRulesetResponse", name: "UpdateRulesetResponse")
    UpdateScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateScheduleRequest", name: "UpdateScheduleRequest")
    UpdateScheduleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#UpdateScheduleResponse", name: "UpdateScheduleResponse")
    ValidationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ValidationConfiguration", name: "ValidationConfiguration")
    ValidationConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databrew#ValidationConfigurationList", name: "ValidationConfigurationList", traits: {"smithy.api#length" => {"min" => 1}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databrew#ValidationMode", name: "ValidationMode")
    ValueReference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databrew#ValueReference", name: "ValueReference", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "^:[A-Za-z0-9_]+$"})
    ValuesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.databrew#ValuesMap", name: "ValuesMap")
    ViewFrame = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databrew#ViewFrame", name: "ViewFrame")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowedStatisticList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedStatistics)
    AllowedStatistics.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticList, location_name: "Statistics", traits: {"smithy.api#required" => {}}))
    AllowedStatistics.type = Types::AllowedStatistics
    AnalyticsMode.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    AnalyticsMode.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    BatchDeleteRecipeVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteRecipeVersionRequest.add_member(:recipe_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersionList, location_name: "RecipeVersions", traits: {"smithy.api#required" => {}}))
    BatchDeleteRecipeVersionRequest.type = Types::BatchDeleteRecipeVersionRequest
    BatchDeleteRecipeVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    BatchDeleteRecipeVersionResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeErrorList, location_name: "Errors"))
    BatchDeleteRecipeVersionResponse.type = Types::BatchDeleteRecipeVersionResponse
    ColumnNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName)
    ColumnSelector.add_member(:regex, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, location_name: "Regex"))
    ColumnSelector.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, location_name: "Name"))
    ColumnSelector.type = Types::ColumnSelector
    ColumnSelectorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnSelector)
    ColumnStatisticsConfiguration.add_member(:selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnSelectorList, location_name: "Selectors"))
    ColumnStatisticsConfiguration.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticsConfiguration, location_name: "Statistics", traits: {"smithy.api#required" => {}}))
    ColumnStatisticsConfiguration.type = Types::ColumnStatisticsConfiguration
    ColumnStatisticsConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnStatisticsConfiguration)
    CompressionFormat.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    CompressionFormat.add_member(:lz4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LZ4", traits: {"smithy.api#enumValue" => "LZ4"}))
    CompressionFormat.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SNAPPY", traits: {"smithy.api#enumValue" => "SNAPPY"}))
    CompressionFormat.add_member(:bzip2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BZIP2", traits: {"smithy.api#enumValue" => "BZIP2"}))
    CompressionFormat.add_member(:deflate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFLATE", traits: {"smithy.api#enumValue" => "DEFLATE"}))
    CompressionFormat.add_member(:lzo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LZO", traits: {"smithy.api#enumValue" => "LZO"}))
    CompressionFormat.add_member(:brotli, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BROTLI", traits: {"smithy.api#enumValue" => "BROTLI"}))
    CompressionFormat.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    CompressionFormat.add_member(:zlib, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZLIB", traits: {"smithy.api#enumValue" => "ZLIB"}))
    ConditionExpression.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, location_name: "Condition", traits: {"smithy.api#required" => {}}))
    ConditionExpression.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValue, location_name: "Value"))
    ConditionExpression.add_member(:target_column, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetColumn, location_name: "TargetColumn", traits: {"smithy.api#required" => {}}))
    ConditionExpression.type = Types::ConditionExpression
    ConditionExpressionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, location_name: "Format"))
    CreateDatasetRequest.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "FormatOptions"))
    CreateDatasetRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Input, location_name: "Input", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:path_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PathOptions, location_name: "PathOptions"))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateProfileJobRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    CreateProfileJobRequest.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, location_name: "EncryptionMode"))
    CreateProfileJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    CreateProfileJobRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacity, location_name: "MaxCapacity", traits: {"smithy.api#default" => 0}))
    CreateProfileJobRequest.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "MaxRetries", traits: {"smithy.api#default" => 0}))
    CreateProfileJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "OutputLocation", traits: {"smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, location_name: "Configuration"))
    CreateProfileJobRequest.add_member(:validation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    CreateProfileJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateProfileJobRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, location_name: "Timeout", traits: {"smithy.api#default" => 0}))
    CreateProfileJobRequest.add_member(:job_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSample, location_name: "JobSample"))
    CreateProfileJobRequest.type = Types::CreateProfileJobRequest
    CreateProfileJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProfileJobResponse.type = Types::CreateProfileJobResponse
    CreateProjectRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:recipe_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "RecipeName", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:sample, ::Smithy::Schema::Shapes::MemberShape.new(target: Sample, location_name: "Sample"))
    CreateProjectRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    CreateRecipeJobRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    CreateRecipeJobRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    CreateRecipeJobRequest.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, location_name: "EncryptionMode"))
    CreateRecipeJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRecipeJobRequest.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    CreateRecipeJobRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacity, location_name: "MaxCapacity", traits: {"smithy.api#default" => 0}))
    CreateRecipeJobRequest.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "MaxRetries", traits: {"smithy.api#default" => 0}))
    CreateRecipeJobRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputList, location_name: "Outputs"))
    CreateRecipeJobRequest.add_member(:data_catalog_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    CreateRecipeJobRequest.add_member(:database_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputList, location_name: "DatabaseOutputs"))
    CreateRecipeJobRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "ProjectName"))
    CreateRecipeJobRequest.add_member(:recipe_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeReference, location_name: "RecipeReference"))
    CreateRecipeJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateRecipeJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateRecipeJobRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, location_name: "Timeout", traits: {"smithy.api#default" => 0}))
    CreateRecipeJobRequest.type = Types::CreateRecipeJobRequest
    CreateRecipeJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRecipeJobResponse.type = Types::CreateRecipeJobResponse
    CreateRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeDescription, location_name: "Description"))
    CreateRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRecipeRequest.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeStepList, location_name: "Steps", traits: {"smithy.api#required" => {}}))
    CreateRecipeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateRecipeRequest.type = Types::CreateRecipeRequest
    CreateRecipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRecipeResponse.type = Types::CreateRecipeResponse
    CreateRulesetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRulesetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetDescription, location_name: "Description"))
    CreateRulesetRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "TargetArn", traits: {"smithy.api#required" => {}}))
    CreateRulesetRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleList, location_name: "Rules", traits: {"smithy.api#required" => {}}))
    CreateRulesetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateRulesetRequest.type = Types::CreateRulesetRequest
    CreateRulesetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRulesetResponse.type = Types::CreateRulesetResponse
    CreateScheduleRequest.add_member(:job_names, ::Smithy::Schema::Shapes::MemberShape.new(target: JobNameList, location_name: "JobNames"))
    CreateScheduleRequest.add_member(:cron_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, location_name: "CronExpression", traits: {"smithy.api#required" => {}}))
    CreateScheduleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateScheduleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateScheduleRequest.type = Types::CreateScheduleRequest
    CreateScheduleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateScheduleResponse.type = Types::CreateScheduleResponse
    CsvOptions.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, location_name: "Delimiter"))
    CsvOptions.add_member(:header_row, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderRow, location_name: "HeaderRow"))
    CsvOptions.type = Types::CsvOptions
    CsvOutputOptions.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, location_name: "Delimiter"))
    CsvOutputOptions.type = Types::CsvOutputOptions
    DataCatalogInputDefinition.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogId, location_name: "CatalogId"))
    DataCatalogInputDefinition.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, location_name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DataCatalogInputDefinition.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    DataCatalogInputDefinition.add_member(:temp_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "TempDirectory"))
    DataCatalogInputDefinition.type = Types::DataCatalogInputDefinition
    DataCatalogOutput.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogId, location_name: "CatalogId"))
    DataCatalogOutput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, location_name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    DataCatalogOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    DataCatalogOutput.add_member(:s3_options, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TableOutputOptions, location_name: "S3Options"))
    DataCatalogOutput.add_member(:database_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableOutputOptions, location_name: "DatabaseOptions"))
    DataCatalogOutput.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteOutput, location_name: "Overwrite", traits: {"smithy.api#default" => false}))
    DataCatalogOutput.type = Types::DataCatalogOutput
    DataCatalogOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutput)
    DatabaseInputDefinition.add_member(:glue_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueConnectionName, location_name: "GlueConnectionName", traits: {"smithy.api#required" => {}}))
    DatabaseInputDefinition.add_member(:database_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableName, location_name: "DatabaseTableName"))
    DatabaseInputDefinition.add_member(:temp_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "TempDirectory"))
    DatabaseInputDefinition.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, location_name: "QueryString"))
    DatabaseInputDefinition.type = Types::DatabaseInputDefinition
    DatabaseOutput.add_member(:glue_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueConnectionName, location_name: "GlueConnectionName", traits: {"smithy.api#required" => {}}))
    DatabaseOutput.add_member(:database_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableOutputOptions, location_name: "DatabaseOptions", traits: {"smithy.api#required" => {}}))
    DatabaseOutput.add_member(:database_output_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputMode, location_name: "DatabaseOutputMode"))
    DatabaseOutput.type = Types::DatabaseOutput
    DatabaseOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutput)
    DatabaseOutputMode.add_member(:new_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW_TABLE", traits: {"smithy.api#enumValue" => "NEW_TABLE"}))
    DatabaseTableOutputOptions.add_member(:temp_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "TempDirectory"))
    DatabaseTableOutputOptions.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    DatabaseTableOutputOptions.type = Types::DatabaseTableOutputOptions
    Dataset.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "AccountId"))
    Dataset.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    Dataset.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    Dataset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Dataset.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, location_name: "Format"))
    Dataset.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "FormatOptions"))
    Dataset.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Input, location_name: "Input", traits: {"smithy.api#required" => {}}))
    Dataset.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    Dataset.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    Dataset.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source"))
    Dataset.add_member(:path_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PathOptions, location_name: "PathOptions"))
    Dataset.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    Dataset.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    Dataset.type = Types::Dataset
    DatasetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset)
    DatasetParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DatasetParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    DatasetParameter.add_member(:datetime_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeOptions, location_name: "DatetimeOptions"))
    DatasetParameter.add_member(:create_column, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateColumn, location_name: "CreateColumn", traits: {"smithy.api#default" => false}))
    DatasetParameter.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, location_name: "Filter"))
    DatasetParameter.type = Types::DatasetParameter
    DatetimeOptions.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeFormat, location_name: "Format", traits: {"smithy.api#required" => {}}))
    DatetimeOptions.add_member(:timezone_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: TimezoneOffset, location_name: "TimezoneOffset"))
    DatetimeOptions.add_member(:locale_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleCode, location_name: "LocaleCode"))
    DatetimeOptions.type = Types::DatetimeOptions
    DeleteDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.type = Types::DeleteJobRequest
    DeleteJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteJobResponse.type = Types::DeleteJobResponse
    DeleteProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteRecipeVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecipeVersionRequest.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecipeVersionRequest.type = Types::DeleteRecipeVersionRequest
    DeleteRecipeVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteRecipeVersionResponse.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion", traits: {"smithy.api#required" => {}}))
    DeleteRecipeVersionResponse.type = Types::DeleteRecipeVersionResponse
    DeleteRulesetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRulesetRequest.type = Types::DeleteRulesetRequest
    DeleteRulesetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteRulesetResponse.type = Types::DeleteRulesetResponse
    DeleteScheduleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScheduleRequest.type = Types::DeleteScheduleRequest
    DeleteScheduleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteScheduleResponse.type = Types::DeleteScheduleResponse
    DescribeDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    DescribeDatasetResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    DescribeDatasetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, location_name: "Format"))
    DescribeDatasetResponse.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "FormatOptions"))
    DescribeDatasetResponse.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Input, location_name: "Input", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    DescribeDatasetResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeDatasetResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source"))
    DescribeDatasetResponse.add_member(:path_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PathOptions, location_name: "PathOptions"))
    DescribeDatasetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeDatasetResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRequest.type = Types::DescribeJobRequest
    DescribeJobResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    DescribeJobResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    DescribeJobResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DescribeJobResponse.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    DescribeJobResponse.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, location_name: "EncryptionMode"))
    DescribeJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeJobResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, location_name: "Type"))
    DescribeJobResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeJobResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    DescribeJobResponse.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    DescribeJobResponse.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacity, location_name: "MaxCapacity", traits: {"smithy.api#default" => 0}))
    DescribeJobResponse.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "MaxRetries", traits: {"smithy.api#default" => 0}))
    DescribeJobResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputList, location_name: "Outputs"))
    DescribeJobResponse.add_member(:data_catalog_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    DescribeJobResponse.add_member(:database_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputList, location_name: "DatabaseOutputs"))
    DescribeJobResponse.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "ProjectName"))
    DescribeJobResponse.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, location_name: "ProfileConfiguration"))
    DescribeJobResponse.add_member(:validation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    DescribeJobResponse.add_member(:recipe_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeReference, location_name: "RecipeReference"))
    DescribeJobResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    DescribeJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn"))
    DescribeJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeJobResponse.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, location_name: "Timeout", traits: {"smithy.api#default" => 0}))
    DescribeJobResponse.add_member(:job_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSample, location_name: "JobSample"))
    DescribeJobResponse.type = Types::DescribeJobResponse
    DescribeJobRunRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, location_name: "RunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.type = Types::DescribeJobRunRequest
    DescribeJobRunResponse.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: Attempt, location_name: "Attempt", traits: {"smithy.api#default" => 0}))
    DescribeJobRunResponse.add_member(:completed_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CompletedOn"))
    DescribeJobRunResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DescribeJobRunResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunErrorMessage, location_name: "ErrorMessage"))
    DescribeJobRunResponse.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTime, location_name: "ExecutionTime", traits: {"smithy.api#default" => 0}))
    DescribeJobRunResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName", traits: {"smithy.api#required" => {}}))
    DescribeJobRunResponse.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, location_name: "ProfileConfiguration"))
    DescribeJobRunResponse.add_member(:validation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    DescribeJobRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, location_name: "RunId"))
    DescribeJobRunResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, location_name: "State"))
    DescribeJobRunResponse.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    DescribeJobRunResponse.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "LogGroupName"))
    DescribeJobRunResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputList, location_name: "Outputs"))
    DescribeJobRunResponse.add_member(:data_catalog_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    DescribeJobRunResponse.add_member(:database_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputList, location_name: "DatabaseOutputs"))
    DescribeJobRunResponse.add_member(:recipe_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeReference, location_name: "RecipeReference"))
    DescribeJobRunResponse.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedBy, location_name: "StartedBy"))
    DescribeJobRunResponse.add_member(:started_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartedOn"))
    DescribeJobRunResponse.add_member(:job_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSample, location_name: "JobSample"))
    DescribeJobRunResponse.type = Types::DescribeJobRunResponse
    DescribeProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProjectRequest.type = Types::DescribeProjectRequest
    DescribeProjectResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    DescribeProjectResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    DescribeProjectResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    DescribeProjectResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    DescribeProjectResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeProjectResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:recipe_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "RecipeName"))
    DescribeProjectResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    DescribeProjectResponse.add_member(:sample, ::Smithy::Schema::Shapes::MemberShape.new(target: Sample, location_name: "Sample"))
    DescribeProjectResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn"))
    DescribeProjectResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeProjectResponse.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, location_name: "SessionStatus"))
    DescribeProjectResponse.add_member(:opened_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenedBy, location_name: "OpenedBy"))
    DescribeProjectResponse.add_member(:open_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "OpenDate"))
    DescribeProjectResponse.type = Types::DescribeProjectResponse
    DescribeRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecipeRequest.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion", traits: {"smithy.api#httpQuery" => "recipeVersion"}))
    DescribeRecipeRequest.type = Types::DescribeRecipeRequest
    DescribeRecipeResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    DescribeRecipeResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    DescribeRecipeResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeRecipeResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    DescribeRecipeResponse.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "ProjectName"))
    DescribeRecipeResponse.add_member(:published_by, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedBy, location_name: "PublishedBy"))
    DescribeRecipeResponse.add_member(:published_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "PublishedDate"))
    DescribeRecipeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeDescription, location_name: "Description"))
    DescribeRecipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeRecipeResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeStepList, location_name: "Steps"))
    DescribeRecipeResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeRecipeResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    DescribeRecipeResponse.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion"))
    DescribeRecipeResponse.type = Types::DescribeRecipeResponse
    DescribeRulesetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRulesetRequest.type = Types::DescribeRulesetRequest
    DescribeRulesetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeRulesetResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetDescription, location_name: "Description"))
    DescribeRulesetResponse.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "TargetArn"))
    DescribeRulesetResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleList, location_name: "Rules"))
    DescribeRulesetResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    DescribeRulesetResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    DescribeRulesetResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeRulesetResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    DescribeRulesetResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    DescribeRulesetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeRulesetResponse.type = Types::DescribeRulesetResponse
    DescribeScheduleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeScheduleRequest.type = Types::DescribeScheduleRequest
    DescribeScheduleResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    DescribeScheduleResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    DescribeScheduleResponse.add_member(:job_names, ::Smithy::Schema::Shapes::MemberShape.new(target: JobNameList, location_name: "JobNames"))
    DescribeScheduleResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    DescribeScheduleResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    DescribeScheduleResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    DescribeScheduleResponse.add_member(:cron_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, location_name: "CronExpression"))
    DescribeScheduleResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeScheduleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeScheduleResponse.type = Types::DescribeScheduleResponse
    EncryptionMode.add_member(:ssekms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSEKMS", traits: {"smithy.api#enumValue" => "SSE-KMS"}))
    EncryptionMode.add_member(:sses3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSES3", traits: {"smithy.api#enumValue" => "SSE-S3"}))
    EntityDetectorConfiguration.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeList, location_name: "EntityTypes", traits: {"smithy.api#required" => {}}))
    EntityDetectorConfiguration.add_member(:allowed_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedStatisticList, location_name: "AllowedStatistics"))
    EntityDetectorConfiguration.type = Types::EntityDetectorConfiguration
    EntityTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType)
    ExcelOptions.add_member(:sheet_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SheetNameList, location_name: "SheetNames"))
    ExcelOptions.add_member(:sheet_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: SheetIndexList, location_name: "SheetIndexes"))
    ExcelOptions.add_member(:header_row, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderRow, location_name: "HeaderRow"))
    ExcelOptions.type = Types::ExcelOptions
    FilesLimit.add_member(:max_files, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFiles, location_name: "MaxFiles", traits: {"smithy.api#required" => {}}))
    FilesLimit.add_member(:ordered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedBy, location_name: "OrderedBy"))
    FilesLimit.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, location_name: "Order"))
    FilesLimit.type = Types::FilesLimit
    FilterExpression.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, location_name: "Expression", traits: {"smithy.api#required" => {}}))
    FilterExpression.add_member(:values_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ValuesMap, location_name: "ValuesMap", traits: {"smithy.api#required" => {}}))
    FilterExpression.type = Types::FilterExpression
    FormatOptions.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonOptions, location_name: "Json"))
    FormatOptions.add_member(:excel, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcelOptions, location_name: "Excel"))
    FormatOptions.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvOptions, location_name: "Csv"))
    FormatOptions.type = Types::FormatOptions
    HiddenColumnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName)
    Input.add_member(:s3_input_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "S3InputDefinition"))
    Input.add_member(:data_catalog_input_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogInputDefinition, location_name: "DataCatalogInputDefinition"))
    Input.add_member(:database_input_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInputDefinition, location_name: "DatabaseInputDefinition"))
    Input.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    Input.type = Types::Input
    InputFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    InputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    InputFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    InputFormat.add_member(:excel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCEL", traits: {"smithy.api#enumValue" => "EXCEL"}))
    InputFormat.add_member(:orc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ORC", traits: {"smithy.api#enumValue" => "ORC"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "AccountId"))
    Job.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    Job.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    Job.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    Job.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    Job.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, location_name: "EncryptionMode"))
    Job.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Job.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, location_name: "Type"))
    Job.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    Job.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    Job.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    Job.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacity, location_name: "MaxCapacity", traits: {"smithy.api#default" => 0}))
    Job.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "MaxRetries", traits: {"smithy.api#default" => 0}))
    Job.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputList, location_name: "Outputs"))
    Job.add_member(:data_catalog_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    Job.add_member(:database_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputList, location_name: "DatabaseOutputs"))
    Job.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "ProjectName"))
    Job.add_member(:recipe_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeReference, location_name: "RecipeReference"))
    Job.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    Job.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn"))
    Job.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, location_name: "Timeout", traits: {"smithy.api#default" => 0}))
    Job.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    Job.add_member(:job_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSample, location_name: "JobSample"))
    Job.add_member(:validation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    Job.type = Types::Job
    JobList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Job)
    JobNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobName)
    JobRun.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: Attempt, location_name: "Attempt", traits: {"smithy.api#default" => 0}))
    JobRun.add_member(:completed_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CompletedOn"))
    JobRun.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    JobRun.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunErrorMessage, location_name: "ErrorMessage"))
    JobRun.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTime, location_name: "ExecutionTime", traits: {"smithy.api#default" => 0}))
    JobRun.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName"))
    JobRun.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, location_name: "RunId"))
    JobRun.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, location_name: "State"))
    JobRun.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    JobRun.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "LogGroupName"))
    JobRun.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputList, location_name: "Outputs"))
    JobRun.add_member(:data_catalog_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    JobRun.add_member(:database_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputList, location_name: "DatabaseOutputs"))
    JobRun.add_member(:recipe_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeReference, location_name: "RecipeReference"))
    JobRun.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedBy, location_name: "StartedBy"))
    JobRun.add_member(:started_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartedOn"))
    JobRun.add_member(:job_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSample, location_name: "JobSample"))
    JobRun.add_member(:validation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    JobRun.type = Types::JobRun
    JobRunList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobRun)
    JobRunState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    JobRunState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobRunState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    JobRunState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    JobRunState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobRunState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobRunState.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    JobSample.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleMode, location_name: "Mode"))
    JobSample.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSize, location_name: "Size"))
    JobSample.type = Types::JobSample
    JobType.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    JobType.add_member(:recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RECIPE", traits: {"smithy.api#enumValue" => "RECIPE"}))
    JsonOptions.add_member(:multi_line, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiLine, location_name: "MultiLine", traits: {"smithy.api#default" => false}))
    JsonOptions.type = Types::JsonOptions
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetList, location_name: "Datasets", traits: {"smithy.api#required" => {}}))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListJobRunsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListJobRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobRunsRequest.type = Types::ListJobRunsRequest
    ListJobRunsResponse.add_member(:job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunList, location_name: "JobRuns", traits: {"smithy.api#required" => {}}))
    ListJobRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListJobRunsResponse.type = Types::ListJobRunsResponse
    ListJobsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpQuery" => "datasetName"}))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "ProjectName", traits: {"smithy.api#httpQuery" => "projectName"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobList, location_name: "Jobs", traits: {"smithy.api#required" => {}}))
    ListJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListJobsResponse.type = Types::ListJobsResponse
    ListProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:projects, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectList, location_name: "Projects", traits: {"smithy.api#required" => {}}))
    ListProjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListRecipeVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecipeVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecipeVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#httpQuery" => "name", "smithy.api#required" => {}}))
    ListRecipeVersionsRequest.type = Types::ListRecipeVersionsRequest
    ListRecipeVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRecipeVersionsResponse.add_member(:recipes, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeList, location_name: "Recipes", traits: {"smithy.api#required" => {}}))
    ListRecipeVersionsResponse.type = Types::ListRecipeVersionsResponse
    ListRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecipesRequest.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion", traits: {"smithy.api#httpQuery" => "recipeVersion"}))
    ListRecipesRequest.type = Types::ListRecipesRequest
    ListRecipesResponse.add_member(:recipes, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeList, location_name: "Recipes", traits: {"smithy.api#required" => {}}))
    ListRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRecipesResponse.type = Types::ListRecipesResponse
    ListRulesetsRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "TargetArn", traits: {"smithy.api#httpQuery" => "targetArn"}))
    ListRulesetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRulesetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRulesetsRequest.type = Types::ListRulesetsRequest
    ListRulesetsResponse.add_member(:rulesets, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetItemList, location_name: "Rulesets", traits: {"smithy.api#required" => {}}))
    ListRulesetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRulesetsResponse.type = Types::ListRulesetsResponse
    ListSchedulesRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "JobName", traits: {"smithy.api#httpQuery" => "jobName"}))
    ListSchedulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSchedulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSchedulesRequest.type = Types::ListSchedulesRequest
    ListSchedulesResponse.add_member(:schedules, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleList, location_name: "Schedules", traits: {"smithy.api#required" => {}}))
    ListSchedulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListSchedulesResponse.type = Types::ListSchedulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogSubscription.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    LogSubscription.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    Metadata.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "SourceArn"))
    Metadata.type = Types::Metadata
    Order.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Order.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    OrderedBy.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_MODIFIED_DATE", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_DATE"}))
    Output.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, location_name: "CompressionFormat"))
    Output.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, location_name: "Format"))
    Output.add_member(:partition_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNameList, location_name: "PartitionColumns"))
    Output.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "Location", traits: {"smithy.api#required" => {}}))
    Output.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteOutput, location_name: "Overwrite", traits: {"smithy.api#default" => false}))
    Output.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormatOptions, location_name: "FormatOptions"))
    Output.add_member(:max_output_files, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxOutputFiles, location_name: "MaxOutputFiles"))
    Output.type = Types::Output
    OutputFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    OutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    OutputFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    OutputFormat.add_member(:glueparquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLUEPARQUET", traits: {"smithy.api#enumValue" => "GLUEPARQUET"}))
    OutputFormat.add_member(:avro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVRO", traits: {"smithy.api#enumValue" => "AVRO"}))
    OutputFormat.add_member(:orc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ORC", traits: {"smithy.api#enumValue" => "ORC"}))
    OutputFormat.add_member(:xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XML", traits: {"smithy.api#enumValue" => "XML"}))
    OutputFormat.add_member(:tableauhyper, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TABLEAUHYPER", traits: {"smithy.api#enumValue" => "TABLEAUHYPER"}))
    OutputFormatOptions.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvOutputOptions, location_name: "Csv"))
    OutputFormatOptions.type = Types::OutputFormatOptions
    OutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Output)
    ParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName)
    ParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue)
    ParameterType.add_member(:datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Datetime", traits: {"smithy.api#enumValue" => "Datetime"}))
    ParameterType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Number", traits: {"smithy.api#enumValue" => "Number"}))
    ParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "String", traits: {"smithy.api#enumValue" => "String"}))
    PathOptions.add_member(:last_modified_date_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, location_name: "LastModifiedDateCondition"))
    PathOptions.add_member(:files_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: FilesLimit, location_name: "FilesLimit"))
    PathOptions.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParametersMap, location_name: "Parameters"))
    PathOptions.type = Types::PathOptions
    PathParametersMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameterName)
    PathParametersMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetParameter)
    ProfileConfiguration.add_member(:dataset_statistics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticsConfiguration, location_name: "DatasetStatisticsConfiguration"))
    ProfileConfiguration.add_member(:profile_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnSelectorList, location_name: "ProfileColumns"))
    ProfileConfiguration.add_member(:column_statistics_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnStatisticsConfigurationList, location_name: "ColumnStatisticsConfigurations"))
    ProfileConfiguration.add_member(:entity_detector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDetectorConfiguration, location_name: "EntityDetectorConfiguration"))
    ProfileConfiguration.type = Types::ProfileConfiguration
    Project.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "AccountId"))
    Project.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    Project.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    Project.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "DatasetName"))
    Project.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    Project.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    Project.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Project.add_member(:recipe_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "RecipeName", traits: {"smithy.api#required" => {}}))
    Project.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    Project.add_member(:sample, ::Smithy::Schema::Shapes::MemberShape.new(target: Sample, location_name: "Sample"))
    Project.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    Project.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn"))
    Project.add_member(:opened_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenedBy, location_name: "OpenedBy"))
    Project.add_member(:open_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "OpenDate"))
    Project.type = Types::Project
    ProjectList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Project)
    PublishRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeDescription, location_name: "Description"))
    PublishRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishRecipeRequest.type = Types::PublishRecipeRequest
    PublishRecipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    PublishRecipeResponse.type = Types::PublishRecipeResponse
    Recipe.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    Recipe.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    Recipe.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    Recipe.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    Recipe.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "ProjectName"))
    Recipe.add_member(:published_by, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedBy, location_name: "PublishedBy"))
    Recipe.add_member(:published_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "PublishedDate"))
    Recipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeDescription, location_name: "Description"))
    Recipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Recipe.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    Recipe.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeStepList, location_name: "Steps"))
    Recipe.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    Recipe.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion"))
    Recipe.type = Types::Recipe
    RecipeAction.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, location_name: "Operation", traits: {"smithy.api#required" => {}}))
    RecipeAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, location_name: "Parameters"))
    RecipeAction.type = Types::RecipeAction
    RecipeErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersionErrorDetail)
    RecipeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Recipe)
    RecipeReference.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    RecipeReference.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion"))
    RecipeReference.type = Types::RecipeReference
    RecipeStep.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    RecipeStep.add_member(:condition_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpressionList, location_name: "ConditionExpressions"))
    RecipeStep.type = Types::RecipeStep
    RecipeStepList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeStep)
    RecipeVersionErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    RecipeVersionErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeErrorMessage, location_name: "ErrorMessage"))
    RecipeVersionErrorDetail.add_member(:recipe_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion, location_name: "RecipeVersion"))
    RecipeVersionErrorDetail.type = Types::RecipeVersionErrorDetail
    RecipeVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeVersion)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Rule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Disabled, location_name: "Disabled", traits: {"smithy.api#default" => false}))
    Rule.add_member(:check_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, location_name: "CheckExpression", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:substitution_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ValuesMap, location_name: "SubstitutionMap"))
    Rule.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Threshold, location_name: "Threshold"))
    Rule.add_member(:column_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnSelectorList, location_name: "ColumnSelectors"))
    Rule.type = Types::Rule
    RuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Rule)
    RulesetItem.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "AccountId"))
    RulesetItem.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    RulesetItem.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    RulesetItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetDescription, location_name: "Description"))
    RulesetItem.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    RulesetItem.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    RulesetItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    RulesetItem.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    RulesetItem.add_member(:rule_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCount, location_name: "RuleCount", traits: {"smithy.api#default" => 0}))
    RulesetItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    RulesetItem.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "TargetArn", traits: {"smithy.api#required" => {}}))
    RulesetItem.type = Types::RulesetItem
    RulesetItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetItem)
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "Key"))
    S3Location.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketOwner, location_name: "BucketOwner"))
    S3Location.type = Types::S3Location
    S3TableOutputOptions.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "Location", traits: {"smithy.api#required" => {}}))
    S3TableOutputOptions.type = Types::S3TableOutputOptions
    Sample.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleSize, location_name: "Size"))
    Sample.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    Sample.type = Types::Sample
    SampleMode.add_member(:full_dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_DATASET", traits: {"smithy.api#enumValue" => "FULL_DATASET"}))
    SampleMode.add_member(:custom_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_ROWS", traits: {"smithy.api#enumValue" => "CUSTOM_ROWS"}))
    SampleType.add_member(:first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIRST_N", traits: {"smithy.api#enumValue" => "FIRST_N"}))
    SampleType.add_member(:last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_N", traits: {"smithy.api#enumValue" => "LAST_N"}))
    SampleType.add_member(:random, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RANDOM", traits: {"smithy.api#enumValue" => "RANDOM"}))
    Schedule.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "AccountId"))
    Schedule.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "CreatedBy"))
    Schedule.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreateDate"))
    Schedule.add_member(:job_names, ::Smithy::Schema::Shapes::MemberShape.new(target: JobNameList, location_name: "JobNames"))
    Schedule.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedBy, location_name: "LastModifiedBy"))
    Schedule.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    Schedule.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn"))
    Schedule.add_member(:cron_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, location_name: "CronExpression"))
    Schedule.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    Schedule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Schedule.type = Types::Schedule
    ScheduleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule)
    SendProjectSessionActionRequest.add_member(:preview, ::Smithy::Schema::Shapes::MemberShape.new(target: Preview, location_name: "Preview", traits: {"smithy.api#default" => false}))
    SendProjectSessionActionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendProjectSessionActionRequest.add_member(:recipe_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeStep, location_name: "RecipeStep"))
    SendProjectSessionActionRequest.add_member(:step_index, ::Smithy::Schema::Shapes::MemberShape.new(target: StepIndex, location_name: "StepIndex"))
    SendProjectSessionActionRequest.add_member(:client_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSessionId, location_name: "ClientSessionId"))
    SendProjectSessionActionRequest.add_member(:view_frame, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewFrame, location_name: "ViewFrame"))
    SendProjectSessionActionRequest.type = Types::SendProjectSessionActionRequest
    SendProjectSessionActionResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, location_name: "Result"))
    SendProjectSessionActionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    SendProjectSessionActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, location_name: "ActionId"))
    SendProjectSessionActionResponse.type = Types::SendProjectSessionActionResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionStatus.add_member(:assigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSIGNED", traits: {"smithy.api#enumValue" => "ASSIGNED"}))
    SessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    SessionStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    SessionStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    SessionStatus.add_member(:recycling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RECYCLING", traits: {"smithy.api#enumValue" => "RECYCLING"}))
    SessionStatus.add_member(:rotating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROTATING", traits: {"smithy.api#enumValue" => "ROTATING"}))
    SessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    SessionStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    SessionStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    SheetIndexList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SheetIndex)
    SheetNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SheetName)
    Source.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    Source.add_member(:datacatalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATACATALOG", traits: {"smithy.api#enumValue" => "DATA-CATALOG"}))
    Source.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    StartJobRunRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRunRequest.type = Types::StartJobRunRequest
    StartJobRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, location_name: "RunId", traits: {"smithy.api#required" => {}}))
    StartJobRunResponse.type = Types::StartJobRunResponse
    StartProjectSessionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartProjectSessionRequest.add_member(:assume_control, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumeControl, location_name: "AssumeControl", traits: {"smithy.api#default" => false}))
    StartProjectSessionRequest.type = Types::StartProjectSessionRequest
    StartProjectSessionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    StartProjectSessionResponse.add_member(:client_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSessionId, location_name: "ClientSessionId"))
    StartProjectSessionResponse.type = Types::StartProjectSessionResponse
    StatisticList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic)
    StatisticOverride.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, location_name: "Statistic", traits: {"smithy.api#required" => {}}))
    StatisticOverride.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, location_name: "Parameters", traits: {"smithy.api#required" => {}}))
    StatisticOverride.type = Types::StatisticOverride
    StatisticOverrideList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticOverride)
    StatisticsConfiguration.add_member(:included_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticList, location_name: "IncludedStatistics"))
    StatisticsConfiguration.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticOverrideList, location_name: "Overrides"))
    StatisticsConfiguration.type = Types::StatisticsConfiguration
    StopJobRunRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRunRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, location_name: "RunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRunRequest.type = Types::StopJobRunRequest
    StopJobRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, location_name: "RunId", traits: {"smithy.api#required" => {}}))
    StopJobRunResponse.type = Types::StopJobRunResponse
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Threshold.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdValue, location_name: "Value", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Threshold.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdType, location_name: "Type"))
    Threshold.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdUnit, location_name: "Unit"))
    Threshold.type = Types::Threshold
    ThresholdType.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    ThresholdType.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    ThresholdType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ThresholdType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ThresholdUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    ThresholdUnit.add_member(:percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERCENTAGE", traits: {"smithy.api#enumValue" => "PERCENTAGE"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, location_name: "Format"))
    UpdateDatasetRequest.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "FormatOptions"))
    UpdateDatasetRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: Input, location_name: "Input", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:path_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PathOptions, location_name: "PathOptions"))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdateProfileJobRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileConfiguration, location_name: "Configuration"))
    UpdateProfileJobRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    UpdateProfileJobRequest.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, location_name: "EncryptionMode"))
    UpdateProfileJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileJobRequest.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    UpdateProfileJobRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacity, location_name: "MaxCapacity", traits: {"smithy.api#default" => 0}))
    UpdateProfileJobRequest.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "MaxRetries", traits: {"smithy.api#default" => 0}))
    UpdateProfileJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "OutputLocation", traits: {"smithy.api#required" => {}}))
    UpdateProfileJobRequest.add_member(:validation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfigurationList, location_name: "ValidationConfigurations"))
    UpdateProfileJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateProfileJobRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, location_name: "Timeout", traits: {"smithy.api#default" => 0}))
    UpdateProfileJobRequest.add_member(:job_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSample, location_name: "JobSample"))
    UpdateProfileJobRequest.type = Types::UpdateProfileJobRequest
    UpdateProfileJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateProfileJobResponse.type = Types::UpdateProfileJobResponse
    UpdateProjectRequest.add_member(:sample, ::Smithy::Schema::Shapes::MemberShape.new(target: Sample, location_name: "Sample"))
    UpdateProjectRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastModifiedDate"))
    UpdateProjectResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateProjectResponse.type = Types::UpdateProjectResponse
    UpdateRecipeJobRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, location_name: "EncryptionKeyArn"))
    UpdateRecipeJobRequest.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, location_name: "EncryptionMode"))
    UpdateRecipeJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecipeJobRequest.add_member(:log_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, location_name: "LogSubscription"))
    UpdateRecipeJobRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacity, location_name: "MaxCapacity", traits: {"smithy.api#default" => 0}))
    UpdateRecipeJobRequest.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "MaxRetries", traits: {"smithy.api#default" => 0}))
    UpdateRecipeJobRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputList, location_name: "Outputs"))
    UpdateRecipeJobRequest.add_member(:data_catalog_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogOutputList, location_name: "DataCatalogOutputs"))
    UpdateRecipeJobRequest.add_member(:database_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseOutputList, location_name: "DatabaseOutputs"))
    UpdateRecipeJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateRecipeJobRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, location_name: "Timeout", traits: {"smithy.api#default" => 0}))
    UpdateRecipeJobRequest.type = Types::UpdateRecipeJobRequest
    UpdateRecipeJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateRecipeJobResponse.type = Types::UpdateRecipeJobResponse
    UpdateRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeDescription, location_name: "Description"))
    UpdateRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecipeRequest.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeStepList, location_name: "Steps"))
    UpdateRecipeRequest.type = Types::UpdateRecipeRequest
    UpdateRecipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateRecipeResponse.type = Types::UpdateRecipeResponse
    UpdateRulesetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRulesetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetDescription, location_name: "Description"))
    UpdateRulesetRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleList, location_name: "Rules", traits: {"smithy.api#required" => {}}))
    UpdateRulesetRequest.type = Types::UpdateRulesetRequest
    UpdateRulesetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesetName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateRulesetResponse.type = Types::UpdateRulesetResponse
    UpdateScheduleRequest.add_member(:job_names, ::Smithy::Schema::Shapes::MemberShape.new(target: JobNameList, location_name: "JobNames"))
    UpdateScheduleRequest.add_member(:cron_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, location_name: "CronExpression", traits: {"smithy.api#required" => {}}))
    UpdateScheduleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScheduleRequest.type = Types::UpdateScheduleRequest
    UpdateScheduleResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateScheduleResponse.type = Types::UpdateScheduleResponse
    ValidationConfiguration.add_member(:ruleset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "RulesetArn", traits: {"smithy.api#required" => {}}))
    ValidationConfiguration.add_member(:validation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, location_name: "ValidationMode"))
    ValidationConfiguration.type = Types::ValidationConfiguration
    ValidationConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfiguration)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ValidationException.type = Types::ValidationException
    ValidationMode.add_member(:check_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHECK_ALL", traits: {"smithy.api#enumValue" => "CHECK_ALL"}))
    ValuesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ValueReference)
    ValuesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValue)
    ViewFrame.add_member(:start_column_index, ::Smithy::Schema::Shapes::MemberShape.new(target: StartColumnIndex, location_name: "StartColumnIndex", traits: {"smithy.api#required" => {}}))
    ViewFrame.add_member(:column_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnRange, location_name: "ColumnRange"))
    ViewFrame.add_member(:hidden_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: HiddenColumnList, location_name: "HiddenColumns"))
    ViewFrame.add_member(:start_row_index, ::Smithy::Schema::Shapes::MemberShape.new(target: StartRowIndex, location_name: "StartRowIndex"))
    ViewFrame.add_member(:row_range, ::Smithy::Schema::Shapes::MemberShape.new(target: RowRange, location_name: "RowRange"))
    ViewFrame.add_member(:analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMode, location_name: "Analytics"))
    ViewFrame.type = Types::ViewFrame

    AWSGlueDataBrew = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.databrew#AWSGlueDataBrew"
      service.name = "AWSGlueDataBrew"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "DataBrew", "arnNamespace" => "databrew", "cloudFormationName" => "DataBrew", "cloudTrailEventSource" => "databrew.amazonaws.com", "endpointPrefix" => "databrew"}, "aws.auth#sigv4" => {"name" => "databrew"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Glue DataBrew"}
      service.add_operation(:batch_delete_recipe_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#BatchDeleteRecipeVersion"
        operation.name = "BatchDeleteRecipeVersion"
        operation.input = BatchDeleteRecipeVersionRequest
        operation.output = BatchDeleteRecipeVersionResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipes/{Name}/batchDeleteRecipeVersion", "code" => 200}}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasets", "code" => 200}}
      end)
      service.add_operation(:create_profile_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateProfileJob"
        operation.name = "CreateProfileJob"
        operation.input = CreateProfileJobRequest
        operation.output = CreateProfileJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profileJobs", "code" => 200}}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateProject"
        operation.name = "CreateProject"
        operation.input = CreateProjectRequest
        operation.output = CreateProjectResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects", "code" => 200}}
      end)
      service.add_operation(:create_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateRecipe"
        operation.name = "CreateRecipe"
        operation.input = CreateRecipeRequest
        operation.output = CreateRecipeResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipes", "code" => 200}}
      end)
      service.add_operation(:create_recipe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateRecipeJob"
        operation.name = "CreateRecipeJob"
        operation.input = CreateRecipeJobRequest
        operation.output = CreateRecipeJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipeJobs", "code" => 200}}
      end)
      service.add_operation(:create_ruleset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateRuleset"
        operation.name = "CreateRuleset"
        operation.input = CreateRulesetRequest
        operation.output = CreateRulesetResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rulesets", "code" => 200}}
      end)
      service.add_operation(:create_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateSchedule"
        operation.name = "CreateSchedule"
        operation.input = CreateScheduleRequest
        operation.output = CreateScheduleResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/schedules", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = DeleteDatasetResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = DeleteJobRequest
        operation.output = DeleteJobResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/jobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = DeleteProjectRequest
        operation.output = DeleteProjectResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_recipe_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteRecipeVersion"
        operation.name = "DeleteRecipeVersion"
        operation.input = DeleteRecipeVersionRequest
        operation.output = DeleteRecipeVersionResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/recipes/{Name}/recipeVersion/{RecipeVersion}", "code" => 200}}
      end)
      service.add_operation(:delete_ruleset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteRuleset"
        operation.name = "DeleteRuleset"
        operation.input = DeleteRulesetRequest
        operation.output = DeleteRulesetResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rulesets/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteSchedule"
        operation.name = "DeleteSchedule"
        operation.input = DeleteScheduleRequest
        operation.output = DeleteScheduleResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/schedules/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = DescribeJobRequest
        operation.output = DescribeJobResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeJobRun"
        operation.name = "DescribeJobRun"
        operation.input = DescribeJobRunRequest
        operation.output = DescribeJobRunResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{Name}/jobRun/{RunId}", "code" => 200}}
      end)
      service.add_operation(:describe_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeProject"
        operation.name = "DescribeProject"
        operation.input = DescribeProjectRequest
        operation.output = DescribeProjectResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeRecipe"
        operation.name = "DescribeRecipe"
        operation.input = DescribeRecipeRequest
        operation.output = DescribeRecipeResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recipes/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_ruleset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeRuleset"
        operation.name = "DescribeRuleset"
        operation.input = DescribeRulesetRequest
        operation.output = DescribeRulesetResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rulesets/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeSchedule"
        operation.name = "DescribeSchedule"
        operation.input = DescribeScheduleRequest
        operation.output = DescribeScheduleResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/schedules/{Name}", "code" => 200}}
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_job_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListJobRuns"
        operation.name = "ListJobRuns"
        operation.input = ListJobRunsRequest
        operation.output = ListJobRunsResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{Name}/jobRuns", "code" => 200}}
        operation[:paginator] = Paginators::ListJobRuns.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsRequest
        operation.output = ListJobsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListProjects"
        operation.name = "ListProjects"
        operation.input = ListProjectsRequest
        operation.output = ListProjectsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects", "code" => 200}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_recipe_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListRecipeVersions"
        operation.name = "ListRecipeVersions"
        operation.input = ListRecipeVersionsRequest
        operation.output = ListRecipeVersionsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recipeVersions", "code" => 200}}
        operation[:paginator] = Paginators::ListRecipeVersions.new
      end)
      service.add_operation(:list_recipes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListRecipes"
        operation.name = "ListRecipes"
        operation.input = ListRecipesRequest
        operation.output = ListRecipesResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recipes", "code" => 200}}
        operation[:paginator] = Paginators::ListRecipes.new
      end)
      service.add_operation(:list_rulesets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListRulesets"
        operation.name = "ListRulesets"
        operation.input = ListRulesetsRequest
        operation.output = ListRulesetsResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rulesets", "code" => 200}}
        operation[:paginator] = Paginators::ListRulesets.new
      end)
      service.add_operation(:list_schedules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListSchedules"
        operation.name = "ListSchedules"
        operation.input = ListSchedulesRequest
        operation.output = ListSchedulesResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/schedules", "code" => 200}}
        operation[:paginator] = Paginators::ListSchedules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:publish_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#PublishRecipe"
        operation.name = "PublishRecipe"
        operation.input = PublishRecipeRequest
        operation.output = PublishRecipeResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipes/{Name}/publishRecipe", "code" => 200}}
      end)
      service.add_operation(:send_project_session_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#SendProjectSessionAction"
        operation.name = "SendProjectSessionAction"
        operation.input = SendProjectSessionActionRequest
        operation.output = SendProjectSessionActionResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{Name}/sendProjectSessionAction", "code" => 200}}
      end)
      service.add_operation(:start_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#StartJobRun"
        operation.name = "StartJobRun"
        operation.input = StartJobRunRequest
        operation.output = StartJobRunResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs/{Name}/startJobRun", "code" => 200}}
      end)
      service.add_operation(:start_project_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#StartProjectSession"
        operation.name = "StartProjectSession"
        operation.input = StartProjectSessionRequest
        operation.output = StartProjectSessionResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{Name}/startProjectSession", "code" => 200}}
      end)
      service.add_operation(:stop_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#StopJobRun"
        operation.name = "StopJobRun"
        operation.input = StopJobRunRequest
        operation.output = StopJobRunResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs/{Name}/jobRun/{RunId}/stopJobRun", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = UpdateDatasetRequest
        operation.output = UpdateDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_profile_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateProfileJob"
        operation.name = "UpdateProfileJob"
        operation.input = UpdateProfileJobRequest
        operation.output = UpdateProfileJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/profileJobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = UpdateProjectRequest
        operation.output = UpdateProjectResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateRecipe"
        operation.name = "UpdateRecipe"
        operation.input = UpdateRecipeRequest
        operation.output = UpdateRecipeResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/recipes/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_recipe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateRecipeJob"
        operation.name = "UpdateRecipeJob"
        operation.input = UpdateRecipeJobRequest
        operation.output = UpdateRecipeJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/recipeJobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_ruleset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateRuleset"
        operation.name = "UpdateRuleset"
        operation.input = UpdateRulesetRequest
        operation.output = UpdateRulesetResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/rulesets/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateSchedule"
        operation.name = "UpdateSchedule"
        operation.input = UpdateScheduleRequest
        operation.output = UpdateScheduleResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/schedules/{Name}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

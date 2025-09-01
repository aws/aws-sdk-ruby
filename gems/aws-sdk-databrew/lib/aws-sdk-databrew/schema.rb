# frozen_string_literal: true

# This is generated code!

module Aws::DataBrew
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ActionId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#ActionId', name: 'ActionId')
    AllowedStatisticList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#AllowedStatisticList', name: 'AllowedStatisticList', traits: {"smithy.api#length" => {"min" => 1}})
    AllowedStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#AllowedStatistics', name: 'AllowedStatistics')
    AnalyticsMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#AnalyticsMode', name: 'AnalyticsMode')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AssumeControl = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#AssumeControl', name: 'AssumeControl', traits: {"smithy.api#default" => false})
    Attempt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#Attempt', name: 'Attempt', traits: {"smithy.api#default" => 0})
    BatchDeleteRecipeVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#BatchDeleteRecipeVersionRequest', name: 'BatchDeleteRecipeVersionRequest')
    BatchDeleteRecipeVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#BatchDeleteRecipeVersionResponse', name: 'BatchDeleteRecipeVersionResponse')
    Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Bucket', name: 'Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    BucketOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#BucketOwner', name: 'BucketOwner', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    CatalogId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#CatalogId', name: 'CatalogId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ClientSessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ClientSessionId', name: 'ClientSessionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$", "smithy.api#sensitive" => {}})
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ColumnNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ColumnNameList', name: 'ColumnNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ColumnRange = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#ColumnRange', name: 'ColumnRange', traits: {"smithy.api#range" => {"min" => 0, "max" => 20}})
    ColumnSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ColumnSelector', name: 'ColumnSelector')
    ColumnSelectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ColumnSelectorList', name: 'ColumnSelectorList', traits: {"smithy.api#length" => {"min" => 1}})
    ColumnStatisticsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ColumnStatisticsConfiguration', name: 'ColumnStatisticsConfiguration')
    ColumnStatisticsConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ColumnStatisticsConfigurationList', name: 'ColumnStatisticsConfigurationList', traits: {"smithy.api#length" => {"min" => 1}})
    CompressionFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#CompressionFormat', name: 'CompressionFormat')
    Condition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Condition', name: 'Condition', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z\\_]+$"})
    ConditionExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ConditionExpression', name: 'ConditionExpression')
    ConditionExpressionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ConditionExpressionList', name: 'ConditionExpressionList')
    ConditionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ConditionValue', name: 'ConditionValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateColumn = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#CreateColumn', name: 'CreateColumn', traits: {"smithy.api#default" => false})
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateProfileJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateProfileJobRequest', name: 'CreateProfileJobRequest')
    CreateProfileJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateProfileJobResponse', name: 'CreateProfileJobResponse')
    CreateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateProjectResponse', name: 'CreateProjectResponse')
    CreateRecipeJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateRecipeJobRequest', name: 'CreateRecipeJobRequest')
    CreateRecipeJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateRecipeJobResponse', name: 'CreateRecipeJobResponse')
    CreateRecipeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateRecipeRequest', name: 'CreateRecipeRequest')
    CreateRecipeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateRecipeResponse', name: 'CreateRecipeResponse')
    CreateRulesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateRulesetRequest', name: 'CreateRulesetRequest')
    CreateRulesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateRulesetResponse', name: 'CreateRulesetResponse')
    CreateScheduleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateScheduleRequest', name: 'CreateScheduleRequest')
    CreateScheduleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CreateScheduleResponse', name: 'CreateScheduleResponse')
    CreatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#CreatedBy', name: 'CreatedBy')
    CronExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#CronExpression', name: 'CronExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CsvOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CsvOptions', name: 'CsvOptions')
    CsvOutputOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#CsvOutputOptions', name: 'CsvOutputOptions')
    DataCatalogInputDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DataCatalogInputDefinition', name: 'DataCatalogInputDefinition')
    DataCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DataCatalogOutput', name: 'DataCatalogOutput')
    DataCatalogOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#DataCatalogOutputList', name: 'DataCatalogOutputList', traits: {"smithy.api#length" => {"min" => 1}})
    DatabaseInputDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DatabaseInputDefinition', name: 'DatabaseInputDefinition')
    DatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#DatabaseName', name: 'DatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DatabaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DatabaseOutput', name: 'DatabaseOutput')
    DatabaseOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#DatabaseOutputList', name: 'DatabaseOutputList', traits: {"smithy.api#length" => {"min" => 1}})
    DatabaseOutputMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#DatabaseOutputMode', name: 'DatabaseOutputMode')
    DatabaseTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#DatabaseTableName', name: 'DatabaseTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DatabaseTableOutputOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DatabaseTableOutputOptions', name: 'DatabaseTableOutputOptions')
    Dataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Dataset', name: 'Dataset')
    DatasetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#DatasetList', name: 'DatasetList')
    DatasetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#DatasetName', name: 'DatasetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DatasetParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DatasetParameter', name: 'DatasetParameter')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.databrew#Date', name: 'Date')
    DatetimeFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#DatetimeFormat', name: 'DatetimeFormat', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}})
    DatetimeOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DatetimeOptions', name: 'DatetimeOptions')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteDatasetResponse', name: 'DeleteDatasetResponse')
    DeleteJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteJobRequest', name: 'DeleteJobRequest')
    DeleteJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteJobResponse', name: 'DeleteJobResponse')
    DeleteProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteProjectResponse', name: 'DeleteProjectResponse')
    DeleteRecipeVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteRecipeVersionRequest', name: 'DeleteRecipeVersionRequest')
    DeleteRecipeVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteRecipeVersionResponse', name: 'DeleteRecipeVersionResponse')
    DeleteRulesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteRulesetRequest', name: 'DeleteRulesetRequest')
    DeleteRulesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteRulesetResponse', name: 'DeleteRulesetResponse')
    DeleteScheduleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteScheduleRequest', name: 'DeleteScheduleRequest')
    DeleteScheduleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DeleteScheduleResponse', name: 'DeleteScheduleResponse')
    Delimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Delimiter', name: 'Delimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeJobRequest', name: 'DescribeJobRequest')
    DescribeJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeJobResponse', name: 'DescribeJobResponse')
    DescribeJobRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeJobRunRequest', name: 'DescribeJobRunRequest')
    DescribeJobRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeJobRunResponse', name: 'DescribeJobRunResponse')
    DescribeProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeProjectRequest', name: 'DescribeProjectRequest')
    DescribeProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeProjectResponse', name: 'DescribeProjectResponse')
    DescribeRecipeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeRecipeRequest', name: 'DescribeRecipeRequest')
    DescribeRecipeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeRecipeResponse', name: 'DescribeRecipeResponse')
    DescribeRulesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeRulesetRequest', name: 'DescribeRulesetRequest')
    DescribeRulesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeRulesetResponse', name: 'DescribeRulesetResponse')
    DescribeScheduleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeScheduleRequest', name: 'DescribeScheduleRequest')
    DescribeScheduleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#DescribeScheduleResponse', name: 'DescribeScheduleResponse')
    Disabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#Disabled', name: 'Disabled', traits: {"smithy.api#default" => false})
    EncryptionKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#EncryptionKeyArn', name: 'EncryptionKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    EncryptionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#EncryptionMode', name: 'EncryptionMode')
    EntityDetectorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#EntityDetectorConfiguration', name: 'EntityDetectorConfiguration')
    EntityType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#EntityType', name: 'EntityType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z_][A-Z\\\\d_]*$"})
    EntityTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#EntityTypeList', name: 'EntityTypeList', traits: {"smithy.api#length" => {"min" => 1}})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#pattern" => "^[1-5][0-9][0-9]$"})
    ExcelOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ExcelOptions', name: 'ExcelOptions')
    ExecutionTime = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#ExecutionTime', name: 'ExecutionTime', traits: {"smithy.api#default" => 0})
    Expression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Expression', name: 'Expression', traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^[<>0-9A-Za-z_.,:)(!= ]+$"})
    FilesLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#FilesLimit', name: 'FilesLimit')
    FilterExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#FilterExpression', name: 'FilterExpression')
    FormatOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#FormatOptions', name: 'FormatOptions')
    GlueConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#GlueConnectionName', name: 'GlueConnectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HeaderRow = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#HeaderRow', name: 'HeaderRow')
    HiddenColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#HiddenColumnList', name: 'HiddenColumnList')
    Input = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Input', name: 'Input')
    InputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#InputFormat', name: 'InputFormat')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Job', name: 'Job')
    JobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#JobList', name: 'JobList')
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 240}})
    JobNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#JobNameList', name: 'JobNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    JobRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#JobRun', name: 'JobRun')
    JobRunErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#JobRunErrorMessage', name: 'JobRunErrorMessage')
    JobRunId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#JobRunId', name: 'JobRunId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    JobRunList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#JobRunList', name: 'JobRunList')
    JobRunState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#JobRunState', name: 'JobRunState')
    JobSample = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#JobSample', name: 'JobSample')
    JobSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#JobSize', name: 'JobSize')
    JobType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#JobType', name: 'JobType')
    JsonOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#JsonOptions', name: 'JsonOptions')
    Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Key', name: 'Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1280}})
    LastModifiedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#LastModifiedBy', name: 'LastModifiedBy')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListJobRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListJobRunsRequest', name: 'ListJobRunsRequest')
    ListJobRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListJobRunsResponse', name: 'ListJobRunsResponse')
    ListJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListJobsResponse', name: 'ListJobsResponse')
    ListProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListProjectsRequest', name: 'ListProjectsRequest')
    ListProjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListProjectsResponse', name: 'ListProjectsResponse')
    ListRecipeVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListRecipeVersionsRequest', name: 'ListRecipeVersionsRequest')
    ListRecipeVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListRecipeVersionsResponse', name: 'ListRecipeVersionsResponse')
    ListRecipesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListRecipesRequest', name: 'ListRecipesRequest')
    ListRecipesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListRecipesResponse', name: 'ListRecipesResponse')
    ListRulesetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListRulesetsRequest', name: 'ListRulesetsRequest')
    ListRulesetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListRulesetsResponse', name: 'ListRulesetsResponse')
    ListSchedulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListSchedulesRequest', name: 'ListSchedulesRequest')
    ListSchedulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListSchedulesResponse', name: 'ListSchedulesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LocaleCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#LocaleCode', name: 'LocaleCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.\#@\\-]+$"})
    LogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogSubscription = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#LogSubscription', name: 'LogSubscription')
    MaxCapacity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#MaxCapacity', name: 'MaxCapacity', traits: {"smithy.api#default" => 0})
    MaxFiles = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#MaxFiles', name: 'MaxFiles', traits: {"smithy.api#range" => {"min" => 1}})
    MaxOutputFiles = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#MaxOutputFiles', name: 'MaxOutputFiles', traits: {"smithy.api#range" => {"min" => 1, "max" => 999}})
    MaxResults100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#MaxResults100', name: 'MaxResults100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxRetries = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#MaxRetries', name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Message', name: 'Message')
    Metadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Metadata', name: 'Metadata')
    MultiLine = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#MultiLine', name: 'MultiLine', traits: {"smithy.api#default" => false})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    OpenedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#OpenedBy', name: 'OpenedBy')
    Operation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Operation', name: 'Operation', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z\\_]+$"})
    Order = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#Order', name: 'Order')
    OrderedBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#OrderedBy', name: 'OrderedBy')
    Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Output', name: 'Output')
    OutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#OutputFormat', name: 'OutputFormat')
    OutputFormatOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#OutputFormatOptions', name: 'OutputFormatOptions')
    OutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#OutputList', name: 'OutputList', traits: {"smithy.api#length" => {"min" => 1}})
    OverwriteOutput = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#OverwriteOutput', name: 'OverwriteOutput', traits: {"smithy.api#default" => false})
    ParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.databrew#ParameterMap', name: 'ParameterMap')
    ParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ParameterName', name: 'ParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    ParameterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#ParameterType', name: 'ParameterType')
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    PathOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#PathOptions', name: 'PathOptions')
    PathParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#PathParameterName', name: 'PathParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PathParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.databrew#PathParametersMap', name: 'PathParametersMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Preview = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.databrew#Preview', name: 'Preview', traits: {"smithy.api#default" => false})
    ProfileConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ProfileConfiguration', name: 'ProfileConfiguration')
    Project = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Project', name: 'Project')
    ProjectList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ProjectList', name: 'ProjectList')
    ProjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ProjectName', name: 'ProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PublishRecipeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#PublishRecipeRequest', name: 'PublishRecipeRequest')
    PublishRecipeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#PublishRecipeResponse', name: 'PublishRecipeResponse')
    PublishedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#PublishedBy', name: 'PublishedBy')
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    Recipe = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Recipe', name: 'Recipe')
    RecipeAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#RecipeAction', name: 'RecipeAction')
    RecipeDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RecipeDescription', name: 'RecipeDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RecipeErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#RecipeErrorList', name: 'RecipeErrorList')
    RecipeErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RecipeErrorMessage', name: 'RecipeErrorMessage')
    RecipeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#RecipeList', name: 'RecipeList')
    RecipeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RecipeName', name: 'RecipeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RecipeReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#RecipeReference', name: 'RecipeReference')
    RecipeStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#RecipeStep', name: 'RecipeStep')
    RecipeStepList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#RecipeStepList', name: 'RecipeStepList')
    RecipeVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RecipeVersion', name: 'RecipeVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    RecipeVersionErrorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#RecipeVersionErrorDetail', name: 'RecipeVersionErrorDetail')
    RecipeVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#RecipeVersionList', name: 'RecipeVersionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Result = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Result', name: 'Result')
    RowRange = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#RowRange', name: 'RowRange')
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Rule', name: 'Rule')
    RuleCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#RuleCount', name: 'RuleCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    RuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#RuleList', name: 'RuleList', traits: {"smithy.api#length" => {"min" => 1}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RulesetDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RulesetDescription', name: 'RulesetDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RulesetItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#RulesetItem', name: 'RulesetItem')
    RulesetItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#RulesetItemList', name: 'RulesetItemList')
    RulesetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#RulesetName', name: 'RulesetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#S3Location', name: 'S3Location')
    S3TableOutputOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#S3TableOutputOptions', name: 'S3TableOutputOptions')
    Sample = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Sample', name: 'Sample')
    SampleMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#SampleMode', name: 'SampleMode')
    SampleSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#SampleSize', name: 'SampleSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    SampleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#SampleType', name: 'SampleType')
    Schedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Schedule', name: 'Schedule')
    ScheduleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ScheduleList', name: 'ScheduleList')
    ScheduleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ScheduleName', name: 'ScheduleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SendProjectSessionActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#SendProjectSessionActionRequest', name: 'SendProjectSessionActionRequest')
    SendProjectSessionActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#SendProjectSessionActionResponse', name: 'SendProjectSessionActionResponse')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#SessionStatus', name: 'SessionStatus')
    SheetIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#SheetIndex', name: 'SheetIndex', traits: {"smithy.api#range" => {"min" => 0, "max" => 200}})
    SheetIndexList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#SheetIndexList', name: 'SheetIndexList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SheetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#SheetName', name: 'SheetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 31}})
    SheetNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#SheetNameList', name: 'SheetNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Source = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#Source', name: 'Source')
    StartColumnIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#StartColumnIndex', name: 'StartColumnIndex', traits: {"smithy.api#range" => {"min" => 0}})
    StartJobRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StartJobRunRequest', name: 'StartJobRunRequest')
    StartJobRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StartJobRunResponse', name: 'StartJobRunResponse')
    StartProjectSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StartProjectSessionRequest', name: 'StartProjectSessionRequest')
    StartProjectSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StartProjectSessionResponse', name: 'StartProjectSessionResponse')
    StartRowIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#StartRowIndex', name: 'StartRowIndex', traits: {"smithy.api#range" => {"min" => 0}})
    StartedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#StartedBy', name: 'StartedBy')
    Statistic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#Statistic', name: 'Statistic', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Z\\_]+$"})
    StatisticList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#StatisticList', name: 'StatisticList', traits: {"smithy.api#length" => {"min" => 1}})
    StatisticOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StatisticOverride', name: 'StatisticOverride')
    StatisticOverrideList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#StatisticOverrideList', name: 'StatisticOverrideList', traits: {"smithy.api#length" => {"min" => 1}})
    StatisticsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StatisticsConfiguration', name: 'StatisticsConfiguration')
    StepIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#StepIndex', name: 'StepIndex', traits: {"smithy.api#range" => {"min" => 0}})
    StopJobRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StopJobRunRequest', name: 'StopJobRunRequest')
    StopJobRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#StopJobRunResponse', name: 'StopJobRunResponse')
    TableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#TableName', name: 'TableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.databrew#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetColumn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#TargetColumn', name: 'TargetColumn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Threshold = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#Threshold', name: 'Threshold')
    ThresholdType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#ThresholdType', name: 'ThresholdType')
    ThresholdUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#ThresholdUnit', name: 'ThresholdUnit')
    ThresholdValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.databrew#ThresholdValue', name: 'ThresholdValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Timeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.databrew#Timeout', name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    TimezoneOffset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#TimezoneOffset', name: 'TimezoneOffset', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^(Z|[-+](\\d|\\d{2}|\\d{2}:?\\d{2}))$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateDatasetRequest', name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateDatasetResponse', name: 'UpdateDatasetResponse')
    UpdateProfileJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateProfileJobRequest', name: 'UpdateProfileJobRequest')
    UpdateProfileJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateProfileJobResponse', name: 'UpdateProfileJobResponse')
    UpdateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateProjectRequest', name: 'UpdateProjectRequest')
    UpdateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateProjectResponse', name: 'UpdateProjectResponse')
    UpdateRecipeJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateRecipeJobRequest', name: 'UpdateRecipeJobRequest')
    UpdateRecipeJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateRecipeJobResponse', name: 'UpdateRecipeJobResponse')
    UpdateRecipeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateRecipeRequest', name: 'UpdateRecipeRequest')
    UpdateRecipeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateRecipeResponse', name: 'UpdateRecipeResponse')
    UpdateRulesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateRulesetRequest', name: 'UpdateRulesetRequest')
    UpdateRulesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateRulesetResponse', name: 'UpdateRulesetResponse')
    UpdateScheduleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateScheduleRequest', name: 'UpdateScheduleRequest')
    UpdateScheduleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#UpdateScheduleResponse', name: 'UpdateScheduleResponse')
    ValidationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ValidationConfiguration', name: 'ValidationConfiguration')
    ValidationConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.databrew#ValidationConfigurationList', name: 'ValidationConfigurationList', traits: {"smithy.api#length" => {"min" => 1}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.databrew#ValidationMode', name: 'ValidationMode')
    ValueReference = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.databrew#ValueReference', name: 'ValueReference', traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "^:[A-Za-z0-9_]+$"})
    ValuesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.databrew#ValuesMap', name: 'ValuesMap')
    ViewFrame = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.databrew#ViewFrame', name: 'ViewFrame')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowedStatisticList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedStatistics)
    AllowedStatistics.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticList, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>One or more column statistics to allow for columns that contain detected entities.</p>", "smithy.api#required" => {}}))
    AllowedStatistics.type = Types::AllowedStatistics
    AnalyticsMode.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE', traits: {"smithy.api#enumValue" => "ENABLE"}))
    AnalyticsMode.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "DISABLE"}))
    BatchDeleteRecipeVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe whose versions are to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteRecipeVersionRequest.add_member(:recipe_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersionList, location_name: 'RecipeVersions', traits: {"smithy.api#documentation" => "<p>An array of version identifiers, for the recipe versions to be deleted. You can\n            specify numeric versions (<code>X.Y</code>) or <code>LATEST_WORKING</code>.\n                <code>LATEST_PUBLISHED</code> is not supported.</p>", "smithy.api#required" => {}}))
    BatchDeleteRecipeVersionRequest.type = Types::BatchDeleteRecipeVersionRequest
    BatchDeleteRecipeVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe that was modified.</p>", "smithy.api#required" => {}}))
    BatchDeleteRecipeVersionResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Errors, if any, that occurred while attempting to delete the recipe versions.</p>"}))
    BatchDeleteRecipeVersionResponse.type = Types::BatchDeleteRecipeVersionResponse
    ColumnNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    ColumnSelector.add_member(:regex, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'Regex', traits: {"smithy.api#documentation" => "<p>A regular expression for selecting a column from a dataset.</p>"}))
    ColumnSelector.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a column from a dataset.</p>"}))
    ColumnSelector.type = Types::ColumnSelector
    ColumnSelectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnSelector)
    ColumnStatisticsConfiguration.add_member(:selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnSelectorList, location_name: 'Selectors', traits: {"smithy.api#documentation" => "<p>List of column selectors. Selectors can be used to select columns from the dataset. \n            When selectors are undefined, configuration will be applied to all supported columns.\n        </p>"}))
    ColumnStatisticsConfiguration.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticsConfiguration, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>Configuration for evaluations. Statistics can be used to select evaluations and override \n            parameters of evaluations. \n        </p>", "smithy.api#required" => {}}))
    ColumnStatisticsConfiguration.type = Types::ColumnStatisticsConfiguration
    ColumnStatisticsConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnStatisticsConfiguration)
    CompressionFormat.add_member(:gzip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GZIP', traits: {"smithy.api#enumValue" => "GZIP"}))
    CompressionFormat.add_member(:lz4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LZ4', traits: {"smithy.api#enumValue" => "LZ4"}))
    CompressionFormat.add_member(:snappy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPPY', traits: {"smithy.api#enumValue" => "SNAPPY"}))
    CompressionFormat.add_member(:bzip2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BZIP2', traits: {"smithy.api#enumValue" => "BZIP2"}))
    CompressionFormat.add_member(:deflate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFLATE', traits: {"smithy.api#enumValue" => "DEFLATE"}))
    CompressionFormat.add_member(:lzo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LZO', traits: {"smithy.api#enumValue" => "LZO"}))
    CompressionFormat.add_member(:brotli, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BROTLI', traits: {"smithy.api#enumValue" => "BROTLI"}))
    CompressionFormat.add_member(:zstd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZSTD', traits: {"smithy.api#enumValue" => "ZSTD"}))
    CompressionFormat.add_member(:zlib, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZLIB', traits: {"smithy.api#enumValue" => "ZLIB"}))
    ConditionExpression.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>A specific condition to apply to a recipe action. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/recipes.html#recipes.structure\">Recipe\n            structure</a> in the <i>Glue DataBrew Developer\n            Guide</i>.</p>", "smithy.api#required" => {}}))
    ConditionExpression.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A value that the condition must evaluate to for the condition to succeed.</p>"}))
    ConditionExpression.add_member(:target_column, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetColumn, location_name: 'TargetColumn', traits: {"smithy.api#documentation" => "<p>A column to apply this condition to.</p>", "smithy.api#required" => {}}))
    ConditionExpression.type = Types::ConditionExpression
    ConditionExpressionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z,\n            0-9), hyphen (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>"}))
    CreateDatasetRequest.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOptions, location_name: 'FormatOptions'))
    CreateDatasetRequest.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:path_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PathOptions, location_name: 'PathOptions', traits: {"smithy.api#documentation" => "<p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>"}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to this dataset.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset that you created.</p>", "smithy.api#required" => {}}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateProfileJobRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset that this job is to act upon.</p>", "smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the\n            job.</p>"}))
    CreateProfileJobRequest.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode for the job, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSE-KMS</code> - <code>SSE-KMS</code> - Server-side encryption with \n                    KMS-managed keys.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>\n            </li>\n         </ul>"}))
    CreateProfileJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9),\n            hyphen (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,\n            CloudWatch writes one log stream for each job run.</p>"}))
    CreateProfileJobRequest.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of nodes that DataBrew can use when the job processes data.</p>"}))
    CreateProfileJobRequest.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times to retry the job after a job run fails.</p>"}))
    CreateProfileJobRequest.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'OutputLocation', traits: {"smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>Configuration for profile jobs. Used to select columns, do evaluations, \n            and override default parameters of evaluations. When configuration is null, the\n            profile job will run with default settings.</p>"}))
    CreateProfileJobRequest.add_member(:validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: 'ValidationConfigurations', traits: {"smithy.api#documentation" => "<p>List of validation configurations that are applied to the profile job.</p>"}))
    CreateProfileJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to\n            be assumed when DataBrew runs the job.</p>", "smithy.api#required" => {}}))
    CreateProfileJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to this job.</p>"}))
    CreateProfileJobRequest.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The job's timeout in minutes. A job that attempts to run longer than this timeout\n            period ends with a status of <code>TIMEOUT</code>.</p>"}))
    CreateProfileJobRequest.add_member(:job_sample, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSample, location_name: 'JobSample', traits: {"smithy.api#documentation" => "<p>Sample configuration for profile jobs only. Determines the number of rows on which the\n            profile job will be executed. If a JobSample value is not provided, the default value\n            will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the\n            size parameter.</p>"}))
    CreateProfileJobRequest.type = Types::CreateProfileJobRequest
    CreateProfileJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job that was created.</p>", "smithy.api#required" => {}}))
    CreateProfileJobResponse.type = Types::CreateProfileJobResponse
    CreateProjectRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of an existing dataset to associate this project with.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9),\n            hyphen (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:recipe_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'RecipeName', traits: {"smithy.api#documentation" => "<p>The name of an existing recipe to associate with the project.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:sample, Smithy::Schema::Shapes::ShapeRef.new(shape: Sample, location_name: 'Sample'))
    CreateProjectRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to\n            be assumed for this request.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to this project.</p>"}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project that you created.</p>", "smithy.api#required" => {}}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    CreateRecipeJobRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset that this job processes.</p>"}))
    CreateRecipeJobRequest.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the\n            job.</p>"}))
    CreateRecipeJobRequest.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode for the job, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>\n            </li>\n         </ul>"}))
    CreateRecipeJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen\n            (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateRecipeJobRequest.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,\n            CloudWatch writes one log stream for each job run.</p>"}))
    CreateRecipeJobRequest.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of nodes that DataBrew can consume when the job processes\n            data.</p>"}))
    CreateRecipeJobRequest.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times to retry the job after a job run fails.</p>"}))
    CreateRecipeJobRequest.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the output from running the job.</p>"}))
    CreateRecipeJobRequest.add_member(:data_catalog_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: 'DataCatalogOutputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"}))
    CreateRecipeJobRequest.add_member(:database_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: 'DatabaseOutputs', traits: {"smithy.api#documentation" => "<p>Represents a list of JDBC database output objects which defines the output destination for \n            a DataBrew recipe job to write to. </p>"}))
    CreateRecipeJobRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>Either the name of an existing project, or a combination of a recipe and a dataset to\n            associate with the recipe.</p>"}))
    CreateRecipeJobRequest.add_member(:recipe_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeReference, location_name: 'RecipeReference'))
    CreateRecipeJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to\n            be assumed when DataBrew runs the job.</p>", "smithy.api#required" => {}}))
    CreateRecipeJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to this job.</p>"}))
    CreateRecipeJobRequest.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The job's timeout in minutes. A job that attempts to run longer than this timeout\n            period ends with a status of <code>TIMEOUT</code>.</p>"}))
    CreateRecipeJobRequest.type = Types::CreateRecipeJobRequest
    CreateRecipeJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job that you created.</p>", "smithy.api#required" => {}}))
    CreateRecipeJobResponse.type = Types::CreateRecipeJobResponse
    CreateRecipeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the recipe.</p>"}))
    CreateRecipeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9),\n            hyphen (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateRecipeRequest.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeStepList, location_name: 'Steps', traits: {"smithy.api#documentation" => "<p>An array containing the steps to be performed by the recipe. Each recipe step consists\n            of one recipe action and (optionally) an array of condition expressions.</p>", "smithy.api#required" => {}}))
    CreateRecipeRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to this recipe.</p>"}))
    CreateRecipeRequest.type = Types::CreateRecipeRequest
    CreateRecipeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe that you created.</p>", "smithy.api#required" => {}}))
    CreateRecipeResponse.type = Types::CreateRecipeResponse
    CreateRulesetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ruleset to be created. Valid characters are alphanumeric \n            (A-Z, a-z, 0-9), hyphen (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateRulesetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the ruleset.</p>"}))
    CreateRulesetRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a resource (dataset) that the \n            ruleset is associated with.</p>", "smithy.api#required" => {}}))
    CreateRulesetRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>A list of rules that are defined with the ruleset. A rule includes \n            one or more checks to be validated on a DataBrew dataset.</p>", "smithy.api#required" => {}}))
    CreateRulesetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to the ruleset.</p>"}))
    CreateRulesetRequest.type = Types::CreateRulesetRequest
    CreateRulesetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the created ruleset.</p>", "smithy.api#required" => {}}))
    CreateRulesetResponse.type = Types::CreateRulesetResponse
    CreateScheduleRequest.add_member(:job_names, Smithy::Schema::Shapes::ShapeRef.new(shape: JobNameList, location_name: 'JobNames', traits: {"smithy.api#documentation" => "<p>The name or names of one or more jobs to be run.</p>"}))
    CreateScheduleRequest.add_member(:cron_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: CronExpression, location_name: 'CronExpression', traits: {"smithy.api#documentation" => "<p>The date or dates and time or times when the jobs are to be run. For more information,\n            see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron\n                expressions</a> in the <i>Glue DataBrew Developer\n            Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateScheduleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags to apply to this schedule.</p>"}))
    CreateScheduleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9),\n            hyphen (-), period (.), and space.</p>", "smithy.api#required" => {}}))
    CreateScheduleRequest.type = Types::CreateScheduleRequest
    CreateScheduleResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule that was created.</p>", "smithy.api#required" => {}}))
    CreateScheduleResponse.type = Types::CreateScheduleResponse
    CsvOptions.add_member(:delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: Delimiter, location_name: 'Delimiter', traits: {"smithy.api#documentation" => "<p>A single character that specifies the delimiter being used in the CSV file.</p>"}))
    CsvOptions.add_member(:header_row, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderRow, location_name: 'HeaderRow', traits: {"smithy.api#documentation" => "<p>A variable that specifies whether the first row in the file is parsed as the\n            header. If this value is false, column names are auto-generated.</p>"}))
    CsvOptions.type = Types::CsvOptions
    CsvOutputOptions.add_member(:delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: Delimiter, location_name: 'Delimiter', traits: {"smithy.api#documentation" => "<p>A single character that specifies the delimiter used to create CSV job output.</p>"}))
    CsvOutputOptions.type = Types::CsvOutputOptions
    DataCatalogInputDefinition.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogId, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Web Services account that holds the Data Catalog that stores the\n            data.</p>"}))
    DataCatalogInputDefinition.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of a database in the Data Catalog.</p>", "smithy.api#required" => {}}))
    DataCatalogInputDefinition.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of a database table in the Data Catalog. This table corresponds to a DataBrew\n            dataset.</p>", "smithy.api#required" => {}}))
    DataCatalogInputDefinition.add_member(:temp_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'TempDirectory', traits: {"smithy.api#documentation" => "<p>Represents an Amazon location where DataBrew can store intermediate results.</p>"}))
    DataCatalogInputDefinition.type = Types::DataCatalogInputDefinition
    DataCatalogOutput.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogId, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Web Services account that holds the Data Catalog that \n            stores the data.</p>"}))
    DataCatalogOutput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of a database in the Data Catalog.</p>", "smithy.api#required" => {}}))
    DataCatalogOutput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of a table in the Data Catalog.</p>", "smithy.api#required" => {}}))
    DataCatalogOutput.add_member(:s3_options, Smithy::Schema::Shapes::ShapeRef.new(shape: S3TableOutputOptions, location_name: 'S3Options', traits: {"smithy.api#documentation" => "<p>Represents options that specify how and where DataBrew writes the Amazon S3 \n            output generated by recipe jobs.</p>"}))
    DataCatalogOutput.add_member(:database_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseTableOutputOptions, location_name: 'DatabaseOptions', traits: {"smithy.api#documentation" => "<p>Represents options that specify how and where DataBrew writes the database output \n            generated by recipe jobs.</p>"}))
    DataCatalogOutput.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteOutput, location_name: 'Overwrite', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that, if true, means that any data in the location specified for output \n            is overwritten with new output. Not supported with DatabaseOptions.</p>"}))
    DataCatalogOutput.type = Types::DataCatalogOutput
    DataCatalogOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutput)
    DatabaseInputDefinition.add_member(:glue_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueConnectionName, location_name: 'GlueConnectionName', traits: {"smithy.api#documentation" => "<p>The Glue Connection that stores the connection information for the target\n            database.</p>", "smithy.api#required" => {}}))
    DatabaseInputDefinition.add_member(:database_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseTableName, location_name: 'DatabaseTableName', traits: {"smithy.api#documentation" => "<p>The table within the target database.</p>"}))
    DatabaseInputDefinition.add_member(:temp_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'TempDirectory'))
    DatabaseInputDefinition.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>Custom SQL to run against the provided Glue connection. This SQL will be used as \n            the input for DataBrew projects and jobs.</p>"}))
    DatabaseInputDefinition.type = Types::DatabaseInputDefinition
    DatabaseOutput.add_member(:glue_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueConnectionName, location_name: 'GlueConnectionName', traits: {"smithy.api#documentation" => "<p>The Glue connection that stores the connection information for the \n            target database.</p>", "smithy.api#required" => {}}))
    DatabaseOutput.add_member(:database_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseTableOutputOptions, location_name: 'DatabaseOptions', traits: {"smithy.api#documentation" => "<p>Represents options that specify how and where DataBrew writes the database output \n            generated by recipe jobs.</p>", "smithy.api#required" => {}}))
    DatabaseOutput.add_member(:database_output_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputMode, location_name: 'DatabaseOutputMode', traits: {"smithy.api#documentation" => "<p>The output mode to write into the database. Currently supported option: NEW_TABLE.</p>"}))
    DatabaseOutput.type = Types::DatabaseOutput
    DatabaseOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutput)
    DatabaseOutputMode.add_member(:new_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_TABLE', traits: {"smithy.api#enumValue" => "NEW_TABLE"}))
    DatabaseTableOutputOptions.add_member(:temp_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'TempDirectory', traits: {"smithy.api#documentation" => "<p>Represents an Amazon S3 location (bucket name and object key) where DataBrew can store \n            intermediate results.</p>"}))
    DatabaseTableOutputOptions.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseTableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>A prefix for the name of a table DataBrew will create in the database.</p>", "smithy.api#required" => {}}))
    DatabaseTableOutputOptions.type = Types::DatabaseTableOutputOptions
    Dataset.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the dataset.</p>"}))
    Dataset.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the dataset.</p>"}))
    Dataset.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the dataset was created.</p>"}))
    Dataset.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the dataset.</p>", "smithy.api#required" => {}}))
    Dataset.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>"}))
    Dataset.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOptions, location_name: 'FormatOptions', traits: {"smithy.api#documentation" => "<p>A set of options that define how DataBrew interprets the data in the dataset.</p>"}))
    Dataset.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#documentation" => "<p>Information on how DataBrew can find the dataset, in either the Glue Data Catalog\n            or Amazon S3.</p>", "smithy.api#required" => {}}))
    Dataset.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The last modification date and time of the dataset.</p>"}))
    Dataset.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the dataset.</p>"}))
    Dataset.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The location of the data for the dataset, either Amazon S3 or the Glue Data Catalog.</p>"}))
    Dataset.add_member(:path_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PathOptions, location_name: 'PathOptions', traits: {"smithy.api#documentation" => "<p>A set of options that defines how DataBrew interprets an Amazon S3 \n            path of the dataset.</p>"}))
    Dataset.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the dataset.</p>"}))
    Dataset.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) for the dataset.</p>"}))
    Dataset.type = Types::Dataset
    DatasetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset)
    DatasetParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PathParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parameter that is used in the dataset's Amazon S3 path.</p>", "smithy.api#required" => {}}))
    DatasetParameter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the dataset parameter, can be one of a 'String', 'Number' or 'Datetime'.</p>", "smithy.api#required" => {}}))
    DatasetParameter.add_member(:datetime_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeOptions, location_name: 'DatetimeOptions', traits: {"smithy.api#documentation" => "<p>Additional parameter options such as a format and a timezone. Required for datetime parameters.</p>"}))
    DatasetParameter.add_member(:create_column, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateColumn, location_name: 'CreateColumn', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean value that defines whether the captured value of this parameter \n            should be used to create a new column in a dataset.</p>"}))
    DatasetParameter.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>The optional filter expression structure to apply additional matching criteria to the parameter.</p>"}))
    DatasetParameter.type = Types::DatasetParameter
    DatetimeOptions.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>Required option, that defines the datetime format used for a date parameter in the \n            Amazon S3 path. Should use only supported datetime specifiers and separation characters, all \n            literal a-z or A-Z characters should be escaped with single quotes. E.g. \"MM.dd.yyyy-'at'-HH:mm\".</p>", "smithy.api#required" => {}}))
    DatetimeOptions.add_member(:timezone_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: TimezoneOffset, location_name: 'TimezoneOffset', traits: {"smithy.api#documentation" => "<p>Optional value for a timezone offset of the datetime parameter value in the Amazon S3 \n            path. Shouldn't be used if Format for this parameter includes timezone fields.\n            If no offset specified, UTC is assumed.</p>"}))
    DatetimeOptions.add_member(:locale_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleCode, location_name: 'LocaleCode', traits: {"smithy.api#documentation" => "<p>Optional value for a non-US locale code, needed for correct interpretation of some date formats.</p>"}))
    DatetimeOptions.type = Types::DatetimeOptions
    DeleteDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset that you deleted.</p>", "smithy.api#required" => {}}))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.type = Types::DeleteJobRequest
    DeleteJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job that you deleted.</p>", "smithy.api#required" => {}}))
    DeleteJobResponse.type = Types::DeleteJobResponse
    DeleteProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project that you deleted.</p>", "smithy.api#required" => {}}))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteRecipeVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecipeVersionRequest.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The version of the recipe to be deleted. You can specify a numeric versions\n                (<code>X.Y</code>) or <code>LATEST_WORKING</code>. <code>LATEST_PUBLISHED</code> is\n            not supported.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecipeVersionRequest.type = Types::DeleteRecipeVersionRequest
    DeleteRecipeVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteRecipeVersionResponse.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The version of the recipe that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteRecipeVersionResponse.type = Types::DeleteRecipeVersionResponse
    DeleteRulesetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ruleset to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRulesetRequest.type = Types::DeleteRulesetRequest
    DeleteRulesetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the deleted ruleset.</p>", "smithy.api#required" => {}}))
    DeleteRulesetResponse.type = Types::DeleteRulesetResponse
    DeleteScheduleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScheduleRequest.type = Types::DeleteScheduleRequest
    DeleteScheduleResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteScheduleResponse.type = Types::DeleteScheduleResponse
    DescribeDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who created the dataset.</p>"}))
    DescribeDatasetResponse.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the dataset was created.</p>"}))
    DescribeDatasetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The file format of a dataset that is created from an Amazon S3 file \n            or folder.</p>"}))
    DescribeDatasetResponse.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOptions, location_name: 'FormatOptions'))
    DescribeDatasetResponse.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the dataset was last modified.</p>"}))
    DescribeDatasetResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who last modified the dataset.</p>"}))
    DescribeDatasetResponse.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The location of the data for this dataset, Amazon S3 or the \n            Glue Data Catalog.</p>"}))
    DescribeDatasetResponse.add_member(:path_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PathOptions, location_name: 'PathOptions', traits: {"smithy.api#documentation" => "<p>A set of options that defines how DataBrew interprets an Amazon S3 \n            path of the dataset.</p>"}))
    DescribeDatasetResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags associated with this dataset.</p>"}))
    DescribeDatasetResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset.</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRequest.type = Types::DescribeJobRequest
    DescribeJobResponse.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the job was created.</p>"}))
    DescribeJobResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user associated with the creation of the job.</p>"}))
    DescribeJobResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The dataset that the job acts upon.</p>"}))
    DescribeJobResponse.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the\n            job.</p>"}))
    DescribeJobResponse.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode for the job, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon\n                    S3.</p>\n            </li>\n         </ul>"}))
    DescribeJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job.</p>", "smithy.api#required" => {}}))
    DescribeJobResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The job type, which must be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PROFILE</code> - The job analyzes the dataset to determine its size,\n                    data types, data distribution, and more.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RECIPE</code> - The job applies one or more transformations to a\n                    dataset.</p>\n            </li>\n         </ul>"}))
    DescribeJobResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who last modified the job.</p>"}))
    DescribeJobResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the job was last modified.</p>"}))
    DescribeJobResponse.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>Indicates whether Amazon CloudWatch logging is enabled for this job.</p>"}))
    DescribeJobResponse.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of compute nodes that DataBrew can consume when the job processes\n            data.</p>"}))
    DescribeJobResponse.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times to retry the job after a job run fails.</p>"}))
    DescribeJobResponse.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the output from running the job.</p>"}))
    DescribeJobResponse.add_member(:data_catalog_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: 'DataCatalogOutputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"}))
    DescribeJobResponse.add_member(:database_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: 'DatabaseOutputs', traits: {"smithy.api#documentation" => "<p>Represents a list of JDBC database output objects which defines the output \n            destination for a DataBrew recipe job to write into.</p>"}))
    DescribeJobResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The DataBrew project associated with this job.</p>"}))
    DescribeJobResponse.add_member(:profile_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: 'ProfileConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for profile jobs. Used to select columns, do evaluations, \n            and override default parameters of evaluations. When configuration is null, the\n            profile job will run with default settings.</p>"}))
    DescribeJobResponse.add_member(:validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: 'ValidationConfigurations', traits: {"smithy.api#documentation" => "<p>List of validation configurations that are applied to the profile job.</p>"}))
    DescribeJobResponse.add_member(:recipe_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeReference, location_name: 'RecipeReference'))
    DescribeJobResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the job.</p>"}))
    DescribeJobResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity and Access Management (IAM) role to be assumed when\n            DataBrew runs the job.</p>"}))
    DescribeJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags associated with this job.</p>"}))
    DescribeJobResponse.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The job's timeout in minutes. A job that attempts to run longer than this timeout\n            period ends with a status of <code>TIMEOUT</code>.</p>"}))
    DescribeJobResponse.add_member(:job_sample, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSample, location_name: 'JobSample', traits: {"smithy.api#documentation" => "<p>Sample configuration for profile jobs only. Determines the number of rows on which the\n            profile job will be executed.</p>"}))
    DescribeJobResponse.type = Types::DescribeJobResponse
    DescribeJobRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job being processed during this run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the job run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRunRequest.type = Types::DescribeJobRunRequest
    DescribeJobRunResponse.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: Attempt, location_name: 'Attempt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of times that DataBrew has attempted to run the job.</p>"}))
    DescribeJobRunResponse.add_member(:completed_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CompletedOn', traits: {"smithy.api#documentation" => "<p>The date and time when the job completed processing.</p>"}))
    DescribeJobRunResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset for the job to process.</p>"}))
    DescribeJobRunResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message indicating an error (if any) that was encountered when the job ran.</p>"}))
    DescribeJobRunResponse.add_member(:execution_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTime, location_name: 'ExecutionTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time, in seconds, during which the job run consumed resources.</p>"}))
    DescribeJobRunResponse.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the job being processed during this run.</p>", "smithy.api#required" => {}}))
    DescribeJobRunResponse.add_member(:profile_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: 'ProfileConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for profile jobs. Used to select columns, do evaluations, \n            and override default parameters of evaluations. When configuration is null, the\n            profile job will run with default settings.</p>"}))
    DescribeJobRunResponse.add_member(:validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: 'ValidationConfigurations', traits: {"smithy.api#documentation" => "<p>List of validation configurations that are applied to the profile job.</p>"}))
    DescribeJobRunResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the job run.</p>"}))
    DescribeJobRunResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the job run entity itself.</p>"}))
    DescribeJobRunResponse.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>The current status of Amazon CloudWatch logging for the job run.</p>"}))
    DescribeJobRunResponse.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "<p>The name of an Amazon CloudWatch log group, where the job writes diagnostic messages\n            when it runs.</p>"}))
    DescribeJobRunResponse.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>One or more output artifacts from a job run.</p>"}))
    DescribeJobRunResponse.add_member(:data_catalog_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: 'DataCatalogOutputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"}))
    DescribeJobRunResponse.add_member(:database_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: 'DatabaseOutputs', traits: {"smithy.api#documentation" => "<p>Represents a list of JDBC database output objects which defines the output \n            destination for a DataBrew recipe job to write into.</p>"}))
    DescribeJobRunResponse.add_member(:recipe_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeReference, location_name: 'RecipeReference'))
    DescribeJobRunResponse.add_member(:started_by, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedBy, location_name: 'StartedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who started the job run.</p>"}))
    DescribeJobRunResponse.add_member(:started_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartedOn', traits: {"smithy.api#documentation" => "<p>The date and time when the job run began.</p>"}))
    DescribeJobRunResponse.add_member(:job_sample, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSample, location_name: 'JobSample', traits: {"smithy.api#documentation" => "<p>Sample configuration for profile jobs only. Determines the number of rows on which the\n            profile job will be executed. If a JobSample value is not provided, the default value\n            will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the\n            size parameter.</p>"}))
    DescribeJobRunResponse.type = Types::DescribeJobRunResponse
    DescribeProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProjectRequest.type = Types::DescribeProjectRequest
    DescribeProjectResponse.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the project was created.</p>"}))
    DescribeProjectResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who created the project.</p>"}))
    DescribeProjectResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The dataset associated with the project.</p>"}))
    DescribeProjectResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the project was last modified.</p>"}))
    DescribeProjectResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who last modified the project.</p>"}))
    DescribeProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:recipe_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'RecipeName', traits: {"smithy.api#documentation" => "<p>The recipe associated with this job.</p>"}))
    DescribeProjectResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project.</p>"}))
    DescribeProjectResponse.add_member(:sample, Smithy::Schema::Shapes::ShapeRef.new(shape: Sample, location_name: 'Sample'))
    DescribeProjectResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity and Access Management (IAM) role to be assumed when\n            DataBrew runs the job.</p>"}))
    DescribeProjectResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags associated with this project.</p>"}))
    DescribeProjectResponse.add_member(:session_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'SessionStatus', traits: {"smithy.api#documentation" => "<p>Describes the current state of the session:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PROVISIONING</code> - allocating resources for the session.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INITIALIZING</code> - getting the session ready for first use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ASSIGNED</code> - the session is ready for use.</p>\n            </li>\n         </ul>"}))
    DescribeProjectResponse.add_member(:opened_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenedBy, location_name: 'OpenedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user that opened the project for use. </p>"}))
    DescribeProjectResponse.add_member(:open_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'OpenDate', traits: {"smithy.api#documentation" => "<p>The date and time when the project was opened. </p>"}))
    DescribeProjectResponse.type = Types::DescribeProjectResponse
    DescribeRecipeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecipeRequest.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The recipe version identifier. If this parameter isn't specified, then the latest\n            published version is returned.</p>", "smithy.api#httpQuery" => "recipeVersion"}))
    DescribeRecipeRequest.type = Types::DescribeRecipeRequest
    DescribeRecipeResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who created the recipe.</p>"}))
    DescribeRecipeResponse.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the recipe was created.</p>"}))
    DescribeRecipeResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who last modified the recipe.</p>"}))
    DescribeRecipeResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the recipe was last modified.</p>"}))
    DescribeRecipeResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project associated with this recipe.</p>"}))
    DescribeRecipeResponse.add_member(:published_by, Smithy::Schema::Shapes::ShapeRef.new(shape: PublishedBy, location_name: 'PublishedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who last published the recipe.</p>"}))
    DescribeRecipeResponse.add_member(:published_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'PublishedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the recipe was last published.</p>"}))
    DescribeRecipeResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the recipe.</p>"}))
    DescribeRecipeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe.</p>", "smithy.api#required" => {}}))
    DescribeRecipeResponse.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeStepList, location_name: 'Steps', traits: {"smithy.api#documentation" => "<p>One or more steps to be performed by the recipe. Each step consists of an action, and\n            the conditions under which the action should succeed.</p>"}))
    DescribeRecipeResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags associated with this project.</p>"}))
    DescribeRecipeResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the recipe.</p>"}))
    DescribeRecipeResponse.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The recipe version identifier.</p>"}))
    DescribeRecipeResponse.type = Types::DescribeRecipeResponse
    DescribeRulesetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ruleset to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRulesetRequest.type = Types::DescribeRulesetRequest
    DescribeRulesetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ruleset.</p>", "smithy.api#required" => {}}))
    DescribeRulesetResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the ruleset.</p>"}))
    DescribeRulesetResponse.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is \n            associated with.</p>"}))
    DescribeRulesetResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>A list of rules that are defined with the ruleset. A rule includes one \n            or more checks to be validated on a DataBrew dataset.</p>"}))
    DescribeRulesetResponse.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the ruleset was created.</p>"}))
    DescribeRulesetResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the ruleset.</p>"}))
    DescribeRulesetResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the ruleset.</p>"}))
    DescribeRulesetResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The modification date and time of the ruleset.</p>"}))
    DescribeRulesetResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ruleset.</p>"}))
    DescribeRulesetResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the ruleset.</p>"}))
    DescribeRulesetResponse.type = Types::DescribeRulesetResponse
    DescribeScheduleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeScheduleRequest.type = Types::DescribeScheduleRequest
    DescribeScheduleResponse.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the schedule was created.</p>"}))
    DescribeScheduleResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who created the schedule. </p>"}))
    DescribeScheduleResponse.add_member(:job_names, Smithy::Schema::Shapes::ShapeRef.new(shape: JobNameList, location_name: 'JobNames', traits: {"smithy.api#documentation" => "<p>The name or names of one or more jobs to be run by using the schedule.</p>"}))
    DescribeScheduleResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The identifier (user name) of the user who last modified the schedule.</p>"}))
    DescribeScheduleResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the schedule was last modified.</p>"}))
    DescribeScheduleResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schedule.</p>"}))
    DescribeScheduleResponse.add_member(:cron_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: CronExpression, location_name: 'CronExpression', traits: {"smithy.api#documentation" => "<p>The date or dates and time or times when the jobs are to be run for the schedule. For\n            more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron expressions</a> in the\n            <i>Glue DataBrew Developer Guide</i>.</p>"}))
    DescribeScheduleResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags associated with this schedule.</p>"}))
    DescribeScheduleResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule.</p>", "smithy.api#required" => {}}))
    DescribeScheduleResponse.type = Types::DescribeScheduleResponse
    EncryptionMode.add_member(:ssekms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSEKMS', traits: {"smithy.api#enumValue" => "SSE-KMS"}))
    EncryptionMode.add_member(:sses3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSES3', traits: {"smithy.api#enumValue" => "SSE-S3"}))
    EntityDetectorConfiguration.add_member(:entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypeList, location_name: 'EntityTypes', traits: {"smithy.api#documentation" => "<p>Entity types to detect. Can be any of the following:</p>\n         <ul>\n            <li>\n               <p>USA_SSN</p>\n            </li>\n            <li>\n               <p>EMAIL</p>\n            </li>\n            <li>\n               <p>USA_ITIN</p>\n            </li>\n            <li>\n               <p>USA_PASSPORT_NUMBER</p>\n            </li>\n            <li>\n               <p>PHONE_NUMBER</p>\n            </li>\n            <li>\n               <p>USA_DRIVING_LICENSE</p>\n            </li>\n            <li>\n               <p>BANK_ACCOUNT</p>\n            </li>\n            <li>\n               <p>CREDIT_CARD</p>\n            </li>\n            <li>\n               <p>IP_ADDRESS</p>\n            </li>\n            <li>\n               <p>MAC_ADDRESS</p>\n            </li>\n            <li>\n               <p>USA_DEA_NUMBER</p>\n            </li>\n            <li>\n               <p>USA_HCPCS_CODE</p>\n            </li>\n            <li>\n               <p>USA_NATIONAL_PROVIDER_IDENTIFIER</p>\n            </li>\n            <li>\n               <p>USA_NATIONAL_DRUG_CODE</p>\n            </li>\n            <li>\n               <p>USA_HEALTH_INSURANCE_CLAIM_NUMBER</p>\n            </li>\n            <li>\n               <p>USA_MEDICARE_BENEFICIARY_IDENTIFIER</p>\n            </li>\n            <li>\n               <p>USA_CPT_CODE</p>\n            </li>\n            <li>\n               <p>PERSON_NAME</p>\n            </li>\n            <li>\n               <p>DATE</p>\n            </li>\n         </ul>\n         <p>The Entity type group USA_ALL is also supported, and includes all of the \n            above entity types except PERSON_NAME and DATE.</p>", "smithy.api#required" => {}}))
    EntityDetectorConfiguration.add_member(:allowed_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedStatisticList, location_name: 'AllowedStatistics', traits: {"smithy.api#documentation" => "<p>Configuration of statistics that are allowed to be run on columns that \n            contain detected entities. When undefined, no statistics will be computed \n            on columns that contain detected entities.</p>"}))
    EntityDetectorConfiguration.type = Types::EntityDetectorConfiguration
    EntityTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType)
    ExcelOptions.add_member(:sheet_names, Smithy::Schema::Shapes::ShapeRef.new(shape: SheetNameList, location_name: 'SheetNames', traits: {"smithy.api#documentation" => "<p>One or more named sheets in the Excel file that will be included in the dataset.</p>"}))
    ExcelOptions.add_member(:sheet_indexes, Smithy::Schema::Shapes::ShapeRef.new(shape: SheetIndexList, location_name: 'SheetIndexes', traits: {"smithy.api#documentation" => "<p>One or more sheet numbers in the Excel file that will be included in the\n            dataset.</p>"}))
    ExcelOptions.add_member(:header_row, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderRow, location_name: 'HeaderRow', traits: {"smithy.api#documentation" => "<p>A variable that specifies whether the first row in the file is parsed as the\n            header. If this value is false, column names are auto-generated.</p>"}))
    ExcelOptions.type = Types::ExcelOptions
    FilesLimit.add_member(:max_files, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFiles, location_name: 'MaxFiles', traits: {"smithy.api#documentation" => "<p>The number of Amazon S3 files to select.</p>", "smithy.api#required" => {}}))
    FilesLimit.add_member(:ordered_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedBy, location_name: 'OrderedBy', traits: {"smithy.api#documentation" => "<p>A criteria to use for Amazon S3 files sorting before their selection. By default uses LAST_MODIFIED_DATE as \n            a sorting criteria. Currently it's the only allowed value.</p>"}))
    FilesLimit.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'Order', traits: {"smithy.api#documentation" => "<p>A criteria to use for Amazon S3 files sorting before their selection. By\n            default uses DESCENDING order, i.e. most recent files are selected first. Another\n            possible value is ASCENDING.</p>"}))
    FilesLimit.type = Types::FilesLimit
    FilterExpression.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>The expression which includes condition names followed by substitution variables, possibly grouped \n            and combined with other conditions. For example, \"(starts_with :prefix1 or starts_with :prefix2) and \n            (ends_with :suffix1 or ends_with :suffix2)\". Substitution variables should start with ':' symbol.</p>", "smithy.api#required" => {}}))
    FilterExpression.add_member(:values_map, Smithy::Schema::Shapes::ShapeRef.new(shape: ValuesMap, location_name: 'ValuesMap', traits: {"smithy.api#documentation" => "<p>The map of substitution variable names to their values used in this filter expression.</p>", "smithy.api#required" => {}}))
    FilterExpression.type = Types::FilterExpression
    FormatOptions.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonOptions, location_name: 'Json', traits: {"smithy.api#documentation" => "<p>Options that define how JSON input is to be interpreted by DataBrew.</p>"}))
    FormatOptions.add_member(:excel, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcelOptions, location_name: 'Excel', traits: {"smithy.api#documentation" => "<p>Options that define how Excel input is to be interpreted by DataBrew.</p>"}))
    FormatOptions.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: CsvOptions, location_name: 'Csv', traits: {"smithy.api#documentation" => "<p>Options that define how CSV input is to be interpreted by DataBrew.</p>"}))
    FormatOptions.type = Types::FormatOptions
    HiddenColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    Input.add_member(:s3_input_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3InputDefinition', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location where the data is stored.</p>"}))
    Input.add_member(:data_catalog_input_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogInputDefinition, location_name: 'DataCatalogInputDefinition', traits: {"smithy.api#documentation" => "<p>The Glue Data Catalog parameters for the data.</p>"}))
    Input.add_member(:database_input_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInputDefinition, location_name: 'DatabaseInputDefinition', traits: {"smithy.api#documentation" => "<p>Connection information for dataset input files stored in a database.</p>"}))
    Input.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>Contains additional resource information needed for specific datasets.</p>"}))
    Input.type = Types::Input
    InputFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    InputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    InputFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    InputFormat.add_member(:excel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCEL', traits: {"smithy.api#enumValue" => "EXCEL"}))
    InputFormat.add_member(:orc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORC', traits: {"smithy.api#enumValue" => "ORC"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the job.</p>"}))
    Job.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the job.</p>"}))
    Job.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the job was created.</p>"}))
    Job.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>A dataset that the job is to process.</p>"}))
    Job.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the job\n            output. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/encryption-security-configuration.html\">Encrypting data\n                written by DataBrew jobs</a>\n         </p>"}))
    Job.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode for the job, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>\n            </li>\n         </ul>"}))
    Job.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the job.</p>", "smithy.api#required" => {}}))
    Job.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The job type of the job, which must be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PROFILE</code> - A job to analyze a dataset, to determine its size, data\n                    types, data distribution, and more.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RECIPE</code> - A job to apply one or more transformations to a\n                    dataset.</p>\n            </li>\n         </ul>"}))
    Job.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the job.</p>"}))
    Job.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The modification date and time of the job.</p>"}))
    Job.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>The current status of Amazon CloudWatch logging for the job.</p>"}))
    Job.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of nodes that can be consumed when the job processes data.</p>"}))
    Job.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times to retry the job after a job run fails.</p>"}))
    Job.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent output from running the job.</p>"}))
    Job.add_member(:data_catalog_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: 'DataCatalogOutputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the Glue Data Catalog output \n            from running the job.</p>"}))
    Job.add_member(:database_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: 'DatabaseOutputs', traits: {"smithy.api#documentation" => "<p>Represents a list of JDBC database output objects which defines the output \n            destination for a DataBrew recipe job to write into.</p>"}))
    Job.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that the job is associated with.</p>"}))
    Job.add_member(:recipe_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeReference, location_name: 'RecipeReference', traits: {"smithy.api#documentation" => "<p>A set of steps that the job runs.</p>"}))
    Job.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) for the job.</p>"}))
    Job.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role to be assumed for this job.</p>"}))
    Job.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The job's timeout in minutes. A job that attempts to run longer than this timeout\n            period ends with a status of <code>TIMEOUT</code>.</p>"}))
    Job.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the job.</p>"}))
    Job.add_member(:job_sample, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSample, location_name: 'JobSample', traits: {"smithy.api#documentation" => "<p>A sample configuration for profile jobs only, which determines the number of rows on which the\n            profile job is run. If a <code>JobSample</code> value isn't provided, the default value\n            is used. The default value is CUSTOM_ROWS for the mode parameter and 20,000 for the\n            size parameter.</p>"}))
    Job.add_member(:validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: 'ValidationConfigurations', traits: {"smithy.api#documentation" => "<p>List of validation configurations that are applied to the profile job.</p>"}))
    Job.type = Types::Job
    JobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    JobNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobName)
    JobRun.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: Attempt, location_name: 'Attempt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of times that DataBrew has attempted to run the job.</p>"}))
    JobRun.add_member(:completed_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CompletedOn', traits: {"smithy.api#documentation" => "<p>The date and time when the job completed processing.</p>"}))
    JobRun.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset for the job to process.</p>"}))
    JobRun.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message indicating an error (if any) that was encountered when the job ran.</p>"}))
    JobRun.add_member(:execution_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTime, location_name: 'ExecutionTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time, in seconds, during which a job run consumed resources.</p>"}))
    JobRun.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the job being processed during this run.</p>"}))
    JobRun.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the job run.</p>"}))
    JobRun.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the job run entity itself.</p>"}))
    JobRun.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>The current status of Amazon CloudWatch logging for the job run.</p>"}))
    JobRun.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "<p>The name of an Amazon CloudWatch log group, where the job writes diagnostic messages\n            when it runs.</p>"}))
    JobRun.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>One or more output artifacts from a job run.</p>"}))
    JobRun.add_member(:data_catalog_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: 'DataCatalogOutputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the Glue Data Catalog output \n            from running the job.</p>"}))
    JobRun.add_member(:database_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: 'DatabaseOutputs', traits: {"smithy.api#documentation" => "<p>Represents a list of JDBC database output objects which defines the output \n            destination for a DataBrew recipe job to write into.</p>"}))
    JobRun.add_member(:recipe_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeReference, location_name: 'RecipeReference', traits: {"smithy.api#documentation" => "<p>The set of steps processed by the job.</p>"}))
    JobRun.add_member(:started_by, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedBy, location_name: 'StartedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who initiated the job run. </p>"}))
    JobRun.add_member(:started_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartedOn', traits: {"smithy.api#documentation" => "<p>The date and time when the job run began. </p>"}))
    JobRun.add_member(:job_sample, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSample, location_name: 'JobSample', traits: {"smithy.api#documentation" => "<p>A sample configuration for profile jobs only, which determines the number of rows on which the\n            profile job is run. If a <code>JobSample</code> value isn't provided, the default\n            is used. The default value is CUSTOM_ROWS for the mode parameter and 20,000 for the\n            size parameter.</p>"}))
    JobRun.add_member(:validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: 'ValidationConfigurations', traits: {"smithy.api#documentation" => "<p>List of validation configurations that are applied to the profile job run.</p>"}))
    JobRun.type = Types::JobRun
    JobRunList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobRun)
    JobRunState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    JobRunState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobRunState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    JobRunState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    JobRunState.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobRunState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobRunState.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    JobSample.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>A value that determines whether the profile job is run on the entire dataset or a\n            specified number of rows. This value must be one of the following:</p>\n         <ul>\n            <li>\n               <p>FULL_DATASET - The profile job is run on the entire dataset.</p>\n            </li>\n            <li>\n               <p>CUSTOM_ROWS - The profile job is run on the number of rows specified in the\n                    <code>Size</code> parameter.</p>\n            </li>\n         </ul>"}))
    JobSample.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSize, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The <code>Size</code> parameter is only required when the mode is CUSTOM_ROWS. The\n            profile job is run on the specified number of rows. The maximum value for size is\n            Long.MAX_VALUE.</p>\n         <p>Long.MAX_VALUE = 9223372036854775807</p>"}))
    JobSample.type = Types::JobSample
    JobType.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFILE', traits: {"smithy.api#enumValue" => "PROFILE"}))
    JobType.add_member(:recipe, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECIPE', traits: {"smithy.api#enumValue" => "RECIPE"}))
    JsonOptions.add_member(:multi_line, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiLine, location_name: 'MultiLine', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that specifies whether JSON input contains embedded new line\n            characters.</p>"}))
    JsonOptions.type = Types::JsonOptions
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetList, location_name: 'Datasets', traits: {"smithy.api#documentation" => "<p>A list of datasets that are defined.</p>", "smithy.api#required" => {}}))
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListJobRunsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobRunsRequest.type = Types::ListJobRunsRequest
    ListJobRunsResponse.add_member(:job_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunList, location_name: 'JobRuns', traits: {"smithy.api#documentation" => "<p>A list of job runs that have occurred for the specified job.</p>", "smithy.api#required" => {}}))
    ListJobRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListJobRunsResponse.type = Types::ListJobRunsResponse
    ListJobsRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The name of a dataset. Using this parameter indicates to return only those jobs that\n            act on the specified dataset.</p>", "smithy.api#httpQuery" => "datasetName"}))
    ListJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by DataBrew that specifies where to continue pagination if a\n            previous request was truncated. To get the next set of pages, pass in the NextToken\n            value from the response object of the previous page call. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of a project. Using this parameter indicates to return only those jobs that\n            are associated with the specified project.</p>", "smithy.api#httpQuery" => "projectName"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResponse.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobList, location_name: 'Jobs', traits: {"smithy.api#documentation" => "<p>A list of jobs that are defined.</p>", "smithy.api#required" => {}}))
    ListJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListJobsResponse.type = Types::ListJobsResponse
    ListProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProjectsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:projects, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectList, location_name: 'Projects', traits: {"smithy.api#documentation" => "<p>A list of projects that are defined .</p>", "smithy.api#required" => {}}))
    ListProjectsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListRecipeVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRecipeVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRecipeVersionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe for which to return version information.</p>", "smithy.api#httpQuery" => "name", "smithy.api#required" => {}}))
    ListRecipeVersionsRequest.type = Types::ListRecipeVersionsRequest
    ListRecipeVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListRecipeVersionsResponse.add_member(:recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeList, location_name: 'Recipes', traits: {"smithy.api#documentation" => "<p>A list of versions for the specified recipe.</p>", "smithy.api#required" => {}}))
    ListRecipeVersionsResponse.type = Types::ListRecipeVersionsResponse
    ListRecipesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRecipesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRecipesRequest.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>Return only those recipes with a version identifier of <code>LATEST_WORKING</code> or\n                <code>LATEST_PUBLISHED</code>. If <code>RecipeVersion</code> is omitted,\n                <code>ListRecipes</code> returns all of the <code>LATEST_PUBLISHED</code> recipe\n            versions.</p>\n         <p>Valid values: <code>LATEST_WORKING</code> | <code>LATEST_PUBLISHED</code>\n         </p>", "smithy.api#httpQuery" => "recipeVersion"}))
    ListRecipesRequest.type = Types::ListRecipesRequest
    ListRecipesResponse.add_member(:recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeList, location_name: 'Recipes', traits: {"smithy.api#documentation" => "<p>A list of recipes that are defined.</p>", "smithy.api#required" => {}}))
    ListRecipesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListRecipesResponse.type = Types::ListRecipesResponse
    ListRulesetsRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a resource (dataset). Using this parameter \n            indicates to return only those rulesets that are associated with the specified resource.</p>", "smithy.api#httpQuery" => "targetArn"}))
    ListRulesetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRulesetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by DataBrew that specifies where to continue pagination \n            if a previous request was truncated. To get the next set of pages, pass in \n            the NextToken value from the response object of the previous page call.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRulesetsRequest.type = Types::ListRulesetsRequest
    ListRulesetsResponse.add_member(:rulesets, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetItemList, location_name: 'Rulesets', traits: {"smithy.api#documentation" => "<p>A list of RulesetItem. RulesetItem contains meta data of a ruleset.</p>", "smithy.api#required" => {}}))
    ListRulesetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListRulesetsResponse.type = Types::ListRulesetsResponse
    ListSchedulesRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the job that these schedules apply to.</p>", "smithy.api#httpQuery" => "jobName"}))
    ListSchedulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSchedulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a previous call to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSchedulesRequest.type = Types::ListSchedulesRequest
    ListSchedulesResponse.add_member(:schedules, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleList, location_name: 'Schedules', traits: {"smithy.api#documentation" => "<p>A list of schedules that are defined.</p>", "smithy.api#required" => {}}))
    ListSchedulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use in a subsequent call to retrieve the next set of\n            results.</p>"}))
    ListSchedulesResponse.type = Types::ListSchedulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource.\n        </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the DataBrew resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogSubscription.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE', traits: {"smithy.api#enumValue" => "ENABLE"}))
    LogSubscription.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "DISABLE"}))
    Metadata.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the dataset. Currently, DataBrew \n            only supports ARNs from Amazon AppFlow.</p>"}))
    Metadata.type = Types::Metadata
    Order.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Order.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    OrderedBy.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_MODIFIED_DATE', traits: {"smithy.api#enumValue" => "LAST_MODIFIED_DATE"}))
    Output.add_member(:compression_format, Smithy::Schema::Shapes::ShapeRef.new(shape: CompressionFormat, location_name: 'CompressionFormat', traits: {"smithy.api#documentation" => "<p>The compression algorithm used to compress the output text of the job.</p>"}))
    Output.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The data format of the output of the job.</p>"}))
    Output.add_member(:partition_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNameList, location_name: 'PartitionColumns', traits: {"smithy.api#documentation" => "<p>The names of one or more partition columns for the output of the job.</p>"}))
    Output.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where the job writes its output.</p>", "smithy.api#required" => {}}))
    Output.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteOutput, location_name: 'Overwrite', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that, if true, means that any data in the location specified for output is\n            overwritten with new output.</p>"}))
    Output.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormatOptions, location_name: 'FormatOptions', traits: {"smithy.api#documentation" => "<p>Represents options that define how DataBrew formats job output files.</p>"}))
    Output.add_member(:max_output_files, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxOutputFiles, location_name: 'MaxOutputFiles', traits: {"smithy.api#documentation" => "<p>Maximum number of files to be generated by the job and written to the output folder. For output partitioned \n            by column(s), the MaxOutputFiles value is the maximum number of files per partition.</p>"}))
    Output.type = Types::Output
    OutputFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    OutputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    OutputFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    OutputFormat.add_member(:glueparquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLUEPARQUET', traits: {"smithy.api#enumValue" => "GLUEPARQUET"}))
    OutputFormat.add_member(:avro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVRO', traits: {"smithy.api#enumValue" => "AVRO"}))
    OutputFormat.add_member(:orc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORC', traits: {"smithy.api#enumValue" => "ORC"}))
    OutputFormat.add_member(:xml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XML', traits: {"smithy.api#enumValue" => "XML"}))
    OutputFormat.add_member(:tableauhyper, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLEAUHYPER', traits: {"smithy.api#enumValue" => "TABLEAUHYPER"}))
    OutputFormatOptions.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: CsvOutputOptions, location_name: 'Csv', traits: {"smithy.api#documentation" => "<p>Represents a set of options that define the structure of comma-separated value (CSV)\n            job output.</p>"}))
    OutputFormatOptions.type = Types::OutputFormatOptions
    OutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Output)
    ParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    ParameterType.add_member(:datetime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Datetime', traits: {"smithy.api#enumValue" => "Datetime"}))
    ParameterType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Number', traits: {"smithy.api#enumValue" => "Number"}))
    ParameterType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'String', traits: {"smithy.api#enumValue" => "String"}))
    PathOptions.add_member(:last_modified_date_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'LastModifiedDateCondition', traits: {"smithy.api#documentation" => "<p>If provided, this structure defines a date range for matching Amazon S3 objects based on their \n            LastModifiedDate attribute in Amazon S3.</p>"}))
    PathOptions.add_member(:files_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: FilesLimit, location_name: 'FilesLimit', traits: {"smithy.api#documentation" => "<p>If provided, this structure imposes a limit on a number of files that should be selected.</p>"}))
    PathOptions.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PathParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A structure that maps names of parameters used in the Amazon S3 path of a dataset to their definitions.</p>"}))
    PathOptions.type = Types::PathOptions
    PathParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PathParameterName)
    PathParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetParameter)
    ProfileConfiguration.add_member(:dataset_statistics_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticsConfiguration, location_name: 'DatasetStatisticsConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for inter-column evaluations. Configuration can be used to select evaluations and override \n            parameters of evaluations. When configuration is undefined, the profile job will run all supported \n            inter-column evaluations.\n        </p>"}))
    ProfileConfiguration.add_member(:profile_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnSelectorList, location_name: 'ProfileColumns', traits: {"smithy.api#documentation" => "<p>List of column selectors. ProfileColumns can be used to select columns from the dataset. When \n            ProfileColumns is undefined, the profile job will profile all supported columns.\n        </p>"}))
    ProfileConfiguration.add_member(:column_statistics_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnStatisticsConfigurationList, location_name: 'ColumnStatisticsConfigurations', traits: {"smithy.api#documentation" => "<p>List of configurations for column evaluations. ColumnStatisticsConfigurations are used to \n            select evaluations and override parameters of evaluations for particular columns. When \n            ColumnStatisticsConfigurations is undefined,  the profile job will profile all supported columns \n            and run all supported  evaluations.\n        </p>"}))
    ProfileConfiguration.add_member(:entity_detector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDetectorConfiguration, location_name: 'EntityDetectorConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of entity detection for a profile job. When undefined, entity detection is disabled.</p>"}))
    ProfileConfiguration.type = Types::ProfileConfiguration
    Project.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the project.</p>"}))
    Project.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the project was created.</p>"}))
    Project.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who crated the project.</p>"}))
    Project.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'DatasetName', traits: {"smithy.api#documentation" => "<p>The dataset that the project is to act upon.</p>"}))
    Project.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The last modification date and time for the project.</p>"}))
    Project.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the project.</p>"}))
    Project.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of a project.</p>", "smithy.api#required" => {}}))
    Project.add_member(:recipe_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'RecipeName', traits: {"smithy.api#documentation" => "<p>The name of a recipe that will be developed during a project session.</p>", "smithy.api#required" => {}}))
    Project.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the project.</p>"}))
    Project.add_member(:sample, Smithy::Schema::Shapes::ShapeRef.new(shape: Sample, location_name: 'Sample', traits: {"smithy.api#documentation" => "<p>The sample size and sampling type to apply to the data. If this parameter isn't\n            specified, then the sample consists of the first 500 rows from the dataset.</p>"}))
    Project.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the project.</p>"}))
    Project.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role that will be assumed for this\n            project.</p>"}))
    Project.add_member(:opened_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenedBy, location_name: 'OpenedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user that opened the project for use.</p>"}))
    Project.add_member(:open_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'OpenDate', traits: {"smithy.api#documentation" => "<p>The date and time when the project was opened.</p>"}))
    Project.type = Types::Project
    ProjectList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Project)
    PublishRecipeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the recipe to be published, for this version of the recipe.</p>"}))
    PublishRecipeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe to be published.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishRecipeRequest.type = Types::PublishRecipeRequest
    PublishRecipeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe that you published.</p>", "smithy.api#required" => {}}))
    PublishRecipeResponse.type = Types::PublishRecipeResponse
    Recipe.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the recipe.</p>"}))
    Recipe.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the recipe was created.</p>"}))
    Recipe.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the recipe.</p>"}))
    Recipe.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The last modification date and time of the recipe.</p>"}))
    Recipe.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'ProjectName', traits: {"smithy.api#documentation" => "<p>The name of the project that the recipe is associated with.</p>"}))
    Recipe.add_member(:published_by, Smithy::Schema::Shapes::ShapeRef.new(shape: PublishedBy, location_name: 'PublishedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who published the recipe.</p>"}))
    Recipe.add_member(:published_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'PublishedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the recipe was published.</p>"}))
    Recipe.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the recipe.</p>"}))
    Recipe.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name for the recipe.</p>", "smithy.api#required" => {}}))
    Recipe.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the recipe.</p>"}))
    Recipe.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeStepList, location_name: 'Steps', traits: {"smithy.api#documentation" => "<p>A list of steps that are defined by the recipe.</p>"}))
    Recipe.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the recipe.</p>"}))
    Recipe.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The identifier for the version for the recipe. Must be one of the following:</p>\n         <ul>\n            <li>\n               <p>Numeric version (<code>X.Y</code>) - <code>X</code> and <code>Y</code> stand\n                    for major and minor version numbers. The maximum length of each is 6 digits, and\n                    neither can be negative values. Both <code>X</code> and <code>Y</code> are\n                    required, and \"0.0\" isn't a valid version.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LATEST_WORKING</code> - the most recent valid version being developed in\n                    a DataBrew project.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LATEST_PUBLISHED</code> - the most recent published version.</p>\n            </li>\n         </ul>"}))
    Recipe.type = Types::Recipe
    RecipeAction.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of a valid DataBrew transformation to be performed on the data.</p>", "smithy.api#required" => {}}))
    RecipeAction.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>Contextual parameters for the transformation.</p>"}))
    RecipeAction.type = Types::RecipeAction
    RecipeErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersionErrorDetail)
    RecipeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Recipe)
    RecipeReference.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe.</p>", "smithy.api#required" => {}}))
    RecipeReference.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The identifier for the version for the recipe. </p>"}))
    RecipeReference.type = Types::RecipeReference
    RecipeStep.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The particular action to be performed in the recipe step.</p>", "smithy.api#required" => {}}))
    RecipeStep.add_member(:condition_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpressionList, location_name: 'ConditionExpressions', traits: {"smithy.api#documentation" => "<p>One or more conditions that must be met for the recipe step to succeed.</p>\n         <note>\n            <p>All of the conditions in the array must be met. In other words, all of the\n                conditions must be combined using a logical AND operation.</p>\n         </note>"}))
    RecipeStep.type = Types::RecipeStep
    RecipeStepList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeStep)
    RecipeVersionErrorDetail.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code for the error.</p>"}))
    RecipeVersionErrorDetail.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message.</p>"}))
    RecipeVersionErrorDetail.add_member(:recipe_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion, location_name: 'RecipeVersion', traits: {"smithy.api#documentation" => "<p>The identifier for the recipe version associated with this error.</p>"}))
    RecipeVersionErrorDetail.type = Types::RecipeVersionErrorDetail
    RecipeVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeVersion)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Rule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    Rule.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Disabled, location_name: 'Disabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that specifies whether the rule is disabled. Once a rule is \n            disabled, a profile job will not validate it during a job run. Default \n            value is false.</p>"}))
    Rule.add_member(:check_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'CheckExpression', traits: {"smithy.api#documentation" => "<p>The expression which includes column references, condition names followed by variable\n            references, possibly grouped and combined with other conditions. For example,\n                <code>(:col1 starts_with :prefix1 or :col1 starts_with :prefix2) and (:col1\n                ends_with :suffix1 or :col1 ends_with :suffix2)</code>. Column and value references\n            are substitution variables that should start with the ':' symbol. Depending on the\n            context, substitution variables' values can be either an actual value or a column name.\n            These values are defined in the SubstitutionMap. If a CheckExpression starts with a\n            column reference, then ColumnSelectors in the rule should be null. If ColumnSelectors\n            has been defined, then there should be no column reference in the left side of a\n            condition, for example, <code>is_between :val1 and :val2</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/profile.data-quality-available-checks.html\">Available checks</a>\n         </p>", "smithy.api#required" => {}}))
    Rule.add_member(:substitution_map, Smithy::Schema::Shapes::ShapeRef.new(shape: ValuesMap, location_name: 'SubstitutionMap', traits: {"smithy.api#documentation" => "<p>The map of substitution variable names to their values used in a check \n            expression. Variable names should start with a ':' (colon).  Variable values can either \n            be actual values or column names. To differentiate between the two, column names \n            should be enclosed in backticks, for example, <code>\":col1\": \"`Column A`\".</code>\n         </p>"}))
    Rule.add_member(:threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Threshold, location_name: 'Threshold', traits: {"smithy.api#documentation" => "<p>The threshold used with a non-aggregate check expression. Non-aggregate check expressions \n            will be applied to each row in a specific column, and the threshold will be used to determine \n            whether the validation succeeds.</p>"}))
    Rule.add_member(:column_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnSelectorList, location_name: 'ColumnSelectors', traits: {"smithy.api#documentation" => "<p>List of column selectors. Selectors can be used to select columns using a name or regular \n            expression from the dataset. Rule will be applied to selected columns.</p>"}))
    Rule.type = Types::Rule
    RuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    RulesetItem.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the ruleset.</p>"}))
    RulesetItem.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the ruleset.</p>"}))
    RulesetItem.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the ruleset was created.</p>"}))
    RulesetItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the ruleset.</p>"}))
    RulesetItem.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the ruleset.</p>"}))
    RulesetItem.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The modification date and time of the ruleset.</p>"}))
    RulesetItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ruleset.</p>", "smithy.api#required" => {}}))
    RulesetItem.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ruleset.</p>"}))
    RulesetItem.add_member(:rule_count, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCount, location_name: 'RuleCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of rules that are defined in the ruleset.</p>"}))
    RulesetItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the ruleset.</p>"}))
    RulesetItem.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is \n            associated with.</p>", "smithy.api#required" => {}}))
    RulesetItem.type = Types::RulesetItem
    RulesetItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetItem)
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The unique name of the object in the bucket.</p>"}))
    S3Location.add_member(:bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketOwner, location_name: 'BucketOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the bucket owner.</p>"}))
    S3Location.type = Types::S3Location
    S3TableOutputOptions.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>Represents an Amazon S3 location (bucket name and object key) where DataBrew can write output \n            from a job.</p>", "smithy.api#required" => {}}))
    S3TableOutputOptions.type = Types::S3TableOutputOptions
    Sample.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleSize, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The number of rows in the sample.</p>"}))
    Sample.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The way in which DataBrew obtains rows from a dataset.</p>", "smithy.api#required" => {}}))
    Sample.type = Types::Sample
    SampleMode.add_member(:full_dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_DATASET', traits: {"smithy.api#enumValue" => "FULL_DATASET"}))
    SampleMode.add_member(:custom_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_ROWS', traits: {"smithy.api#enumValue" => "CUSTOM_ROWS"}))
    SampleType.add_member(:first_n, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIRST_N', traits: {"smithy.api#enumValue" => "FIRST_N"}))
    SampleType.add_member(:last_n, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_N', traits: {"smithy.api#enumValue" => "LAST_N"}))
    SampleType.add_member(:random, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RANDOM', traits: {"smithy.api#enumValue" => "RANDOM"}))
    Schedule.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account that owns the schedule.</p>"}))
    Schedule.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the schedule.</p>"}))
    Schedule.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time that the schedule was created.</p>"}))
    Schedule.add_member(:job_names, Smithy::Schema::Shapes::ShapeRef.new(shape: JobNameList, location_name: 'JobNames', traits: {"smithy.api#documentation" => "<p>A list of jobs to be run, according to the schedule.</p>"}))
    Schedule.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedBy, location_name: 'LastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last modified the schedule.</p>"}))
    Schedule.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the schedule was last modified.</p>"}))
    Schedule.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schedule.</p>"}))
    Schedule.add_member(:cron_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: CronExpression, location_name: 'CronExpression', traits: {"smithy.api#documentation" => "<p>The dates and times when the job is to run. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron\n            expressions</a> in the <i>Glue DataBrew Developer\n            Guide</i>.</p>"}))
    Schedule.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata tags that have been applied to the schedule.</p>"}))
    Schedule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule.</p>", "smithy.api#required" => {}}))
    Schedule.type = Types::Schedule
    ScheduleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule)
    SendProjectSessionActionRequest.add_member(:preview, Smithy::Schema::Shapes::ShapeRef.new(shape: Preview, location_name: 'Preview', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, the result of the recipe step will be returned, but not applied.</p>"}))
    SendProjectSessionActionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project to apply the action to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendProjectSessionActionRequest.add_member(:recipe_step, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeStep, location_name: 'RecipeStep'))
    SendProjectSessionActionRequest.add_member(:step_index, Smithy::Schema::Shapes::ShapeRef.new(shape: StepIndex, location_name: 'StepIndex', traits: {"smithy.api#documentation" => "<p>The index from which to preview a step. This index is used to preview the result of\n            steps that have already been applied, so that the resulting view frame is from earlier\n            in the view frame stack.</p>"}))
    SendProjectSessionActionRequest.add_member(:client_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSessionId, location_name: 'ClientSessionId', traits: {"smithy.api#documentation" => "<p>A unique identifier for an interactive session that's currently open and ready for\n            work. The action will be performed on this session.</p>"}))
    SendProjectSessionActionRequest.add_member(:view_frame, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewFrame, location_name: 'ViewFrame'))
    SendProjectSessionActionRequest.type = Types::SendProjectSessionActionRequest
    SendProjectSessionActionResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Result, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>A message indicating the result of performing the action.</p>"}))
    SendProjectSessionActionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project that was affected by the action.</p>", "smithy.api#required" => {}}))
    SendProjectSessionActionResponse.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionId, location_name: 'ActionId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the action that was performed.</p>"}))
    SendProjectSessionActionResponse.type = Types::SendProjectSessionActionResponse
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionStatus.add_member(:assigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSIGNED', traits: {"smithy.api#enumValue" => "ASSIGNED"}))
    SessionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    SessionStatus.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    SessionStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    SessionStatus.add_member(:recycling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECYCLING', traits: {"smithy.api#enumValue" => "RECYCLING"}))
    SessionStatus.add_member(:rotating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATING', traits: {"smithy.api#enumValue" => "ROTATING"}))
    SessionStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    SessionStatus.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    SessionStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    SheetIndexList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SheetIndex)
    SheetNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SheetName)
    Source.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    Source.add_member(:datacatalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATACATALOG', traits: {"smithy.api#enumValue" => "DATA-CATALOG"}))
    Source.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATABASE', traits: {"smithy.api#enumValue" => "DATABASE"}))
    StartJobRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to be run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRunRequest.type = Types::StartJobRunRequest
    StartJobRunResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>A system-generated identifier for this particular job run.</p>", "smithy.api#required" => {}}))
    StartJobRunResponse.type = Types::StartJobRunResponse
    StartProjectSessionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project to act upon.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartProjectSessionRequest.add_member(:assume_control, Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeControl, location_name: 'AssumeControl', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value that, if true, enables you to take control of a session, even if a different\n            client is currently accessing the project.</p>"}))
    StartProjectSessionRequest.type = Types::StartProjectSessionRequest
    StartProjectSessionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project to be acted upon.</p>", "smithy.api#required" => {}}))
    StartProjectSessionResponse.add_member(:client_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSessionId, location_name: 'ClientSessionId', traits: {"smithy.api#documentation" => "<p>A system-generated identifier for the session.</p>"}))
    StartProjectSessionResponse.type = Types::StartProjectSessionResponse
    StatisticList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic)
    StatisticOverride.add_member(:statistic, Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: 'Statistic', traits: {"smithy.api#documentation" => "<p>The name of an evaluation</p>", "smithy.api#required" => {}}))
    StatisticOverride.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A map that includes overrides of an evaluation’s parameters.</p>", "smithy.api#required" => {}}))
    StatisticOverride.type = Types::StatisticOverride
    StatisticOverrideList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticOverride)
    StatisticsConfiguration.add_member(:included_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticList, location_name: 'IncludedStatistics', traits: {"smithy.api#documentation" => "<p>List of included evaluations. When the list is undefined, all supported \n            evaluations will be included.</p>"}))
    StatisticsConfiguration.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticOverrideList, location_name: 'Overrides', traits: {"smithy.api#documentation" => "<p>List of overrides for evaluations.</p>"}))
    StatisticsConfiguration.type = Types::StatisticsConfiguration
    StopJobRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to be stopped.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRunRequest.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run to be stopped.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRunRequest.type = Types::StopJobRunRequest
    StopJobRunResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'RunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run that you stopped.</p>", "smithy.api#required" => {}}))
    StopJobRunResponse.type = Types::StopJobRunResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The DataBrew resource to which tags should be added. The value for this parameter is\n            an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or\n            a recipe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags to be assigned to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Threshold.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdValue, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The value of a threshold.</p>", "smithy.api#required" => {}}))
    Threshold.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of a threshold. Used for comparison of an actual count of rows that satisfy the \n            rule to the threshold value.</p>"}))
    Threshold.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>Unit of threshold value. Can be either a COUNT or PERCENTAGE of the full sample size \n            used for validation.</p>"}))
    Threshold.type = Types::Threshold
    ThresholdType.add_member(:greater_than_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    ThresholdType.add_member(:less_than_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    ThresholdType.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ThresholdType.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ThresholdUnit.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "COUNT"}))
    ThresholdUnit.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENTAGE', traits: {"smithy.api#enumValue" => "PERCENTAGE"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>A DataBrew resource from which you want to remove a tag or tags. The value for this\n            parameter is an Amazon Resource Name (ARN). </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys (names) of one or more tags to be removed.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>"}))
    UpdateDatasetRequest.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOptions, location_name: 'FormatOptions'))
    UpdateDatasetRequest.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: 'Input', traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:path_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PathOptions, location_name: 'PathOptions', traits: {"smithy.api#documentation" => "<p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>"}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the dataset that you updated.</p>", "smithy.api#required" => {}}))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdateProfileJobRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>Configuration for profile jobs. Used to select columns, do evaluations, \n            and override default parameters of evaluations. When configuration is null, the\n            profile job will run with default settings.</p>"}))
    UpdateProfileJobRequest.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the\n            job.</p>"}))
    UpdateProfileJobRequest.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode for the job, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon\n                    S3.</p>\n            </li>\n         </ul>"}))
    UpdateProfileJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileJobRequest.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,\n            CloudWatch writes one log stream for each job run.</p>"}))
    UpdateProfileJobRequest.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of compute nodes that DataBrew can use when the job processes\n            data.</p>"}))
    UpdateProfileJobRequest.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times to retry the job after a job run fails.</p>"}))
    UpdateProfileJobRequest.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'OutputLocation', traits: {"smithy.api#required" => {}}))
    UpdateProfileJobRequest.add_member(:validation_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfigurationList, location_name: 'ValidationConfigurations', traits: {"smithy.api#documentation" => "<p>List of validation configurations that are applied to the profile job.</p>"}))
    UpdateProfileJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to\n            be assumed when DataBrew runs the job.</p>", "smithy.api#required" => {}}))
    UpdateProfileJobRequest.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The job's timeout in minutes. A job that attempts to run longer than this timeout\n            period ends with a status of <code>TIMEOUT</code>.</p>"}))
    UpdateProfileJobRequest.add_member(:job_sample, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSample, location_name: 'JobSample', traits: {"smithy.api#documentation" => "<p>Sample configuration for Profile Jobs only. Determines the number of rows on which the\n            Profile job will be executed. If a JobSample value is not provided for profile jobs, the\n            default value will be used. The default value is CUSTOM_ROWS for the mode parameter and\n            20000 for the size parameter.</p>"}))
    UpdateProfileJobRequest.type = Types::UpdateProfileJobRequest
    UpdateProfileJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job that was updated.</p>", "smithy.api#required" => {}}))
    UpdateProfileJobResponse.type = Types::UpdateProfileJobResponse
    UpdateProjectRequest.add_member(:sample, Smithy::Schema::Shapes::ShapeRef.new(shape: Sample, location_name: 'Sample'))
    UpdateProjectRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to be assumed for this request.</p>", "smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResponse.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the project was last modified.</p>"}))
    UpdateProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the project that you updated.</p>", "smithy.api#required" => {}}))
    UpdateProjectResponse.type = Types::UpdateProjectResponse
    UpdateRecipeJobRequest.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the\n            job.</p>"}))
    UpdateRecipeJobRequest.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode for the job, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>\n            </li>\n         </ul>"}))
    UpdateRecipeJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecipeJobRequest.add_member(:log_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription, location_name: 'LogSubscription', traits: {"smithy.api#documentation" => "<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,\n            CloudWatch writes one log stream for each job run.</p>"}))
    UpdateRecipeJobRequest.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of nodes that DataBrew can consume when the job processes\n            data.</p>"}))
    UpdateRecipeJobRequest.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times to retry the job after a job run fails.</p>"}))
    UpdateRecipeJobRequest.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the output from running the job. </p>"}))
    UpdateRecipeJobRequest.add_member(:data_catalog_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogOutputList, location_name: 'DataCatalogOutputs', traits: {"smithy.api#documentation" => "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"}))
    UpdateRecipeJobRequest.add_member(:database_outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseOutputList, location_name: 'DatabaseOutputs', traits: {"smithy.api#documentation" => "<p>Represents a list of JDBC database output objects which defines the output destination for a \n            DataBrew recipe job to write into.</p>"}))
    UpdateRecipeJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to\n            be assumed when DataBrew runs the job.</p>", "smithy.api#required" => {}}))
    UpdateRecipeJobRequest.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Timeout, location_name: 'Timeout', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The job's timeout in minutes. A job that attempts to run longer than this timeout\n            period ends with a status of <code>TIMEOUT</code>.</p>"}))
    UpdateRecipeJobRequest.type = Types::UpdateRecipeJobRequest
    UpdateRecipeJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the job that you updated.</p>", "smithy.api#required" => {}}))
    UpdateRecipeJobResponse.type = Types::UpdateRecipeJobResponse
    UpdateRecipeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the recipe.</p>"}))
    UpdateRecipeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecipeRequest.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeStepList, location_name: 'Steps', traits: {"smithy.api#documentation" => "<p>One or more steps to be performed by the recipe. Each step consists of an action, and\n            the conditions under which the action should succeed.</p>"}))
    UpdateRecipeRequest.type = Types::UpdateRecipeRequest
    UpdateRecipeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the recipe that was updated.</p>", "smithy.api#required" => {}}))
    UpdateRecipeResponse.type = Types::UpdateRecipeResponse
    UpdateRulesetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ruleset to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRulesetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the ruleset.</p>"}))
    UpdateRulesetRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>A list of rules that are defined with the ruleset. A rule includes one or more \n            checks to be validated on a DataBrew dataset.</p>", "smithy.api#required" => {}}))
    UpdateRulesetRequest.type = Types::UpdateRulesetRequest
    UpdateRulesetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the updated ruleset.</p>", "smithy.api#required" => {}}))
    UpdateRulesetResponse.type = Types::UpdateRulesetResponse
    UpdateScheduleRequest.add_member(:job_names, Smithy::Schema::Shapes::ShapeRef.new(shape: JobNameList, location_name: 'JobNames', traits: {"smithy.api#documentation" => "<p>The name or names of one or more jobs to be run for this schedule.</p>"}))
    UpdateScheduleRequest.add_member(:cron_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: CronExpression, location_name: 'CronExpression', traits: {"smithy.api#documentation" => "<p>The date or dates and time or times when the jobs are to be run. For more information,\n            see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron\n                expressions</a> in the <i>Glue DataBrew Developer\n            Guide</i>.</p>", "smithy.api#required" => {}}))
    UpdateScheduleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScheduleRequest.type = Types::UpdateScheduleRequest
    UpdateScheduleResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schedule that was updated.</p>", "smithy.api#required" => {}}))
    UpdateScheduleResponse.type = Types::UpdateScheduleResponse
    ValidationConfiguration.add_member(:ruleset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RulesetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ruleset to be validated in the profile job. \n            The TargetArn of the selected ruleset should be the same as the Amazon Resource Name (ARN) of \n            the dataset that is associated with the profile job.</p>", "smithy.api#required" => {}}))
    ValidationConfiguration.add_member(:validation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMode, location_name: 'ValidationMode', traits: {"smithy.api#documentation" => "<p>Mode of data quality validation. Default mode is “CHECK_ALL” which verifies all rules \n            defined in the selected ruleset.</p>"}))
    ValidationConfiguration.type = Types::ValidationConfiguration
    ValidationConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationConfiguration)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    ValidationMode.add_member(:check_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECK_ALL', traits: {"smithy.api#enumValue" => "CHECK_ALL"}))
    ValuesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ValueReference)
    ValuesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionValue)
    ViewFrame.add_member(:start_column_index, Smithy::Schema::Shapes::ShapeRef.new(shape: StartColumnIndex, location_name: 'StartColumnIndex', traits: {"smithy.api#documentation" => "<p>The starting index for the range of columns to return in the view frame.</p>", "smithy.api#required" => {}}))
    ViewFrame.add_member(:column_range, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnRange, location_name: 'ColumnRange', traits: {"smithy.api#documentation" => "<p>The number of columns to include in the view frame, beginning with the\n                <code>StartColumnIndex</code> value and ignoring any columns in the\n                <code>HiddenColumns</code> list.</p>"}))
    ViewFrame.add_member(:hidden_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: HiddenColumnList, location_name: 'HiddenColumns', traits: {"smithy.api#documentation" => "<p>A list of columns to hide in the view frame.</p>"}))
    ViewFrame.add_member(:start_row_index, Smithy::Schema::Shapes::ShapeRef.new(shape: StartRowIndex, location_name: 'StartRowIndex', traits: {"smithy.api#documentation" => "<p>The starting index for the range of rows to return in the view frame.</p>"}))
    ViewFrame.add_member(:row_range, Smithy::Schema::Shapes::ShapeRef.new(shape: RowRange, location_name: 'RowRange', traits: {"smithy.api#documentation" => "<p>The number of rows to include in the view frame, beginning with the \n            <code>StartRowIndex</code> value.</p>"}))
    ViewFrame.add_member(:analytics, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMode, location_name: 'Analytics', traits: {"smithy.api#documentation" => "<p>Controls if analytics computation is enabled or disabled. Enabled by default.</p>"}))
    ViewFrame.type = Types::ViewFrame

    AWSGlueDataBrew = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.databrew#AWSGlueDataBrew"
      service.name = "AWSGlueDataBrew"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "DataBrew", "arnNamespace" => "databrew", "cloudFormationName" => "DataBrew", "cloudTrailEventSource" => "databrew.amazonaws.com", "endpointPrefix" => "databrew"}, "aws.auth#sigv4" => {"name" => "databrew"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Glue DataBrew"}
      service.add_operation(:batch_delete_recipe_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#BatchDeleteRecipeVersion"
        operation.name = "BatchDeleteRecipeVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRecipeVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRecipeVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipes/{Name}/batchDeleteRecipeVersion", "code" => 200}}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasets", "code" => 200}}
      end)
      service.add_operation(:create_profile_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateProfileJob"
        operation.name = "CreateProfileJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profileJobs", "code" => 200}}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/projects", "code" => 200}}
      end)
      service.add_operation(:create_recipe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateRecipe"
        operation.name = "CreateRecipe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecipeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecipeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipes", "code" => 200}}
      end)
      service.add_operation(:create_recipe_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateRecipeJob"
        operation.name = "CreateRecipeJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecipeJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecipeJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipeJobs", "code" => 200}}
      end)
      service.add_operation(:create_ruleset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateRuleset"
        operation.name = "CreateRuleset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRulesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRulesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rulesets", "code" => 200}}
      end)
      service.add_operation(:create_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#CreateSchedule"
        operation.name = "CreateSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/schedules", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/jobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_recipe_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteRecipeVersion"
        operation.name = "DeleteRecipeVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecipeVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecipeVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/recipes/{Name}/recipeVersion/{RecipeVersion}", "code" => 200}}
      end)
      service.add_operation(:delete_ruleset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteRuleset"
        operation.name = "DeleteRuleset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRulesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRulesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rulesets/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DeleteSchedule"
        operation.name = "DeleteSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/schedules/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeJobRun"
        operation.name = "DescribeJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{Name}/jobRun/{RunId}", "code" => 200}}
      end)
      service.add_operation(:describe_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeProject"
        operation.name = "DescribeProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_recipe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeRecipe"
        operation.name = "DescribeRecipe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecipeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecipeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recipes/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_ruleset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeRuleset"
        operation.name = "DescribeRuleset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rulesets/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#DescribeSchedule"
        operation.name = "DescribeSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/schedules/{Name}", "code" => 200}}
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_job_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListJobRuns"
        operation.name = "ListJobRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{Name}/jobRuns", "code" => 200}}
        operation[:paginator] = Paginators::ListJobRuns.new
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListProjects"
        operation.name = "ListProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/projects", "code" => 200}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_recipe_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListRecipeVersions"
        operation.name = "ListRecipeVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecipeVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecipeVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recipeVersions", "code" => 200}}
        operation[:paginator] = Paginators::ListRecipeVersions.new
      end)
      service.add_operation(:list_recipes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListRecipes"
        operation.name = "ListRecipes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecipesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecipesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recipes", "code" => 200}}
        operation[:paginator] = Paginators::ListRecipes.new
      end)
      service.add_operation(:list_rulesets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListRulesets"
        operation.name = "ListRulesets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rulesets", "code" => 200}}
        operation[:paginator] = Paginators::ListRulesets.new
      end)
      service.add_operation(:list_schedules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListSchedules"
        operation.name = "ListSchedules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchedulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchedulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/schedules", "code" => 200}}
        operation[:paginator] = Paginators::ListSchedules.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:publish_recipe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#PublishRecipe"
        operation.name = "PublishRecipe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishRecipeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishRecipeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recipes/{Name}/publishRecipe", "code" => 200}}
      end)
      service.add_operation(:send_project_session_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#SendProjectSessionAction"
        operation.name = "SendProjectSessionAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendProjectSessionActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendProjectSessionActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{Name}/sendProjectSessionAction", "code" => 200}}
      end)
      service.add_operation(:start_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#StartJobRun"
        operation.name = "StartJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs/{Name}/startJobRun", "code" => 200}}
      end)
      service.add_operation(:start_project_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#StartProjectSession"
        operation.name = "StartProjectSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProjectSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProjectSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{Name}/startProjectSession", "code" => 200}}
      end)
      service.add_operation(:stop_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#StopJobRun"
        operation.name = "StopJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs/{Name}/jobRun/{RunId}/stopJobRun", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_profile_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateProfileJob"
        operation.name = "UpdateProfileJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/profileJobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_recipe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateRecipe"
        operation.name = "UpdateRecipe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecipeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecipeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/recipes/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_recipe_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateRecipeJob"
        operation.name = "UpdateRecipeJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecipeJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecipeJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/recipeJobs/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_ruleset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateRuleset"
        operation.name = "UpdateRuleset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRulesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRulesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/rulesets/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databrew#UpdateSchedule"
        operation.name = "UpdateSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/schedules/{Name}", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

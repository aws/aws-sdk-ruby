# frozen_string_literal: true

# This is generated code!

module Aws::Personalize
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Algorithm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Algorithm', name: 'Algorithm')
    AlgorithmImage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#AlgorithmImage', name: 'AlgorithmImage')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    ArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#ArnList', name: 'ArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AutoMLConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#AutoMLConfig', name: 'AutoMLConfig')
    AutoMLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#AutoMLResult', name: 'AutoMLResult')
    AutoTrainingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#AutoTrainingConfig', name: 'AutoTrainingConfig')
    AvroSchema = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#AvroSchema', name: 'AvroSchema', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    BatchInferenceJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchInferenceJob', name: 'BatchInferenceJob')
    BatchInferenceJobConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchInferenceJobConfig', name: 'BatchInferenceJobConfig')
    BatchInferenceJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchInferenceJobInput', name: 'BatchInferenceJobInput')
    BatchInferenceJobMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#BatchInferenceJobMode', name: 'BatchInferenceJobMode')
    BatchInferenceJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchInferenceJobOutput', name: 'BatchInferenceJobOutput')
    BatchInferenceJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchInferenceJobSummary', name: 'BatchInferenceJobSummary')
    BatchInferenceJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#BatchInferenceJobs', name: 'BatchInferenceJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BatchSegmentJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchSegmentJob', name: 'BatchSegmentJob')
    BatchSegmentJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchSegmentJobInput', name: 'BatchSegmentJobInput')
    BatchSegmentJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchSegmentJobOutput', name: 'BatchSegmentJobOutput')
    BatchSegmentJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#BatchSegmentJobSummary', name: 'BatchSegmentJobSummary')
    BatchSegmentJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#BatchSegmentJobs', name: 'BatchSegmentJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.personalize#Boolean', name: 'Boolean')
    Campaign = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Campaign', name: 'Campaign')
    CampaignConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CampaignConfig', name: 'CampaignConfig')
    CampaignSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CampaignSummary', name: 'CampaignSummary')
    CampaignUpdateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CampaignUpdateSummary', name: 'CampaignUpdateSummary')
    Campaigns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Campaigns', name: 'Campaigns', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CategoricalHyperParameterRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CategoricalHyperParameterRange', name: 'CategoricalHyperParameterRange')
    CategoricalHyperParameterRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#CategoricalHyperParameterRanges', name: 'CategoricalHyperParameterRanges', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CategoricalValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#CategoricalValue', name: 'CategoricalValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    CategoricalValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#CategoricalValues', name: 'CategoricalValues', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#pattern" => "^[A-Za-z_][A-Za-z\\d_]*$"})
    ColumnNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#ColumnNamesList', name: 'ColumnNamesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ContinuousHyperParameterRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ContinuousHyperParameterRange', name: 'ContinuousHyperParameterRange')
    ContinuousHyperParameterRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#ContinuousHyperParameterRanges', name: 'ContinuousHyperParameterRanges', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ContinuousMaxValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalize#ContinuousMaxValue', name: 'ContinuousMaxValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1000000}})
    ContinuousMinValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalize#ContinuousMinValue', name: 'ContinuousMinValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1000000}})
    CreateBatchInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateBatchInferenceJobRequest', name: 'CreateBatchInferenceJobRequest')
    CreateBatchInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateBatchInferenceJobResponse', name: 'CreateBatchInferenceJobResponse')
    CreateBatchSegmentJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateBatchSegmentJobRequest', name: 'CreateBatchSegmentJobRequest')
    CreateBatchSegmentJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateBatchSegmentJobResponse', name: 'CreateBatchSegmentJobResponse')
    CreateCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateCampaignRequest', name: 'CreateCampaignRequest')
    CreateCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateCampaignResponse', name: 'CreateCampaignResponse')
    CreateDataDeletionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDataDeletionJobRequest', name: 'CreateDataDeletionJobRequest')
    CreateDataDeletionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDataDeletionJobResponse', name: 'CreateDataDeletionJobResponse')
    CreateDatasetExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetExportJobRequest', name: 'CreateDatasetExportJobRequest')
    CreateDatasetExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetExportJobResponse', name: 'CreateDatasetExportJobResponse')
    CreateDatasetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetGroupRequest', name: 'CreateDatasetGroupRequest')
    CreateDatasetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetGroupResponse', name: 'CreateDatasetGroupResponse')
    CreateDatasetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetImportJobRequest', name: 'CreateDatasetImportJobRequest')
    CreateDatasetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetImportJobResponse', name: 'CreateDatasetImportJobResponse')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateEventTrackerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateEventTrackerRequest', name: 'CreateEventTrackerRequest')
    CreateEventTrackerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateEventTrackerResponse', name: 'CreateEventTrackerResponse')
    CreateFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateFilterRequest', name: 'CreateFilterRequest')
    CreateFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateFilterResponse', name: 'CreateFilterResponse')
    CreateMetricAttributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateMetricAttributionRequest', name: 'CreateMetricAttributionRequest')
    CreateMetricAttributionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateMetricAttributionResponse', name: 'CreateMetricAttributionResponse')
    CreateRecommenderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateRecommenderRequest', name: 'CreateRecommenderRequest')
    CreateRecommenderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateRecommenderResponse', name: 'CreateRecommenderResponse')
    CreateSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateSchemaRequest', name: 'CreateSchemaRequest')
    CreateSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateSchemaResponse', name: 'CreateSchemaResponse')
    CreateSolutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateSolutionRequest', name: 'CreateSolutionRequest')
    CreateSolutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateSolutionResponse', name: 'CreateSolutionResponse')
    CreateSolutionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateSolutionVersionRequest', name: 'CreateSolutionVersionRequest')
    CreateSolutionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#CreateSolutionVersionResponse', name: 'CreateSolutionVersionResponse')
    DataDeletionJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DataDeletionJob', name: 'DataDeletionJob')
    DataDeletionJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DataDeletionJobSummary', name: 'DataDeletionJobSummary')
    DataDeletionJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DataDeletionJobs', name: 'DataDeletionJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DataSource', name: 'DataSource')
    Dataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Dataset', name: 'Dataset')
    DatasetExportJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetExportJob', name: 'DatasetExportJob')
    DatasetExportJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetExportJobOutput', name: 'DatasetExportJobOutput')
    DatasetExportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetExportJobSummary', name: 'DatasetExportJobSummary')
    DatasetExportJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DatasetExportJobs', name: 'DatasetExportJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DatasetGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetGroup', name: 'DatasetGroup')
    DatasetGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetGroupSummary', name: 'DatasetGroupSummary')
    DatasetGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DatasetGroups', name: 'DatasetGroups', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DatasetImportJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetImportJob', name: 'DatasetImportJob')
    DatasetImportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetImportJobSummary', name: 'DatasetImportJobSummary')
    DatasetImportJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DatasetImportJobs', name: 'DatasetImportJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DatasetSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetSchema', name: 'DatasetSchema')
    DatasetSchemaSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetSchemaSummary', name: 'DatasetSchemaSummary')
    DatasetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetSummary', name: 'DatasetSummary')
    DatasetType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#DatasetType', name: 'DatasetType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DatasetUpdateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DatasetUpdateSummary', name: 'DatasetUpdateSummary')
    Datasets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Datasets', name: 'Datasets', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.personalize#Date', name: 'Date')
    DefaultCategoricalHyperParameterRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DefaultCategoricalHyperParameterRange', name: 'DefaultCategoricalHyperParameterRange')
    DefaultCategoricalHyperParameterRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DefaultCategoricalHyperParameterRanges', name: 'DefaultCategoricalHyperParameterRanges', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DefaultContinuousHyperParameterRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DefaultContinuousHyperParameterRange', name: 'DefaultContinuousHyperParameterRange')
    DefaultContinuousHyperParameterRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DefaultContinuousHyperParameterRanges', name: 'DefaultContinuousHyperParameterRanges', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DefaultHyperParameterRanges = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DefaultHyperParameterRanges', name: 'DefaultHyperParameterRanges')
    DefaultIntegerHyperParameterRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DefaultIntegerHyperParameterRange', name: 'DefaultIntegerHyperParameterRange')
    DefaultIntegerHyperParameterRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#DefaultIntegerHyperParameterRanges', name: 'DefaultIntegerHyperParameterRanges', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DeleteCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteCampaignRequest', name: 'DeleteCampaignRequest')
    DeleteDatasetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteDatasetGroupRequest', name: 'DeleteDatasetGroupRequest')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteEventTrackerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteEventTrackerRequest', name: 'DeleteEventTrackerRequest')
    DeleteFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteFilterRequest', name: 'DeleteFilterRequest')
    DeleteMetricAttributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteMetricAttributionRequest', name: 'DeleteMetricAttributionRequest')
    DeleteRecommenderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteRecommenderRequest', name: 'DeleteRecommenderRequest')
    DeleteSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteSchemaRequest', name: 'DeleteSchemaRequest')
    DeleteSolutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DeleteSolutionRequest', name: 'DeleteSolutionRequest')
    DescribeAlgorithmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeAlgorithmRequest', name: 'DescribeAlgorithmRequest')
    DescribeAlgorithmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeAlgorithmResponse', name: 'DescribeAlgorithmResponse')
    DescribeBatchInferenceJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeBatchInferenceJobRequest', name: 'DescribeBatchInferenceJobRequest')
    DescribeBatchInferenceJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeBatchInferenceJobResponse', name: 'DescribeBatchInferenceJobResponse')
    DescribeBatchSegmentJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeBatchSegmentJobRequest', name: 'DescribeBatchSegmentJobRequest')
    DescribeBatchSegmentJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeBatchSegmentJobResponse', name: 'DescribeBatchSegmentJobResponse')
    DescribeCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeCampaignRequest', name: 'DescribeCampaignRequest')
    DescribeCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeCampaignResponse', name: 'DescribeCampaignResponse')
    DescribeDataDeletionJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDataDeletionJobRequest', name: 'DescribeDataDeletionJobRequest')
    DescribeDataDeletionJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDataDeletionJobResponse', name: 'DescribeDataDeletionJobResponse')
    DescribeDatasetExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetExportJobRequest', name: 'DescribeDatasetExportJobRequest')
    DescribeDatasetExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetExportJobResponse', name: 'DescribeDatasetExportJobResponse')
    DescribeDatasetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetGroupRequest', name: 'DescribeDatasetGroupRequest')
    DescribeDatasetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetGroupResponse', name: 'DescribeDatasetGroupResponse')
    DescribeDatasetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetImportJobRequest', name: 'DescribeDatasetImportJobRequest')
    DescribeDatasetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetImportJobResponse', name: 'DescribeDatasetImportJobResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeEventTrackerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeEventTrackerRequest', name: 'DescribeEventTrackerRequest')
    DescribeEventTrackerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeEventTrackerResponse', name: 'DescribeEventTrackerResponse')
    DescribeFeatureTransformationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeFeatureTransformationRequest', name: 'DescribeFeatureTransformationRequest')
    DescribeFeatureTransformationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeFeatureTransformationResponse', name: 'DescribeFeatureTransformationResponse')
    DescribeFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeFilterRequest', name: 'DescribeFilterRequest')
    DescribeFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeFilterResponse', name: 'DescribeFilterResponse')
    DescribeMetricAttributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeMetricAttributionRequest', name: 'DescribeMetricAttributionRequest')
    DescribeMetricAttributionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeMetricAttributionResponse', name: 'DescribeMetricAttributionResponse')
    DescribeRecipeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeRecipeRequest', name: 'DescribeRecipeRequest')
    DescribeRecipeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeRecipeResponse', name: 'DescribeRecipeResponse')
    DescribeRecommenderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeRecommenderRequest', name: 'DescribeRecommenderRequest')
    DescribeRecommenderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeRecommenderResponse', name: 'DescribeRecommenderResponse')
    DescribeSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeSchemaRequest', name: 'DescribeSchemaRequest')
    DescribeSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeSchemaResponse', name: 'DescribeSchemaResponse')
    DescribeSolutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeSolutionRequest', name: 'DescribeSolutionRequest')
    DescribeSolutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeSolutionResponse', name: 'DescribeSolutionResponse')
    DescribeSolutionVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeSolutionVersionRequest', name: 'DescribeSolutionVersionRequest')
    DescribeSolutionVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#DescribeSolutionVersionResponse', name: 'DescribeSolutionVersionResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#Description', name: 'Description')
    DockerURI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#DockerURI', name: 'DockerURI', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Domain = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#Domain', name: 'Domain')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#ErrorMessage', name: 'ErrorMessage')
    EventParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#EventParameters', name: 'EventParameters')
    EventParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#EventParametersList', name: 'EventParametersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EventTracker = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#EventTracker', name: 'EventTracker')
    EventTrackerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#EventTrackerSummary', name: 'EventTrackerSummary')
    EventTrackers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#EventTrackers', name: 'EventTrackers', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    EventType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#EventType', name: 'EventType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    EventTypeThresholdValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalize#EventTypeThresholdValue', name: 'EventTypeThresholdValue')
    EventTypeWeight = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalize#EventTypeWeight', name: 'EventTypeWeight', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    EventValueThreshold = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#EventValueThreshold', name: 'EventValueThreshold', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    EventsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#EventsConfig', name: 'EventsConfig')
    ExcludedDatasetColumns = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalize#ExcludedDatasetColumns', name: 'ExcludedDatasetColumns', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    FailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#FailureReason', name: 'FailureReason')
    FeatureTransformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#FeatureTransformation', name: 'FeatureTransformation')
    FeatureTransformationParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalize#FeatureTransformationParameters', name: 'FeatureTransformationParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FeaturizationParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalize#FeaturizationParameters', name: 'FeaturizationParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FieldsForThemeGeneration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#FieldsForThemeGeneration', name: 'FieldsForThemeGeneration')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Filter', name: 'Filter')
    FilterExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#FilterExpression', name: 'FilterExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}, "smithy.api#sensitive" => {}})
    FilterSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#FilterSummary', name: 'FilterSummary')
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetSolutionMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#GetSolutionMetricsRequest', name: 'GetSolutionMetricsRequest')
    GetSolutionMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#GetSolutionMetricsResponse', name: 'GetSolutionMetricsResponse')
    HPOConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#HPOConfig', name: 'HPOConfig')
    HPOObjective = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#HPOObjective', name: 'HPOObjective')
    HPOObjectiveType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#HPOObjectiveType', name: 'HPOObjectiveType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HPOResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#HPOResource', name: 'HPOResource', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HPOResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#HPOResourceConfig', name: 'HPOResourceConfig')
    HyperParameterRanges = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#HyperParameterRanges', name: 'HyperParameterRanges')
    HyperParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalize#HyperParameters', name: 'HyperParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ImportMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#ImportMode', name: 'ImportMode')
    IngestionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#IngestionMode', name: 'IngestionMode')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalize#Integer', name: 'Integer')
    IntegerHyperParameterRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#IntegerHyperParameterRange', name: 'IntegerHyperParameterRange')
    IntegerHyperParameterRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#IntegerHyperParameterRanges', name: 'IntegerHyperParameterRanges', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    IntegerMaxValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalize#IntegerMaxValue', name: 'IntegerMaxValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 1000000}})
    IntegerMinValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalize#IntegerMinValue', name: 'IntegerMinValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1000000}})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ItemAttribute = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#ItemAttribute', name: 'ItemAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kms:.*:[0-9]{12}:key/"})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ListBatchInferenceJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListBatchInferenceJobsRequest', name: 'ListBatchInferenceJobsRequest')
    ListBatchInferenceJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListBatchInferenceJobsResponse', name: 'ListBatchInferenceJobsResponse')
    ListBatchSegmentJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListBatchSegmentJobsRequest', name: 'ListBatchSegmentJobsRequest')
    ListBatchSegmentJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListBatchSegmentJobsResponse', name: 'ListBatchSegmentJobsResponse')
    ListCampaignsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListCampaignsRequest', name: 'ListCampaignsRequest')
    ListCampaignsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListCampaignsResponse', name: 'ListCampaignsResponse')
    ListDataDeletionJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDataDeletionJobsRequest', name: 'ListDataDeletionJobsRequest')
    ListDataDeletionJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDataDeletionJobsResponse', name: 'ListDataDeletionJobsResponse')
    ListDatasetExportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetExportJobsRequest', name: 'ListDatasetExportJobsRequest')
    ListDatasetExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetExportJobsResponse', name: 'ListDatasetExportJobsResponse')
    ListDatasetGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetGroupsRequest', name: 'ListDatasetGroupsRequest')
    ListDatasetGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetGroupsResponse', name: 'ListDatasetGroupsResponse')
    ListDatasetImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetImportJobsRequest', name: 'ListDatasetImportJobsRequest')
    ListDatasetImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetImportJobsResponse', name: 'ListDatasetImportJobsResponse')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListEventTrackersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListEventTrackersRequest', name: 'ListEventTrackersRequest')
    ListEventTrackersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListEventTrackersResponse', name: 'ListEventTrackersResponse')
    ListFiltersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListFiltersRequest', name: 'ListFiltersRequest')
    ListFiltersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListFiltersResponse', name: 'ListFiltersResponse')
    ListMetricAttributionMetricsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListMetricAttributionMetricsRequest', name: 'ListMetricAttributionMetricsRequest')
    ListMetricAttributionMetricsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListMetricAttributionMetricsResponse', name: 'ListMetricAttributionMetricsResponse')
    ListMetricAttributionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListMetricAttributionsRequest', name: 'ListMetricAttributionsRequest')
    ListMetricAttributionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListMetricAttributionsResponse', name: 'ListMetricAttributionsResponse')
    ListRecipesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListRecipesRequest', name: 'ListRecipesRequest')
    ListRecipesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListRecipesResponse', name: 'ListRecipesResponse')
    ListRecommendersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListRecommendersRequest', name: 'ListRecommendersRequest')
    ListRecommendersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListRecommendersResponse', name: 'ListRecommendersResponse')
    ListSchemasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListSchemasRequest', name: 'ListSchemasRequest')
    ListSchemasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListSchemasResponse', name: 'ListSchemasResponse')
    ListSolutionVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListSolutionVersionsRequest', name: 'ListSolutionVersionsRequest')
    ListSolutionVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListSolutionVersionsResponse', name: 'ListSolutionVersionsResponse')
    ListSolutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListSolutionsRequest', name: 'ListSolutionsRequest')
    ListSolutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListSolutionsResponse', name: 'ListSolutionsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalize#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#MetricAttribute', name: 'MetricAttribute')
    MetricAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#MetricAttributes', name: 'MetricAttributes', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MetricAttributesNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#MetricAttributesNamesList', name: 'MetricAttributesNamesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MetricAttribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#MetricAttribution', name: 'MetricAttribution')
    MetricAttributionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#MetricAttributionOutput', name: 'MetricAttributionOutput')
    MetricAttributionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#MetricAttributionSummary', name: 'MetricAttributionSummary')
    MetricAttributions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#MetricAttributions', name: 'MetricAttributions', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MetricExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#MetricExpression', name: 'MetricExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricRegex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#MetricRegex', name: 'MetricRegex', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalize#MetricValue', name: 'MetricValue', traits: {"smithy.api#default" => 0})
    Metrics = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalize#Metrics', name: 'Metrics', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}, "smithy.api#pattern" => "^\\p{ASCII}{0,1500}$"})
    NumBatchResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalize#NumBatchResults', name: 'NumBatchResults')
    ObjectiveSensitivity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#ObjectiveSensitivity', name: 'ObjectiveSensitivity')
    OptimizationObjective = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#OptimizationObjective', name: 'OptimizationObjective')
    ParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#ParameterName', name: 'ParameterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    PerformAutoML = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.personalize#PerformAutoML', name: 'PerformAutoML', traits: {"smithy.api#default" => false})
    PerformAutoTraining = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.personalize#PerformAutoTraining', name: 'PerformAutoTraining')
    PerformHPO = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.personalize#PerformHPO', name: 'PerformHPO', traits: {"smithy.api#default" => false})
    Recipe = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Recipe', name: 'Recipe')
    RecipeProvider = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#RecipeProvider', name: 'RecipeProvider')
    RecipeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#RecipeSummary', name: 'RecipeSummary')
    RecipeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#RecipeType', name: 'RecipeType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Recipes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Recipes', name: 'Recipes', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Recommender = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Recommender', name: 'Recommender')
    RecommenderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#RecommenderConfig', name: 'RecommenderConfig')
    RecommenderSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#RecommenderSummary', name: 'RecommenderSummary')
    RecommenderUpdateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#RecommenderUpdateSummary', name: 'RecommenderUpdateSummary')
    Recommenders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Recommenders', name: 'Recommenders', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ResourceConfig = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.personalize#ResourceConfig', name: 'ResourceConfig', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3DataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#S3DataConfig', name: 'S3DataConfig')
    S3Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#S3Location', name: 'S3Location', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(s3|http|https)://.+$"})
    SchedulingExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#SchedulingExpression', name: 'SchedulingExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^rate\\(\\d+ days?\\)$"})
    Schemas = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Schemas', name: 'Schemas', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Solution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Solution', name: 'Solution')
    SolutionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#SolutionConfig', name: 'SolutionConfig')
    SolutionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#SolutionSummary', name: 'SolutionSummary')
    SolutionUpdateConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#SolutionUpdateConfig', name: 'SolutionUpdateConfig')
    SolutionUpdateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#SolutionUpdateSummary', name: 'SolutionUpdateSummary')
    SolutionVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#SolutionVersion', name: 'SolutionVersion')
    SolutionVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#SolutionVersionSummary', name: 'SolutionVersionSummary')
    SolutionVersions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#SolutionVersions', name: 'SolutionVersions', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Solutions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Solutions', name: 'Solutions', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartRecommenderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#StartRecommenderRequest', name: 'StartRecommenderRequest')
    StartRecommenderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#StartRecommenderResponse', name: 'StartRecommenderResponse')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#Status', name: 'Status', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    StopRecommenderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#StopRecommenderRequest', name: 'StopRecommenderRequest')
    StopRecommenderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#StopRecommenderResponse', name: 'StopRecommenderResponse')
    StopSolutionVersionCreationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#StopSolutionVersionCreationRequest', name: 'StopSolutionVersionCreationRequest')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.personalize#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThemeGenerationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#ThemeGenerationConfig', name: 'ThemeGenerationConfig')
    TooManyTagKeysException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#TooManyTagKeysException', name: 'TooManyTagKeysException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrackingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#TrackingId', name: 'TrackingId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TrainingDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#TrainingDataConfig', name: 'TrainingDataConfig')
    TrainingHours = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.personalize#TrainingHours', name: 'TrainingHours', traits: {"smithy.api#range" => {"min" => 0}})
    TrainingInputMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.personalize#TrainingInputMode', name: 'TrainingInputMode', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TrainingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#TrainingMode', name: 'TrainingMode')
    TrainingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.personalize#TrainingType', name: 'TrainingType')
    TransactionsPerSecond = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.personalize#TransactionsPerSecond', name: 'TransactionsPerSecond', traits: {"smithy.api#range" => {"min" => 1}})
    Tunable = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.personalize#Tunable', name: 'Tunable', traits: {"smithy.api#default" => false})
    TunedHPOParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#TunedHPOParams', name: 'TunedHPOParams')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateCampaignRequest', name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateCampaignResponse', name: 'UpdateCampaignResponse')
    UpdateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateDatasetRequest', name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateDatasetResponse', name: 'UpdateDatasetResponse')
    UpdateMetricAttributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateMetricAttributionRequest', name: 'UpdateMetricAttributionRequest')
    UpdateMetricAttributionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateMetricAttributionResponse', name: 'UpdateMetricAttributionResponse')
    UpdateRecommenderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateRecommenderRequest', name: 'UpdateRecommenderRequest')
    UpdateRecommenderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateRecommenderResponse', name: 'UpdateRecommenderResponse')
    UpdateSolutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateSolutionRequest', name: 'UpdateSolutionRequest')
    UpdateSolutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.personalize#UpdateSolutionResponse', name: 'UpdateSolutionResponse')

    Algorithm.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the algorithm.</p>"}))
    Algorithm.add_member(:algorithm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'algorithmArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the algorithm.</p>"}))
    Algorithm.add_member(:algorithm_image, Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: 'algorithmImage', traits: {"smithy.api#documentation" => "<p>The URI of the Docker container for the algorithm image.</p>"}))
    Algorithm.add_member(:default_hyper_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'defaultHyperParameters', traits: {"smithy.api#documentation" => "<p>Specifies the default hyperparameters.</p>"}))
    Algorithm.add_member(:default_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultHyperParameterRanges, location_name: 'defaultHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>Specifies the default hyperparameters, their ranges, and whether they\n      are tunable. A tunable hyperparameter can\n      have its value determined during hyperparameter optimization (HPO).</p>"}))
    Algorithm.add_member(:default_resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfig, location_name: 'defaultResourceConfig', traits: {"smithy.api#documentation" => "<p>Specifies the default maximum number of training jobs and parallel training jobs.</p>"}))
    Algorithm.add_member(:training_input_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: 'trainingInputMode', traits: {"smithy.api#documentation" => "<p>The training input mode.</p>"}))
    Algorithm.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role.</p>"}))
    Algorithm.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the algorithm was created.</p>"}))
    Algorithm.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the algorithm was last updated.</p>"}))
    Algorithm.type = Types::Algorithm
    AlgorithmImage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the algorithm image.</p>"}))
    AlgorithmImage.add_member(:docker_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DockerURI, location_name: 'dockerURI', traits: {"smithy.api#documentation" => "<p>The URI of the Docker container for the algorithm image.</p>", "smithy.api#required" => {}}))
    AlgorithmImage.type = Types::AlgorithmImage
    ArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AutoMLConfig.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>The metric to optimize.</p>"}))
    AutoMLConfig.add_member(:recipe_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'recipeList', traits: {"smithy.api#documentation" => "<p>The list of candidate recipes.</p>"}))
    AutoMLConfig.type = Types::AutoMLConfig
    AutoMLResult.add_member(:best_recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'bestRecipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the best recipe.</p>"}))
    AutoMLResult.type = Types::AutoMLResult
    AutoTrainingConfig.add_member(:scheduling_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulingExpression, location_name: 'schedulingExpression', traits: {"smithy.api#documentation" => "<p>Specifies how often to automatically train new solution versions. Specify a rate expression in rate(<i>value</i>\n            <i>unit</i>) format.\n      For value, specify a number between 1 and 30. For unit, specify <code>day</code> or <code>days</code>.\n      For example, to automatically create a new solution version every 5 days, specify <code>rate(5 days)</code>. The default is every 7 days.</p>\n         <p>For more information about auto training, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html\">Creating and configuring a solution</a>.</p>"}))
    AutoTrainingConfig.type = Types::AutoTrainingConfig
    BatchInferenceJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the batch inference job.</p>"}))
    BatchInferenceJob.add_member(:batch_inference_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchInferenceJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the batch inference job.</p>"}))
    BatchInferenceJob.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter used on the batch inference job.</p>"}))
    BatchInferenceJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If the batch inference job failed, the reason for the failure.</p>"}))
    BatchInferenceJob.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version from which the batch inference job\n      was created.</p>"}))
    BatchInferenceJob.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumBatchResults, location_name: 'numResults', traits: {"smithy.api#documentation" => "<p>The number of recommendations generated by the batch inference job. This number includes\n      the error messages generated for failed input records.</p>"}))
    BatchInferenceJob.add_member(:job_input, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobInput, location_name: 'jobInput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path that leads to the input data used to generate the batch inference\n      job.</p>"}))
    BatchInferenceJob.add_member(:job_output, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobOutput, location_name: 'jobOutput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the output data generated by the batch inference job.</p>"}))
    BatchInferenceJob.add_member(:batch_inference_job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobConfig, location_name: 'batchInferenceJobConfig', traits: {"smithy.api#documentation" => "<p>A string to string map of the configuration details of a batch inference job.</p>"}))
    BatchInferenceJob.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Identity and Access Management (IAM) role that requested the batch inference job.</p>"}))
    BatchInferenceJob.add_member(:batch_inference_job_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobMode, location_name: 'batchInferenceJobMode', traits: {"smithy.api#documentation" => "<p>The job's mode.</p>"}))
    BatchInferenceJob.add_member(:theme_generation_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeGenerationConfig, location_name: 'themeGenerationConfig', traits: {"smithy.api#documentation" => "<p>The job's theme generation settings.</p>"}))
    BatchInferenceJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the batch inference job. The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>PENDING</p>\n            </li>\n            <li>\n               <p>IN PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n         </ul>"}))
    BatchInferenceJob.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch inference job was created.</p>"}))
    BatchInferenceJob.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch inference job was last updated.</p>"}))
    BatchInferenceJob.type = Types::BatchInferenceJob
    BatchInferenceJobConfig.add_member(:item_exploration_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'itemExplorationConfig', traits: {"smithy.api#documentation" => "<p>A string to string map specifying the exploration configuration hyperparameters, including <code>explorationWeight</code> and \n      <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when\n      recommending items. \n      See <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a>.</p>"}))
    BatchInferenceJobConfig.type = Types::BatchInferenceJobConfig
    BatchInferenceJobInput.add_member(:s3_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataConfig, location_name: 's3DataSource', traits: {"smithy.api#documentation" => "<p>The URI of the Amazon S3 location that contains your input data. The Amazon S3 bucket must be in the\n      same region as the API endpoint you are calling.</p>", "smithy.api#required" => {}}))
    BatchInferenceJobInput.type = Types::BatchInferenceJobInput
    BatchInferenceJobMode.add_member(:batch_inference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BATCH_INFERENCE', traits: {"smithy.api#enumValue" => "BATCH_INFERENCE"}))
    BatchInferenceJobMode.add_member(:theme_generation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THEME_GENERATION', traits: {"smithy.api#enumValue" => "THEME_GENERATION"}))
    BatchInferenceJobOutput.add_member(:s3_data_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataConfig, location_name: 's3DataDestination', traits: {"smithy.api#documentation" => "<p>Information on the Amazon S3 bucket in which the batch inference job's output is stored.</p>", "smithy.api#required" => {}}))
    BatchInferenceJobOutput.type = Types::BatchInferenceJobOutput
    BatchInferenceJobSummary.add_member(:batch_inference_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchInferenceJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the batch inference job.</p>"}))
    BatchInferenceJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the batch inference job.</p>"}))
    BatchInferenceJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the batch inference job. The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>PENDING</p>\n            </li>\n            <li>\n               <p>IN PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n         </ul>"}))
    BatchInferenceJobSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch inference job was created.</p>"}))
    BatchInferenceJobSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch inference job was last updated.</p>"}))
    BatchInferenceJobSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If the batch inference job failed, the reason for the failure.</p>"}))
    BatchInferenceJobSummary.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the solution version used by the batch inference job.</p>"}))
    BatchInferenceJobSummary.add_member(:batch_inference_job_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobMode, location_name: 'batchInferenceJobMode', traits: {"smithy.api#documentation" => "<p>The job's mode.</p>"}))
    BatchInferenceJobSummary.type = Types::BatchInferenceJobSummary
    BatchInferenceJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobSummary)
    BatchSegmentJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the batch segment job.</p>"}))
    BatchSegmentJob.add_member(:batch_segment_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchSegmentJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the batch segment job.</p>"}))
    BatchSegmentJob.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter used on the batch segment job.</p>"}))
    BatchSegmentJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If the batch segment job failed, the reason for the failure.</p>"}))
    BatchSegmentJob.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version used by the batch segment job to generate batch segments.</p>"}))
    BatchSegmentJob.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumBatchResults, location_name: 'numResults', traits: {"smithy.api#documentation" => "<p>The number of predicted users generated by the batch segment job for each line of input data. The maximum number of users per segment is 5 million.</p>"}))
    BatchSegmentJob.add_member(:job_input, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJobInput, location_name: 'jobInput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path that leads to the input data used to generate the batch segment job.</p>"}))
    BatchSegmentJob.add_member(:job_output, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJobOutput, location_name: 'jobOutput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the output data generated by the batch segment job.</p>"}))
    BatchSegmentJob.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Identity and Access Management (IAM) role that requested the batch segment job.</p>"}))
    BatchSegmentJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the batch segment job. The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>PENDING</p>\n            </li>\n            <li>\n               <p>IN PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n         </ul>"}))
    BatchSegmentJob.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch segment job was created.</p>"}))
    BatchSegmentJob.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch segment job last updated.</p>"}))
    BatchSegmentJob.type = Types::BatchSegmentJob
    BatchSegmentJobInput.add_member(:s3_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataConfig, location_name: 's3DataSource', traits: {"smithy.api#required" => {}}))
    BatchSegmentJobInput.type = Types::BatchSegmentJobInput
    BatchSegmentJobOutput.add_member(:s3_data_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataConfig, location_name: 's3DataDestination', traits: {"smithy.api#required" => {}}))
    BatchSegmentJobOutput.type = Types::BatchSegmentJobOutput
    BatchSegmentJobSummary.add_member(:batch_segment_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchSegmentJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the batch segment job.</p>"}))
    BatchSegmentJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the batch segment job.</p>"}))
    BatchSegmentJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the batch segment job. The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>PENDING</p>\n            </li>\n            <li>\n               <p>IN PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n         </ul>"}))
    BatchSegmentJobSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch segment job was created.</p>"}))
    BatchSegmentJobSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the batch segment job was last updated.</p>"}))
    BatchSegmentJobSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If the batch segment job failed, the reason for the failure.</p>"}))
    BatchSegmentJobSummary.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version used by the batch segment job to generate batch segments.</p>"}))
    BatchSegmentJobSummary.type = Types::BatchSegmentJobSummary
    BatchSegmentJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJobSummary)
    Campaign.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the campaign.</p>"}))
    Campaign.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign. </p>"}))
    Campaign.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version the campaign uses.</p>"}))
    Campaign.add_member(:min_provisioned_tps, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: 'minProvisionedTPS', traits: {"smithy.api#documentation" => "<p>Specifies the requested minimum provisioned transactions (recommendations) per second. A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track\n      your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code>\n      as necessary.</p>"}))
    Campaign.add_member(:campaign_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignConfig, location_name: 'campaignConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of a campaign.</p>"}))
    Campaign.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the campaign.</p>\n         <p>A campaign can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    Campaign.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a campaign fails, the reason behind the failure.</p>"}))
    Campaign.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the campaign was created.</p>"}))
    Campaign.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the campaign was last updated.</p>"}))
    Campaign.add_member(:latest_campaign_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignUpdateSummary, location_name: 'latestCampaignUpdate'))
    Campaign.type = Types::Campaign
    CampaignConfig.add_member(:item_exploration_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'itemExplorationConfig', traits: {"smithy.api#documentation" => "<p>Specifies the exploration configuration hyperparameters, including <code>explorationWeight</code> and \n      <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when\n      recommending items. Provide <code>itemExplorationConfig</code> data only if your solution uses the\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a> recipe.</p>"}))
    CampaignConfig.add_member(:enable_metadata_with_recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableMetadataWithRecommendations', traits: {"smithy.api#documentation" => "<p>Whether metadata with recommendations is enabled for the campaign. \n      If enabled, you can specify the columns from your Items dataset in your request for recommendations. Amazon Personalize returns this data for each item in the recommendation response.\n    For information about enabling metadata for a campaign, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata\">Enabling metadata in recommendations for a campaign</a>.</p>\n         <p>\n      If you enable metadata in recommendations, you will incur additional costs. For more information, see <a href=\"https://aws.amazon.com/personalize/pricing/\">Amazon Personalize pricing</a>.\n    </p>"}))
    CampaignConfig.add_member(:sync_with_latest_solution_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'syncWithLatestSolutionVersion', traits: {"smithy.api#documentation" => "<p>Whether the campaign automatically updates to use the latest solution version (trained model) of a solution. If you specify <code>True</code>, \n      you must specify the ARN of your <i>solution</i> for the <code>SolutionVersionArn</code> parameter. It must be in <code>SolutionArn/$LATEST</code> format.\n      The default is <code>False</code> and you must manually update the campaign to deploy the latest solution version. \n    </p>\n         <p>\n      For more information about automatic campaign updates, see \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update\">Enabling automatic campaign updates</a>.\n    </p>"}))
    CampaignConfig.type = Types::CampaignConfig
    CampaignSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the campaign.</p>"}))
    CampaignSummary.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign.</p>"}))
    CampaignSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the campaign.</p>\n         <p>A campaign can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    CampaignSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the campaign was created.</p>"}))
    CampaignSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the campaign was last updated.</p>"}))
    CampaignSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a campaign fails, the reason behind the failure.</p>"}))
    CampaignSummary.type = Types::CampaignSummary
    CampaignUpdateSummary.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployed solution version.</p>"}))
    CampaignUpdateSummary.add_member(:min_provisioned_tps, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: 'minProvisionedTPS', traits: {"smithy.api#documentation" => "<p>Specifies the requested minimum provisioned transactions (recommendations) per second that\n      Amazon Personalize will support.</p>"}))
    CampaignUpdateSummary.add_member(:campaign_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignConfig, location_name: 'campaignConfig'))
    CampaignUpdateSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the campaign update.</p>\n         <p>A campaign update can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    CampaignUpdateSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a campaign update fails, the reason behind the failure.</p>"}))
    CampaignUpdateSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the campaign update was created.</p>"}))
    CampaignUpdateSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the campaign update was last updated.</p>"}))
    CampaignUpdateSummary.type = Types::CampaignUpdateSummary
    Campaigns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummary)
    CategoricalHyperParameterRange.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the hyperparameter.</p>"}))
    CategoricalHyperParameterRange.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoricalValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of the categories for the hyperparameter.</p>"}))
    CategoricalHyperParameterRange.type = Types::CategoricalHyperParameterRange
    CategoricalHyperParameterRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CategoricalHyperParameterRange)
    CategoricalValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CategoricalValue)
    ColumnNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    ContinuousHyperParameterRange.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the hyperparameter.</p>"}))
    ContinuousHyperParameterRange.add_member(:min_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousMinValue, location_name: 'minValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum allowable value for the hyperparameter.</p>"}))
    ContinuousHyperParameterRange.add_member(:max_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousMaxValue, location_name: 'maxValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum allowable value for the hyperparameter.</p>"}))
    ContinuousHyperParameterRange.type = Types::ContinuousHyperParameterRange
    ContinuousHyperParameterRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousHyperParameterRange)
    CreateBatchInferenceJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the batch inference job to create.</p>", "smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version that will be used to generate the\n      batch inference recommendations.</p>", "smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter to apply to the batch inference job. For more information on using\n      filters, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html\">Filtering batch recommendations</a>.</p>"}))
    CreateBatchInferenceJobRequest.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumBatchResults, location_name: 'numResults', traits: {"smithy.api#documentation" => "<p>The number of recommendations to retrieve.</p>"}))
    CreateBatchInferenceJobRequest.add_member(:job_input, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobInput, location_name: 'jobInput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path that leads to the input file to base your recommendations on. The input\n      material must be in JSON format.</p>", "smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:job_output, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobOutput, location_name: 'jobOutput', traits: {"smithy.api#documentation" => "<p>The path to the Amazon S3 bucket where the job's output will be stored.</p>", "smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output\n      Amazon S3 buckets respectively.</p>", "smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:batch_inference_job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobConfig, location_name: 'batchInferenceJobConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of a batch inference job.</p>"}))
    CreateBatchInferenceJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the batch inference job.</p>"}))
    CreateBatchInferenceJobRequest.add_member(:batch_inference_job_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobMode, location_name: 'batchInferenceJobMode', traits: {"smithy.api#documentation" => "<p>The mode of the batch inference job. To generate descriptive themes for groups of similar items, set the\n      job mode to <code>THEME_GENERATION</code>. If you don't want to generate themes, use the default <code>BATCH_INFERENCE</code>.</p>\n         <p>\n      When you get batch recommendations with themes, you will incur additional costs. For more information, see <a href=\"https://aws.amazon.com/personalize/pricing/\">Amazon Personalize pricing</a>.\n    </p>"}))
    CreateBatchInferenceJobRequest.add_member(:theme_generation_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeGenerationConfig, location_name: 'themeGenerationConfig', traits: {"smithy.api#documentation" => "<p>For theme generation jobs, specify the name of the column in your Items\n      dataset that contains each item's name.</p>"}))
    CreateBatchInferenceJobRequest.type = Types::CreateBatchInferenceJobRequest
    CreateBatchInferenceJobResponse.add_member(:batch_inference_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchInferenceJobArn', traits: {"smithy.api#documentation" => "<p>The ARN of the batch inference job.</p>"}))
    CreateBatchInferenceJobResponse.type = Types::CreateBatchInferenceJobResponse
    CreateBatchSegmentJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the batch segment job to create.</p>", "smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version you want the batch segment job to use to generate\n      batch segments.</p>", "smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter to apply to the batch segment job. For more information on using\n      filters, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html\">Filtering batch recommendations</a>.</p>"}))
    CreateBatchSegmentJobRequest.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumBatchResults, location_name: 'numResults', traits: {"smithy.api#documentation" => "<p>The number of predicted users generated by the batch segment job for each line of input data. The maximum number of users per segment is 5 million.</p>"}))
    CreateBatchSegmentJobRequest.add_member(:job_input, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJobInput, location_name: 'jobInput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path for the input data used to generate the batch segment job.</p>", "smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:job_output, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJobOutput, location_name: 'jobOutput', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path for the bucket where the job's output will be stored.</p>", "smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output\n      Amazon S3 buckets respectively.</p>", "smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the batch segment job.</p>"}))
    CreateBatchSegmentJobRequest.type = Types::CreateBatchSegmentJobRequest
    CreateBatchSegmentJobResponse.add_member(:batch_segment_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchSegmentJobArn', traits: {"smithy.api#documentation" => "<p>The ARN of the batch segment job.</p>"}))
    CreateBatchSegmentJobResponse.type = Types::CreateBatchSegmentJobResponse
    CreateCampaignRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the new campaign. The campaign name must be unique within your account.</p>", "smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trained model to deploy with the campaign. To specify the latest solution version of your solution, \n      specify the ARN of your <i>solution</i> in <code>SolutionArn/$LATEST</code> format.\n      You must use this format if you set <code>syncWithLatestSolutionVersion</code> to <code>True</code> in the \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html\">CampaignConfig</a>.\n    </p>\n         <p>\n      To deploy a model that isn't the latest solution version of your solution, specify the ARN of the solution version.\n    </p>\n         <p>\n      For more information about automatic campaign updates, see \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update\">Enabling automatic campaign updates</a>.\n    </p>", "smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:min_provisioned_tps, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: 'minProvisionedTPS', traits: {"smithy.api#documentation" => "<p>Specifies the requested minimum provisioned transactions (recommendations) per second that\n      Amazon Personalize will support.  A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track\n      your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code> as necessary.</p>"}))
    CreateCampaignRequest.add_member(:campaign_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignConfig, location_name: 'campaignConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of a campaign.</p>"}))
    CreateCampaignRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the campaign.</p>"}))
    CreateCampaignRequest.type = Types::CreateCampaignRequest
    CreateCampaignResponse.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign.</p>"}))
    CreateCampaignResponse.type = Types::CreateCampaignResponse
    CreateDataDeletionJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name for the data deletion job.</p>", "smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group that has the datasets you want to\n    delete records from.</p>", "smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the list of userIds of the users to delete.</p>", "smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that has permissions to read from the Amazon S3\n      data source.</p>", "smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the data deletion job.</p>"}))
    CreateDataDeletionJobRequest.type = Types::CreateDataDeletionJobRequest
    CreateDataDeletionJobResponse.add_member(:data_deletion_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'dataDeletionJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data deletion job.</p>"}))
    CreateDataDeletionJobResponse.type = Types::CreateDataDeletionJobResponse
    CreateDatasetExportJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name for the dataset export job.</p>", "smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset that contains the data\n      to export.</p>", "smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:ingestion_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionMode, location_name: 'ingestionMode', traits: {"smithy.api#documentation" => "<p>The data to export, based on how you imported the data. You can choose\n      to export only <code>BULK</code> data that you imported using a dataset\n      import job, only <code>PUT</code> data that you imported incrementally\n      (using the console, PutEvents, PutUsers and PutItems operations), or\n        <code>ALL</code> for both types. The default value is <code>PUT</code>.\n    </p>"}))
    CreateDatasetExportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that has\n      permissions to add data to your output Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:job_output, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetExportJobOutput, location_name: 'jobOutput', traits: {"smithy.api#documentation" => "<p>The path to the Amazon S3 bucket where the job's output is stored.</p>", "smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the dataset export job.</p>"}))
    CreateDatasetExportJobRequest.type = Types::CreateDatasetExportJobRequest
    CreateDatasetExportJobResponse.add_member(:dataset_export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetExportJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset export job.</p>"}))
    CreateDatasetExportJobResponse.type = Types::CreateDatasetExportJobResponse
    CreateDatasetGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the new dataset group.</p>", "smithy.api#required" => {}}))
    CreateDatasetGroupRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity and Access Management (IAM) role that has permissions to access\n      the Key Management Service (KMS) key. Supplying an IAM role is only valid when also\n      specifying a KMS key.</p>"}))
    CreateDatasetGroupRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a Key Management Service (KMS) key used to\n      encrypt the datasets.</p>"}))
    CreateDatasetGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of the dataset group. Specify a domain to create a\n      Domain dataset group. The domain you specify determines the default\n      schemas for datasets and the use cases available for recommenders. If you\n      don't specify a domain, you create a Custom dataset group with solution\n      versions that you deploy with a campaign. </p>"}))
    CreateDatasetGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the dataset group.</p>"}))
    CreateDatasetGroupRequest.type = Types::CreateDatasetGroupRequest
    CreateDatasetGroupResponse.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new dataset group.</p>"}))
    CreateDatasetGroupResponse.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain for the new Domain dataset group.</p>"}))
    CreateDatasetGroupResponse.type = Types::CreateDatasetGroupResponse
    CreateDatasetImportJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name for the dataset import job.</p>", "smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset that receives the imported data.</p>", "smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the training data to import.</p>", "smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that has permissions to read from the Amazon S3\n      data source.</p>", "smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the dataset import job.</p>"}))
    CreateDatasetImportJobRequest.add_member(:import_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportMode, location_name: 'importMode', traits: {"smithy.api#documentation" => "<p>Specify how to add the new records to an existing dataset. The default\n      import mode is <code>FULL</code>. If you haven't imported bulk records into the dataset previously, you\n      can only specify <code>FULL</code>.</p>\n         <ul>\n            <li>\n               <p>Specify <code>FULL</code> to overwrite all existing bulk data in\n          your dataset. Data you imported individually is not replaced.</p>\n            </li>\n            <li>\n               <p>Specify <code>INCREMENTAL</code> to append the new records to the\n          existing data in your dataset. Amazon Personalize replaces any record with the\n          same ID with the new one.</p>\n            </li>\n         </ul>"}))
    CreateDatasetImportJobRequest.add_member(:publish_attribution_metrics_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publishAttributionMetricsToS3', traits: {"smithy.api#documentation" => "<p>If you created a metric attribution, specify whether to publish metrics for this import job to Amazon S3</p>"}))
    CreateDatasetImportJobRequest.type = Types::CreateDatasetImportJobRequest
    CreateDatasetImportJobResponse.add_member(:dataset_import_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetImportJobArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset import job.</p>"}))
    CreateDatasetImportJobResponse.type = Types::CreateDatasetImportJobResponse
    CreateDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the schema to associate with the dataset. The schema\n      defines the dataset fields.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group to add the dataset\n      to.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'datasetType', traits: {"smithy.api#documentation" => "<p>The type of dataset.</p>\n         <p>One of the following (case insensitive) values:</p>\n         <ul>\n            <li>\n               <p>Interactions</p>\n            </li>\n            <li>\n               <p>Items</p>\n            </li>\n            <li>\n               <p>Users</p>\n            </li>\n            <li>\n               <p>Actions</p>\n            </li>\n            <li>\n               <p>Action_Interactions</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the dataset.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateEventTrackerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the event tracker.</p>", "smithy.api#required" => {}}))
    CreateEventTrackerRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>", "smithy.api#required" => {}}))
    CreateEventTrackerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the event tracker.</p>"}))
    CreateEventTrackerRequest.type = Types::CreateEventTrackerRequest
    CreateEventTrackerResponse.add_member(:event_tracker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'eventTrackerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event tracker.</p>"}))
    CreateEventTrackerResponse.add_member(:tracking_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingId, location_name: 'trackingId', traits: {"smithy.api#documentation" => "<p>The ID of the event tracker. Include this ID in requests to the\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p>"}))
    CreateEventTrackerResponse.type = Types::CreateEventTrackerResponse
    CreateFilterRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter to create.</p>", "smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset group that the filter will belong to.</p>", "smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'filterExpression', traits: {"smithy.api#documentation" => "<p>The filter expression defines which items are included or excluded from recommendations. Filter expression must follow specific format rules. \n            For information about filter expression structure and syntax, see\n            <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html\">Filter expressions</a>.</p>", "smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the filter.</p>"}))
    CreateFilterRequest.type = Types::CreateFilterRequest
    CreateFilterResponse.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the new filter.</p>"}))
    CreateFilterResponse.type = Types::CreateFilterResponse
    CreateMetricAttributionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the metric attribution.</p>", "smithy.api#required" => {}}))
    CreateMetricAttributionRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination dataset group for the metric attribution.</p>", "smithy.api#required" => {}}))
    CreateMetricAttributionRequest.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributes, location_name: 'metrics', traits: {"smithy.api#documentation" => "<p>A list of metric attributes for the metric attribution. Each metric attribute specifies an event type to track and a function.\n      Available functions are <code>SUM()</code> or <code>SAMPLECOUNT()</code>. For SUM() functions, provide the \n      dataset type (either Interactions or Items) and column to sum as a parameter. For example SUM(Items.PRICE).</p>", "smithy.api#required" => {}}))
    CreateMetricAttributionRequest.add_member(:metrics_output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributionOutput, location_name: 'metricsOutputConfig', traits: {"smithy.api#documentation" => "<p>The output configuration details for the metric attribution.</p>", "smithy.api#required" => {}}))
    CreateMetricAttributionRequest.type = Types::CreateMetricAttributionRequest
    CreateMetricAttributionResponse.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the new metric attribution.</p>"}))
    CreateMetricAttributionResponse.type = Types::CreateMetricAttributionResponse
    CreateRecommenderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the recommender.</p>", "smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination domain dataset group for the recommender.</p>", "smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe that the recommender will use. For a recommender, a recipe is a Domain dataset group\n      use case. Only Domain dataset group use cases can be used to create a recommender. For information about use cases see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html\">Choosing recommender use cases</a>.\n    </p>", "smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recommender_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfig, location_name: 'recommenderConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of the recommender.</p>"}))
    CreateRecommenderRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the recommender.</p>"}))
    CreateRecommenderRequest.type = Types::CreateRecommenderRequest
    CreateRecommenderResponse.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender.</p>"}))
    CreateRecommenderResponse.type = Types::CreateRecommenderResponse
    CreateSchemaRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the schema.</p>", "smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: AvroSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>A schema in Avro JSON format.</p>", "smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain for the schema. If you are creating a schema for a dataset in a Domain dataset group, specify\n    the domain you chose when you created the Domain dataset group.</p>"}))
    CreateSchemaRequest.type = Types::CreateSchemaRequest
    CreateSchemaResponse.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created schema.</p>"}))
    CreateSchemaResponse.type = Types::CreateSchemaResponse
    CreateSolutionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the solution.</p>", "smithy.api#required" => {}}))
    CreateSolutionRequest.add_member(:perform_hpo, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'performHPO', traits: {"smithy.api#documentation" => "<p>Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe.\n      The default is <code>false</code>.</p>\n         <p>When performing AutoML, this parameter is always <code>true</code> and you\n      should not set it to <code>false</code>.</p>"}))
    CreateSolutionRequest.add_member(:perform_auto_ml, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoML, location_name: 'performAutoML', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<important>\n            <p>We don't recommend enabling automated machine learning. Instead, match your use case to the available Amazon Personalize \n        recipes. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html\">Choosing a recipe</a>.</p>\n         </important>\n         <p>Whether to perform automated machine learning (AutoML). The default is <code>false</code>.\n      For this case, you must specify <code>recipeArn</code>.</p>\n         <p>When set to <code>true</code>, Amazon Personalize analyzes your training data and selects\n      the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit\n      <code>recipeArn</code>. Amazon Personalize determines the optimal recipe by running tests with\n      different values for the hyperparameters.\n      AutoML lengthens the training process as compared to selecting a specific recipe.</p>"}))
    CreateSolutionRequest.add_member(:perform_auto_training, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoTraining, location_name: 'performAutoTraining', traits: {"smithy.api#documentation" => "<p>Whether the solution uses automatic training to create new solution versions (trained models). The default is\n        <code>True</code> and the solution automatically creates new solution versions every 7 days. You can change the training\n      frequency by specifying a <code>schedulingExpression</code> in the <code>AutoTrainingConfig</code> as part of solution\n      configuration. For more information about automatic training,\n      see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html\">Configuring automatic training</a>.</p>\n         <p>\n      Automatic solution version creation starts within one hour after the solution is ACTIVE. If you manually create a solution version within\n      the hour, the solution skips the first automatic training.\n    </p>\n         <p>\n      After training starts, you can\n      get the solution version's Amazon Resource Name (ARN) with the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html\">ListSolutionVersions</a> API operation. \n      To get its status, use the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html\">DescribeSolutionVersion</a>.\n    </p>"}))
    CreateSolutionRequest.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe to use for model training. This is required when\n      <code>performAutoML</code> is false. For information about different Amazon Personalize recipes and their ARNs, \n      see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html\">Choosing a recipe</a>.\n    </p>"}))
    CreateSolutionRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>", "smithy.api#required" => {}}))
    CreateSolutionRequest.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>When your have multiple event types (using an <code>EVENT_TYPE</code> schema field),\n      this parameter specifies which event type (for example, 'click' or 'like') is used for\n      training the model.</p>\n         <p>If you do not provide an <code>eventType</code>, Amazon Personalize will use all interactions for training with\n       equal weight regardless of type.</p>"}))
    CreateSolutionRequest.add_member(:solution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionConfig, location_name: 'solutionConfig', traits: {"smithy.api#documentation" => "<p>The configuration properties for the solution. When <code>performAutoML</code> is set to\n      true, Amazon Personalize only evaluates the <code>autoMLConfig</code> section\n      of the solution configuration.</p>\n         <note>\n            <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> \n        at this time.</p>\n         </note>"}))
    CreateSolutionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the solution.</p>"}))
    CreateSolutionRequest.type = Types::CreateSolutionRequest
    CreateSolutionResponse.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the solution.</p>"}))
    CreateSolutionResponse.type = Types::CreateSolutionResponse
    CreateSolutionVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the solution version.</p>"}))
    CreateSolutionVersionRequest.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution containing the training configuration\n      information.</p>", "smithy.api#required" => {}}))
    CreateSolutionVersionRequest.add_member(:training_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMode, location_name: 'trainingMode', traits: {"smithy.api#documentation" => "<p>The scope of training to be performed when creating the solution version. \n      The default is <code>FULL</code>. This creates a completely new model based on the entirety \n      of the training data from the datasets in your dataset group.\n    </p>\n         <p>If you use\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a>,\n      you can specify a training mode of <code>UPDATE</code>. This updates the model to consider new items for recommendations. It is not a full\n        retraining. You should still complete a full retraining weekly.\n        If you specify <code>UPDATE</code>, Amazon Personalize will stop automatic updates for the solution version. To resume updates, create a new solution with training mode set to <code>FULL</code>\n        and deploy it in a campaign. \n        For more information about automatic updates, see \n        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#maintaining-with-automatic-updates\">Automatic updates</a>.\n      </p>\n         <p>The <code>UPDATE</code> option can only be used when you already have an active solution\n        version created from the input solution using the <code>FULL</code> option and the input\n        solution was trained with the \n        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a>\n        recipe or the legacy\n        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html\">HRNN-Coldstart</a> recipe.</p>"}))
    CreateSolutionVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">tags</a> to apply to the solution version.</p>"}))
    CreateSolutionVersionRequest.type = Types::CreateSolutionVersionRequest
    CreateSolutionVersionResponse.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the new solution version.</p>"}))
    CreateSolutionVersionResponse.type = Types::CreateSolutionVersionResponse
    DataDeletionJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the data deletion job.</p>"}))
    DataDeletionJob.add_member(:data_deletion_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'dataDeletionJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data deletion job.</p>"}))
    DataDeletionJob.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group the job deletes records from.</p>"}))
    DataDeletionJob.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource'))
    DataDeletionJob.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that has permissions to read from the Amazon S3\n      data source.</p>"}))
    DataDeletionJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data deletion job.</p>\n         <p>A data deletion job can have one of the following statuses:</p>\n         <ul>\n            <li>\n               <p>PENDING > IN_PROGRESS > COMPLETED -or- FAILED</p>\n            </li>\n         </ul>"}))
    DataDeletionJob.add_member(:num_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numDeleted', traits: {"smithy.api#documentation" => "<p>The number of records deleted by a COMPLETED job.</p>"}))
    DataDeletionJob.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the data deletion\n      job.</p>"}))
    DataDeletionJob.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) the data deletion job was last updated.</p>"}))
    DataDeletionJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a data deletion job fails, provides the reason why.</p>"}))
    DataDeletionJob.type = Types::DataDeletionJob
    DataDeletionJobSummary.add_member(:data_deletion_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'dataDeletionJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data deletion job.</p>"}))
    DataDeletionJobSummary.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group the job deleted records from.</p>"}))
    DataDeletionJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the data deletion job.</p>"}))
    DataDeletionJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data deletion job.</p>\n         <p>A data deletion job can have one of the following statuses:</p>\n         <ul>\n            <li>\n               <p>PENDING > IN_PROGRESS > COMPLETED -or- FAILED</p>\n            </li>\n         </ul>"}))
    DataDeletionJobSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the data deletion\n      job.</p>"}))
    DataDeletionJobSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) the data deletion job was last updated.</p>"}))
    DataDeletionJobSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a data deletion job fails, provides the reason why.</p>"}))
    DataDeletionJobSummary.type = Types::DataDeletionJobSummary
    DataDeletionJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataDeletionJobSummary)
    DataSource.add_member(:data_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'dataLocation', traits: {"smithy.api#documentation" => "<p>For dataset import jobs, the path to the Amazon S3 bucket where the data that you want to upload to\n      your dataset is stored. For data deletion jobs, the path to the Amazon S3 bucket that stores the list of records to delete.\n    </p>\n         <p>\n      For example: </p>\n         <p>\n            <code>s3://bucket-name/folder-name/fileName.csv</code>\n         </p>\n         <p>If your CSV files are in a folder in your Amazon S3 bucket and you want your import job or data deletion job\n      to consider multiple files, you can specify the path to the folder.  With a data deletion job, Amazon Personalize uses all files in the folder and any sub folder. Use the following syntax with a <code>/</code> after the folder\n      name:</p>\n         <p>\n            <code>s3://bucket-name/folder-name/</code>\n         </p>"}))
    DataSource.type = Types::DataSource
    Dataset.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    Dataset.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset that you want metadata\n      for.</p>"}))
    Dataset.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"}))
    Dataset.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'datasetType', traits: {"smithy.api#documentation" => "<p>One of the following values:</p>\n         <ul>\n            <li>\n               <p>Interactions</p>\n            </li>\n            <li>\n               <p>Items</p>\n            </li>\n            <li>\n               <p>Users</p>\n            </li>\n            <li>\n               <p>Actions</p>\n            </li>\n            <li>\n               <p>Action_Interactions</p>\n            </li>\n         </ul>"}))
    Dataset.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the associated schema.</p>"}))
    Dataset.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset.</p>\n         <p>A dataset can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE\n          FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    Dataset.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the dataset.</p>"}))
    Dataset.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>A time stamp that shows when the dataset was updated.</p>"}))
    Dataset.add_member(:latest_dataset_update, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetUpdateSummary, location_name: 'latestDatasetUpdate', traits: {"smithy.api#documentation" => "<p>Describes the latest update to the dataset.</p>"}))
    Dataset.add_member(:tracking_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingId, location_name: 'trackingId', traits: {"smithy.api#documentation" => "<p>The ID of the event tracker for an Action interactions dataset. \n      You specify the tracker's ID in the <code>PutActionInteractions</code> API operation. Amazon Personalize uses it to direct new data to the Action interactions dataset in your dataset group.</p>"}))
    Dataset.type = Types::Dataset
    DatasetExportJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the export job.</p>"}))
    DatasetExportJob.add_member(:dataset_export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetExportJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset export job.</p>"}))
    DatasetExportJob.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset to export.</p>"}))
    DatasetExportJob.add_member(:ingestion_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionMode, location_name: 'ingestionMode', traits: {"smithy.api#documentation" => "<p>The data to export, based on how you imported the data. You can choose\n      to export <code>BULK</code> data that you imported using a dataset import\n      job, <code>PUT</code> data that you imported incrementally (using the\n      console, PutEvents, PutUsers and PutItems operations), or <code>ALL</code>\n      for both types. The default value is <code>PUT</code>. </p>"}))
    DatasetExportJob.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that has\n      permissions to add data to your output Amazon S3 bucket.</p>"}))
    DatasetExportJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset export job.</p>\n         <p>A dataset export job can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE\n          FAILED</p>\n            </li>\n         </ul>"}))
    DatasetExportJob.add_member(:job_output, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetExportJobOutput, location_name: 'jobOutput', traits: {"smithy.api#documentation" => "<p>The path to the Amazon S3 bucket where the job's output is stored. For\n      example:</p>\n         <p>\n            <code>s3://bucket-name/folder-name/</code>\n         </p>"}))
    DatasetExportJob.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the dataset export\n      job.</p>"}))
    DatasetExportJob.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) the status of the dataset export job\n      was last updated.</p>"}))
    DatasetExportJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a dataset export job fails, provides the reason why.</p>"}))
    DatasetExportJob.type = Types::DatasetExportJob
    DatasetExportJobOutput.add_member(:s3_data_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataConfig, location_name: 's3DataDestination', traits: {"smithy.api#required" => {}}))
    DatasetExportJobOutput.type = Types::DatasetExportJobOutput
    DatasetExportJobSummary.add_member(:dataset_export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetExportJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset export job.</p>"}))
    DatasetExportJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the dataset export job.</p>"}))
    DatasetExportJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset export job.</p>\n         <p>A dataset export job can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n         </ul>"}))
    DatasetExportJobSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset export job was created.</p>"}))
    DatasetExportJobSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset export job status was last updated.</p>"}))
    DatasetExportJobSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a dataset export job fails, the reason behind the failure.</p>"}))
    DatasetExportJobSummary.type = Types::DatasetExportJobSummary
    DatasetExportJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetExportJobSummary)
    DatasetGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset group.</p>"}))
    DatasetGroup.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"}))
    DatasetGroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the dataset group.</p>\n         <p>A dataset group can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE\n          FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING</p>\n            </li>\n         </ul>"}))
    DatasetGroup.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity and Access Management (IAM) role that has permissions to access\n      the Key Management Service (KMS) key. Supplying an IAM role is only valid when also\n      specifying a KMS key.</p>"}))
    DatasetGroup.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key used to\n      encrypt the datasets.</p>"}))
    DatasetGroup.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the dataset group.</p>"}))
    DatasetGroup.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The last update date and time (in Unix time) of the dataset\n      group.</p>"}))
    DatasetGroup.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If creating a dataset group fails, provides the reason why.</p>"}))
    DatasetGroup.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of a Domain dataset group.</p>"}))
    DatasetGroup.type = Types::DatasetGroup
    DatasetGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset group.</p>"}))
    DatasetGroupSummary.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"}))
    DatasetGroupSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset group.</p>\n         <p>A dataset group can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING</p>\n            </li>\n         </ul>"}))
    DatasetGroupSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset group was created.</p>"}))
    DatasetGroupSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset group was last updated.</p>"}))
    DatasetGroupSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If creating a dataset group fails, the reason behind the failure.</p>"}))
    DatasetGroupSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of a Domain dataset group.</p>"}))
    DatasetGroupSummary.type = Types::DatasetGroupSummary
    DatasetGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetGroupSummary)
    DatasetImportJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the import job.</p>"}))
    DatasetImportJob.add_member(:dataset_import_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetImportJobArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset import job.</p>"}))
    DatasetImportJob.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset that receives the\n      imported data.</p>"}))
    DatasetImportJob.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the training data to import.</p>"}))
    DatasetImportJob.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that has permissions to read from the Amazon S3\n      data source.</p>"}))
    DatasetImportJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset import job.</p>\n         <p>A dataset import job can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE\n          FAILED</p>\n            </li>\n         </ul>"}))
    DatasetImportJob.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the dataset import\n      job.</p>"}))
    DatasetImportJob.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) the dataset was last updated.</p>"}))
    DatasetImportJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a dataset import job fails, provides the reason why.</p>"}))
    DatasetImportJob.add_member(:import_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportMode, location_name: 'importMode', traits: {"smithy.api#documentation" => "<p>The import mode used by the dataset import job to import new\n      records.</p>"}))
    DatasetImportJob.add_member(:publish_attribution_metrics_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publishAttributionMetricsToS3', traits: {"smithy.api#documentation" => "<p>Whether the job publishes metrics to Amazon S3 for a metric attribution.</p>"}))
    DatasetImportJob.type = Types::DatasetImportJob
    DatasetImportJobSummary.add_member(:dataset_import_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetImportJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset import job.</p>"}))
    DatasetImportJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The name of the dataset import job.</p>"}))
    DatasetImportJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset import job.</p>\n         <p>A dataset import job can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n         </ul>"}))
    DatasetImportJobSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset import job was created.</p>"}))
    DatasetImportJobSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset import job status was last updated.</p>"}))
    DatasetImportJobSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a dataset import job fails, the reason behind the failure.</p>"}))
    DatasetImportJobSummary.add_member(:import_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportMode, location_name: 'importMode', traits: {"smithy.api#documentation" => "<p>The import mode the dataset import job used to update the data in the dataset. \n      For more information see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/updating-existing-bulk-data.html\">Updating existing bulk\n      data</a>.\n    </p>"}))
    DatasetImportJobSummary.type = Types::DatasetImportJobSummary
    DatasetImportJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetImportJobSummary)
    DatasetSchema.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the schema.</p>"}))
    DatasetSchema.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schema.</p>"}))
    DatasetSchema.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: AvroSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema.</p>"}))
    DatasetSchema.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the schema was created.</p>"}))
    DatasetSchema.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the schema was last updated.</p>"}))
    DatasetSchema.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of a schema that you created for a dataset in a Domain dataset group.</p>"}))
    DatasetSchema.type = Types::DatasetSchema
    DatasetSchemaSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the schema.</p>"}))
    DatasetSchemaSummary.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schema.</p>"}))
    DatasetSchemaSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the schema was created.</p>"}))
    DatasetSchemaSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the schema was last updated.</p>"}))
    DatasetSchemaSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of a schema that you created for a dataset in a Domain dataset group.</p>"}))
    DatasetSchemaSummary.type = Types::DatasetSchemaSummary
    DatasetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    DatasetSummary.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset.</p>"}))
    DatasetSummary.add_member(:dataset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'datasetType', traits: {"smithy.api#documentation" => "<p>The dataset type. One of the following values:</p>\n         <ul>\n            <li>\n               <p>Interactions</p>\n            </li>\n            <li>\n               <p>Items</p>\n            </li>\n            <li>\n               <p>Users</p>\n            </li>\n            <li>\n               <p>Event-Interactions</p>\n            </li>\n         </ul>"}))
    DatasetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset.</p>\n         <p>A dataset can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    DatasetSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset was created.</p>"}))
    DatasetSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the dataset was last updated.</p>"}))
    DatasetSummary.type = Types::DatasetSummary
    DatasetUpdateSummary.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schema that replaced the previous schema of the dataset.</p>"}))
    DatasetUpdateSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset update. </p>"}))
    DatasetUpdateSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If updating a dataset fails, provides the reason why.</p>"}))
    DatasetUpdateSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the dataset update.</p>"}))
    DatasetUpdateSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The last update date and time (in Unix time) of the dataset.</p>"}))
    DatasetUpdateSummary.type = Types::DatasetUpdateSummary
    Datasets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummary)
    DefaultCategoricalHyperParameterRange.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the hyperparameter.</p>"}))
    DefaultCategoricalHyperParameterRange.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoricalValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of the categories for the hyperparameter.</p>"}))
    DefaultCategoricalHyperParameterRange.add_member(:is_tunable, Smithy::Schema::Shapes::ShapeRef.new(shape: Tunable, location_name: 'isTunable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the hyperparameter is tunable.</p>"}))
    DefaultCategoricalHyperParameterRange.type = Types::DefaultCategoricalHyperParameterRange
    DefaultCategoricalHyperParameterRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultCategoricalHyperParameterRange)
    DefaultContinuousHyperParameterRange.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the hyperparameter.</p>"}))
    DefaultContinuousHyperParameterRange.add_member(:min_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousMinValue, location_name: 'minValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum allowable value for the hyperparameter.</p>"}))
    DefaultContinuousHyperParameterRange.add_member(:max_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousMaxValue, location_name: 'maxValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum allowable value for the hyperparameter.</p>"}))
    DefaultContinuousHyperParameterRange.add_member(:is_tunable, Smithy::Schema::Shapes::ShapeRef.new(shape: Tunable, location_name: 'isTunable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the hyperparameter is tunable.</p>"}))
    DefaultContinuousHyperParameterRange.type = Types::DefaultContinuousHyperParameterRange
    DefaultContinuousHyperParameterRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultContinuousHyperParameterRange)
    DefaultHyperParameterRanges.add_member(:integer_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultIntegerHyperParameterRanges, location_name: 'integerHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The integer-valued hyperparameters and their default ranges.</p>"}))
    DefaultHyperParameterRanges.add_member(:continuous_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultContinuousHyperParameterRanges, location_name: 'continuousHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The continuous hyperparameters and their default ranges.</p>"}))
    DefaultHyperParameterRanges.add_member(:categorical_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultCategoricalHyperParameterRanges, location_name: 'categoricalHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The categorical hyperparameters and their default ranges.</p>"}))
    DefaultHyperParameterRanges.type = Types::DefaultHyperParameterRanges
    DefaultIntegerHyperParameterRange.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the hyperparameter.</p>"}))
    DefaultIntegerHyperParameterRange.add_member(:min_value, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerMinValue, location_name: 'minValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum allowable value for the hyperparameter.</p>"}))
    DefaultIntegerHyperParameterRange.add_member(:max_value, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerMaxValue, location_name: 'maxValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum allowable value for the hyperparameter.</p>"}))
    DefaultIntegerHyperParameterRange.add_member(:is_tunable, Smithy::Schema::Shapes::ShapeRef.new(shape: Tunable, location_name: 'isTunable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the hyperparameter is tunable.</p>"}))
    DefaultIntegerHyperParameterRange.type = Types::DefaultIntegerHyperParameterRange
    DefaultIntegerHyperParameterRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultIntegerHyperParameterRange)
    DeleteCampaignRequest.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign to delete.</p>", "smithy.api#required" => {}}))
    DeleteCampaignRequest.type = Types::DeleteCampaignRequest
    DeleteDatasetGroupRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset group to delete.</p>", "smithy.api#required" => {}}))
    DeleteDatasetGroupRequest.type = Types::DeleteDatasetGroupRequest
    DeleteDatasetRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset to delete.</p>", "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteEventTrackerRequest.add_member(:event_tracker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'eventTrackerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the event tracker to delete.</p>", "smithy.api#required" => {}}))
    DeleteEventTrackerRequest.type = Types::DeleteEventTrackerRequest
    DeleteFilterRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter to delete.</p>", "smithy.api#required" => {}}))
    DeleteFilterRequest.type = Types::DeleteFilterRequest
    DeleteMetricAttributionRequest.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The metric attribution's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    DeleteMetricAttributionRequest.type = Types::DeleteMetricAttributionRequest
    DeleteRecommenderRequest.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender to delete.</p>", "smithy.api#required" => {}}))
    DeleteRecommenderRequest.type = Types::DeleteRecommenderRequest
    DeleteSchemaRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schema to delete.</p>", "smithy.api#required" => {}}))
    DeleteSchemaRequest.type = Types::DeleteSchemaRequest
    DeleteSolutionRequest.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the solution to delete.</p>", "smithy.api#required" => {}}))
    DeleteSolutionRequest.type = Types::DeleteSolutionRequest
    DescribeAlgorithmRequest.add_member(:algorithm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'algorithmArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the algorithm to describe.</p>", "smithy.api#required" => {}}))
    DescribeAlgorithmRequest.type = Types::DescribeAlgorithmRequest
    DescribeAlgorithmResponse.add_member(:algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: Algorithm, location_name: 'algorithm', traits: {"smithy.api#documentation" => "<p>A listing of the properties of the algorithm.</p>"}))
    DescribeAlgorithmResponse.type = Types::DescribeAlgorithmResponse
    DescribeBatchInferenceJobRequest.add_member(:batch_inference_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchInferenceJobArn', traits: {"smithy.api#documentation" => "<p>The ARN of the batch inference job to describe.</p>", "smithy.api#required" => {}}))
    DescribeBatchInferenceJobRequest.type = Types::DescribeBatchInferenceJobRequest
    DescribeBatchInferenceJobResponse.add_member(:batch_inference_job, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJob, location_name: 'batchInferenceJob', traits: {"smithy.api#documentation" => "<p>Information on the specified batch inference job.</p>"}))
    DescribeBatchInferenceJobResponse.type = Types::DescribeBatchInferenceJobResponse
    DescribeBatchSegmentJobRequest.add_member(:batch_segment_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batchSegmentJobArn', traits: {"smithy.api#documentation" => "<p>The ARN of the batch segment job to describe.</p>", "smithy.api#required" => {}}))
    DescribeBatchSegmentJobRequest.type = Types::DescribeBatchSegmentJobRequest
    DescribeBatchSegmentJobResponse.add_member(:batch_segment_job, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJob, location_name: 'batchSegmentJob', traits: {"smithy.api#documentation" => "<p>Information on the specified batch segment job.</p>"}))
    DescribeBatchSegmentJobResponse.type = Types::DescribeBatchSegmentJobResponse
    DescribeCampaignRequest.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign.</p>", "smithy.api#required" => {}}))
    DescribeCampaignRequest.type = Types::DescribeCampaignRequest
    DescribeCampaignResponse.add_member(:campaign, Smithy::Schema::Shapes::ShapeRef.new(shape: Campaign, location_name: 'campaign', traits: {"smithy.api#documentation" => "<p>The properties of the campaign.</p>"}))
    DescribeCampaignResponse.type = Types::DescribeCampaignResponse
    DescribeDataDeletionJobRequest.add_member(:data_deletion_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'dataDeletionJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data deletion job.</p>", "smithy.api#required" => {}}))
    DescribeDataDeletionJobRequest.type = Types::DescribeDataDeletionJobRequest
    DescribeDataDeletionJobResponse.add_member(:data_deletion_job, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDeletionJob, location_name: 'dataDeletionJob', traits: {"smithy.api#documentation" => "<p>Information about the data deletion job, including the status.</p>\n         <p>The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>PENDING</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS</p>\n            </li>\n            <li>\n               <p>COMPLETED</p>\n            </li>\n            <li>\n               <p>FAILED</p>\n            </li>\n         </ul>"}))
    DescribeDataDeletionJobResponse.type = Types::DescribeDataDeletionJobResponse
    DescribeDatasetExportJobRequest.add_member(:dataset_export_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetExportJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset export job to\n      describe.</p>", "smithy.api#required" => {}}))
    DescribeDatasetExportJobRequest.type = Types::DescribeDatasetExportJobRequest
    DescribeDatasetExportJobResponse.add_member(:dataset_export_job, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetExportJob, location_name: 'datasetExportJob', traits: {"smithy.api#documentation" => "<p>Information about the dataset export job, including the status.</p>\n         <p>The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING</p>\n            </li>\n            <li>\n               <p>CREATE IN_PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n         </ul>"}))
    DescribeDatasetExportJobResponse.type = Types::DescribeDatasetExportJobResponse
    DescribeDatasetGroupRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group to\n      describe.</p>", "smithy.api#required" => {}}))
    DescribeDatasetGroupRequest.type = Types::DescribeDatasetGroupRequest
    DescribeDatasetGroupResponse.add_member(:dataset_group, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetGroup, location_name: 'datasetGroup', traits: {"smithy.api#documentation" => "<p>A listing of the dataset group's properties.</p>"}))
    DescribeDatasetGroupResponse.type = Types::DescribeDatasetGroupResponse
    DescribeDatasetImportJobRequest.add_member(:dataset_import_job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetImportJobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset import job to\n      describe.</p>", "smithy.api#required" => {}}))
    DescribeDatasetImportJobRequest.type = Types::DescribeDatasetImportJobRequest
    DescribeDatasetImportJobResponse.add_member(:dataset_import_job, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetImportJob, location_name: 'datasetImportJob', traits: {"smithy.api#documentation" => "<p>Information about the dataset import job, including the status.</p>\n         <p>The status is one of the following values:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING</p>\n            </li>\n            <li>\n               <p>CREATE IN_PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n         </ul>"}))
    DescribeDatasetImportJobResponse.type = Types::DescribeDatasetImportJobResponse
    DescribeDatasetRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset to describe.</p>", "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>A listing of the dataset's properties.</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeEventTrackerRequest.add_member(:event_tracker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'eventTrackerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the event tracker to describe.</p>", "smithy.api#required" => {}}))
    DescribeEventTrackerRequest.type = Types::DescribeEventTrackerRequest
    DescribeEventTrackerResponse.add_member(:event_tracker, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTracker, location_name: 'eventTracker', traits: {"smithy.api#documentation" => "<p>An object that describes the event tracker.</p>"}))
    DescribeEventTrackerResponse.type = Types::DescribeEventTrackerResponse
    DescribeFeatureTransformationRequest.add_member(:feature_transformation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'featureTransformationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>", "smithy.api#required" => {}}))
    DescribeFeatureTransformationRequest.type = Types::DescribeFeatureTransformationRequest
    DescribeFeatureTransformationResponse.add_member(:feature_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTransformation, location_name: 'featureTransformation', traits: {"smithy.api#documentation" => "<p>A listing of the FeatureTransformation properties.</p>"}))
    DescribeFeatureTransformationResponse.type = Types::DescribeFeatureTransformationResponse
    DescribeFilterRequest.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter to describe.</p>", "smithy.api#required" => {}}))
    DescribeFilterRequest.type = Types::DescribeFilterRequest
    DescribeFilterResponse.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The filter's details.</p>"}))
    DescribeFilterResponse.type = Types::DescribeFilterResponse
    DescribeMetricAttributionRequest.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The metric attribution's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    DescribeMetricAttributionRequest.type = Types::DescribeMetricAttributionRequest
    DescribeMetricAttributionResponse.add_member(:metric_attribution, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttribution, location_name: 'metricAttribution', traits: {"smithy.api#documentation" => "<p>The details of the metric attribution.</p>"}))
    DescribeMetricAttributionResponse.type = Types::DescribeMetricAttributionResponse
    DescribeRecipeRequest.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe to describe.</p>", "smithy.api#required" => {}}))
    DescribeRecipeRequest.type = Types::DescribeRecipeRequest
    DescribeRecipeResponse.add_member(:recipe, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipe, location_name: 'recipe', traits: {"smithy.api#documentation" => "<p>An object that describes the recipe.</p>"}))
    DescribeRecipeResponse.type = Types::DescribeRecipeResponse
    DescribeRecommenderRequest.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender to describe.</p>", "smithy.api#required" => {}}))
    DescribeRecommenderRequest.type = Types::DescribeRecommenderRequest
    DescribeRecommenderResponse.add_member(:recommender, Smithy::Schema::Shapes::ShapeRef.new(shape: Recommender, location_name: 'recommender', traits: {"smithy.api#documentation" => "<p>The properties of the recommender.</p>"}))
    DescribeRecommenderResponse.type = Types::DescribeRecommenderResponse
    DescribeSchemaRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schema to retrieve.</p>", "smithy.api#required" => {}}))
    DescribeSchemaRequest.type = Types::DescribeSchemaRequest
    DescribeSchemaResponse.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The requested schema.</p>"}))
    DescribeSchemaResponse.type = Types::DescribeSchemaResponse
    DescribeSolutionRequest.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution to describe.</p>", "smithy.api#required" => {}}))
    DescribeSolutionRequest.type = Types::DescribeSolutionRequest
    DescribeSolutionResponse.add_member(:solution, Smithy::Schema::Shapes::ShapeRef.new(shape: Solution, location_name: 'solution', traits: {"smithy.api#documentation" => "<p>An object that describes the solution.</p>"}))
    DescribeSolutionResponse.type = Types::DescribeSolutionResponse
    DescribeSolutionVersionRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version.</p>", "smithy.api#required" => {}}))
    DescribeSolutionVersionRequest.type = Types::DescribeSolutionVersionRequest
    DescribeSolutionVersionResponse.add_member(:solution_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionVersion, location_name: 'solutionVersion', traits: {"smithy.api#documentation" => "<p>The solution version.</p>"}))
    DescribeSolutionVersionResponse.type = Types::DescribeSolutionVersionResponse
    Domain.add_member(:ecommerce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECOMMERCE', traits: {"smithy.api#enumValue" => "ECOMMERCE"}))
    Domain.add_member(:video_on_demand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_ON_DEMAND', traits: {"smithy.api#enumValue" => "VIDEO_ON_DEMAND"}))
    EventParameters.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The name of the event type to be considered for solution creation.</p>"}))
    EventParameters.add_member(:event_value_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeThresholdValue, location_name: 'eventValueThreshold', traits: {"smithy.api#documentation" => "<p>The threshold of the event type. Only events with a value greater or equal to this threshold will be considered for solution creation.</p>"}))
    EventParameters.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeWeight, location_name: 'weight', traits: {"smithy.api#documentation" => "<p>The weight of the event type. A higher weight means higher importance of the event type for the created solution.</p>"}))
    EventParameters.type = Types::EventParameters
    EventParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventParameters)
    EventTracker.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the event tracker.</p>"}))
    EventTracker.add_member(:event_tracker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'eventTrackerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event tracker.</p>"}))
    EventTracker.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that owns the event tracker.</p>"}))
    EventTracker.add_member(:tracking_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingId, location_name: 'trackingId', traits: {"smithy.api#documentation" => "<p>The ID of the event tracker. Include this ID in requests to the\n    <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p>"}))
    EventTracker.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>"}))
    EventTracker.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the event tracker.</p>\n         <p>An event tracker can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    EventTracker.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the event tracker was created.</p>"}))
    EventTracker.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the event tracker was last updated.</p>"}))
    EventTracker.type = Types::EventTracker
    EventTrackerSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the event tracker.</p>"}))
    EventTrackerSummary.add_member(:event_tracker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'eventTrackerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the event tracker.</p>"}))
    EventTrackerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the event tracker.</p>\n         <p>An event tracker can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    EventTrackerSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the event tracker was created.</p>"}))
    EventTrackerSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the event tracker was last updated.</p>"}))
    EventTrackerSummary.type = Types::EventTrackerSummary
    EventTrackers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventTrackerSummary)
    EventsConfig.add_member(:event_parameters_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EventParametersList, location_name: 'eventParametersList', traits: {"smithy.api#documentation" => "<p>A list of event parameters, which includes event types and their event value thresholds and weights.</p>"}))
    EventsConfig.type = Types::EventsConfig
    ExcludedDatasetColumns.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType)
    ExcludedDatasetColumns.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNamesList)
    FeatureTransformation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the feature transformation.</p>"}))
    FeatureTransformation.add_member(:feature_transformation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'featureTransformationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the FeatureTransformation object.</p>"}))
    FeatureTransformation.add_member(:default_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: FeaturizationParameters, location_name: 'defaultParameters', traits: {"smithy.api#documentation" => "<p>Provides the default parameters for feature transformation.</p>"}))
    FeatureTransformation.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the feature transformation.</p>"}))
    FeatureTransformation.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The last update date and time (in Unix time) of the feature transformation.</p>"}))
    FeatureTransformation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the feature transformation.</p>\n         <p>A feature transformation can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n         </ul>"}))
    FeatureTransformation.type = Types::FeatureTransformation
    FeatureTransformationParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    FeatureTransformationParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    FeaturizationParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    FeaturizationParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    FieldsForThemeGeneration.add_member(:item_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'itemName', traits: {"smithy.api#documentation" => "<p>The name of the Items dataset column that stores the name of each item in the dataset.</p>", "smithy.api#required" => {}}))
    FieldsForThemeGeneration.type = Types::FieldsForThemeGeneration
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>"}))
    Filter.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter.</p>"}))
    Filter.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the filter was created.</p>"}))
    Filter.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the filter was last updated.</p>"}))
    Filter.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset group to which the filter belongs.</p>"}))
    Filter.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If the filter failed, the reason for its failure.</p>"}))
    Filter.add_member(:filter_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'filterExpression', traits: {"smithy.api#documentation" => "<p>Specifies the type of item interactions to filter out of recommendation results. The\n            filter expression must follow specific format rules. For information about filter expression structure and syntax, see\n            <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html\">Filter expressions</a>.</p>"}))
    Filter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the filter.</p>"}))
    Filter.type = Types::Filter
    FilterSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>"}))
    FilterSummary.add_member(:filter_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'filterArn', traits: {"smithy.api#documentation" => "<p>The ARN of the filter.</p>"}))
    FilterSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the filter was created.</p>"}))
    FilterSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The time at which the filter was last updated.</p>"}))
    FilterSummary.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset group to which the filter belongs.</p>"}))
    FilterSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If the filter failed, the reason for the failure.</p>"}))
    FilterSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the filter.</p>"}))
    FilterSummary.type = Types::FilterSummary
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterSummary)
    GetSolutionMetricsRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version for which to get metrics.</p>", "smithy.api#required" => {}}))
    GetSolutionMetricsRequest.type = Types::GetSolutionMetricsRequest
    GetSolutionMetricsResponse.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The same solution version ARN as specified in the request.</p>"}))
    GetSolutionMetricsResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: 'metrics', traits: {"smithy.api#documentation" => "<p>The metrics for the solution version. For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/working-with-training-metrics.html\">\n        Evaluating a solution version with metrics\n      </a>.</p>"}))
    GetSolutionMetricsResponse.type = Types::GetSolutionMetricsResponse
    HPOConfig.add_member(:hpo_objective, Smithy::Schema::Shapes::ShapeRef.new(shape: HPOObjective, location_name: 'hpoObjective', traits: {"smithy.api#documentation" => "<p>The metric to optimize during HPO.</p>\n         <note>\n            <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> \n        at this time.</p>\n         </note>"}))
    HPOConfig.add_member(:hpo_resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HPOResourceConfig, location_name: 'hpoResourceConfig', traits: {"smithy.api#documentation" => "<p>Describes the resource configuration for HPO.</p>"}))
    HPOConfig.add_member(:algorithm_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameterRanges, location_name: 'algorithmHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The hyperparameters and their allowable ranges.</p>"}))
    HPOConfig.type = Types::HPOConfig
    HPOObjective.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: HPOObjectiveType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the metric. Valid values are <code>Maximize</code> and <code>Minimize</code>.</p>"}))
    HPOObjective.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>The name of the metric.</p>"}))
    HPOObjective.add_member(:metric_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricRegex, location_name: 'metricRegex', traits: {"smithy.api#documentation" => "<p>A regular expression for finding the metric in the training job logs.</p>"}))
    HPOObjective.type = Types::HPOObjective
    HPOResourceConfig.add_member(:max_number_of_training_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: HPOResource, location_name: 'maxNumberOfTrainingJobs', traits: {"smithy.api#documentation" => "<p>The maximum number of training\n      jobs when you create a\n      solution\n      version.\n      The maximum value for <code>maxNumberOfTrainingJobs</code> is\n      <code>40</code>.</p>"}))
    HPOResourceConfig.add_member(:max_parallel_training_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: HPOResource, location_name: 'maxParallelTrainingJobs', traits: {"smithy.api#documentation" => "<p>The maximum number of parallel training\n      jobs when you create a\n      solution\n      version.\n      The maximum value for <code>maxParallelTrainingJobs</code> is\n      <code>10</code>.</p>"}))
    HPOResourceConfig.type = Types::HPOResourceConfig
    HyperParameterRanges.add_member(:integer_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerHyperParameterRanges, location_name: 'integerHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The integer-valued hyperparameters and their ranges.</p>"}))
    HyperParameterRanges.add_member(:continuous_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousHyperParameterRanges, location_name: 'continuousHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The continuous hyperparameters and their ranges.</p>"}))
    HyperParameterRanges.add_member(:categorical_hyper_parameter_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoricalHyperParameterRanges, location_name: 'categoricalHyperParameterRanges', traits: {"smithy.api#documentation" => "<p>The categorical hyperparameters and their ranges.</p>"}))
    HyperParameterRanges.type = Types::HyperParameterRanges
    HyperParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    HyperParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    ImportMode.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    ImportMode.add_member(:incremental, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCREMENTAL', traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    IngestionMode.add_member(:bulk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BULK', traits: {"smithy.api#enumValue" => "BULK"}))
    IngestionMode.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    IngestionMode.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    IntegerHyperParameterRange.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the hyperparameter.</p>"}))
    IntegerHyperParameterRange.add_member(:min_value, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerMinValue, location_name: 'minValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum allowable value for the hyperparameter.</p>"}))
    IntegerHyperParameterRange.add_member(:max_value, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerMaxValue, location_name: 'maxValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum allowable value for the hyperparameter.</p>"}))
    IntegerHyperParameterRange.type = Types::IntegerHyperParameterRange
    IntegerHyperParameterRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerHyperParameterRange)
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListBatchInferenceJobsRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs\n      were created.</p>"}))
    ListBatchInferenceJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListBatchInferenceJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of batch inference job results to return in each page. The default\n      value is 100.</p>"}))
    ListBatchInferenceJobsRequest.type = Types::ListBatchInferenceJobsRequest
    ListBatchInferenceJobsResponse.add_member(:batch_inference_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchInferenceJobs, location_name: 'batchInferenceJobs', traits: {"smithy.api#documentation" => "<p>A list containing information on each job that is returned.</p>"}))
    ListBatchInferenceJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. The value is <code>null</code> when\n      there are no more results to return.</p>"}))
    ListBatchInferenceJobsResponse.type = Types::ListBatchInferenceJobsResponse
    ListBatchSegmentJobsRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version that the batch segment jobs used to generate batch segments.</p>"}))
    ListBatchSegmentJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    ListBatchSegmentJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of batch segment job results to return in each page. The default\n      value is 100.</p>"}))
    ListBatchSegmentJobsRequest.type = Types::ListBatchSegmentJobsRequest
    ListBatchSegmentJobsResponse.add_member(:batch_segment_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSegmentJobs, location_name: 'batchSegmentJobs', traits: {"smithy.api#documentation" => "<p>A list containing information on each job that is returned.</p>"}))
    ListBatchSegmentJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. The value is <code>null</code> when\n      there are no more results to return.</p>"}))
    ListBatchSegmentJobsResponse.type = Types::ListBatchSegmentJobsResponse
    ListCampaignsRequest.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution to list the campaigns for. When\n      a solution is not specified, all the campaigns associated with the account are listed.</p>"}))
    ListCampaignsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html\">ListCampaigns</a> for getting\n      the next set of campaigns (if they exist).</p>"}))
    ListCampaignsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of campaigns to return.</p>"}))
    ListCampaignsRequest.type = Types::ListCampaignsRequest
    ListCampaignsResponse.add_member(:campaigns, Smithy::Schema::Shapes::ShapeRef.new(shape: Campaigns, location_name: 'campaigns', traits: {"smithy.api#documentation" => "<p>A list of the campaigns.</p>"}))
    ListCampaignsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of campaigns (if they exist).</p>"}))
    ListCampaignsResponse.type = Types::ListCampaignsResponse
    ListDataDeletionJobsRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group to list data deletion jobs for.</p>"}))
    ListDataDeletionJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to\n      <code>ListDataDeletionJobs</code> for getting the next set of jobs (if they exist).</p>"}))
    ListDataDeletionJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of data deletion jobs to return.</p>"}))
    ListDataDeletionJobsRequest.type = Types::ListDataDeletionJobsRequest
    ListDataDeletionJobsResponse.add_member(:data_deletion_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDeletionJobs, location_name: 'dataDeletionJobs', traits: {"smithy.api#documentation" => "<p>The list of data deletion jobs.</p>"}))
    ListDataDeletionJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of data deletion jobs (if they\n      exist).</p>"}))
    ListDataDeletionJobsResponse.type = Types::ListDataDeletionJobsResponse
    ListDatasetExportJobsRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset to list the dataset\n      export jobs for.</p>"}))
    ListDatasetExportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to\n        <code>ListDatasetExportJobs</code> for getting the next set of dataset\n      export jobs (if they exist).</p>"}))
    ListDatasetExportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of dataset export jobs to return.</p>"}))
    ListDatasetExportJobsRequest.type = Types::ListDatasetExportJobsRequest
    ListDatasetExportJobsResponse.add_member(:dataset_export_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetExportJobs, location_name: 'datasetExportJobs', traits: {"smithy.api#documentation" => "<p>The list of dataset export jobs.</p>"}))
    ListDatasetExportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of dataset export jobs (if they\n      exist).</p>"}))
    ListDatasetExportJobsResponse.type = Types::ListDatasetExportJobsResponse
    ListDatasetGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to\n        <code>ListDatasetGroups</code> for getting the next set of dataset\n      groups (if they exist).</p>"}))
    ListDatasetGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of dataset groups to return.</p>"}))
    ListDatasetGroupsRequest.type = Types::ListDatasetGroupsRequest
    ListDatasetGroupsResponse.add_member(:dataset_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetGroups, location_name: 'datasetGroups', traits: {"smithy.api#documentation" => "<p>The list of your dataset groups.</p>"}))
    ListDatasetGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of dataset groups (if they\n      exist).</p>"}))
    ListDatasetGroupsResponse.type = Types::ListDatasetGroupsResponse
    ListDatasetImportJobsRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset to list the dataset\n      import jobs for.</p>"}))
    ListDatasetImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to\n        <code>ListDatasetImportJobs</code> for getting the next set of dataset\n      import jobs (if they exist).</p>"}))
    ListDatasetImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of dataset import jobs to return.</p>"}))
    ListDatasetImportJobsRequest.type = Types::ListDatasetImportJobsRequest
    ListDatasetImportJobsResponse.add_member(:dataset_import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetImportJobs, location_name: 'datasetImportJobs', traits: {"smithy.api#documentation" => "<p>The list of dataset import jobs.</p>"}))
    ListDatasetImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of dataset import jobs (if they\n      exist).</p>"}))
    ListDatasetImportJobsResponse.type = Types::ListDatasetImportJobsResponse
    ListDatasetsRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group that contains the\n      datasets to list.</p>"}))
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to\n        <code>ListDatasets</code> for getting the next set of dataset\n      import jobs (if they exist).</p>"}))
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of datasets to return.</p>"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: Datasets, location_name: 'datasets', traits: {"smithy.api#documentation" => "<p>An array of <code>Dataset</code> objects. Each object provides\n      metadata information.</p>"}))
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of datasets (if they exist).</p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListEventTrackersRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of a dataset group used to filter the response.</p>"}))
    ListEventTrackersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListEventTrackers</code> for getting\n      the next set of event trackers (if they exist).</p>"}))
    ListEventTrackersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of event trackers to return.</p>"}))
    ListEventTrackersRequest.type = Types::ListEventTrackersRequest
    ListEventTrackersResponse.add_member(:event_trackers, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTrackers, location_name: 'eventTrackers', traits: {"smithy.api#documentation" => "<p>A list of event trackers.</p>"}))
    ListEventTrackersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of event trackers (if they exist).</p>"}))
    ListEventTrackersResponse.type = Types::ListEventTrackersResponse
    ListFiltersRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset group that contains the filters.</p>"}))
    ListFiltersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListFilters</code> for getting the\n            next set of filters (if they exist).</p>"}))
    ListFiltersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of filters to return.</p>"}))
    ListFiltersRequest.type = Types::ListFiltersRequest
    ListFiltersResponse.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A list of returned filters.</p>"}))
    ListFiltersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of filters (if they exist).</p>"}))
    ListFiltersResponse.type = Types::ListFiltersResponse
    ListMetricAttributionMetricsRequest.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the metric attribution to retrieve attributes for.</p>"}))
    ListMetricAttributionMetricsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"}))
    ListMetricAttributionMetricsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of metrics to return in one page of results.</p>"}))
    ListMetricAttributionMetricsRequest.type = Types::ListMetricAttributionMetricsRequest
    ListMetricAttributionMetricsResponse.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributes, location_name: 'metrics', traits: {"smithy.api#documentation" => "<p>The metrics for the specified metric attribution.</p>"}))
    ListMetricAttributionMetricsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous <code>ListMetricAttributionMetricsResponse</code> request to retrieve the next page of results.</p>"}))
    ListMetricAttributionMetricsResponse.type = Types::ListMetricAttributionMetricsResponse
    ListMetricAttributionsRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The metric attributions' dataset group Amazon Resource Name (ARN).</p>"}))
    ListMetricAttributionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"}))
    ListMetricAttributionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of metric attributions to return in one page of results.</p>"}))
    ListMetricAttributionsRequest.type = Types::ListMetricAttributionsRequest
    ListMetricAttributionsResponse.add_member(:metric_attributions, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributions, location_name: 'metricAttributions', traits: {"smithy.api#documentation" => "<p>The list of metric attributions.</p>"}))
    ListMetricAttributionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>"}))
    ListMetricAttributionsResponse.type = Types::ListMetricAttributionsResponse
    ListRecipesRequest.add_member(:recipe_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeProvider, location_name: 'recipeProvider', traits: {"smithy.api#documentation" => "<p>The default is <code>SERVICE</code>.</p>"}))
    ListRecipesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListRecipes</code> for getting\n      the next set of recipes (if they exist).</p>"}))
    ListRecipesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of recipes to return.</p>"}))
    ListRecipesRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      Filters returned recipes by domain for a Domain dataset group. Only recipes (Domain dataset group use cases)\n      for this domain are included in the response. If you don't specify a domain, all recipes are returned.\n    </p>"}))
    ListRecipesRequest.type = Types::ListRecipesRequest
    ListRecipesResponse.add_member(:recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'recipes', traits: {"smithy.api#documentation" => "<p>The list of available recipes.</p>"}))
    ListRecipesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of recipes.</p>"}))
    ListRecipesResponse.type = Types::ListRecipesResponse
    ListRecommendersRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Domain dataset group to list the recommenders for. When\n      a Domain dataset group is not specified, all the recommenders associated with the account are listed.</p>"}))
    ListRecommendersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListRecommenders</code> for getting\n      the next set of recommenders (if they exist).</p>"}))
    ListRecommendersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of recommenders to return.</p>"}))
    ListRecommendersRequest.type = Types::ListRecommendersRequest
    ListRecommendersResponse.add_member(:recommenders, Smithy::Schema::Shapes::ShapeRef.new(shape: Recommenders, location_name: 'recommenders', traits: {"smithy.api#documentation" => "<p>A list of the recommenders.</p>"}))
    ListRecommendersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of recommenders (if they exist).</p>"}))
    ListRecommendersResponse.type = Types::ListRecommendersResponse
    ListSchemasRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListSchemas</code> for getting\n      the next set of schemas (if they exist).</p>"}))
    ListSchemasRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of schemas to return.</p>"}))
    ListSchemasRequest.type = Types::ListSchemasRequest
    ListSchemasResponse.add_member(:schemas, Smithy::Schema::Shapes::ShapeRef.new(shape: Schemas, location_name: 'schemas', traits: {"smithy.api#documentation" => "<p>A list of schemas.</p>"}))
    ListSchemasResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used to get the next set of schemas (if they exist).</p>"}))
    ListSchemasResponse.type = Types::ListSchemasResponse
    ListSolutionVersionsRequest.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution.</p>"}))
    ListSolutionVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListSolutionVersions</code> for getting\n      the next set of solution versions (if they exist).</p>"}))
    ListSolutionVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of solution versions to return.</p>"}))
    ListSolutionVersionsRequest.type = Types::ListSolutionVersionsRequest
    ListSolutionVersionsResponse.add_member(:solution_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionVersions, location_name: 'solutionVersions', traits: {"smithy.api#documentation" => "<p>A list of solution versions describing the version properties.</p>"}))
    ListSolutionVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of solution versions (if they exist).</p>"}))
    ListSolutionVersionsResponse.type = Types::ListSolutionVersionsResponse
    ListSolutionsRequest.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"}))
    ListSolutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from the previous call to <code>ListSolutions</code> for getting\n      the next set of solutions (if they exist).</p>"}))
    ListSolutionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of solutions to return.</p>"}))
    ListSolutionsRequest.type = Types::ListSolutionsRequest
    ListSolutionsResponse.add_member(:solutions, Smithy::Schema::Shapes::ShapeRef.new(shape: Solutions, location_name: 'solutions', traits: {"smithy.api#documentation" => "<p>A list of the current solutions.</p>"}))
    ListSolutionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token for getting the next set of solutions (if they exist).</p>"}))
    ListSolutionsResponse.type = Types::ListSolutionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The resource's tags.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricAttribute.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The metric's event type.</p>", "smithy.api#required" => {}}))
    MetricAttribute.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>The metric's name. The name helps you identify the metric in Amazon CloudWatch or Amazon S3.</p>", "smithy.api#required" => {}}))
    MetricAttribute.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The attribute's expression. Available functions are <code>SUM()</code> or <code>SAMPLECOUNT()</code>. For SUM() functions, provide the \n      dataset type (either Interactions or Items) and column to sum as a parameter. For example SUM(Items.PRICE).</p>", "smithy.api#required" => {}}))
    MetricAttribute.type = Types::MetricAttribute
    MetricAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttribute)
    MetricAttributesNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    MetricAttribution.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The metric attribution's name.</p>"}))
    MetricAttribution.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The metric attribution's Amazon Resource Name (ARN).</p>"}))
    MetricAttribution.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The metric attribution's dataset group Amazon Resource Name (ARN).</p>"}))
    MetricAttribution.add_member(:metrics_output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributionOutput, location_name: 'metricsOutputConfig', traits: {"smithy.api#documentation" => "<p>The metric attribution's output configuration.</p>"}))
    MetricAttribution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The metric attribution's status.</p>"}))
    MetricAttribution.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The metric attribution's creation date time.</p>"}))
    MetricAttribution.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The metric attribution's last updated date time.</p>"}))
    MetricAttribution.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The metric attribution's failure reason.</p>"}))
    MetricAttribution.type = Types::MetricAttribution
    MetricAttributionOutput.add_member(:s3_data_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataConfig, location_name: 's3DataDestination'))
    MetricAttributionOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role that has permissions to add data to your output Amazon S3 bucket and add metrics to Amazon CloudWatch. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html\">Measuring impact of recommendations</a>.</p>", "smithy.api#required" => {}}))
    MetricAttributionOutput.type = Types::MetricAttributionOutput
    MetricAttributionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the metric attribution.</p>"}))
    MetricAttributionSummary.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The metric attribution's Amazon Resource Name (ARN).</p>"}))
    MetricAttributionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The metric attribution's status.</p>"}))
    MetricAttributionSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The metric attribution's creation date time.</p>"}))
    MetricAttributionSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The metric attribution's last updated date time.</p>"}))
    MetricAttributionSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The metric attribution's failure reason.</p>"}))
    MetricAttributionSummary.type = Types::MetricAttributionSummary
    MetricAttributions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributionSummary)
    Metrics.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    Metrics.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue)
    ObjectiveSensitivity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ObjectiveSensitivity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ObjectiveSensitivity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ObjectiveSensitivity.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    OptimizationObjective.add_member(:item_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemAttribute, location_name: 'itemAttribute', traits: {"smithy.api#documentation" => "<p>The numerical metadata column in an Items dataset related to the optimization objective. For example, VIDEO_LENGTH (to maximize streaming minutes), or PRICE (to maximize revenue).</p>"}))
    OptimizationObjective.add_member(:objective_sensitivity, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveSensitivity, location_name: 'objectiveSensitivity', traits: {"smithy.api#documentation" => "<p>Specifies how Amazon Personalize balances the importance of your optimization objective versus relevance.</p>"}))
    OptimizationObjective.type = Types::OptimizationObjective
    Recipe.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the recipe.</p>"}))
    Recipe.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe.</p>"}))
    Recipe.add_member(:algorithm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'algorithmArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the algorithm that Amazon Personalize uses to train\n      the model.</p>"}))
    Recipe.add_member(:feature_transformation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'featureTransformationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the FeatureTransformation object.</p>"}))
    Recipe.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the recipe.</p>"}))
    Recipe.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the recipe.</p>"}))
    Recipe.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recipe was created.</p>"}))
    Recipe.add_member(:recipe_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeType, location_name: 'recipeType', traits: {"smithy.api#documentation" => "<p>One of the following values:</p>\n         <ul>\n            <li>\n               <p>PERSONALIZED_RANKING</p>\n            </li>\n            <li>\n               <p>RELATED_ITEMS</p>\n            </li>\n            <li>\n               <p>USER_PERSONALIZATION</p>\n            </li>\n         </ul>"}))
    Recipe.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recipe was last updated.</p>"}))
    Recipe.type = Types::Recipe
    RecipeProvider.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    RecipeSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the recipe.</p>"}))
    RecipeSummary.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe.</p>"}))
    RecipeSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the recipe.</p>"}))
    RecipeSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the recipe was created.</p>"}))
    RecipeSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the recipe was last updated.</p>"}))
    RecipeSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The domain of the recipe (if the recipe is a Domain dataset group use case).</p>"}))
    RecipeSummary.type = Types::RecipeSummary
    Recipes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecipeSummary)
    Recommender.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender.</p>"}))
    Recommender.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Domain dataset group that contains the recommender.</p>"}))
    Recommender.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the recommender.</p>"}))
    Recommender.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe (Domain dataset group use case) that the recommender was created for.\n</p>"}))
    Recommender.add_member(:recommender_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfig, location_name: 'recommenderConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of the recommender.</p>"}))
    Recommender.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recommender was created.</p>"}))
    Recommender.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recommender was last updated.</p>"}))
    Recommender.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the recommender.</p>\n         <p>A recommender can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    Recommender.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a recommender fails, the reason behind the failure.</p>"}))
    Recommender.add_member(:latest_recommender_update, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderUpdateSummary, location_name: 'latestRecommenderUpdate', traits: {"smithy.api#documentation" => "<p>Provides a summary of the latest updates to the recommender. </p>"}))
    Recommender.add_member(:model_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: 'modelMetrics', traits: {"smithy.api#documentation" => "<p>Provides evaluation metrics that help you determine the performance\n    of a recommender. For more information, see\n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/evaluating-recommenders.html\">\n        Evaluating a recommender</a>.</p>"}))
    Recommender.type = Types::Recommender
    RecommenderConfig.add_member(:item_exploration_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'itemExplorationConfig', traits: {"smithy.api#documentation" => "<p>Specifies the exploration configuration hyperparameters, including <code>explorationWeight</code> and \n      <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when\n      recommending items. Provide <code>itemExplorationConfig</code> data only if your recommenders generate personalized recommendations for a user\n      (not popular items or similar items).</p>"}))
    RecommenderConfig.add_member(:min_recommendation_requests_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: 'minRecommendationRequestsPerSecond', traits: {"smithy.api#documentation" => "<p>Specifies the requested minimum provisioned recommendation requests per second that\n      Amazon Personalize will support. A high <code>minRecommendationRequestsPerSecond</code> will increase your bill. We recommend starting with 1 for <code>minRecommendationRequestsPerSecond</code> (the default). Track\n      your usage using Amazon CloudWatch metrics, and increase the <code>minRecommendationRequestsPerSecond</code>\n      as necessary.</p>"}))
    RecommenderConfig.add_member(:training_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataConfig, location_name: 'trainingDataConfig', traits: {"smithy.api#documentation" => "<p>\n      Specifies the training data configuration to use when creating a domain recommender.\n    </p>"}))
    RecommenderConfig.add_member(:enable_metadata_with_recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableMetadataWithRecommendations', traits: {"smithy.api#documentation" => "<p>Whether metadata with recommendations is enabled for the recommender. \n      If enabled, you can specify the columns from your Items dataset in your request for recommendations. Amazon Personalize returns this data for each item in the recommendation response. \n      For information about enabling metadata for a recommender, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata\">Enabling metadata in recommendations for a recommender</a>.</p>\n         <p>\n      If you enable metadata in recommendations, you will incur additional costs. For more information, see <a href=\"https://aws.amazon.com/personalize/pricing/\">Amazon Personalize pricing</a>.\n    </p>"}))
    RecommenderConfig.type = Types::RecommenderConfig
    RecommenderSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the recommender.</p>"}))
    RecommenderSummary.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender.</p>"}))
    RecommenderSummary.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Domain dataset group that contains the recommender.</p>"}))
    RecommenderSummary.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe (Domain dataset group use case) that the recommender was created for.</p>"}))
    RecommenderSummary.add_member(:recommender_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfig, location_name: 'recommenderConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of the recommender.</p>"}))
    RecommenderSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the recommender. A recommender can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    RecommenderSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recommender was created.</p>"}))
    RecommenderSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recommender was last updated.</p>"}))
    RecommenderSummary.type = Types::RecommenderSummary
    RecommenderUpdateSummary.add_member(:recommender_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfig, location_name: 'recommenderConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of the recommender update.</p>"}))
    RecommenderUpdateSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the recommender update was created.</p>"}))
    RecommenderUpdateSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the recommender update was last updated.</p>"}))
    RecommenderUpdateSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the recommender update. A recommender update can be in one of the following states:</p>\n         <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>"}))
    RecommenderUpdateSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a recommender update fails, the reason behind the failure.</p>"}))
    RecommenderUpdateSummary.type = Types::RecommenderUpdateSummary
    Recommenders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderSummary)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceConfig.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    ResourceConfig.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DataConfig.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The file path of the Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    S3DataConfig.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key that Amazon Personalize uses to\n      encrypt or decrypt the input and output files.</p>"}))
    S3DataConfig.type = Types::S3DataConfig
    Schemas.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSchemaSummary)
    Solution.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the solution.</p>"}))
    Solution.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the solution.</p>"}))
    Solution.add_member(:perform_hpo, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformHPO, location_name: 'performHPO', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The\n      default is <code>false</code>.</p>"}))
    Solution.add_member(:perform_auto_ml, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoML, location_name: 'performAutoML', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<important>\n            <p>We don't recommend enabling automated machine learning. Instead, match your use case to the available Amazon Personalize \n        recipes. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/determining-use-case.html\">Determining your use case.</a>\n            </p>\n         </important>\n         <p>When true, Amazon Personalize performs a search for the best USER_PERSONALIZATION recipe from\n      the list specified in the solution configuration (<code>recipeArn</code> must not be specified).\n      When false (the default), Amazon Personalize uses <code>recipeArn</code> for training.</p>"}))
    Solution.add_member(:perform_auto_training, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoTraining, location_name: 'performAutoTraining', traits: {"smithy.api#documentation" => "<p>Specifies whether the solution automatically creates solution versions. The default is <code>True</code>\n      and the solution automatically creates new solution versions every 7 days.</p>\n         <p>For more information about auto training, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/customizing-solution-config.html\">Creating and configuring a solution</a>.</p>"}))
    Solution.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The ARN of the recipe used to create the solution. This is required when\n      <code>performAutoML</code> is false.</p>"}))
    Solution.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>"}))
    Solution.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The event type (for example, 'click' or 'like') that is used for training the model. \n      If no <code>eventType</code> is provided, Amazon Personalize uses all interactions for training with\n      equal weight regardless of type.</p>"}))
    Solution.add_member(:solution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionConfig, location_name: 'solutionConfig', traits: {"smithy.api#documentation" => "<p>Describes the configuration properties for the solution.</p>"}))
    Solution.add_member(:auto_ml_result, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoMLResult, location_name: 'autoMLResult', traits: {"smithy.api#documentation" => "<p>When <code>performAutoML</code> is true, specifies the best recipe found.</p>"}))
    Solution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the solution.</p>\n         <p>A solution can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    Solution.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The creation date and time (in Unix time) of the solution.</p>"}))
    Solution.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the solution was last updated.</p>"}))
    Solution.add_member(:latest_solution_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionVersionSummary, location_name: 'latestSolutionVersion', traits: {"smithy.api#documentation" => "<p>Describes the latest version of the solution, including the status and the ARN.</p>"}))
    Solution.add_member(:latest_solution_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionUpdateSummary, location_name: 'latestSolutionUpdate', traits: {"smithy.api#documentation" => "<p>Provides a summary of the latest updates to the solution.</p>"}))
    Solution.type = Types::Solution
    SolutionConfig.add_member(:event_value_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: EventValueThreshold, location_name: 'eventValueThreshold', traits: {"smithy.api#documentation" => "<p>Only events with a value greater than or equal to this threshold are\n      used for training a model.</p>"}))
    SolutionConfig.add_member(:hpo_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HPOConfig, location_name: 'hpoConfig', traits: {"smithy.api#documentation" => "<p>Describes the properties for hyperparameter optimization (HPO).</p>"}))
    SolutionConfig.add_member(:algorithm_hyper_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'algorithmHyperParameters', traits: {"smithy.api#documentation" => "<p>Lists the algorithm hyperparameters and their values.</p>"}))
    SolutionConfig.add_member(:feature_transformation_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTransformationParameters, location_name: 'featureTransformationParameters', traits: {"smithy.api#documentation" => "<p>Lists the feature transformation parameters.</p>"}))
    SolutionConfig.add_member(:auto_ml_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoMLConfig, location_name: 'autoMLConfig', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html\">AutoMLConfig</a> object containing a list of recipes to search\n      when AutoML is performed.</p>"}))
    SolutionConfig.add_member(:events_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsConfig, location_name: 'eventsConfig', traits: {"smithy.api#documentation" => "<p>Describes the configuration of an event, which includes a list of event parameters. You can specify up to 10 event parameters. Events are used in solution creation.</p>"}))
    SolutionConfig.add_member(:optimization_objective, Smithy::Schema::Shapes::ShapeRef.new(shape: OptimizationObjective, location_name: 'optimizationObjective', traits: {"smithy.api#documentation" => "<p>Describes the additional objective for the solution, such as maximizing streaming \n      minutes or increasing revenue. For more information see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html\">Optimizing a solution</a>.</p>"}))
    SolutionConfig.add_member(:training_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataConfig, location_name: 'trainingDataConfig', traits: {"smithy.api#documentation" => "<p>\n     Specifies the training data configuration to use when creating a custom solution version (trained model).\n    </p>"}))
    SolutionConfig.add_member(:auto_training_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTrainingConfig, location_name: 'autoTrainingConfig', traits: {"smithy.api#documentation" => "<p>Specifies the automatic training configuration to use.</p>"}))
    SolutionConfig.type = Types::SolutionConfig
    SolutionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the solution.</p>"}))
    SolutionSummary.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution.</p>"}))
    SolutionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the solution.</p>\n         <p>A solution can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n            <li>\n               <p>DELETE PENDING > DELETE IN_PROGRESS</p>\n            </li>\n         </ul>"}))
    SolutionSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the solution was created.</p>"}))
    SolutionSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the solution was last updated.</p>"}))
    SolutionSummary.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recipe used by the solution.</p>"}))
    SolutionSummary.type = Types::SolutionSummary
    SolutionUpdateConfig.add_member(:auto_training_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTrainingConfig, location_name: 'autoTrainingConfig'))
    SolutionUpdateConfig.add_member(:events_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsConfig, location_name: 'eventsConfig', traits: {"smithy.api#documentation" => "<p>Describes the configuration of an event, which includes a list of event parameters. You can specify up to 10 event parameters. Events are used in solution creation.</p>"}))
    SolutionUpdateConfig.type = Types::SolutionUpdateConfig
    SolutionUpdateSummary.add_member(:solution_update_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionUpdateConfig, location_name: 'solutionUpdateConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of the solution.</p>"}))
    SolutionUpdateSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the solution update. A solution update can be in one of the following states:</p>\n         <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>"}))
    SolutionUpdateSummary.add_member(:perform_auto_training, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoTraining, location_name: 'performAutoTraining', traits: {"smithy.api#documentation" => "<p>Whether the solution automatically creates solution versions.</p>"}))
    SolutionUpdateSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix format) that the solution update was created.</p>"}))
    SolutionUpdateSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the solution update was last updated.</p>"}))
    SolutionUpdateSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a solution update fails, the reason behind the failure.</p>"}))
    SolutionUpdateSummary.type = Types::SolutionUpdateSummary
    SolutionVersion.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the solution version.</p>"}))
    SolutionVersion.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the solution version.</p>"}))
    SolutionVersion.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the solution.</p>"}))
    SolutionVersion.add_member(:perform_hpo, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformHPO, location_name: 'performHPO', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The default is\n        <code>false</code>.</p>"}))
    SolutionVersion.add_member(:perform_auto_ml, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoML, location_name: 'performAutoML', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When true, Amazon Personalize searches for the most optimal recipe according to the solution\n      configuration. When false (the default), Amazon Personalize uses <code>recipeArn</code>.</p>"}))
    SolutionVersion.add_member(:recipe_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recipeArn', traits: {"smithy.api#documentation" => "<p>The ARN of the recipe used in the solution.</p>"}))
    SolutionVersion.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The event type (for example, 'click' or 'like') that is used for training the\n      model.</p>"}))
    SolutionVersion.add_member(:dataset_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset group providing the training data.</p>"}))
    SolutionVersion.add_member(:solution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionConfig, location_name: 'solutionConfig', traits: {"smithy.api#documentation" => "<p>Describes the configuration properties for the solution.</p>"}))
    SolutionVersion.add_member(:training_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingHours, location_name: 'trainingHours', traits: {"smithy.api#documentation" => "<p>The time used to train the model. You are billed for the time it takes to train a model.\n      This field is visible only after Amazon Personalize successfully trains a model.</p>"}))
    SolutionVersion.add_member(:training_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMode, location_name: 'trainingMode', traits: {"smithy.api#documentation" => "<p>The scope of training to be performed when creating the solution version. A\n      <code>FULL</code> training considers all of the data in your dataset group.\n      An <code>UPDATE</code> processes only the data that\n      has changed since the latest training. Only solution versions created with the User-Personalization\n      recipe can use <code>UPDATE</code>.\n    </p>"}))
    SolutionVersion.add_member(:tuned_hpo_params, Smithy::Schema::Shapes::ShapeRef.new(shape: TunedHPOParams, location_name: 'tunedHPOParams', traits: {"smithy.api#documentation" => "<p>If hyperparameter optimization was performed, contains the hyperparameter values of the\n      best performing model.</p>"}))
    SolutionVersion.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the solution version.</p>\n         <p>A solution version can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING</p>\n            </li>\n            <li>\n               <p>CREATE IN_PROGRESS</p>\n            </li>\n            <li>\n               <p>ACTIVE</p>\n            </li>\n            <li>\n               <p>CREATE FAILED</p>\n            </li>\n            <li>\n               <p>CREATE STOPPING</p>\n            </li>\n            <li>\n               <p>CREATE STOPPED</p>\n            </li>\n         </ul>"}))
    SolutionVersion.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If training a solution version fails, the reason for the failure.</p>"}))
    SolutionVersion.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and\n      time\n      (in Unix time) that this version of the solution was created.</p>"}))
    SolutionVersion.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in\n      Unix\n      time) that the solution was last updated.</p>"}))
    SolutionVersion.add_member(:training_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingType, location_name: 'trainingType', traits: {"smithy.api#documentation" => "<p>Whether the solution version was created automatically or manually.</p>"}))
    SolutionVersion.type = Types::SolutionVersion
    SolutionVersionSummary.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version.</p>"}))
    SolutionVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the solution version.</p>\n         <p>A solution version can be in one of the following states:</p>\n         <ul>\n            <li>\n               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>\n            </li>\n         </ul>"}))
    SolutionVersionSummary.add_member(:training_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMode, location_name: 'trainingMode', traits: {"smithy.api#documentation" => "<p>The scope of training to be performed when creating the solution version. A\n      <code>FULL</code> training considers all of the data in your dataset group.\n      An <code>UPDATE</code> processes only the data that\n      has changed since the latest training. Only solution versions created with the User-Personalization\n      recipe can use <code>UPDATE</code>.\n    </p>"}))
    SolutionVersionSummary.add_member(:training_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingType, location_name: 'trainingType', traits: {"smithy.api#documentation" => "<p>Whether the solution version was created automatically or manually.</p>"}))
    SolutionVersionSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that this version of a solution was created.</p>"}))
    SolutionVersionSummary.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) that the solution version was last updated.</p>"}))
    SolutionVersionSummary.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>If a solution version fails, the reason behind the failure.</p>"}))
    SolutionVersionSummary.type = Types::SolutionVersionSummary
    SolutionVersions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionVersionSummary)
    Solutions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionSummary)
    StartRecommenderRequest.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender to start.</p>", "smithy.api#required" => {}}))
    StartRecommenderRequest.type = Types::StartRecommenderRequest
    StartRecommenderResponse.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender you started.</p>"}))
    StartRecommenderResponse.type = Types::StartRecommenderResponse
    StopRecommenderRequest.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender to stop.</p>", "smithy.api#required" => {}}))
    StopRecommenderRequest.type = Types::StopRecommenderRequest
    StopRecommenderResponse.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender you stopped.</p>"}))
    StopRecommenderResponse.type = Types::StopRecommenderResponse
    StopSolutionVersionCreationRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution version you want to stop creating.</p>", "smithy.api#required" => {}}))
    StopSolutionVersionCreationRequest.type = Types::StopSolutionVersionCreationRequest
    Tag.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'tagKey', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'tagValue', traits: {"smithy.api#documentation" => "<p>The optional part of a key-value pair that makes up a tag. A value acts as a descriptor within a tag category (key).</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags to apply to the resource. For more information see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html\">Tagging Amazon Personalize resources</a>.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThemeGenerationConfig.add_member(:fields_for_theme_generation, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsForThemeGeneration, location_name: 'fieldsForThemeGeneration', traits: {"smithy.api#documentation" => "<p>Fields used to generate descriptive themes for a batch inference job.</p>", "smithy.api#required" => {}}))
    ThemeGenerationConfig.type = Types::ThemeGenerationConfig
    TooManyTagKeysException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTagKeysException.type = Types::TooManyTagKeysException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    TrainingDataConfig.add_member(:excluded_dataset_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludedDatasetColumns, location_name: 'excludedDatasetColumns', traits: {"smithy.api#documentation" => "<p>Specifies the columns to exclude from training. Each key is a dataset type, and each value is a list of columns.\n      Exclude columns to control what data Amazon Personalize uses to generate recommendations.</p>\n         <p>\n      For example, you might have a column that you want to use only to filter recommendations. You can\n      exclude this column from training and Amazon Personalize considers it only when filtering.\n    </p>"}))
    TrainingDataConfig.type = Types::TrainingDataConfig
    TrainingMode.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    TrainingMode.add_member(:update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE', traits: {"smithy.api#enumValue" => "UPDATE"}))
    TrainingMode.add_member(:autotrain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOTRAIN', traits: {"smithy.api#enumValue" => "AUTOTRAIN"}))
    TrainingType.add_member(:automatic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    TrainingType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    TunedHPOParams.add_member(:algorithm_hyper_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'algorithmHyperParameters', traits: {"smithy.api#documentation" => "<p>A list of the hyperparameter values of the best performing model.</p>"}))
    TunedHPOParams.type = Types::TunedHPOParams
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCampaignRequest.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the campaign.</p>", "smithy.api#required" => {}}))
    UpdateCampaignRequest.add_member(:solution_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionVersionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a new model to deploy. To specify the latest solution version of your solution, \n      specify the ARN of your <i>solution</i> in <code>SolutionArn/$LATEST</code> format.\n      You must use this format if you set <code>syncWithLatestSolutionVersion</code> to <code>True</code> in the \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html\">CampaignConfig</a>.\n    </p>\n         <p>\n      To deploy a model that isn't the latest solution version of your solution, specify the ARN of the solution version.\n    </p>\n         <p>\n      For more information about automatic campaign updates, see \n      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update\">Enabling automatic campaign updates</a>.\n    </p>"}))
    UpdateCampaignRequest.add_member(:min_provisioned_tps, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionsPerSecond, location_name: 'minProvisionedTPS', traits: {"smithy.api#documentation" => "<p>Specifies the requested minimum provisioned transactions (recommendations) per second that\n      Amazon Personalize will support. A high <code>minProvisionedTPS</code> will increase your bill. We recommend starting with 1 for <code>minProvisionedTPS</code> (the default). Track\n      your usage using Amazon CloudWatch metrics, and increase the <code>minProvisionedTPS</code>\n      as necessary.</p>"}))
    UpdateCampaignRequest.add_member(:campaign_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignConfig, location_name: 'campaignConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of a campaign.</p>"}))
    UpdateCampaignRequest.type = Types::UpdateCampaignRequest
    UpdateCampaignResponse.add_member(:campaign_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'campaignArn', traits: {"smithy.api#documentation" => "<p>The same campaign ARN as given in the request.</p>"}))
    UpdateCampaignResponse.type = Types::UpdateCampaignResponse
    UpdateDatasetRequest.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'schemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new schema you want use.</p>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the dataset you updated.</p>"}))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdateMetricAttributionRequest.add_member(:add_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributes, location_name: 'addMetrics', traits: {"smithy.api#documentation" => "<p>Add new metric attributes to the metric attribution.</p>"}))
    UpdateMetricAttributionRequest.add_member(:remove_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributesNamesList, location_name: 'removeMetrics', traits: {"smithy.api#documentation" => "<p>Remove metric attributes from the metric attribution.</p>"}))
    UpdateMetricAttributionRequest.add_member(:metrics_output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAttributionOutput, location_name: 'metricsOutputConfig', traits: {"smithy.api#documentation" => "<p>An output config for the metric attribution.</p>"}))
    UpdateMetricAttributionRequest.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the metric attribution to update.</p>"}))
    UpdateMetricAttributionRequest.type = Types::UpdateMetricAttributionRequest
    UpdateMetricAttributionResponse.add_member(:metric_attribution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'metricAttributionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the metric attribution that you updated.</p>"}))
    UpdateMetricAttributionResponse.type = Types::UpdateMetricAttributionResponse
    UpdateRecommenderRequest.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the recommender to modify.</p>", "smithy.api#required" => {}}))
    UpdateRecommenderRequest.add_member(:recommender_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommenderConfig, location_name: 'recommenderConfig', traits: {"smithy.api#documentation" => "<p>The configuration details of the recommender.</p>", "smithy.api#required" => {}}))
    UpdateRecommenderRequest.type = Types::UpdateRecommenderRequest
    UpdateRecommenderResponse.add_member(:recommender_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'recommenderArn', traits: {"smithy.api#documentation" => "<p>The same recommender Amazon Resource Name (ARN) as given in the request.</p>"}))
    UpdateRecommenderResponse.type = Types::UpdateRecommenderResponse
    UpdateSolutionRequest.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the solution to update.</p>", "smithy.api#required" => {}}))
    UpdateSolutionRequest.add_member(:perform_auto_training, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformAutoTraining, location_name: 'performAutoTraining', traits: {"smithy.api#documentation" => "<p>Whether the solution uses automatic training to create new solution versions (trained models). You can change the training\n      frequency by specifying a <code>schedulingExpression</code> in the <code>AutoTrainingConfig</code> as part of solution\n      configuration. </p>\n         <p>\n      If you turn on automatic training, the first automatic training starts within one hour after the solution update\n      completes. If you manually create a solution version within the hour, the solution skips the first automatic training. \n      For more information about automatic training,\n      see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html\">Configuring automatic training</a>.\n    </p>\n         <p>\n      After training starts, you can\n      get the solution version's Amazon Resource Name (ARN) with the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html\">ListSolutionVersions</a> API operation. \n      To get its status, use the <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html\">DescribeSolutionVersion</a>.\n    </p>"}))
    UpdateSolutionRequest.add_member(:solution_update_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionUpdateConfig, location_name: 'solutionUpdateConfig', traits: {"smithy.api#documentation" => "<p>The new configuration details of the solution.</p>"}))
    UpdateSolutionRequest.type = Types::UpdateSolutionRequest
    UpdateSolutionResponse.add_member(:solution_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'solutionArn', traits: {"smithy.api#documentation" => "<p>The same solution Amazon Resource Name (ARN) as given in the request.</p>"}))
    UpdateSolutionResponse.type = Types::UpdateSolutionResponse

    AmazonPersonalize = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalize#AmazonPersonalize"
      service.name = "AmazonPersonalize"
      service.version = "2018-05-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize", "arnNamespace" => "personalize", "cloudFormationName" => "Personalize", "cloudTrailEventSource" => "personalize.amazonaws.com", "endpointPrefix" => "personalize"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Personalize"}
      service.add_operation(:create_batch_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateBatchInferenceJob"
        operation.name = "CreateBatchInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_batch_segment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateBatchSegmentJob"
        operation.name = "CreateBatchSegmentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchSegmentJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBatchSegmentJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_deletion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDataDeletionJob"
        operation.name = "CreateDataDeletionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataDeletionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataDeletionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_dataset_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDatasetExportJob"
        operation.name = "CreateDatasetExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_dataset_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDatasetGroup"
        operation.name = "CreateDatasetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_dataset_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDatasetImportJob"
        operation.name = "CreateDatasetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_event_tracker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateEventTracker"
        operation.name = "CreateEventTracker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventTrackerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventTrackerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateFilter"
        operation.name = "CreateFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_metric_attribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateMetricAttribution"
        operation.name = "CreateMetricAttribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMetricAttributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMetricAttributionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_recommender, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateRecommender"
        operation.name = "CreateRecommender"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecommenderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateSchema"
        operation.name = "CreateSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_solution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateSolution"
        operation.name = "CreateSolution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_solution_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateSolutionVersion"
        operation.name = "CreateSolutionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolutionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolutionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataset_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteDatasetGroup"
        operation.name = "DeleteDatasetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_tracker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteEventTracker"
        operation.name = "DeleteEventTracker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventTrackerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteFilter"
        operation.name = "DeleteFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_attribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteMetricAttribution"
        operation.name = "DeleteMetricAttribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMetricAttributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_recommender, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteRecommender"
        operation.name = "DeleteRecommender"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecommenderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteSchema"
        operation.name = "DeleteSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_solution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteSolution"
        operation.name = "DeleteSolution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSolutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_algorithm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeAlgorithm"
        operation.name = "DescribeAlgorithm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlgorithmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlgorithmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_batch_inference_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeBatchInferenceJob"
        operation.name = "DescribeBatchInferenceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchInferenceJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchInferenceJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_batch_segment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeBatchSegmentJob"
        operation.name = "DescribeBatchSegmentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchSegmentJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchSegmentJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeCampaign"
        operation.name = "DescribeCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_data_deletion_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDataDeletionJob"
        operation.name = "DescribeDataDeletionJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataDeletionJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataDeletionJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDatasetExportJob"
        operation.name = "DescribeDatasetExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDatasetGroup"
        operation.name = "DescribeDatasetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDatasetImportJob"
        operation.name = "DescribeDatasetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_tracker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeEventTracker"
        operation.name = "DescribeEventTracker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventTrackerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventTrackerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_feature_transformation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeFeatureTransformation"
        operation.name = "DescribeFeatureTransformation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFeatureTransformationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFeatureTransformationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeFilter"
        operation.name = "DescribeFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_metric_attribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeMetricAttribution"
        operation.name = "DescribeMetricAttribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetricAttributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetricAttributionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_recipe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeRecipe"
        operation.name = "DescribeRecipe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecipeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecipeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_recommender, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeRecommender"
        operation.name = "DescribeRecommender"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecommenderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecommenderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeSchema"
        operation.name = "DescribeSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_solution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeSolution"
        operation.name = "DescribeSolution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSolutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSolutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_solution_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeSolutionVersion"
        operation.name = "DescribeSolutionVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSolutionVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSolutionVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_solution_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#GetSolutionMetrics"
        operation.name = "GetSolutionMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolutionMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolutionMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_batch_inference_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListBatchInferenceJobs"
        operation.name = "ListBatchInferenceJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchInferenceJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchInferenceJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBatchInferenceJobs.new
      end)
      service.add_operation(:list_batch_segment_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListBatchSegmentJobs"
        operation.name = "ListBatchSegmentJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchSegmentJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchSegmentJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBatchSegmentJobs.new
      end)
      service.add_operation(:list_campaigns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListCampaigns"
        operation.name = "ListCampaigns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListCampaigns.new
      end)
      service.add_operation(:list_data_deletion_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDataDeletionJobs"
        operation.name = "ListDataDeletionJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataDeletionJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataDeletionJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_dataset_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasetExportJobs"
        operation.name = "ListDatasetExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetExportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetExportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetExportJobs.new
      end)
      service.add_operation(:list_dataset_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasetGroups"
        operation.name = "ListDatasetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetGroups.new
      end)
      service.add_operation(:list_dataset_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasetImportJobs"
        operation.name = "ListDatasetImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetImportJobs.new
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_event_trackers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListEventTrackers"
        operation.name = "ListEventTrackers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTrackersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTrackersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListEventTrackers.new
      end)
      service.add_operation(:list_filters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListFilters"
        operation.name = "ListFilters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFiltersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFiltersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListFilters.new
      end)
      service.add_operation(:list_metric_attribution_metrics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListMetricAttributionMetrics"
        operation.name = "ListMetricAttributionMetrics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricAttributionMetricsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricAttributionMetricsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMetricAttributionMetrics.new
      end)
      service.add_operation(:list_metric_attributions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListMetricAttributions"
        operation.name = "ListMetricAttributions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricAttributionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetricAttributionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMetricAttributions.new
      end)
      service.add_operation(:list_recipes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListRecipes"
        operation.name = "ListRecipes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecipesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecipesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecipes.new
      end)
      service.add_operation(:list_recommenders, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListRecommenders"
        operation.name = "ListRecommenders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecommenders.new
      end)
      service.add_operation(:list_schemas, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_solution_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListSolutionVersions"
        operation.name = "ListSolutionVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolutionVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolutionVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListSolutionVersions.new
      end)
      service.add_operation(:list_solutions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListSolutions"
        operation.name = "ListSolutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListSolutions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_recommender, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#StartRecommender"
        operation.name = "StartRecommender"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommenderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommenderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_recommender, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#StopRecommender"
        operation.name = "StopRecommender"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRecommenderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRecommenderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_solution_version_creation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#StopSolutionVersionCreation"
        operation.name = "StopSolutionVersionCreation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSolutionVersionCreationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagKeysException)
        operation.traits = {}
      end)
      service.add_operation(:update_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateCampaign"
        operation.name = "UpdateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_metric_attribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateMetricAttribution"
        operation.name = "UpdateMetricAttribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMetricAttributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMetricAttributionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_recommender, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateRecommender"
        operation.name = "UpdateRecommender"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecommenderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_solution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateSolution"
        operation.name = "UpdateSolution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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

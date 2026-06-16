# frozen_string_literal: true

# This is generated code!

module Aws::Personalize
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Algorithm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Algorithm", name: "Algorithm")
    AlgorithmImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#AlgorithmImage", name: "AlgorithmImage")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):personalize:.*:.*:.+$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#ArnList", name: "ArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AutoMLConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#AutoMLConfig", name: "AutoMLConfig")
    AutoMLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#AutoMLResult", name: "AutoMLResult")
    AutoTrainingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#AutoTrainingConfig", name: "AutoTrainingConfig")
    AvroSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#AvroSchema", name: "AvroSchema", traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    BatchInferenceJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchInferenceJob", name: "BatchInferenceJob")
    BatchInferenceJobConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchInferenceJobConfig", name: "BatchInferenceJobConfig")
    BatchInferenceJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchInferenceJobInput", name: "BatchInferenceJobInput")
    BatchInferenceJobMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#BatchInferenceJobMode", name: "BatchInferenceJobMode")
    BatchInferenceJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchInferenceJobOutput", name: "BatchInferenceJobOutput")
    BatchInferenceJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchInferenceJobSummary", name: "BatchInferenceJobSummary")
    BatchInferenceJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#BatchInferenceJobs", name: "BatchInferenceJobs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BatchSegmentJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchSegmentJob", name: "BatchSegmentJob")
    BatchSegmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchSegmentJobInput", name: "BatchSegmentJobInput")
    BatchSegmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchSegmentJobOutput", name: "BatchSegmentJobOutput")
    BatchSegmentJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#BatchSegmentJobSummary", name: "BatchSegmentJobSummary")
    BatchSegmentJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#BatchSegmentJobs", name: "BatchSegmentJobs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.personalize#Boolean", name: "Boolean")
    Campaign = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Campaign", name: "Campaign")
    CampaignConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CampaignConfig", name: "CampaignConfig")
    CampaignSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CampaignSummary", name: "CampaignSummary")
    CampaignUpdateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CampaignUpdateSummary", name: "CampaignUpdateSummary")
    Campaigns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Campaigns", name: "Campaigns", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CategoricalHyperParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CategoricalHyperParameterRange", name: "CategoricalHyperParameterRange")
    CategoricalHyperParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#CategoricalHyperParameterRanges", name: "CategoricalHyperParameterRanges", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CategoricalValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#CategoricalValue", name: "CategoricalValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    CategoricalValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#CategoricalValues", name: "CategoricalValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#pattern" => "^[A-Za-z_][A-Za-z\\d_]*$"})
    ColumnNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#ColumnNamesList", name: "ColumnNamesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ContinuousHyperParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ContinuousHyperParameterRange", name: "ContinuousHyperParameterRange")
    ContinuousHyperParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#ContinuousHyperParameterRanges", name: "ContinuousHyperParameterRanges", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ContinuousMaxValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalize#ContinuousMaxValue", name: "ContinuousMaxValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1000000}})
    ContinuousMinValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalize#ContinuousMinValue", name: "ContinuousMinValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1000000}})
    CreateBatchInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateBatchInferenceJobRequest", name: "CreateBatchInferenceJobRequest")
    CreateBatchInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateBatchInferenceJobResponse", name: "CreateBatchInferenceJobResponse")
    CreateBatchSegmentJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateBatchSegmentJobRequest", name: "CreateBatchSegmentJobRequest")
    CreateBatchSegmentJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateBatchSegmentJobResponse", name: "CreateBatchSegmentJobResponse")
    CreateCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateCampaignRequest", name: "CreateCampaignRequest")
    CreateCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateCampaignResponse", name: "CreateCampaignResponse")
    CreateDataDeletionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDataDeletionJobRequest", name: "CreateDataDeletionJobRequest")
    CreateDataDeletionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDataDeletionJobResponse", name: "CreateDataDeletionJobResponse")
    CreateDatasetExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetExportJobRequest", name: "CreateDatasetExportJobRequest")
    CreateDatasetExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetExportJobResponse", name: "CreateDatasetExportJobResponse")
    CreateDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetGroupRequest", name: "CreateDatasetGroupRequest")
    CreateDatasetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetGroupResponse", name: "CreateDatasetGroupResponse")
    CreateDatasetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetImportJobRequest", name: "CreateDatasetImportJobRequest")
    CreateDatasetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetImportJobResponse", name: "CreateDatasetImportJobResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateEventTrackerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateEventTrackerRequest", name: "CreateEventTrackerRequest")
    CreateEventTrackerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateEventTrackerResponse", name: "CreateEventTrackerResponse")
    CreateFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateFilterRequest", name: "CreateFilterRequest")
    CreateFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateFilterResponse", name: "CreateFilterResponse")
    CreateMetricAttributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateMetricAttributionRequest", name: "CreateMetricAttributionRequest")
    CreateMetricAttributionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateMetricAttributionResponse", name: "CreateMetricAttributionResponse")
    CreateRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateRecommenderRequest", name: "CreateRecommenderRequest")
    CreateRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateRecommenderResponse", name: "CreateRecommenderResponse")
    CreateSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateSchemaRequest", name: "CreateSchemaRequest")
    CreateSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateSchemaResponse", name: "CreateSchemaResponse")
    CreateSolutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateSolutionRequest", name: "CreateSolutionRequest")
    CreateSolutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateSolutionResponse", name: "CreateSolutionResponse")
    CreateSolutionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateSolutionVersionRequest", name: "CreateSolutionVersionRequest")
    CreateSolutionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#CreateSolutionVersionResponse", name: "CreateSolutionVersionResponse")
    DataDeletionJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DataDeletionJob", name: "DataDeletionJob")
    DataDeletionJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DataDeletionJobSummary", name: "DataDeletionJobSummary")
    DataDeletionJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DataDeletionJobs", name: "DataDeletionJobs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DataSource", name: "DataSource")
    Dataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Dataset", name: "Dataset")
    DatasetExportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetExportJob", name: "DatasetExportJob")
    DatasetExportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetExportJobOutput", name: "DatasetExportJobOutput")
    DatasetExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetExportJobSummary", name: "DatasetExportJobSummary")
    DatasetExportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DatasetExportJobs", name: "DatasetExportJobs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DatasetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetGroup", name: "DatasetGroup")
    DatasetGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetGroupSummary", name: "DatasetGroupSummary")
    DatasetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DatasetGroups", name: "DatasetGroups", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DatasetImportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetImportJob", name: "DatasetImportJob")
    DatasetImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetImportJobSummary", name: "DatasetImportJobSummary")
    DatasetImportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DatasetImportJobs", name: "DatasetImportJobs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DatasetSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetSchema", name: "DatasetSchema")
    DatasetSchemaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetSchemaSummary", name: "DatasetSchemaSummary")
    DatasetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetSummary", name: "DatasetSummary")
    DatasetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#DatasetType", name: "DatasetType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DatasetUpdateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DatasetUpdateSummary", name: "DatasetUpdateSummary")
    Datasets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Datasets", name: "Datasets", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.personalize#Date", name: "Date")
    DefaultCategoricalHyperParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DefaultCategoricalHyperParameterRange", name: "DefaultCategoricalHyperParameterRange")
    DefaultCategoricalHyperParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DefaultCategoricalHyperParameterRanges", name: "DefaultCategoricalHyperParameterRanges", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DefaultContinuousHyperParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DefaultContinuousHyperParameterRange", name: "DefaultContinuousHyperParameterRange")
    DefaultContinuousHyperParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DefaultContinuousHyperParameterRanges", name: "DefaultContinuousHyperParameterRanges", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DefaultHyperParameterRanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DefaultHyperParameterRanges", name: "DefaultHyperParameterRanges")
    DefaultIntegerHyperParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DefaultIntegerHyperParameterRange", name: "DefaultIntegerHyperParameterRange")
    DefaultIntegerHyperParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#DefaultIntegerHyperParameterRanges", name: "DefaultIntegerHyperParameterRanges", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DeleteCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteCampaignRequest", name: "DeleteCampaignRequest")
    DeleteDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteDatasetGroupRequest", name: "DeleteDatasetGroupRequest")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteEventTrackerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteEventTrackerRequest", name: "DeleteEventTrackerRequest")
    DeleteFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteFilterRequest", name: "DeleteFilterRequest")
    DeleteMetricAttributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteMetricAttributionRequest", name: "DeleteMetricAttributionRequest")
    DeleteRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteRecommenderRequest", name: "DeleteRecommenderRequest")
    DeleteSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteSchemaRequest", name: "DeleteSchemaRequest")
    DeleteSolutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DeleteSolutionRequest", name: "DeleteSolutionRequest")
    DescribeAlgorithmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeAlgorithmRequest", name: "DescribeAlgorithmRequest")
    DescribeAlgorithmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeAlgorithmResponse", name: "DescribeAlgorithmResponse")
    DescribeBatchInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeBatchInferenceJobRequest", name: "DescribeBatchInferenceJobRequest")
    DescribeBatchInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeBatchInferenceJobResponse", name: "DescribeBatchInferenceJobResponse")
    DescribeBatchSegmentJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeBatchSegmentJobRequest", name: "DescribeBatchSegmentJobRequest")
    DescribeBatchSegmentJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeBatchSegmentJobResponse", name: "DescribeBatchSegmentJobResponse")
    DescribeCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeCampaignRequest", name: "DescribeCampaignRequest")
    DescribeCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeCampaignResponse", name: "DescribeCampaignResponse")
    DescribeDataDeletionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDataDeletionJobRequest", name: "DescribeDataDeletionJobRequest")
    DescribeDataDeletionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDataDeletionJobResponse", name: "DescribeDataDeletionJobResponse")
    DescribeDatasetExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetExportJobRequest", name: "DescribeDatasetExportJobRequest")
    DescribeDatasetExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetExportJobResponse", name: "DescribeDatasetExportJobResponse")
    DescribeDatasetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetGroupRequest", name: "DescribeDatasetGroupRequest")
    DescribeDatasetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetGroupResponse", name: "DescribeDatasetGroupResponse")
    DescribeDatasetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetImportJobRequest", name: "DescribeDatasetImportJobRequest")
    DescribeDatasetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetImportJobResponse", name: "DescribeDatasetImportJobResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeEventTrackerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeEventTrackerRequest", name: "DescribeEventTrackerRequest")
    DescribeEventTrackerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeEventTrackerResponse", name: "DescribeEventTrackerResponse")
    DescribeFeatureTransformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeFeatureTransformationRequest", name: "DescribeFeatureTransformationRequest")
    DescribeFeatureTransformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeFeatureTransformationResponse", name: "DescribeFeatureTransformationResponse")
    DescribeFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeFilterRequest", name: "DescribeFilterRequest")
    DescribeFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeFilterResponse", name: "DescribeFilterResponse")
    DescribeMetricAttributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeMetricAttributionRequest", name: "DescribeMetricAttributionRequest")
    DescribeMetricAttributionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeMetricAttributionResponse", name: "DescribeMetricAttributionResponse")
    DescribeRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeRecipeRequest", name: "DescribeRecipeRequest")
    DescribeRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeRecipeResponse", name: "DescribeRecipeResponse")
    DescribeRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeRecommenderRequest", name: "DescribeRecommenderRequest")
    DescribeRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeRecommenderResponse", name: "DescribeRecommenderResponse")
    DescribeSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeSchemaRequest", name: "DescribeSchemaRequest")
    DescribeSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeSchemaResponse", name: "DescribeSchemaResponse")
    DescribeSolutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeSolutionRequest", name: "DescribeSolutionRequest")
    DescribeSolutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeSolutionResponse", name: "DescribeSolutionResponse")
    DescribeSolutionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeSolutionVersionRequest", name: "DescribeSolutionVersionRequest")
    DescribeSolutionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#DescribeSolutionVersionResponse", name: "DescribeSolutionVersionResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#Description", name: "Description")
    DockerURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#DockerURI", name: "DockerURI", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Domain = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#Domain", name: "Domain")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#ErrorMessage", name: "ErrorMessage")
    EventParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#EventParameters", name: "EventParameters")
    EventParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#EventParametersList", name: "EventParametersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EventTracker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#EventTracker", name: "EventTracker")
    EventTrackerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#EventTrackerSummary", name: "EventTrackerSummary")
    EventTrackers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#EventTrackers", name: "EventTrackers", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    EventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#EventType", name: "EventType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    EventTypeThresholdValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalize#EventTypeThresholdValue", name: "EventTypeThresholdValue")
    EventTypeWeight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalize#EventTypeWeight", name: "EventTypeWeight", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    EventValueThreshold = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#EventValueThreshold", name: "EventValueThreshold", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    EventsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#EventsConfig", name: "EventsConfig")
    ExcludedDatasetColumns = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalize#ExcludedDatasetColumns", name: "ExcludedDatasetColumns", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#FailureReason", name: "FailureReason")
    FeatureTransformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#FeatureTransformation", name: "FeatureTransformation")
    FeatureTransformationParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalize#FeatureTransformationParameters", name: "FeatureTransformationParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FeaturizationParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalize#FeaturizationParameters", name: "FeaturizationParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FieldsForThemeGeneration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#FieldsForThemeGeneration", name: "FieldsForThemeGeneration")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Filter", name: "Filter")
    FilterExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#FilterExpression", name: "FilterExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}, "smithy.api#sensitive" => {}})
    FilterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#FilterSummary", name: "FilterSummary")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetSolutionMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#GetSolutionMetricsRequest", name: "GetSolutionMetricsRequest")
    GetSolutionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#GetSolutionMetricsResponse", name: "GetSolutionMetricsResponse")
    HPOConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#HPOConfig", name: "HPOConfig")
    HPOObjective = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#HPOObjective", name: "HPOObjective")
    HPOObjectiveType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#HPOObjectiveType", name: "HPOObjectiveType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HPOResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#HPOResource", name: "HPOResource", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HPOResourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#HPOResourceConfig", name: "HPOResourceConfig")
    HyperParameterRanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#HyperParameterRanges", name: "HyperParameterRanges")
    HyperParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalize#HyperParameters", name: "HyperParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ImportMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#ImportMode", name: "ImportMode")
    IngestionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#IngestionMode", name: "IngestionMode")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalize#Integer", name: "Integer")
    IntegerHyperParameterRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#IntegerHyperParameterRange", name: "IntegerHyperParameterRange")
    IntegerHyperParameterRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#IntegerHyperParameterRanges", name: "IntegerHyperParameterRanges", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    IntegerMaxValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalize#IntegerMaxValue", name: "IntegerMaxValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 1000000}})
    IntegerMinValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalize#IntegerMinValue", name: "IntegerMinValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -1000000}})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ItemAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#ItemAttribute", name: "ItemAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kms:.*:[0-9]{12}:key/"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ListBatchInferenceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListBatchInferenceJobsRequest", name: "ListBatchInferenceJobsRequest")
    ListBatchInferenceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListBatchInferenceJobsResponse", name: "ListBatchInferenceJobsResponse")
    ListBatchSegmentJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListBatchSegmentJobsRequest", name: "ListBatchSegmentJobsRequest")
    ListBatchSegmentJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListBatchSegmentJobsResponse", name: "ListBatchSegmentJobsResponse")
    ListCampaignsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListCampaignsRequest", name: "ListCampaignsRequest")
    ListCampaignsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListCampaignsResponse", name: "ListCampaignsResponse")
    ListDataDeletionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDataDeletionJobsRequest", name: "ListDataDeletionJobsRequest")
    ListDataDeletionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDataDeletionJobsResponse", name: "ListDataDeletionJobsResponse")
    ListDatasetExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetExportJobsRequest", name: "ListDatasetExportJobsRequest")
    ListDatasetExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetExportJobsResponse", name: "ListDatasetExportJobsResponse")
    ListDatasetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetGroupsRequest", name: "ListDatasetGroupsRequest")
    ListDatasetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetGroupsResponse", name: "ListDatasetGroupsResponse")
    ListDatasetImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetImportJobsRequest", name: "ListDatasetImportJobsRequest")
    ListDatasetImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetImportJobsResponse", name: "ListDatasetImportJobsResponse")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListEventTrackersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListEventTrackersRequest", name: "ListEventTrackersRequest")
    ListEventTrackersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListEventTrackersResponse", name: "ListEventTrackersResponse")
    ListFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListFiltersRequest", name: "ListFiltersRequest")
    ListFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListFiltersResponse", name: "ListFiltersResponse")
    ListMetricAttributionMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListMetricAttributionMetricsRequest", name: "ListMetricAttributionMetricsRequest")
    ListMetricAttributionMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListMetricAttributionMetricsResponse", name: "ListMetricAttributionMetricsResponse")
    ListMetricAttributionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListMetricAttributionsRequest", name: "ListMetricAttributionsRequest")
    ListMetricAttributionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListMetricAttributionsResponse", name: "ListMetricAttributionsResponse")
    ListRecipesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListRecipesRequest", name: "ListRecipesRequest")
    ListRecipesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListRecipesResponse", name: "ListRecipesResponse")
    ListRecommendersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListRecommendersRequest", name: "ListRecommendersRequest")
    ListRecommendersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListRecommendersResponse", name: "ListRecommendersResponse")
    ListSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListSchemasRequest", name: "ListSchemasRequest")
    ListSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListSchemasResponse", name: "ListSchemasResponse")
    ListSolutionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListSolutionVersionsRequest", name: "ListSolutionVersionsRequest")
    ListSolutionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListSolutionVersionsResponse", name: "ListSolutionVersionsResponse")
    ListSolutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListSolutionsRequest", name: "ListSolutionsRequest")
    ListSolutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListSolutionsResponse", name: "ListSolutionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalize#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#MetricAttribute", name: "MetricAttribute")
    MetricAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#MetricAttributes", name: "MetricAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MetricAttributesNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#MetricAttributesNamesList", name: "MetricAttributesNamesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MetricAttribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#MetricAttribution", name: "MetricAttribution")
    MetricAttributionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#MetricAttributionOutput", name: "MetricAttributionOutput")
    MetricAttributionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#MetricAttributionSummary", name: "MetricAttributionSummary")
    MetricAttributions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#MetricAttributions", name: "MetricAttributions", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MetricExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#MetricExpression", name: "MetricExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#MetricRegex", name: "MetricRegex", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalize#MetricValue", name: "MetricValue", traits: {"smithy.api#default" => 0})
    Metrics = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalize#Metrics", name: "Metrics", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}, "smithy.api#pattern" => "^\\p{ASCII}{0,1500}$"})
    NumBatchResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalize#NumBatchResults", name: "NumBatchResults")
    ObjectiveSensitivity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#ObjectiveSensitivity", name: "ObjectiveSensitivity")
    OptimizationObjective = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#OptimizationObjective", name: "OptimizationObjective")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#ParameterName", name: "ParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    PerformAutoML = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.personalize#PerformAutoML", name: "PerformAutoML", traits: {"smithy.api#default" => false})
    PerformAutoTraining = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.personalize#PerformAutoTraining", name: "PerformAutoTraining")
    PerformHPO = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.personalize#PerformHPO", name: "PerformHPO", traits: {"smithy.api#default" => false})
    Recipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Recipe", name: "Recipe")
    RecipeProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#RecipeProvider", name: "RecipeProvider")
    RecipeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#RecipeSummary", name: "RecipeSummary")
    RecipeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#RecipeType", name: "RecipeType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Recipes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Recipes", name: "Recipes", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Recommender = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Recommender", name: "Recommender")
    RecommenderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#RecommenderConfig", name: "RecommenderConfig")
    RecommenderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#RecommenderSummary", name: "RecommenderSummary")
    RecommenderUpdateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#RecommenderUpdateSummary", name: "RecommenderUpdateSummary")
    Recommenders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Recommenders", name: "Recommenders", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ResourceConfig = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.personalize#ResourceConfig", name: "ResourceConfig", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3DataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#S3DataConfig", name: "S3DataConfig")
    S3Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#S3Location", name: "S3Location", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(s3|http|https)://.+$"})
    SchedulingExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#SchedulingExpression", name: "SchedulingExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^rate\\(\\d+ days?\\)$"})
    Schemas = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Schemas", name: "Schemas", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Solution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Solution", name: "Solution")
    SolutionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#SolutionConfig", name: "SolutionConfig")
    SolutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#SolutionSummary", name: "SolutionSummary")
    SolutionUpdateConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#SolutionUpdateConfig", name: "SolutionUpdateConfig")
    SolutionUpdateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#SolutionUpdateSummary", name: "SolutionUpdateSummary")
    SolutionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#SolutionVersion", name: "SolutionVersion")
    SolutionVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#SolutionVersionSummary", name: "SolutionVersionSummary")
    SolutionVersions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#SolutionVersions", name: "SolutionVersions", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Solutions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Solutions", name: "Solutions", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#StartRecommenderRequest", name: "StartRecommenderRequest")
    StartRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#StartRecommenderResponse", name: "StartRecommenderResponse")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#Status", name: "Status", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    StopRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#StopRecommenderRequest", name: "StopRecommenderRequest")
    StopRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#StopRecommenderResponse", name: "StopRecommenderResponse")
    StopSolutionVersionCreationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#StopSolutionVersionCreationRequest", name: "StopSolutionVersionCreationRequest")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.personalize#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThemeGenerationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#ThemeGenerationConfig", name: "ThemeGenerationConfig")
    TooManyTagKeysException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#TooManyTagKeysException", name: "TooManyTagKeysException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrackingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#TrackingId", name: "TrackingId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TrainingDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#TrainingDataConfig", name: "TrainingDataConfig")
    TrainingHours = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.personalize#TrainingHours", name: "TrainingHours", traits: {"smithy.api#range" => {"min" => 0}})
    TrainingInputMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.personalize#TrainingInputMode", name: "TrainingInputMode", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TrainingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#TrainingMode", name: "TrainingMode")
    TrainingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.personalize#TrainingType", name: "TrainingType")
    TransactionsPerSecond = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.personalize#TransactionsPerSecond", name: "TransactionsPerSecond", traits: {"smithy.api#range" => {"min" => 1}})
    Tunable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.personalize#Tunable", name: "Tunable", traits: {"smithy.api#default" => false})
    TunedHPOParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#TunedHPOParams", name: "TunedHPOParams")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateCampaignRequest", name: "UpdateCampaignRequest")
    UpdateCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateCampaignResponse", name: "UpdateCampaignResponse")
    UpdateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateDatasetRequest", name: "UpdateDatasetRequest")
    UpdateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateDatasetResponse", name: "UpdateDatasetResponse")
    UpdateMetricAttributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateMetricAttributionRequest", name: "UpdateMetricAttributionRequest")
    UpdateMetricAttributionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateMetricAttributionResponse", name: "UpdateMetricAttributionResponse")
    UpdateRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateRecommenderRequest", name: "UpdateRecommenderRequest")
    UpdateRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateRecommenderResponse", name: "UpdateRecommenderResponse")
    UpdateSolutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateSolutionRequest", name: "UpdateSolutionRequest")
    UpdateSolutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.personalize#UpdateSolutionResponse", name: "UpdateSolutionResponse")

    Algorithm.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Algorithm.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "algorithmArn"))
    Algorithm.add_member(:algorithm_image, ::Smithy::Schema::Shapes::MemberShape.new(target: AlgorithmImage, location_name: "algorithmImage"))
    Algorithm.add_member(:default_hyper_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, location_name: "defaultHyperParameters"))
    Algorithm.add_member(:default_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultHyperParameterRanges, location_name: "defaultHyperParameterRanges"))
    Algorithm.add_member(:default_resource_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfig, location_name: "defaultResourceConfig"))
    Algorithm.add_member(:training_input_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingInputMode, location_name: "trainingInputMode"))
    Algorithm.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn"))
    Algorithm.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Algorithm.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Algorithm.type = Types::Algorithm
    AlgorithmImage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    AlgorithmImage.add_member(:docker_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerURI, location_name: "dockerURI", traits: {"smithy.api#required" => {}}))
    AlgorithmImage.type = Types::AlgorithmImage
    ArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn)
    AutoMLConfig.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "metricName"))
    AutoMLConfig.add_member(:recipe_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, location_name: "recipeList"))
    AutoMLConfig.type = Types::AutoMLConfig
    AutoMLResult.add_member(:best_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "bestRecipeArn"))
    AutoMLResult.type = Types::AutoMLResult
    AutoTrainingConfig.add_member(:scheduling_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingExpression, location_name: "schedulingExpression"))
    AutoTrainingConfig.type = Types::AutoTrainingConfig
    BatchInferenceJob.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    BatchInferenceJob.add_member(:batch_inference_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchInferenceJobArn"))
    BatchInferenceJob.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    BatchInferenceJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    BatchInferenceJob.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    BatchInferenceJob.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumBatchResults, location_name: "numResults"))
    BatchInferenceJob.add_member(:job_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobInput, location_name: "jobInput"))
    BatchInferenceJob.add_member(:job_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobOutput, location_name: "jobOutput"))
    BatchInferenceJob.add_member(:batch_inference_job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobConfig, location_name: "batchInferenceJobConfig"))
    BatchInferenceJob.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    BatchInferenceJob.add_member(:batch_inference_job_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobMode, location_name: "batchInferenceJobMode"))
    BatchInferenceJob.add_member(:theme_generation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeGenerationConfig, location_name: "themeGenerationConfig"))
    BatchInferenceJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    BatchInferenceJob.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    BatchInferenceJob.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    BatchInferenceJob.type = Types::BatchInferenceJob
    BatchInferenceJobConfig.add_member(:item_exploration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, location_name: "itemExplorationConfig"))
    BatchInferenceJobConfig.type = Types::BatchInferenceJobConfig
    BatchInferenceJobInput.add_member(:s3_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataConfig, location_name: "s3DataSource", traits: {"smithy.api#required" => {}}))
    BatchInferenceJobInput.type = Types::BatchInferenceJobInput
    BatchInferenceJobMode.add_member(:batch_inference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BATCH_INFERENCE", traits: {"smithy.api#enumValue" => "BATCH_INFERENCE"}))
    BatchInferenceJobMode.add_member(:theme_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THEME_GENERATION", traits: {"smithy.api#enumValue" => "THEME_GENERATION"}))
    BatchInferenceJobOutput.add_member(:s3_data_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataConfig, location_name: "s3DataDestination", traits: {"smithy.api#required" => {}}))
    BatchInferenceJobOutput.type = Types::BatchInferenceJobOutput
    BatchInferenceJobSummary.add_member(:batch_inference_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchInferenceJobArn"))
    BatchInferenceJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    BatchInferenceJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    BatchInferenceJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    BatchInferenceJobSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    BatchInferenceJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    BatchInferenceJobSummary.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    BatchInferenceJobSummary.add_member(:batch_inference_job_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobMode, location_name: "batchInferenceJobMode"))
    BatchInferenceJobSummary.type = Types::BatchInferenceJobSummary
    BatchInferenceJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobSummary)
    BatchSegmentJob.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    BatchSegmentJob.add_member(:batch_segment_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchSegmentJobArn"))
    BatchSegmentJob.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    BatchSegmentJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    BatchSegmentJob.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    BatchSegmentJob.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumBatchResults, location_name: "numResults"))
    BatchSegmentJob.add_member(:job_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJobInput, location_name: "jobInput"))
    BatchSegmentJob.add_member(:job_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJobOutput, location_name: "jobOutput"))
    BatchSegmentJob.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    BatchSegmentJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    BatchSegmentJob.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    BatchSegmentJob.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    BatchSegmentJob.type = Types::BatchSegmentJob
    BatchSegmentJobInput.add_member(:s3_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataConfig, location_name: "s3DataSource", traits: {"smithy.api#required" => {}}))
    BatchSegmentJobInput.type = Types::BatchSegmentJobInput
    BatchSegmentJobOutput.add_member(:s3_data_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataConfig, location_name: "s3DataDestination", traits: {"smithy.api#required" => {}}))
    BatchSegmentJobOutput.type = Types::BatchSegmentJobOutput
    BatchSegmentJobSummary.add_member(:batch_segment_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchSegmentJobArn"))
    BatchSegmentJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    BatchSegmentJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    BatchSegmentJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    BatchSegmentJobSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    BatchSegmentJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    BatchSegmentJobSummary.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    BatchSegmentJobSummary.type = Types::BatchSegmentJobSummary
    BatchSegmentJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJobSummary)
    Campaign.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Campaign.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn"))
    Campaign.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    Campaign.add_member(:min_provisioned_tps, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    Campaign.add_member(:campaign_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignConfig, location_name: "campaignConfig"))
    Campaign.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    Campaign.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    Campaign.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Campaign.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Campaign.add_member(:latest_campaign_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignUpdateSummary, location_name: "latestCampaignUpdate"))
    Campaign.type = Types::Campaign
    CampaignConfig.add_member(:item_exploration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, location_name: "itemExplorationConfig"))
    CampaignConfig.add_member(:enable_metadata_with_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableMetadataWithRecommendations"))
    CampaignConfig.add_member(:sync_with_latest_solution_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "syncWithLatestSolutionVersion"))
    CampaignConfig.type = Types::CampaignConfig
    CampaignSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    CampaignSummary.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn"))
    CampaignSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    CampaignSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    CampaignSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    CampaignSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    CampaignSummary.type = Types::CampaignSummary
    CampaignUpdateSummary.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    CampaignUpdateSummary.add_member(:min_provisioned_tps, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    CampaignUpdateSummary.add_member(:campaign_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignConfig, location_name: "campaignConfig"))
    CampaignUpdateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    CampaignUpdateSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    CampaignUpdateSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    CampaignUpdateSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    CampaignUpdateSummary.type = Types::CampaignUpdateSummary
    Campaigns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignSummary)
    CategoricalHyperParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, location_name: "name"))
    CategoricalHyperParameterRange.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalValues, location_name: "values"))
    CategoricalHyperParameterRange.type = Types::CategoricalHyperParameterRange
    CategoricalHyperParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalHyperParameterRange)
    CategoricalValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalValue)
    ColumnNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName)
    ContinuousHyperParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, location_name: "name"))
    ContinuousHyperParameterRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousMinValue, location_name: "minValue", traits: {"smithy.api#default" => 0}))
    ContinuousHyperParameterRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousMaxValue, location_name: "maxValue", traits: {"smithy.api#default" => 0}))
    ContinuousHyperParameterRange.type = Types::ContinuousHyperParameterRange
    ContinuousHyperParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousHyperParameterRange)
    CreateBatchInferenceJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn", traits: {"smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    CreateBatchInferenceJobRequest.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumBatchResults, location_name: "numResults"))
    CreateBatchInferenceJobRequest.add_member(:job_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobInput, location_name: "jobInput", traits: {"smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:job_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobOutput, location_name: "jobOutput", traits: {"smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateBatchInferenceJobRequest.add_member(:batch_inference_job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobConfig, location_name: "batchInferenceJobConfig"))
    CreateBatchInferenceJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateBatchInferenceJobRequest.add_member(:batch_inference_job_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobMode, location_name: "batchInferenceJobMode"))
    CreateBatchInferenceJobRequest.add_member(:theme_generation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeGenerationConfig, location_name: "themeGenerationConfig"))
    CreateBatchInferenceJobRequest.type = Types::CreateBatchInferenceJobRequest
    CreateBatchInferenceJobResponse.add_member(:batch_inference_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchInferenceJobArn"))
    CreateBatchInferenceJobResponse.type = Types::CreateBatchInferenceJobResponse
    CreateBatchSegmentJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn", traits: {"smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    CreateBatchSegmentJobRequest.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumBatchResults, location_name: "numResults"))
    CreateBatchSegmentJobRequest.add_member(:job_input, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJobInput, location_name: "jobInput", traits: {"smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:job_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJobOutput, location_name: "jobOutput", traits: {"smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateBatchSegmentJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateBatchSegmentJobRequest.type = Types::CreateBatchSegmentJobRequest
    CreateBatchSegmentJobResponse.add_member(:batch_segment_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchSegmentJobArn"))
    CreateBatchSegmentJobResponse.type = Types::CreateBatchSegmentJobResponse
    CreateCampaignRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn", traits: {"smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:min_provisioned_tps, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    CreateCampaignRequest.add_member(:campaign_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignConfig, location_name: "campaignConfig"))
    CreateCampaignRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateCampaignRequest.type = Types::CreateCampaignRequest
    CreateCampaignResponse.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn"))
    CreateCampaignResponse.type = Types::CreateCampaignResponse
    CreateDataDeletionJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, location_name: "dataSource", traits: {"smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateDataDeletionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateDataDeletionJobRequest.type = Types::CreateDataDeletionJobRequest
    CreateDataDeletionJobResponse.add_member(:data_deletion_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "dataDeletionJobArn"))
    CreateDataDeletionJobResponse.type = Types::CreateDataDeletionJobResponse
    CreateDatasetExportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:ingestion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionMode, location_name: "ingestionMode"))
    CreateDatasetExportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:job_output, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetExportJobOutput, location_name: "jobOutput", traits: {"smithy.api#required" => {}}))
    CreateDatasetExportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateDatasetExportJobRequest.type = Types::CreateDatasetExportJobRequest
    CreateDatasetExportJobResponse.add_member(:dataset_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetExportJobArn"))
    CreateDatasetExportJobResponse.type = Types::CreateDatasetExportJobResponse
    CreateDatasetGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDatasetGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    CreateDatasetGroupRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateDatasetGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    CreateDatasetGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateDatasetGroupRequest.type = Types::CreateDatasetGroupRequest
    CreateDatasetGroupResponse.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    CreateDatasetGroupResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    CreateDatasetGroupResponse.type = Types::CreateDatasetGroupResponse
    CreateDatasetImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, location_name: "dataSource", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetImportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateDatasetImportJobRequest.add_member(:import_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportMode, location_name: "importMode"))
    CreateDatasetImportJobRequest.add_member(:publish_attribution_metrics_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "publishAttributionMetricsToS3"))
    CreateDatasetImportJobRequest.type = Types::CreateDatasetImportJobRequest
    CreateDatasetImportJobResponse.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetImportJobArn"))
    CreateDatasetImportJobResponse.type = Types::CreateDatasetImportJobResponse
    CreateDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, location_name: "datasetType", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateEventTrackerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateEventTrackerRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateEventTrackerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateEventTrackerRequest.type = Types::CreateEventTrackerRequest
    CreateEventTrackerResponse.add_member(:event_tracker_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "eventTrackerArn"))
    CreateEventTrackerResponse.add_member(:tracking_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingId, location_name: "trackingId"))
    CreateEventTrackerResponse.type = Types::CreateEventTrackerResponse
    CreateFilterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, location_name: "filterExpression", traits: {"smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateFilterRequest.type = Types::CreateFilterRequest
    CreateFilterResponse.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    CreateFilterResponse.type = Types::CreateFilterResponse
    CreateMetricAttributionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateMetricAttributionRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateMetricAttributionRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributes, location_name: "metrics", traits: {"smithy.api#required" => {}}))
    CreateMetricAttributionRequest.add_member(:metrics_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributionOutput, location_name: "metricsOutputConfig", traits: {"smithy.api#required" => {}}))
    CreateMetricAttributionRequest.type = Types::CreateMetricAttributionRequest
    CreateMetricAttributionResponse.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn"))
    CreateMetricAttributionResponse.type = Types::CreateMetricAttributionResponse
    CreateRecommenderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn", traits: {"smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, location_name: "recommenderConfig"))
    CreateRecommenderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateRecommenderRequest.type = Types::CreateRecommenderRequest
    CreateRecommenderResponse.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn"))
    CreateRecommenderResponse.type = Types::CreateRecommenderResponse
    CreateSchemaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: AvroSchema, location_name: "schema", traits: {"smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    CreateSchemaRequest.type = Types::CreateSchemaRequest
    CreateSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn"))
    CreateSchemaResponse.type = Types::CreateSchemaResponse
    CreateSolutionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateSolutionRequest.add_member(:perform_hpo, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "performHPO"))
    CreateSolutionRequest.add_member(:perform_auto_ml, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoML, location_name: "performAutoML", traits: {"smithy.api#default" => false}))
    CreateSolutionRequest.add_member(:perform_auto_training, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoTraining, location_name: "performAutoTraining"))
    CreateSolutionRequest.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    CreateSolutionRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    CreateSolutionRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "eventType"))
    CreateSolutionRequest.add_member(:solution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionConfig, location_name: "solutionConfig"))
    CreateSolutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateSolutionRequest.type = Types::CreateSolutionRequest
    CreateSolutionResponse.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    CreateSolutionResponse.type = Types::CreateSolutionResponse
    CreateSolutionVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    CreateSolutionVersionRequest.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn", traits: {"smithy.api#required" => {}}))
    CreateSolutionVersionRequest.add_member(:training_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingMode, location_name: "trainingMode"))
    CreateSolutionVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateSolutionVersionRequest.type = Types::CreateSolutionVersionRequest
    CreateSolutionVersionResponse.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    CreateSolutionVersionResponse.type = Types::CreateSolutionVersionResponse
    DataDeletionJob.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    DataDeletionJob.add_member(:data_deletion_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "dataDeletionJobArn"))
    DataDeletionJob.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    DataDeletionJob.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, location_name: "dataSource"))
    DataDeletionJob.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    DataDeletionJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DataDeletionJob.add_member(:num_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "numDeleted"))
    DataDeletionJob.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DataDeletionJob.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DataDeletionJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DataDeletionJob.type = Types::DataDeletionJob
    DataDeletionJobSummary.add_member(:data_deletion_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "dataDeletionJobArn"))
    DataDeletionJobSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    DataDeletionJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    DataDeletionJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DataDeletionJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DataDeletionJobSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DataDeletionJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DataDeletionJobSummary.type = Types::DataDeletionJobSummary
    DataDeletionJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataDeletionJobSummary)
    DataSource.add_member(:data_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "dataLocation"))
    DataSource.type = Types::DataSource
    Dataset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Dataset.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    Dataset.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    Dataset.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, location_name: "datasetType"))
    Dataset.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn"))
    Dataset.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    Dataset.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Dataset.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Dataset.add_member(:latest_dataset_update, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetUpdateSummary, location_name: "latestDatasetUpdate"))
    Dataset.add_member(:tracking_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingId, location_name: "trackingId"))
    Dataset.type = Types::Dataset
    DatasetExportJob.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    DatasetExportJob.add_member(:dataset_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetExportJobArn"))
    DatasetExportJob.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    DatasetExportJob.add_member(:ingestion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionMode, location_name: "ingestionMode"))
    DatasetExportJob.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn"))
    DatasetExportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetExportJob.add_member(:job_output, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetExportJobOutput, location_name: "jobOutput"))
    DatasetExportJob.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetExportJob.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetExportJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetExportJob.type = Types::DatasetExportJob
    DatasetExportJobOutput.add_member(:s3_data_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataConfig, location_name: "s3DataDestination", traits: {"smithy.api#required" => {}}))
    DatasetExportJobOutput.type = Types::DatasetExportJobOutput
    DatasetExportJobSummary.add_member(:dataset_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetExportJobArn"))
    DatasetExportJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    DatasetExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetExportJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetExportJobSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetExportJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetExportJobSummary.type = Types::DatasetExportJobSummary
    DatasetExportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetExportJobSummary)
    DatasetGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    DatasetGroup.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    DatasetGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetGroup.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    DatasetGroup.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    DatasetGroup.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetGroup.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetGroup.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetGroup.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    DatasetGroup.type = Types::DatasetGroup
    DatasetGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    DatasetGroupSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    DatasetGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetGroupSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetGroupSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetGroupSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetGroupSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    DatasetGroupSummary.type = Types::DatasetGroupSummary
    DatasetGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetGroupSummary)
    DatasetImportJob.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    DatasetImportJob.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetImportJobArn"))
    DatasetImportJob.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    DatasetImportJob.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, location_name: "dataSource"))
    DatasetImportJob.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn"))
    DatasetImportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetImportJob.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetImportJob.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetImportJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetImportJob.add_member(:import_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportMode, location_name: "importMode"))
    DatasetImportJob.add_member(:publish_attribution_metrics_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "publishAttributionMetricsToS3"))
    DatasetImportJob.type = Types::DatasetImportJob
    DatasetImportJobSummary.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetImportJobArn"))
    DatasetImportJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "jobName"))
    DatasetImportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetImportJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetImportJobSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetImportJobSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetImportJobSummary.add_member(:import_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportMode, location_name: "importMode"))
    DatasetImportJobSummary.type = Types::DatasetImportJobSummary
    DatasetImportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetImportJobSummary)
    DatasetSchema.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    DatasetSchema.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn"))
    DatasetSchema.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: AvroSchema, location_name: "schema"))
    DatasetSchema.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetSchema.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetSchema.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    DatasetSchema.type = Types::DatasetSchema
    DatasetSchemaSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    DatasetSchemaSummary.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn"))
    DatasetSchemaSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetSchemaSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetSchemaSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    DatasetSchemaSummary.type = Types::DatasetSchemaSummary
    DatasetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    DatasetSummary.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    DatasetSummary.add_member(:dataset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType, location_name: "datasetType"))
    DatasetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetSummary.type = Types::DatasetSummary
    DatasetUpdateSummary.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn"))
    DatasetUpdateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DatasetUpdateSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    DatasetUpdateSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    DatasetUpdateSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    DatasetUpdateSummary.type = Types::DatasetUpdateSummary
    Datasets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummary)
    DefaultCategoricalHyperParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, location_name: "name"))
    DefaultCategoricalHyperParameterRange.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalValues, location_name: "values"))
    DefaultCategoricalHyperParameterRange.add_member(:is_tunable, ::Smithy::Schema::Shapes::MemberShape.new(target: Tunable, location_name: "isTunable", traits: {"smithy.api#default" => false}))
    DefaultCategoricalHyperParameterRange.type = Types::DefaultCategoricalHyperParameterRange
    DefaultCategoricalHyperParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultCategoricalHyperParameterRange)
    DefaultContinuousHyperParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, location_name: "name"))
    DefaultContinuousHyperParameterRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousMinValue, location_name: "minValue", traits: {"smithy.api#default" => 0}))
    DefaultContinuousHyperParameterRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousMaxValue, location_name: "maxValue", traits: {"smithy.api#default" => 0}))
    DefaultContinuousHyperParameterRange.add_member(:is_tunable, ::Smithy::Schema::Shapes::MemberShape.new(target: Tunable, location_name: "isTunable", traits: {"smithy.api#default" => false}))
    DefaultContinuousHyperParameterRange.type = Types::DefaultContinuousHyperParameterRange
    DefaultContinuousHyperParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultContinuousHyperParameterRange)
    DefaultHyperParameterRanges.add_member(:integer_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultIntegerHyperParameterRanges, location_name: "integerHyperParameterRanges"))
    DefaultHyperParameterRanges.add_member(:continuous_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultContinuousHyperParameterRanges, location_name: "continuousHyperParameterRanges"))
    DefaultHyperParameterRanges.add_member(:categorical_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultCategoricalHyperParameterRanges, location_name: "categoricalHyperParameterRanges"))
    DefaultHyperParameterRanges.type = Types::DefaultHyperParameterRanges
    DefaultIntegerHyperParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, location_name: "name"))
    DefaultIntegerHyperParameterRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerMinValue, location_name: "minValue", traits: {"smithy.api#default" => 0}))
    DefaultIntegerHyperParameterRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerMaxValue, location_name: "maxValue", traits: {"smithy.api#default" => 0}))
    DefaultIntegerHyperParameterRange.add_member(:is_tunable, ::Smithy::Schema::Shapes::MemberShape.new(target: Tunable, location_name: "isTunable", traits: {"smithy.api#default" => false}))
    DefaultIntegerHyperParameterRange.type = Types::DefaultIntegerHyperParameterRange
    DefaultIntegerHyperParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultIntegerHyperParameterRange)
    DeleteCampaignRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn", traits: {"smithy.api#required" => {}}))
    DeleteCampaignRequest.type = Types::DeleteCampaignRequest
    DeleteDatasetGroupRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetGroupRequest.type = Types::DeleteDatasetGroupRequest
    DeleteDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteEventTrackerRequest.add_member(:event_tracker_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "eventTrackerArn", traits: {"smithy.api#required" => {}}))
    DeleteEventTrackerRequest.type = Types::DeleteEventTrackerRequest
    DeleteFilterRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn", traits: {"smithy.api#required" => {}}))
    DeleteFilterRequest.type = Types::DeleteFilterRequest
    DeleteMetricAttributionRequest.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn", traits: {"smithy.api#required" => {}}))
    DeleteMetricAttributionRequest.type = Types::DeleteMetricAttributionRequest
    DeleteRecommenderRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn", traits: {"smithy.api#required" => {}}))
    DeleteRecommenderRequest.type = Types::DeleteRecommenderRequest
    DeleteSchemaRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn", traits: {"smithy.api#required" => {}}))
    DeleteSchemaRequest.type = Types::DeleteSchemaRequest
    DeleteSolutionRequest.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn", traits: {"smithy.api#required" => {}}))
    DeleteSolutionRequest.type = Types::DeleteSolutionRequest
    DescribeAlgorithmRequest.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "algorithmArn", traits: {"smithy.api#required" => {}}))
    DescribeAlgorithmRequest.type = Types::DescribeAlgorithmRequest
    DescribeAlgorithmResponse.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: Algorithm, location_name: "algorithm"))
    DescribeAlgorithmResponse.type = Types::DescribeAlgorithmResponse
    DescribeBatchInferenceJobRequest.add_member(:batch_inference_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchInferenceJobArn", traits: {"smithy.api#required" => {}}))
    DescribeBatchInferenceJobRequest.type = Types::DescribeBatchInferenceJobRequest
    DescribeBatchInferenceJobResponse.add_member(:batch_inference_job, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJob, location_name: "batchInferenceJob"))
    DescribeBatchInferenceJobResponse.type = Types::DescribeBatchInferenceJobResponse
    DescribeBatchSegmentJobRequest.add_member(:batch_segment_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "batchSegmentJobArn", traits: {"smithy.api#required" => {}}))
    DescribeBatchSegmentJobRequest.type = Types::DescribeBatchSegmentJobRequest
    DescribeBatchSegmentJobResponse.add_member(:batch_segment_job, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJob, location_name: "batchSegmentJob"))
    DescribeBatchSegmentJobResponse.type = Types::DescribeBatchSegmentJobResponse
    DescribeCampaignRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn", traits: {"smithy.api#required" => {}}))
    DescribeCampaignRequest.type = Types::DescribeCampaignRequest
    DescribeCampaignResponse.add_member(:campaign, ::Smithy::Schema::Shapes::MemberShape.new(target: Campaign, location_name: "campaign"))
    DescribeCampaignResponse.type = Types::DescribeCampaignResponse
    DescribeDataDeletionJobRequest.add_member(:data_deletion_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "dataDeletionJobArn", traits: {"smithy.api#required" => {}}))
    DescribeDataDeletionJobRequest.type = Types::DescribeDataDeletionJobRequest
    DescribeDataDeletionJobResponse.add_member(:data_deletion_job, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDeletionJob, location_name: "dataDeletionJob"))
    DescribeDataDeletionJobResponse.type = Types::DescribeDataDeletionJobResponse
    DescribeDatasetExportJobRequest.add_member(:dataset_export_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetExportJobArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetExportJobRequest.type = Types::DescribeDatasetExportJobRequest
    DescribeDatasetExportJobResponse.add_member(:dataset_export_job, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetExportJob, location_name: "datasetExportJob"))
    DescribeDatasetExportJobResponse.type = Types::DescribeDatasetExportJobResponse
    DescribeDatasetGroupRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetGroupRequest.type = Types::DescribeDatasetGroupRequest
    DescribeDatasetGroupResponse.add_member(:dataset_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetGroup, location_name: "datasetGroup"))
    DescribeDatasetGroupResponse.type = Types::DescribeDatasetGroupResponse
    DescribeDatasetImportJobRequest.add_member(:dataset_import_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetImportJobArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetImportJobRequest.type = Types::DescribeDatasetImportJobRequest
    DescribeDatasetImportJobResponse.add_member(:dataset_import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetImportJob, location_name: "datasetImportJob"))
    DescribeDatasetImportJobResponse.type = Types::DescribeDatasetImportJobResponse
    DescribeDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset, location_name: "dataset"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeEventTrackerRequest.add_member(:event_tracker_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "eventTrackerArn", traits: {"smithy.api#required" => {}}))
    DescribeEventTrackerRequest.type = Types::DescribeEventTrackerRequest
    DescribeEventTrackerResponse.add_member(:event_tracker, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTracker, location_name: "eventTracker"))
    DescribeEventTrackerResponse.type = Types::DescribeEventTrackerResponse
    DescribeFeatureTransformationRequest.add_member(:feature_transformation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "featureTransformationArn", traits: {"smithy.api#required" => {}}))
    DescribeFeatureTransformationRequest.type = Types::DescribeFeatureTransformationRequest
    DescribeFeatureTransformationResponse.add_member(:feature_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTransformation, location_name: "featureTransformation"))
    DescribeFeatureTransformationResponse.type = Types::DescribeFeatureTransformationResponse
    DescribeFilterRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn", traits: {"smithy.api#required" => {}}))
    DescribeFilterRequest.type = Types::DescribeFilterRequest
    DescribeFilterResponse.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, location_name: "filter"))
    DescribeFilterResponse.type = Types::DescribeFilterResponse
    DescribeMetricAttributionRequest.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn", traits: {"smithy.api#required" => {}}))
    DescribeMetricAttributionRequest.type = Types::DescribeMetricAttributionRequest
    DescribeMetricAttributionResponse.add_member(:metric_attribution, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttribution, location_name: "metricAttribution"))
    DescribeMetricAttributionResponse.type = Types::DescribeMetricAttributionResponse
    DescribeRecipeRequest.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn", traits: {"smithy.api#required" => {}}))
    DescribeRecipeRequest.type = Types::DescribeRecipeRequest
    DescribeRecipeResponse.add_member(:recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: Recipe, location_name: "recipe"))
    DescribeRecipeResponse.type = Types::DescribeRecipeResponse
    DescribeRecommenderRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn", traits: {"smithy.api#required" => {}}))
    DescribeRecommenderRequest.type = Types::DescribeRecommenderRequest
    DescribeRecommenderResponse.add_member(:recommender, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommender, location_name: "recommender"))
    DescribeRecommenderResponse.type = Types::DescribeRecommenderResponse
    DescribeSchemaRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn", traits: {"smithy.api#required" => {}}))
    DescribeSchemaRequest.type = Types::DescribeSchemaRequest
    DescribeSchemaResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSchema, location_name: "schema"))
    DescribeSchemaResponse.type = Types::DescribeSchemaResponse
    DescribeSolutionRequest.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn", traits: {"smithy.api#required" => {}}))
    DescribeSolutionRequest.type = Types::DescribeSolutionRequest
    DescribeSolutionResponse.add_member(:solution, ::Smithy::Schema::Shapes::MemberShape.new(target: Solution, location_name: "solution"))
    DescribeSolutionResponse.type = Types::DescribeSolutionResponse
    DescribeSolutionVersionRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn", traits: {"smithy.api#required" => {}}))
    DescribeSolutionVersionRequest.type = Types::DescribeSolutionVersionRequest
    DescribeSolutionVersionResponse.add_member(:solution_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionVersion, location_name: "solutionVersion"))
    DescribeSolutionVersionResponse.type = Types::DescribeSolutionVersionResponse
    Domain.add_member(:ecommerce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECOMMERCE", traits: {"smithy.api#enumValue" => "ECOMMERCE"}))
    Domain.add_member(:video_on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VIDEO_ON_DEMAND", traits: {"smithy.api#enumValue" => "VIDEO_ON_DEMAND"}))
    EventParameters.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "eventType"))
    EventParameters.add_member(:event_value_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeThresholdValue, location_name: "eventValueThreshold"))
    EventParameters.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeWeight, location_name: "weight"))
    EventParameters.type = Types::EventParameters
    EventParametersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventParameters)
    EventTracker.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    EventTracker.add_member(:event_tracker_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "eventTrackerArn"))
    EventTracker.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    EventTracker.add_member(:tracking_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingId, location_name: "trackingId"))
    EventTracker.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    EventTracker.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    EventTracker.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    EventTracker.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    EventTracker.type = Types::EventTracker
    EventTrackerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    EventTrackerSummary.add_member(:event_tracker_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "eventTrackerArn"))
    EventTrackerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    EventTrackerSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    EventTrackerSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    EventTrackerSummary.type = Types::EventTrackerSummary
    EventTrackers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventTrackerSummary)
    EventsConfig.add_member(:event_parameters_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventParametersList, location_name: "eventParametersList"))
    EventsConfig.type = Types::EventsConfig
    ExcludedDatasetColumns.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetType)
    ExcludedDatasetColumns.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNamesList)
    FeatureTransformation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    FeatureTransformation.add_member(:feature_transformation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "featureTransformationArn"))
    FeatureTransformation.add_member(:default_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturizationParameters, location_name: "defaultParameters"))
    FeatureTransformation.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    FeatureTransformation.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    FeatureTransformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    FeatureTransformation.type = Types::FeatureTransformation
    FeatureTransformationParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName)
    FeatureTransformationParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue)
    FeaturizationParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName)
    FeaturizationParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue)
    FieldsForThemeGeneration.add_member(:item_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, location_name: "itemName", traits: {"smithy.api#required" => {}}))
    FieldsForThemeGeneration.type = Types::FieldsForThemeGeneration
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Filter.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    Filter.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Filter.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Filter.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    Filter.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    Filter.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, location_name: "filterExpression"))
    Filter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    Filter.type = Types::Filter
    FilterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    FilterSummary.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "filterArn"))
    FilterSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    FilterSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    FilterSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    FilterSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    FilterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    FilterSummary.type = Types::FilterSummary
    Filters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterSummary)
    GetSolutionMetricsRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn", traits: {"smithy.api#required" => {}}))
    GetSolutionMetricsRequest.type = Types::GetSolutionMetricsRequest
    GetSolutionMetricsResponse.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    GetSolutionMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, location_name: "metrics"))
    GetSolutionMetricsResponse.type = Types::GetSolutionMetricsResponse
    HPOConfig.add_member(:hpo_objective, ::Smithy::Schema::Shapes::MemberShape.new(target: HPOObjective, location_name: "hpoObjective"))
    HPOConfig.add_member(:hpo_resource_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HPOResourceConfig, location_name: "hpoResourceConfig"))
    HPOConfig.add_member(:algorithm_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameterRanges, location_name: "algorithmHyperParameterRanges"))
    HPOConfig.type = Types::HPOConfig
    HPOObjective.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HPOObjectiveType, location_name: "type"))
    HPOObjective.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "metricName"))
    HPOObjective.add_member(:metric_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricRegex, location_name: "metricRegex"))
    HPOObjective.type = Types::HPOObjective
    HPOResourceConfig.add_member(:max_number_of_training_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: HPOResource, location_name: "maxNumberOfTrainingJobs"))
    HPOResourceConfig.add_member(:max_parallel_training_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: HPOResource, location_name: "maxParallelTrainingJobs"))
    HPOResourceConfig.type = Types::HPOResourceConfig
    HyperParameterRanges.add_member(:integer_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerHyperParameterRanges, location_name: "integerHyperParameterRanges"))
    HyperParameterRanges.add_member(:continuous_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousHyperParameterRanges, location_name: "continuousHyperParameterRanges"))
    HyperParameterRanges.add_member(:categorical_hyper_parameter_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoricalHyperParameterRanges, location_name: "categoricalHyperParameterRanges"))
    HyperParameterRanges.type = Types::HyperParameterRanges
    HyperParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName)
    HyperParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue)
    ImportMode.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    ImportMode.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    IngestionMode.add_member(:bulk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BULK", traits: {"smithy.api#enumValue" => "BULK"}))
    IngestionMode.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    IngestionMode.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    IntegerHyperParameterRange.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, location_name: "name"))
    IntegerHyperParameterRange.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerMinValue, location_name: "minValue", traits: {"smithy.api#default" => 0}))
    IntegerHyperParameterRange.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerMaxValue, location_name: "maxValue", traits: {"smithy.api#default" => 0}))
    IntegerHyperParameterRange.type = Types::IntegerHyperParameterRange
    IntegerHyperParameterRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerHyperParameterRange)
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListBatchInferenceJobsRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    ListBatchInferenceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListBatchInferenceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListBatchInferenceJobsRequest.type = Types::ListBatchInferenceJobsRequest
    ListBatchInferenceJobsResponse.add_member(:batch_inference_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchInferenceJobs, location_name: "batchInferenceJobs"))
    ListBatchInferenceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListBatchInferenceJobsResponse.type = Types::ListBatchInferenceJobsResponse
    ListBatchSegmentJobsRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    ListBatchSegmentJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListBatchSegmentJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListBatchSegmentJobsRequest.type = Types::ListBatchSegmentJobsRequest
    ListBatchSegmentJobsResponse.add_member(:batch_segment_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSegmentJobs, location_name: "batchSegmentJobs"))
    ListBatchSegmentJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListBatchSegmentJobsResponse.type = Types::ListBatchSegmentJobsResponse
    ListCampaignsRequest.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    ListCampaignsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListCampaignsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListCampaignsRequest.type = Types::ListCampaignsRequest
    ListCampaignsResponse.add_member(:campaigns, ::Smithy::Schema::Shapes::MemberShape.new(target: Campaigns, location_name: "campaigns"))
    ListCampaignsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListCampaignsResponse.type = Types::ListCampaignsResponse
    ListDataDeletionJobsRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListDataDeletionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDataDeletionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDataDeletionJobsRequest.type = Types::ListDataDeletionJobsRequest
    ListDataDeletionJobsResponse.add_member(:data_deletion_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDeletionJobs, location_name: "dataDeletionJobs"))
    ListDataDeletionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDataDeletionJobsResponse.type = Types::ListDataDeletionJobsResponse
    ListDatasetExportJobsRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    ListDatasetExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDatasetExportJobsRequest.type = Types::ListDatasetExportJobsRequest
    ListDatasetExportJobsResponse.add_member(:dataset_export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetExportJobs, location_name: "datasetExportJobs"))
    ListDatasetExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetExportJobsResponse.type = Types::ListDatasetExportJobsResponse
    ListDatasetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDatasetGroupsRequest.type = Types::ListDatasetGroupsRequest
    ListDatasetGroupsResponse.add_member(:dataset_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetGroups, location_name: "datasetGroups"))
    ListDatasetGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetGroupsResponse.type = Types::ListDatasetGroupsResponse
    ListDatasetImportJobsRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    ListDatasetImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDatasetImportJobsRequest.type = Types::ListDatasetImportJobsRequest
    ListDatasetImportJobsResponse.add_member(:dataset_import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetImportJobs, location_name: "datasetImportJobs"))
    ListDatasetImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetImportJobsResponse.type = Types::ListDatasetImportJobsResponse
    ListDatasetsRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: Datasets, location_name: "datasets"))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListEventTrackersRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListEventTrackersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListEventTrackersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListEventTrackersRequest.type = Types::ListEventTrackersRequest
    ListEventTrackersResponse.add_member(:event_trackers, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTrackers, location_name: "eventTrackers"))
    ListEventTrackersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListEventTrackersResponse.type = Types::ListEventTrackersResponse
    ListFiltersRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListFiltersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListFiltersRequest.type = Types::ListFiltersRequest
    ListFiltersResponse.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, location_name: "Filters"))
    ListFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListFiltersResponse.type = Types::ListFiltersResponse
    ListMetricAttributionMetricsRequest.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn"))
    ListMetricAttributionMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListMetricAttributionMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListMetricAttributionMetricsRequest.type = Types::ListMetricAttributionMetricsRequest
    ListMetricAttributionMetricsResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributes, location_name: "metrics"))
    ListMetricAttributionMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListMetricAttributionMetricsResponse.type = Types::ListMetricAttributionMetricsResponse
    ListMetricAttributionsRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListMetricAttributionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListMetricAttributionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListMetricAttributionsRequest.type = Types::ListMetricAttributionsRequest
    ListMetricAttributionsResponse.add_member(:metric_attributions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributions, location_name: "metricAttributions"))
    ListMetricAttributionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListMetricAttributionsResponse.type = Types::ListMetricAttributionsResponse
    ListRecipesRequest.add_member(:recipe_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeProvider, location_name: "recipeProvider"))
    ListRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListRecipesRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    ListRecipesRequest.type = Types::ListRecipesRequest
    ListRecipesResponse.add_member(:recipes, ::Smithy::Schema::Shapes::MemberShape.new(target: Recipes, location_name: "recipes"))
    ListRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRecipesResponse.type = Types::ListRecipesResponse
    ListRecommendersRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListRecommendersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRecommendersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListRecommendersRequest.type = Types::ListRecommendersRequest
    ListRecommendersResponse.add_member(:recommenders, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommenders, location_name: "recommenders"))
    ListRecommendersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRecommendersResponse.type = Types::ListRecommendersResponse
    ListSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSchemasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListSchemasRequest.type = Types::ListSchemasRequest
    ListSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: Schemas, location_name: "schemas"))
    ListSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSchemasResponse.type = Types::ListSchemasResponse
    ListSolutionVersionsRequest.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    ListSolutionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSolutionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListSolutionVersionsRequest.type = Types::ListSolutionVersionsRequest
    ListSolutionVersionsResponse.add_member(:solution_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionVersions, location_name: "solutionVersions"))
    ListSolutionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSolutionVersionsResponse.type = Types::ListSolutionVersionsResponse
    ListSolutionsRequest.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    ListSolutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSolutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListSolutionsRequest.type = Types::ListSolutionsRequest
    ListSolutionsResponse.add_member(:solutions, ::Smithy::Schema::Shapes::MemberShape.new(target: Solutions, location_name: "solutions"))
    ListSolutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSolutionsResponse.type = Types::ListSolutionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricAttribute.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "eventType", traits: {"smithy.api#required" => {}}))
    MetricAttribute.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    MetricAttribute.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricExpression, location_name: "expression", traits: {"smithy.api#required" => {}}))
    MetricAttribute.type = Types::MetricAttribute
    MetricAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttribute)
    MetricAttributesNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName)
    MetricAttribution.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    MetricAttribution.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn"))
    MetricAttribution.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    MetricAttribution.add_member(:metrics_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributionOutput, location_name: "metricsOutputConfig"))
    MetricAttribution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    MetricAttribution.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    MetricAttribution.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    MetricAttribution.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    MetricAttribution.type = Types::MetricAttribution
    MetricAttributionOutput.add_member(:s3_data_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataConfig, location_name: "s3DataDestination"))
    MetricAttributionOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    MetricAttributionOutput.type = Types::MetricAttributionOutput
    MetricAttributionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    MetricAttributionSummary.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn"))
    MetricAttributionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    MetricAttributionSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    MetricAttributionSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    MetricAttributionSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    MetricAttributionSummary.type = Types::MetricAttributionSummary
    MetricAttributions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributionSummary)
    Metrics.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName)
    Metrics.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue)
    ObjectiveSensitivity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ObjectiveSensitivity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ObjectiveSensitivity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ObjectiveSensitivity.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    OptimizationObjective.add_member(:item_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemAttribute, location_name: "itemAttribute"))
    OptimizationObjective.add_member(:objective_sensitivity, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveSensitivity, location_name: "objectiveSensitivity"))
    OptimizationObjective.type = Types::OptimizationObjective
    Recipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Recipe.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    Recipe.add_member(:algorithm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "algorithmArn"))
    Recipe.add_member(:feature_transformation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "featureTransformationArn"))
    Recipe.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    Recipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    Recipe.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Recipe.add_member(:recipe_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeType, location_name: "recipeType"))
    Recipe.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Recipe.type = Types::Recipe
    RecipeProvider.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    RecipeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    RecipeSummary.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    RecipeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    RecipeSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    RecipeSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    RecipeSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "domain"))
    RecipeSummary.type = Types::RecipeSummary
    Recipes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecipeSummary)
    Recommender.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn"))
    Recommender.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    Recommender.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Recommender.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    Recommender.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, location_name: "recommenderConfig"))
    Recommender.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Recommender.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Recommender.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    Recommender.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    Recommender.add_member(:latest_recommender_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderUpdateSummary, location_name: "latestRecommenderUpdate"))
    Recommender.add_member(:model_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, location_name: "modelMetrics"))
    Recommender.type = Types::Recommender
    RecommenderConfig.add_member(:item_exploration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, location_name: "itemExplorationConfig"))
    RecommenderConfig.add_member(:min_recommendation_requests_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionsPerSecond, location_name: "minRecommendationRequestsPerSecond"))
    RecommenderConfig.add_member(:training_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingDataConfig, location_name: "trainingDataConfig"))
    RecommenderConfig.add_member(:enable_metadata_with_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableMetadataWithRecommendations"))
    RecommenderConfig.type = Types::RecommenderConfig
    RecommenderSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    RecommenderSummary.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn"))
    RecommenderSummary.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    RecommenderSummary.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    RecommenderSummary.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, location_name: "recommenderConfig"))
    RecommenderSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    RecommenderSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    RecommenderSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    RecommenderSummary.type = Types::RecommenderSummary
    RecommenderUpdateSummary.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, location_name: "recommenderConfig"))
    RecommenderUpdateSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    RecommenderUpdateSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    RecommenderUpdateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    RecommenderUpdateSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    RecommenderUpdateSummary.type = Types::RecommenderUpdateSummary
    Recommenders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSummary)
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceConfig.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName)
    ResourceConfig.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue)
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DataConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "path", traits: {"smithy.api#required" => {}}))
    S3DataConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    S3DataConfig.type = Types::S3DataConfig
    Schemas.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSchemaSummary)
    Solution.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    Solution.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    Solution.add_member(:perform_hpo, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformHPO, location_name: "performHPO", traits: {"smithy.api#default" => false}))
    Solution.add_member(:perform_auto_ml, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoML, location_name: "performAutoML", traits: {"smithy.api#default" => false}))
    Solution.add_member(:perform_auto_training, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoTraining, location_name: "performAutoTraining"))
    Solution.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    Solution.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    Solution.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "eventType"))
    Solution.add_member(:solution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionConfig, location_name: "solutionConfig"))
    Solution.add_member(:auto_ml_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMLResult, location_name: "autoMLResult"))
    Solution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    Solution.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    Solution.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    Solution.add_member(:latest_solution_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionVersionSummary, location_name: "latestSolutionVersion"))
    Solution.add_member(:latest_solution_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionUpdateSummary, location_name: "latestSolutionUpdate"))
    Solution.type = Types::Solution
    SolutionConfig.add_member(:event_value_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: EventValueThreshold, location_name: "eventValueThreshold"))
    SolutionConfig.add_member(:hpo_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HPOConfig, location_name: "hpoConfig"))
    SolutionConfig.add_member(:algorithm_hyper_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, location_name: "algorithmHyperParameters"))
    SolutionConfig.add_member(:feature_transformation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTransformationParameters, location_name: "featureTransformationParameters"))
    SolutionConfig.add_member(:auto_ml_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMLConfig, location_name: "autoMLConfig"))
    SolutionConfig.add_member(:events_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsConfig, location_name: "eventsConfig"))
    SolutionConfig.add_member(:optimization_objective, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizationObjective, location_name: "optimizationObjective"))
    SolutionConfig.add_member(:training_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingDataConfig, location_name: "trainingDataConfig"))
    SolutionConfig.add_member(:auto_training_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTrainingConfig, location_name: "autoTrainingConfig"))
    SolutionConfig.type = Types::SolutionConfig
    SolutionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    SolutionSummary.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    SolutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    SolutionSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    SolutionSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    SolutionSummary.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    SolutionSummary.type = Types::SolutionSummary
    SolutionUpdateConfig.add_member(:auto_training_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTrainingConfig, location_name: "autoTrainingConfig"))
    SolutionUpdateConfig.add_member(:events_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsConfig, location_name: "eventsConfig"))
    SolutionUpdateConfig.type = Types::SolutionUpdateConfig
    SolutionUpdateSummary.add_member(:solution_update_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionUpdateConfig, location_name: "solutionUpdateConfig"))
    SolutionUpdateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    SolutionUpdateSummary.add_member(:perform_auto_training, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoTraining, location_name: "performAutoTraining"))
    SolutionUpdateSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    SolutionUpdateSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    SolutionUpdateSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    SolutionUpdateSummary.type = Types::SolutionUpdateSummary
    SolutionVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    SolutionVersion.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    SolutionVersion.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    SolutionVersion.add_member(:perform_hpo, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformHPO, location_name: "performHPO", traits: {"smithy.api#default" => false}))
    SolutionVersion.add_member(:perform_auto_ml, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoML, location_name: "performAutoML", traits: {"smithy.api#default" => false}))
    SolutionVersion.add_member(:recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recipeArn"))
    SolutionVersion.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "eventType"))
    SolutionVersion.add_member(:dataset_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetGroupArn"))
    SolutionVersion.add_member(:solution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionConfig, location_name: "solutionConfig"))
    SolutionVersion.add_member(:training_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingHours, location_name: "trainingHours"))
    SolutionVersion.add_member(:training_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingMode, location_name: "trainingMode"))
    SolutionVersion.add_member(:tuned_hpo_params, ::Smithy::Schema::Shapes::MemberShape.new(target: TunedHPOParams, location_name: "tunedHPOParams"))
    SolutionVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    SolutionVersion.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    SolutionVersion.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    SolutionVersion.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    SolutionVersion.add_member(:training_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingType, location_name: "trainingType"))
    SolutionVersion.type = Types::SolutionVersion
    SolutionVersionSummary.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    SolutionVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    SolutionVersionSummary.add_member(:training_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingMode, location_name: "trainingMode"))
    SolutionVersionSummary.add_member(:training_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingType, location_name: "trainingType"))
    SolutionVersionSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "creationDateTime"))
    SolutionVersionSummary.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedDateTime"))
    SolutionVersionSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    SolutionVersionSummary.type = Types::SolutionVersionSummary
    SolutionVersions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionVersionSummary)
    Solutions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionSummary)
    StartRecommenderRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn", traits: {"smithy.api#required" => {}}))
    StartRecommenderRequest.type = Types::StartRecommenderRequest
    StartRecommenderResponse.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn"))
    StartRecommenderResponse.type = Types::StartRecommenderResponse
    StopRecommenderRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn", traits: {"smithy.api#required" => {}}))
    StopRecommenderRequest.type = Types::StopRecommenderRequest
    StopRecommenderResponse.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn"))
    StopRecommenderResponse.type = Types::StopRecommenderResponse
    StopSolutionVersionCreationRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn", traits: {"smithy.api#required" => {}}))
    StopSolutionVersionCreationRequest.type = Types::StopSolutionVersionCreationRequest
    Tag.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "tagKey", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "tagValue", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    ThemeGenerationConfig.add_member(:fields_for_theme_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsForThemeGeneration, location_name: "fieldsForThemeGeneration", traits: {"smithy.api#required" => {}}))
    ThemeGenerationConfig.type = Types::ThemeGenerationConfig
    TooManyTagKeysException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TooManyTagKeysException.type = Types::TooManyTagKeysException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    TrainingDataConfig.add_member(:excluded_dataset_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedDatasetColumns, location_name: "excludedDatasetColumns"))
    TrainingDataConfig.type = Types::TrainingDataConfig
    TrainingMode.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    TrainingMode.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    TrainingMode.add_member(:autotrain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOTRAIN", traits: {"smithy.api#enumValue" => "AUTOTRAIN"}))
    TrainingType.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    TrainingType.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    TunedHPOParams.add_member(:algorithm_hyper_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, location_name: "algorithmHyperParameters"))
    TunedHPOParams.type = Types::TunedHPOParams
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCampaignRequest.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn", traits: {"smithy.api#required" => {}}))
    UpdateCampaignRequest.add_member(:solution_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionVersionArn"))
    UpdateCampaignRequest.add_member(:min_provisioned_tps, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionsPerSecond, location_name: "minProvisionedTPS"))
    UpdateCampaignRequest.add_member(:campaign_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignConfig, location_name: "campaignConfig"))
    UpdateCampaignRequest.type = Types::UpdateCampaignRequest
    UpdateCampaignResponse.add_member(:campaign_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "campaignArn"))
    UpdateCampaignResponse.type = Types::UpdateCampaignResponse
    UpdateDatasetRequest.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "schemaArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "datasetArn"))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdateMetricAttributionRequest.add_member(:add_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributes, location_name: "addMetrics"))
    UpdateMetricAttributionRequest.add_member(:remove_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributesNamesList, location_name: "removeMetrics"))
    UpdateMetricAttributionRequest.add_member(:metrics_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAttributionOutput, location_name: "metricsOutputConfig"))
    UpdateMetricAttributionRequest.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn"))
    UpdateMetricAttributionRequest.type = Types::UpdateMetricAttributionRequest
    UpdateMetricAttributionResponse.add_member(:metric_attribution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "metricAttributionArn"))
    UpdateMetricAttributionResponse.type = Types::UpdateMetricAttributionResponse
    UpdateRecommenderRequest.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn", traits: {"smithy.api#required" => {}}))
    UpdateRecommenderRequest.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, location_name: "recommenderConfig", traits: {"smithy.api#required" => {}}))
    UpdateRecommenderRequest.type = Types::UpdateRecommenderRequest
    UpdateRecommenderResponse.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "recommenderArn"))
    UpdateRecommenderResponse.type = Types::UpdateRecommenderResponse
    UpdateSolutionRequest.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn", traits: {"smithy.api#required" => {}}))
    UpdateSolutionRequest.add_member(:perform_auto_training, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformAutoTraining, location_name: "performAutoTraining"))
    UpdateSolutionRequest.add_member(:solution_update_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionUpdateConfig, location_name: "solutionUpdateConfig"))
    UpdateSolutionRequest.type = Types::UpdateSolutionRequest
    UpdateSolutionResponse.add_member(:solution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "solutionArn"))
    UpdateSolutionResponse.type = Types::UpdateSolutionResponse

    AmazonPersonalize = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.personalize#AmazonPersonalize"
      service.name = "AmazonPersonalize"
      service.version = "2018-05-22"
      service.traits = {"aws.api#service" => {"sdkId" => "Personalize", "arnNamespace" => "personalize", "cloudFormationName" => "Personalize", "cloudTrailEventSource" => "personalize.amazonaws.com", "endpointPrefix" => "personalize"}, "aws.auth#sigv4" => {"name" => "personalize"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Personalize"}
      service.add_operation(:create_batch_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateBatchInferenceJob"
        operation.name = "CreateBatchInferenceJob"
        operation.input = CreateBatchInferenceJobRequest
        operation.output = CreateBatchInferenceJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_batch_segment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateBatchSegmentJob"
        operation.name = "CreateBatchSegmentJob"
        operation.input = CreateBatchSegmentJobRequest
        operation.output = CreateBatchSegmentJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = CreateCampaignRequest
        operation.output = CreateCampaignResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_deletion_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDataDeletionJob"
        operation.name = "CreateDataDeletionJob"
        operation.input = CreateDataDeletionJobRequest
        operation.output = CreateDataDeletionJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_dataset_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDatasetExportJob"
        operation.name = "CreateDatasetExportJob"
        operation.input = CreateDatasetExportJobRequest
        operation.output = CreateDatasetExportJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDatasetGroup"
        operation.name = "CreateDatasetGroup"
        operation.input = CreateDatasetGroupRequest
        operation.output = CreateDatasetGroupResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_dataset_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateDatasetImportJob"
        operation.name = "CreateDatasetImportJob"
        operation.input = CreateDatasetImportJobRequest
        operation.output = CreateDatasetImportJobResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_event_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateEventTracker"
        operation.name = "CreateEventTracker"
        operation.input = CreateEventTrackerRequest
        operation.output = CreateEventTrackerResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateFilter"
        operation.name = "CreateFilter"
        operation.input = CreateFilterRequest
        operation.output = CreateFilterResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_metric_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateMetricAttribution"
        operation.name = "CreateMetricAttribution"
        operation.input = CreateMetricAttributionRequest
        operation.output = CreateMetricAttributionResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateRecommender"
        operation.name = "CreateRecommender"
        operation.input = CreateRecommenderRequest
        operation.output = CreateRecommenderResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateSchema"
        operation.name = "CreateSchema"
        operation.input = CreateSchemaRequest
        operation.output = CreateSchemaResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_solution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateSolution"
        operation.name = "CreateSolution"
        operation.input = CreateSolutionRequest
        operation.output = CreateSolutionResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_solution_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#CreateSolutionVersion"
        operation.name = "CreateSolutionVersion"
        operation.input = CreateSolutionVersionRequest
        operation.output = CreateSolutionVersionResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:delete_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = DeleteCampaignRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteDatasetGroup"
        operation.name = "DeleteDatasetGroup"
        operation.input = DeleteDatasetGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteEventTracker"
        operation.name = "DeleteEventTracker"
        operation.input = DeleteEventTrackerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteFilter"
        operation.name = "DeleteFilter"
        operation.input = DeleteFilterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteMetricAttribution"
        operation.name = "DeleteMetricAttribution"
        operation.input = DeleteMetricAttributionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteRecommender"
        operation.name = "DeleteRecommender"
        operation.input = DeleteRecommenderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteSchema"
        operation.name = "DeleteSchema"
        operation.input = DeleteSchemaRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_solution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DeleteSolution"
        operation.name = "DeleteSolution"
        operation.input = DeleteSolutionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_algorithm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeAlgorithm"
        operation.name = "DescribeAlgorithm"
        operation.input = DescribeAlgorithmRequest
        operation.output = DescribeAlgorithmResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_batch_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeBatchInferenceJob"
        operation.name = "DescribeBatchInferenceJob"
        operation.input = DescribeBatchInferenceJobRequest
        operation.output = DescribeBatchInferenceJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_batch_segment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeBatchSegmentJob"
        operation.name = "DescribeBatchSegmentJob"
        operation.input = DescribeBatchSegmentJobRequest
        operation.output = DescribeBatchSegmentJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeCampaign"
        operation.name = "DescribeCampaign"
        operation.input = DescribeCampaignRequest
        operation.output = DescribeCampaignResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_data_deletion_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDataDeletionJob"
        operation.name = "DescribeDataDeletionJob"
        operation.input = DescribeDataDeletionJobRequest
        operation.output = DescribeDataDeletionJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDatasetExportJob"
        operation.name = "DescribeDatasetExportJob"
        operation.input = DescribeDatasetExportJobRequest
        operation.output = DescribeDatasetExportJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDatasetGroup"
        operation.name = "DescribeDatasetGroup"
        operation.input = DescribeDatasetGroupRequest
        operation.output = DescribeDatasetGroupResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_dataset_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeDatasetImportJob"
        operation.name = "DescribeDatasetImportJob"
        operation.input = DescribeDatasetImportJobRequest
        operation.output = DescribeDatasetImportJobResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_event_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeEventTracker"
        operation.name = "DescribeEventTracker"
        operation.input = DescribeEventTrackerRequest
        operation.output = DescribeEventTrackerResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_feature_transformation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeFeatureTransformation"
        operation.name = "DescribeFeatureTransformation"
        operation.input = DescribeFeatureTransformationRequest
        operation.output = DescribeFeatureTransformationResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeFilter"
        operation.name = "DescribeFilter"
        operation.input = DescribeFilterRequest
        operation.output = DescribeFilterResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_metric_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeMetricAttribution"
        operation.name = "DescribeMetricAttribution"
        operation.input = DescribeMetricAttributionRequest
        operation.output = DescribeMetricAttributionResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeRecipe"
        operation.name = "DescribeRecipe"
        operation.input = DescribeRecipeRequest
        operation.output = DescribeRecipeResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeRecommender"
        operation.name = "DescribeRecommender"
        operation.input = DescribeRecommenderRequest
        operation.output = DescribeRecommenderResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeSchema"
        operation.name = "DescribeSchema"
        operation.input = DescribeSchemaRequest
        operation.output = DescribeSchemaResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_solution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeSolution"
        operation.name = "DescribeSolution"
        operation.input = DescribeSolutionRequest
        operation.output = DescribeSolutionResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_solution_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#DescribeSolutionVersion"
        operation.name = "DescribeSolutionVersion"
        operation.input = DescribeSolutionVersionRequest
        operation.output = DescribeSolutionVersionResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_solution_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#GetSolutionMetrics"
        operation.name = "GetSolutionMetrics"
        operation.input = GetSolutionMetricsRequest
        operation.output = GetSolutionMetricsResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_batch_inference_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListBatchInferenceJobs"
        operation.name = "ListBatchInferenceJobs"
        operation.input = ListBatchInferenceJobsRequest
        operation.output = ListBatchInferenceJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBatchInferenceJobs.new
      end)
      service.add_operation(:list_batch_segment_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListBatchSegmentJobs"
        operation.name = "ListBatchSegmentJobs"
        operation.input = ListBatchSegmentJobsRequest
        operation.output = ListBatchSegmentJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBatchSegmentJobs.new
      end)
      service.add_operation(:list_campaigns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListCampaigns"
        operation.name = "ListCampaigns"
        operation.input = ListCampaignsRequest
        operation.output = ListCampaignsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListCampaigns.new
      end)
      service.add_operation(:list_data_deletion_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDataDeletionJobs"
        operation.name = "ListDataDeletionJobs"
        operation.input = ListDataDeletionJobsRequest
        operation.output = ListDataDeletionJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_dataset_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasetExportJobs"
        operation.name = "ListDatasetExportJobs"
        operation.input = ListDatasetExportJobsRequest
        operation.output = ListDatasetExportJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetExportJobs.new
      end)
      service.add_operation(:list_dataset_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasetGroups"
        operation.name = "ListDatasetGroups"
        operation.input = ListDatasetGroupsRequest
        operation.output = ListDatasetGroupsResponse
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetGroups.new
      end)
      service.add_operation(:list_dataset_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasetImportJobs"
        operation.name = "ListDatasetImportJobs"
        operation.input = ListDatasetImportJobsRequest
        operation.output = ListDatasetImportJobsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasetImportJobs.new
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_event_trackers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListEventTrackers"
        operation.name = "ListEventTrackers"
        operation.input = ListEventTrackersRequest
        operation.output = ListEventTrackersResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListEventTrackers.new
      end)
      service.add_operation(:list_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListFilters"
        operation.name = "ListFilters"
        operation.input = ListFiltersRequest
        operation.output = ListFiltersResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListFilters.new
      end)
      service.add_operation(:list_metric_attribution_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListMetricAttributionMetrics"
        operation.name = "ListMetricAttributionMetrics"
        operation.input = ListMetricAttributionMetricsRequest
        operation.output = ListMetricAttributionMetricsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMetricAttributionMetrics.new
      end)
      service.add_operation(:list_metric_attributions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListMetricAttributions"
        operation.name = "ListMetricAttributions"
        operation.input = ListMetricAttributionsRequest
        operation.output = ListMetricAttributionsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMetricAttributions.new
      end)
      service.add_operation(:list_recipes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListRecipes"
        operation.name = "ListRecipes"
        operation.input = ListRecipesRequest
        operation.output = ListRecipesResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecipes.new
      end)
      service.add_operation(:list_recommenders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListRecommenders"
        operation.name = "ListRecommenders"
        operation.input = ListRecommendersRequest
        operation.output = ListRecommendersResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRecommenders.new
      end)
      service.add_operation(:list_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = ListSchemasRequest
        operation.output = ListSchemasResponse
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_solution_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListSolutionVersions"
        operation.name = "ListSolutionVersions"
        operation.input = ListSolutionVersionsRequest
        operation.output = ListSolutionVersionsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListSolutionVersions.new
      end)
      service.add_operation(:list_solutions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListSolutions"
        operation.name = "ListSolutions"
        operation.input = ListSolutionsRequest
        operation.output = ListSolutionsResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListSolutions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#StartRecommender"
        operation.name = "StartRecommender"
        operation.input = StartRecommenderRequest
        operation.output = StartRecommenderResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#StopRecommender"
        operation.name = "StopRecommender"
        operation.input = StopRecommenderRequest
        operation.output = StopRecommenderResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_solution_version_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#StopSolutionVersionCreation"
        operation.name = "StopSolutionVersionCreation"
        operation.input = StopSolutionVersionCreationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagKeysException
        operation.traits = {}
      end)
      service.add_operation(:update_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateCampaign"
        operation.name = "UpdateCampaign"
        operation.input = UpdateCampaignRequest
        operation.output = UpdateCampaignResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = UpdateDatasetRequest
        operation.output = UpdateDatasetResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_metric_attribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateMetricAttribution"
        operation.name = "UpdateMetricAttribution"
        operation.input = UpdateMetricAttributionRequest
        operation.output = UpdateMetricAttributionResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateRecommender"
        operation.name = "UpdateRecommender"
        operation.input = UpdateRecommenderRequest
        operation.output = UpdateRecommenderResponse
        operation.errors << InvalidInputException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_solution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.personalize#UpdateSolution"
        operation.name = "UpdateSolution"
        operation.input = UpdateSolutionRequest
        operation.output = UpdateSolutionResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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

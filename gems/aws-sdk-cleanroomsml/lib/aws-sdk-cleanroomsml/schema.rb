# frozen_string_literal: true

# This is generated code!

module Aws::CleanRoomsML
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessBudget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AccessBudget', name: 'AccessBudget')
    AccessBudgetDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AccessBudgetDetails', name: 'AccessBudgetDetails')
    AccessBudgetDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AccessBudgetDetailsList', name: 'AccessBudgetDetailsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    AccessBudgetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#AccessBudgetType', name: 'AccessBudgetType')
    AccessBudgets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AccessBudgets', name: 'AccessBudgets', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AccountIdList', name: 'AccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AlgorithmImage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#AlgorithmImage', name: 'AlgorithmImage', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    AnalysisTemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#AnalysisTemplateArn', name: 'AnalysisTemplateArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+$"})
    AudienceDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceDestination', name: 'AudienceDestination')
    AudienceExportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AudienceExportJobList', name: 'AudienceExportJobList')
    AudienceExportJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#AudienceExportJobStatus', name: 'AudienceExportJobStatus')
    AudienceExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceExportJobSummary', name: 'AudienceExportJobSummary')
    AudienceGenerationJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#AudienceGenerationJobArn', name: 'AudienceGenerationJobArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#AudienceGenerationJob"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:audience-generation-job/[-a-zA-Z0-9_/.]+$"})
    AudienceGenerationJobDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceGenerationJobDataSource', name: 'AudienceGenerationJobDataSource')
    AudienceGenerationJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AudienceGenerationJobList', name: 'AudienceGenerationJobList')
    AudienceGenerationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#AudienceGenerationJobStatus', name: 'AudienceGenerationJobStatus')
    AudienceGenerationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceGenerationJobSummary', name: 'AudienceGenerationJobSummary')
    AudienceModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#AudienceModelArn', name: 'AudienceModelArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#AudienceModel"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:audience-model/[-a-zA-Z0-9_/.]+$"})
    AudienceModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AudienceModelList', name: 'AudienceModelList')
    AudienceModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#AudienceModelStatus', name: 'AudienceModelStatus')
    AudienceModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceModelSummary', name: 'AudienceModelSummary')
    AudienceQualityMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceQualityMetrics', name: 'AudienceQualityMetrics')
    AudienceSize = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceSize', name: 'AudienceSize')
    AudienceSizeBins = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#AudienceSizeBins', name: 'AudienceSizeBins', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#uniqueItems" => {}})
    AudienceSizeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#AudienceSizeConfig', name: 'AudienceSizeConfig')
    AudienceSizeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#AudienceSizeType', name: 'AudienceSizeType')
    AudienceSizeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanroomsml#AudienceSizeValue', name: 'AudienceSizeValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 20000000}})
    AutoRefreshMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#AutoRefreshMode', name: 'AutoRefreshMode')
    Budget = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanroomsml#Budget', name: 'Budget', traits: {"smithy.api#range" => {"min" => 0}})
    BudgetedResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#BudgetedResourceArn', name: 'BudgetedResourceArn', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/configuredtableassociation/[\\d\\w-]+$"})
    CancelTrainedModelInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CancelTrainedModelInferenceJobRequest', name: 'CancelTrainedModelInferenceJobRequest')
    CancelTrainedModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CancelTrainedModelRequest', name: 'CancelTrainedModelRequest')
    CollaborationConfiguredModelAlgorithmAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationConfiguredModelAlgorithmAssociationList', name: 'CollaborationConfiguredModelAlgorithmAssociationList')
    CollaborationConfiguredModelAlgorithmAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationConfiguredModelAlgorithmAssociationSummary', name: 'CollaborationConfiguredModelAlgorithmAssociationSummary')
    CollaborationMLInputChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationMLInputChannelSummary', name: 'CollaborationMLInputChannelSummary')
    CollaborationMLInputChannelsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationMLInputChannelsList', name: 'CollaborationMLInputChannelsList')
    CollaborationTrainedModelExportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationTrainedModelExportJobList', name: 'CollaborationTrainedModelExportJobList')
    CollaborationTrainedModelExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationTrainedModelExportJobSummary', name: 'CollaborationTrainedModelExportJobSummary')
    CollaborationTrainedModelInferenceJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationTrainedModelInferenceJobList', name: 'CollaborationTrainedModelInferenceJobList')
    CollaborationTrainedModelInferenceJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationTrainedModelInferenceJobSummary', name: 'CollaborationTrainedModelInferenceJobSummary')
    CollaborationTrainedModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationTrainedModelList', name: 'CollaborationTrainedModelList')
    CollaborationTrainedModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CollaborationTrainedModelSummary', name: 'CollaborationTrainedModelSummary')
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    ColumnSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ColumnSchema', name: 'ColumnSchema')
    ColumnType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#ColumnType', name: 'ColumnType')
    ColumnTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ColumnTypeList', name: 'ColumnTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ComputeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanroomsml#ComputeConfiguration', name: 'ComputeConfiguration')
    ConfiguredAudienceModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredAudienceModelArn', name: 'ConfiguredAudienceModelArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#ConfiguredAudienceModel"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:configured-audience-model/[-a-zA-Z0-9_/.]+$"})
    ConfiguredAudienceModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredAudienceModelList', name: 'ConfiguredAudienceModelList')
    ConfiguredAudienceModelOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredAudienceModelOutputConfig', name: 'ConfiguredAudienceModelOutputConfig')
    ConfiguredAudienceModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredAudienceModelStatus', name: 'ConfiguredAudienceModelStatus')
    ConfiguredAudienceModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredAudienceModelSummary', name: 'ConfiguredAudienceModelSummary')
    ConfiguredModelAlgorithmArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmArn', name: 'ConfiguredModelAlgorithmArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#ConfiguredModelAlgorithm"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:configured-model-algorithm/[-a-zA-Z0-9_/.]+$"})
    ConfiguredModelAlgorithmAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmAssociationArn', name: 'ConfiguredModelAlgorithmAssociationArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmAssociation"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:membership/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/configured-model-algorithm-association/[-a-zA-Z0-9_/.]+$"})
    ConfiguredModelAlgorithmAssociationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmAssociationArnList', name: 'ConfiguredModelAlgorithmAssociationArnList')
    ConfiguredModelAlgorithmAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmAssociationList', name: 'ConfiguredModelAlgorithmAssociationList')
    ConfiguredModelAlgorithmAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmAssociationSummary', name: 'ConfiguredModelAlgorithmAssociationSummary')
    ConfiguredModelAlgorithmList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmList', name: 'ConfiguredModelAlgorithmList')
    ConfiguredModelAlgorithmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ConfiguredModelAlgorithmSummary', name: 'ConfiguredModelAlgorithmSummary')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContainerArgument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ContainerArgument', name: 'ContainerArgument', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    ContainerArguments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ContainerArguments', name: 'ContainerArguments', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ContainerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ContainerConfig', name: 'ContainerConfig')
    ContainerEntrypoint = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ContainerEntrypoint', name: 'ContainerEntrypoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ContainerEntrypointString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ContainerEntrypointString', name: 'ContainerEntrypointString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    CreateAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateAudienceModelRequest', name: 'CreateAudienceModelRequest')
    CreateAudienceModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateAudienceModelResponse', name: 'CreateAudienceModelResponse')
    CreateConfiguredAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateConfiguredAudienceModelRequest', name: 'CreateConfiguredAudienceModelRequest')
    CreateConfiguredAudienceModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateConfiguredAudienceModelResponse', name: 'CreateConfiguredAudienceModelResponse')
    CreateConfiguredModelAlgorithmAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateConfiguredModelAlgorithmAssociationRequest', name: 'CreateConfiguredModelAlgorithmAssociationRequest')
    CreateConfiguredModelAlgorithmAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateConfiguredModelAlgorithmAssociationResponse', name: 'CreateConfiguredModelAlgorithmAssociationResponse')
    CreateConfiguredModelAlgorithmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateConfiguredModelAlgorithmRequest', name: 'CreateConfiguredModelAlgorithmRequest')
    CreateConfiguredModelAlgorithmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateConfiguredModelAlgorithmResponse', name: 'CreateConfiguredModelAlgorithmResponse')
    CreateMLInputChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateMLInputChannelRequest', name: 'CreateMLInputChannelRequest')
    CreateMLInputChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateMLInputChannelResponse', name: 'CreateMLInputChannelResponse')
    CreateTrainedModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateTrainedModelRequest', name: 'CreateTrainedModelRequest')
    CreateTrainedModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateTrainedModelResponse', name: 'CreateTrainedModelResponse')
    CreateTrainingDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateTrainingDatasetRequest', name: 'CreateTrainingDatasetRequest')
    CreateTrainingDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CreateTrainingDatasetResponse', name: 'CreateTrainingDatasetResponse')
    CustomDataIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#CustomDataIdentifier', name: 'CustomDataIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\#\\=\\@/\\;\\,\\-\\ \\^\\$\\?\\[\\]\\{\\}\\|\\\\\\*\\+\\.\\(\\)]+$"})
    CustomDataIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#CustomDataIdentifierList', name: 'CustomDataIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CustomEntityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#CustomEntityConfig', name: 'CustomEntityConfig')
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DataSource', name: 'DataSource')
    Dataset = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#Dataset', name: 'Dataset')
    DatasetInputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DatasetInputConfig', name: 'DatasetInputConfig')
    DatasetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#DatasetList', name: 'DatasetList')
    DatasetSchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#DatasetSchemaList', name: 'DatasetSchemaList')
    DatasetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#DatasetType', name: 'DatasetType')
    DeleteAudienceGenerationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteAudienceGenerationJobRequest', name: 'DeleteAudienceGenerationJobRequest')
    DeleteAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteAudienceModelRequest', name: 'DeleteAudienceModelRequest')
    DeleteConfiguredAudienceModelPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteConfiguredAudienceModelPolicyRequest', name: 'DeleteConfiguredAudienceModelPolicyRequest')
    DeleteConfiguredAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteConfiguredAudienceModelRequest', name: 'DeleteConfiguredAudienceModelRequest')
    DeleteConfiguredModelAlgorithmAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteConfiguredModelAlgorithmAssociationRequest', name: 'DeleteConfiguredModelAlgorithmAssociationRequest')
    DeleteConfiguredModelAlgorithmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteConfiguredModelAlgorithmRequest', name: 'DeleteConfiguredModelAlgorithmRequest')
    DeleteMLConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteMLConfigurationRequest', name: 'DeleteMLConfigurationRequest')
    DeleteMLInputChannelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteMLInputChannelDataRequest', name: 'DeleteMLInputChannelDataRequest')
    DeleteTrainedModelOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteTrainedModelOutputRequest', name: 'DeleteTrainedModelOutputRequest')
    DeleteTrainingDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#DeleteTrainingDatasetRequest', name: 'DeleteTrainingDatasetRequest')
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#Destination', name: 'Destination')
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#EntityType', name: 'EntityType')
    EntityTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#EntityTypeList', name: 'EntityTypeList', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    Environment = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanroomsml#Environment', name: 'Environment', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetAudienceGenerationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetAudienceGenerationJobRequest', name: 'GetAudienceGenerationJobRequest')
    GetAudienceGenerationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetAudienceGenerationJobResponse', name: 'GetAudienceGenerationJobResponse')
    GetAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetAudienceModelRequest', name: 'GetAudienceModelRequest')
    GetAudienceModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetAudienceModelResponse', name: 'GetAudienceModelResponse')
    GetCollaborationConfiguredModelAlgorithmAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetCollaborationConfiguredModelAlgorithmAssociationRequest', name: 'GetCollaborationConfiguredModelAlgorithmAssociationRequest')
    GetCollaborationConfiguredModelAlgorithmAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetCollaborationConfiguredModelAlgorithmAssociationResponse', name: 'GetCollaborationConfiguredModelAlgorithmAssociationResponse')
    GetCollaborationMLInputChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetCollaborationMLInputChannelRequest', name: 'GetCollaborationMLInputChannelRequest')
    GetCollaborationMLInputChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetCollaborationMLInputChannelResponse', name: 'GetCollaborationMLInputChannelResponse')
    GetCollaborationTrainedModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetCollaborationTrainedModelRequest', name: 'GetCollaborationTrainedModelRequest')
    GetCollaborationTrainedModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetCollaborationTrainedModelResponse', name: 'GetCollaborationTrainedModelResponse')
    GetConfiguredAudienceModelPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredAudienceModelPolicyRequest', name: 'GetConfiguredAudienceModelPolicyRequest')
    GetConfiguredAudienceModelPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredAudienceModelPolicyResponse', name: 'GetConfiguredAudienceModelPolicyResponse')
    GetConfiguredAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredAudienceModelRequest', name: 'GetConfiguredAudienceModelRequest')
    GetConfiguredAudienceModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredAudienceModelResponse', name: 'GetConfiguredAudienceModelResponse')
    GetConfiguredModelAlgorithmAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredModelAlgorithmAssociationRequest', name: 'GetConfiguredModelAlgorithmAssociationRequest')
    GetConfiguredModelAlgorithmAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredModelAlgorithmAssociationResponse', name: 'GetConfiguredModelAlgorithmAssociationResponse')
    GetConfiguredModelAlgorithmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredModelAlgorithmRequest', name: 'GetConfiguredModelAlgorithmRequest')
    GetConfiguredModelAlgorithmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetConfiguredModelAlgorithmResponse', name: 'GetConfiguredModelAlgorithmResponse')
    GetMLConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetMLConfigurationRequest', name: 'GetMLConfigurationRequest')
    GetMLConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetMLConfigurationResponse', name: 'GetMLConfigurationResponse')
    GetMLInputChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetMLInputChannelRequest', name: 'GetMLInputChannelRequest')
    GetMLInputChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetMLInputChannelResponse', name: 'GetMLInputChannelResponse')
    GetTrainedModelInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetTrainedModelInferenceJobRequest', name: 'GetTrainedModelInferenceJobRequest')
    GetTrainedModelInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetTrainedModelInferenceJobResponse', name: 'GetTrainedModelInferenceJobResponse')
    GetTrainedModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetTrainedModelRequest', name: 'GetTrainedModelRequest')
    GetTrainedModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetTrainedModelResponse', name: 'GetTrainedModelResponse')
    GetTrainingDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetTrainingDatasetRequest', name: 'GetTrainingDatasetRequest')
    GetTrainingDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GetTrainingDatasetResponse', name: 'GetTrainingDatasetResponse')
    GlueDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#GlueDataSource', name: 'GlueDataSource')
    GlueDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#GlueDatabaseName', name: 'GlueDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+-)*([a-zA-Z0-9_]+))?$"})
    GlueTableName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#GlueTableName', name: 'GlueTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    Hash = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#Hash', name: 'Hash', traits: {"smithy.api#length" => {"min" => 64, "max" => 128}, "smithy.api#pattern" => "^[0-9a-f]+$"})
    HyperParameters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanroomsml#HyperParameters', name: 'HyperParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#IamRoleArn', name: 'IamRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:iam::[0-9]{12}:role/.+$"})
    IncrementalTrainingDataChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#IncrementalTrainingDataChannel', name: 'IncrementalTrainingDataChannel')
    IncrementalTrainingDataChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#IncrementalTrainingDataChannelOutput', name: 'IncrementalTrainingDataChannelOutput')
    IncrementalTrainingDataChannels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#IncrementalTrainingDataChannels', name: 'IncrementalTrainingDataChannels', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IncrementalTrainingDataChannelsOutput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#IncrementalTrainingDataChannelsOutput', name: 'IncrementalTrainingDataChannelsOutput', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InferenceContainerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InferenceContainerConfig', name: 'InferenceContainerConfig')
    InferenceContainerExecutionParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InferenceContainerExecutionParameters', name: 'InferenceContainerExecutionParameters')
    InferenceEnvironmentMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanroomsml#InferenceEnvironmentMap', name: 'InferenceEnvironmentMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    InferenceInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#InferenceInstanceType', name: 'InferenceInstanceType')
    InferenceOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InferenceOutputConfiguration', name: 'InferenceOutputConfiguration')
    InferenceReceiverMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InferenceReceiverMember', name: 'InferenceReceiverMember')
    InferenceReceiverMembers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#InferenceReceiverMembers', name: 'InferenceReceiverMembers', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InferenceResourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InferenceResourceConfig', name: 'InferenceResourceConfig')
    InputChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InputChannel', name: 'InputChannel')
    InputChannelDataSource = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanroomsml#InputChannelDataSource', name: 'InputChannelDataSource')
    InstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#InstanceType', name: 'InstanceType')
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#KmsKeyArn', name: 'KmsKeyArn', traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:kms:[-a-z0-9]+:[0-9]{12}:key/.+$"})
    ListAudienceExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListAudienceExportJobsRequest', name: 'ListAudienceExportJobsRequest')
    ListAudienceExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListAudienceExportJobsResponse', name: 'ListAudienceExportJobsResponse')
    ListAudienceGenerationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListAudienceGenerationJobsRequest', name: 'ListAudienceGenerationJobsRequest')
    ListAudienceGenerationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListAudienceGenerationJobsResponse', name: 'ListAudienceGenerationJobsResponse')
    ListAudienceModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListAudienceModelsRequest', name: 'ListAudienceModelsRequest')
    ListAudienceModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListAudienceModelsResponse', name: 'ListAudienceModelsResponse')
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationConfiguredModelAlgorithmAssociationsRequest', name: 'ListCollaborationConfiguredModelAlgorithmAssociationsRequest')
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationConfiguredModelAlgorithmAssociationsResponse', name: 'ListCollaborationConfiguredModelAlgorithmAssociationsResponse')
    ListCollaborationMLInputChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationMLInputChannelsRequest', name: 'ListCollaborationMLInputChannelsRequest')
    ListCollaborationMLInputChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationMLInputChannelsResponse', name: 'ListCollaborationMLInputChannelsResponse')
    ListCollaborationTrainedModelExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationTrainedModelExportJobsRequest', name: 'ListCollaborationTrainedModelExportJobsRequest')
    ListCollaborationTrainedModelExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationTrainedModelExportJobsResponse', name: 'ListCollaborationTrainedModelExportJobsResponse')
    ListCollaborationTrainedModelInferenceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationTrainedModelInferenceJobsRequest', name: 'ListCollaborationTrainedModelInferenceJobsRequest')
    ListCollaborationTrainedModelInferenceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationTrainedModelInferenceJobsResponse', name: 'ListCollaborationTrainedModelInferenceJobsResponse')
    ListCollaborationTrainedModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationTrainedModelsRequest', name: 'ListCollaborationTrainedModelsRequest')
    ListCollaborationTrainedModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListCollaborationTrainedModelsResponse', name: 'ListCollaborationTrainedModelsResponse')
    ListConfiguredAudienceModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListConfiguredAudienceModelsRequest', name: 'ListConfiguredAudienceModelsRequest')
    ListConfiguredAudienceModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListConfiguredAudienceModelsResponse', name: 'ListConfiguredAudienceModelsResponse')
    ListConfiguredModelAlgorithmAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListConfiguredModelAlgorithmAssociationsRequest', name: 'ListConfiguredModelAlgorithmAssociationsRequest')
    ListConfiguredModelAlgorithmAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListConfiguredModelAlgorithmAssociationsResponse', name: 'ListConfiguredModelAlgorithmAssociationsResponse')
    ListConfiguredModelAlgorithmsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListConfiguredModelAlgorithmsRequest', name: 'ListConfiguredModelAlgorithmsRequest')
    ListConfiguredModelAlgorithmsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListConfiguredModelAlgorithmsResponse', name: 'ListConfiguredModelAlgorithmsResponse')
    ListMLInputChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListMLInputChannelsRequest', name: 'ListMLInputChannelsRequest')
    ListMLInputChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListMLInputChannelsResponse', name: 'ListMLInputChannelsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTrainedModelInferenceJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainedModelInferenceJobsRequest', name: 'ListTrainedModelInferenceJobsRequest')
    ListTrainedModelInferenceJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainedModelInferenceJobsResponse', name: 'ListTrainedModelInferenceJobsResponse')
    ListTrainedModelVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainedModelVersionsRequest', name: 'ListTrainedModelVersionsRequest')
    ListTrainedModelVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainedModelVersionsResponse', name: 'ListTrainedModelVersionsResponse')
    ListTrainedModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainedModelsRequest', name: 'ListTrainedModelsRequest')
    ListTrainedModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainedModelsResponse', name: 'ListTrainedModelsResponse')
    ListTrainingDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainingDatasetsRequest', name: 'ListTrainingDatasetsRequest')
    ListTrainingDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ListTrainingDatasetsResponse', name: 'ListTrainingDatasetsResponse')
    LogRedactionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#LogRedactionConfiguration', name: 'LogRedactionConfiguration')
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#LogType', name: 'LogType')
    LogsConfigurationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#LogsConfigurationPolicy', name: 'LogsConfigurationPolicy')
    LogsConfigurationPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#LogsConfigurationPolicyList', name: 'LogsConfigurationPolicyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    LogsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#LogsStatus', name: 'LogsStatus')
    MLInputChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#MLInputChannelArn', name: 'MLInputChannelArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#MLInputChannel"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:membership/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/ml-input-channel/[-a-zA-Z0-9_/.]+$"})
    MLInputChannelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#MLInputChannelStatus', name: 'MLInputChannelStatus')
    MLInputChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#MLInputChannelSummary', name: 'MLInputChannelSummary')
    MLInputChannelsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#MLInputChannelsList', name: 'MLInputChannelsList')
    MLOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#MLOutputConfiguration', name: 'MLOutputConfiguration')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanroomsml#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#MetricDefinition', name: 'MetricDefinition')
    MetricDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#MetricDefinitionList', name: 'MetricDefinitionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    MetricRegex = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#MetricRegex', name: 'MetricRegex', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^.+$"})
    MetricsConfigurationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#MetricsConfigurationPolicy', name: 'MetricsConfigurationPolicy')
    MetricsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#MetricsList', name: 'MetricsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MetricsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#MetricsStatus', name: 'MetricsStatus')
    MinMatchingSeedSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanroomsml#MinMatchingSeedSize', name: 'MinMatchingSeedSize', traits: {"smithy.api#range" => {"min" => 25, "max" => 500000}})
    ModelInferenceDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ModelInferenceDataSource', name: 'ModelInferenceDataSource')
    ModelTrainingDataChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ModelTrainingDataChannel', name: 'ModelTrainingDataChannel')
    ModelTrainingDataChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ModelTrainingDataChannelName', name: 'ModelTrainingDataChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9\\.\\-_]+$"})
    ModelTrainingDataChannels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#ModelTrainingDataChannels', name: 'ModelTrainingDataChannels', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#uniqueItems" => {}})
    NameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#NameString', name: 'NameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}})
    NoiseLevelType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#NoiseLevelType', name: 'NoiseLevelType')
    ParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ParameterKey', name: 'ParameterKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z_]+$"})
    ParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanroomsml#ParameterMap', name: 'ParameterMap')
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    PolicyExistenceCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#PolicyExistenceCondition', name: 'PolicyExistenceCondition')
    PrivacyBudgets = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanroomsml#PrivacyBudgets', name: 'PrivacyBudgets')
    PrivacyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#PrivacyConfiguration', name: 'PrivacyConfiguration')
    PrivacyConfigurationPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#PrivacyConfigurationPolicies', name: 'PrivacyConfigurationPolicies')
    ProtectedQueryInputParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ProtectedQueryInputParameters', name: 'ProtectedQueryInputParameters')
    ProtectedQuerySQLParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ProtectedQuerySQLParameters', name: 'ProtectedQuerySQLParameters', traits: {"smithy.api#sensitive" => {}})
    PutConfiguredAudienceModelPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#PutConfiguredAudienceModelPolicyRequest', name: 'PutConfiguredAudienceModelPolicyRequest')
    PutConfiguredAudienceModelPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#PutConfiguredAudienceModelPolicyResponse', name: 'PutConfiguredAudienceModelPolicyResponse')
    PutMLConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#PutMLConfigurationRequest', name: 'PutMLConfigurationRequest')
    RelevanceMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#RelevanceMetric', name: 'RelevanceMetric')
    RelevanceMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#RelevanceMetrics', name: 'RelevanceMetrics')
    ResourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ResourceConfig', name: 'ResourceConfig')
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#ResourcePolicy', name: 'ResourcePolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}})
    ResultFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#ResultFormat', name: 'ResultFormat')
    S3ConfigMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#S3ConfigMap', name: 'S3ConfigMap')
    S3DataDistributionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#S3DataDistributionType', name: 'S3DataDistributionType')
    S3Path = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#S3Path', name: 'S3Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 1285}, "smithy.api#pattern" => "^s3://.+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedAudienceMetrics = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#SharedAudienceMetrics', name: 'SharedAudienceMetrics')
    StartAudienceExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StartAudienceExportJobRequest', name: 'StartAudienceExportJobRequest')
    StartAudienceGenerationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StartAudienceGenerationJobRequest', name: 'StartAudienceGenerationJobRequest')
    StartAudienceGenerationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StartAudienceGenerationJobResponse', name: 'StartAudienceGenerationJobResponse')
    StartTrainedModelExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StartTrainedModelExportJobRequest', name: 'StartTrainedModelExportJobRequest')
    StartTrainedModelInferenceJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StartTrainedModelInferenceJobRequest', name: 'StartTrainedModelInferenceJobRequest')
    StartTrainedModelInferenceJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StartTrainedModelInferenceJobResponse', name: 'StartTrainedModelInferenceJobResponse')
    StatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StatusDetails', name: 'StatusDetails')
    StoppingCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#StoppingCondition', name: 'StoppingCondition')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanroomsml#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagOnCreatePolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TagOnCreatePolicy', name: 'TagOnCreatePolicy')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaggableArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#TaggableArn', name: 'TaggableArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:((membership/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/(configured-model-algorithm-association|trained-model|trained-model-inference-job|ml-input-channel))|training-dataset|audience-model|configured-audience-model|audience-generation-job|configured-model-algorithm)/[-a-zA-Z0-9_/.]+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TrainedModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelArn', name: 'TrainedModelArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#TrainedModel"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:membership/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/trained-model/[-a-zA-Z0-9_/.]+$"})
    TrainedModelArtifactMaxSize = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelArtifactMaxSize', name: 'TrainedModelArtifactMaxSize')
    TrainedModelArtifactMaxSizeUnitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelArtifactMaxSizeUnitType', name: 'TrainedModelArtifactMaxSizeUnitType')
    TrainedModelArtifactMaxSizeValue = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelArtifactMaxSizeValue', name: 'TrainedModelArtifactMaxSizeValue', traits: {"smithy.api#range" => {"min" => 0.01, "max" => 10.0}})
    TrainedModelExportFileType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportFileType', name: 'TrainedModelExportFileType')
    TrainedModelExportFileTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportFileTypeList', name: 'TrainedModelExportFileTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    TrainedModelExportJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportJobStatus', name: 'TrainedModelExportJobStatus')
    TrainedModelExportOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportOutputConfiguration', name: 'TrainedModelExportOutputConfiguration')
    TrainedModelExportReceiverMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportReceiverMember', name: 'TrainedModelExportReceiverMember')
    TrainedModelExportReceiverMembers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportReceiverMembers', name: 'TrainedModelExportReceiverMembers', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TrainedModelExportsConfigurationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportsConfigurationPolicy', name: 'TrainedModelExportsConfigurationPolicy')
    TrainedModelExportsMaxSize = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportsMaxSize', name: 'TrainedModelExportsMaxSize')
    TrainedModelExportsMaxSizeUnitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportsMaxSizeUnitType', name: 'TrainedModelExportsMaxSizeUnitType')
    TrainedModelExportsMaxSizeValue = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelExportsMaxSizeValue', name: 'TrainedModelExportsMaxSizeValue', traits: {"smithy.api#range" => {"min" => 0.01, "max" => 10.0}})
    TrainedModelInferenceJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceJobArn', name: 'TrainedModelInferenceJobArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#TrainedModelInferenceJob"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:membership/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/trained-model-inference-job/[-a-zA-Z0-9_/.]+$"})
    TrainedModelInferenceJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceJobList', name: 'TrainedModelInferenceJobList')
    TrainedModelInferenceJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceJobStatus', name: 'TrainedModelInferenceJobStatus')
    TrainedModelInferenceJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceJobSummary', name: 'TrainedModelInferenceJobSummary')
    TrainedModelInferenceJobsConfigurationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceJobsConfigurationPolicy', name: 'TrainedModelInferenceJobsConfigurationPolicy')
    TrainedModelInferenceMaxOutputSize = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceMaxOutputSize', name: 'TrainedModelInferenceMaxOutputSize')
    TrainedModelInferenceMaxOutputSizeUnitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceMaxOutputSizeUnitType', name: 'TrainedModelInferenceMaxOutputSizeUnitType')
    TrainedModelInferenceMaxOutputSizeValue = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelInferenceMaxOutputSizeValue', name: 'TrainedModelInferenceMaxOutputSizeValue', traits: {"smithy.api#range" => {"min" => 0.01, "max" => 50.0}})
    TrainedModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelList', name: 'TrainedModelList')
    TrainedModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelStatus', name: 'TrainedModelStatus')
    TrainedModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelSummary', name: 'TrainedModelSummary')
    TrainedModelsConfigurationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainedModelsConfigurationPolicy', name: 'TrainedModelsConfigurationPolicy')
    TrainingDatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#TrainingDatasetArn', name: 'TrainingDatasetArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.cleanroomsml#AWSStarkControlService", "resource" => "com.amazonaws.cleanroomsml#TrainingDataset"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:training-dataset/[-a-zA-Z0-9_/.]+$"})
    TrainingDatasetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanroomsml#TrainingDatasetList', name: 'TrainingDatasetList')
    TrainingDatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainingDatasetStatus', name: 'TrainingDatasetStatus')
    TrainingDatasetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#TrainingDatasetSummary', name: 'TrainingDatasetSummary')
    TrainingInputMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#TrainingInputMode', name: 'TrainingInputMode')
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanroomsml#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateConfiguredAudienceModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#UpdateConfiguredAudienceModelRequest', name: 'UpdateConfiguredAudienceModelRequest')
    UpdateConfiguredAudienceModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#UpdateConfiguredAudienceModelResponse', name: 'UpdateConfiguredAudienceModelResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WorkerComputeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanroomsml#WorkerComputeConfiguration', name: 'WorkerComputeConfiguration')
    WorkerComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanroomsml#WorkerComputeType', name: 'WorkerComputeType')

    AccessBudget.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BudgetedResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    AccessBudget.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessBudgetDetailsList, location_name: 'details', traits: {"smithy.api#required" => {}}))
    AccessBudget.add_member(:aggregate_remaining_budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget, location_name: 'aggregateRemainingBudget', traits: {"smithy.api#required" => {}}))
    AccessBudget.type = Types::AccessBudget
    AccessBudgetDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AccessBudgetDetails.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    AccessBudgetDetails.add_member(:remaining_budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget, location_name: 'remainingBudget', traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:budget, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Budget, location_name: 'budget', traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:budget_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessBudgetType, location_name: 'budgetType', traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:auto_refresh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRefreshMode, location_name: 'autoRefresh'))
    AccessBudgetDetails.type = Types::AccessBudgetDetails
    AccessBudgetDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessBudgetDetails)
    AccessBudgetType.add_member(:calendar_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALENDAR_DAY', traits: {"smithy.api#enumValue" => "CALENDAR_DAY"}))
    AccessBudgetType.add_member(:calendar_month, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALENDAR_MONTH', traits: {"smithy.api#enumValue" => "CALENDAR_MONTH"}))
    AccessBudgetType.add_member(:calendar_week, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALENDAR_WEEK', traits: {"smithy.api#enumValue" => "CALENDAR_WEEK"}))
    AccessBudgetType.add_member(:lifetime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIFETIME', traits: {"smithy.api#enumValue" => "LIFETIME"}))
    AccessBudgets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessBudget)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    AudienceDestination.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ConfigMap, location_name: 's3Destination', traits: {"smithy.api#required" => {}}))
    AudienceDestination.type = Types::AudienceDestination
    AudienceExportJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceExportJobSummary)
    AudienceExportJobStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    AudienceExportJobStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    AudienceExportJobStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AudienceExportJobStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AudienceExportJobSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AudienceExportJobSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AudienceExportJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AudienceExportJobSummary.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#required" => {}}))
    AudienceExportJobSummary.add_member(:audience_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSize, location_name: 'audienceSize', traits: {"smithy.api#required" => {}}))
    AudienceExportJobSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    AudienceExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceExportJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AudienceExportJobSummary.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    AudienceExportJobSummary.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 'outputLocation'))
    AudienceExportJobSummary.type = Types::AudienceExportJobSummary
    AudienceGenerationJobDataSource.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ConfigMap, location_name: 'dataSource'))
    AudienceGenerationJobDataSource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    AudienceGenerationJobDataSource.add_member(:sql_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, location_name: 'sqlParameters'))
    AudienceGenerationJobDataSource.add_member(:sql_compute_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: 'sqlComputeConfiguration'))
    AudienceGenerationJobDataSource.type = Types::AudienceGenerationJobDataSource
    AudienceGenerationJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobSummary)
    AudienceGenerationJobStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    AudienceGenerationJobStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    AudienceGenerationJobStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AudienceGenerationJobStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AudienceGenerationJobStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_PENDING', traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    AudienceGenerationJobStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    AudienceGenerationJobStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    AudienceGenerationJobSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AudienceGenerationJobSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AudienceGenerationJobSummary.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#required" => {}}))
    AudienceGenerationJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AudienceGenerationJobSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    AudienceGenerationJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AudienceGenerationJobSummary.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    AudienceGenerationJobSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId'))
    AudienceGenerationJobSummary.add_member(:started_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'startedBy'))
    AudienceGenerationJobSummary.type = Types::AudienceGenerationJobSummary
    AudienceModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelSummary)
    AudienceModelStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    AudienceModelStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    AudienceModelStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AudienceModelStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AudienceModelStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_PENDING', traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    AudienceModelStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    AudienceModelStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    AudienceModelSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AudienceModelSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AudienceModelSummary.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#required" => {}}))
    AudienceModelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AudienceModelSummary.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#required" => {}}))
    AudienceModelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AudienceModelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    AudienceModelSummary.type = Types::AudienceModelSummary
    AudienceQualityMetrics.add_member(:relevance_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceMetrics, location_name: 'relevanceMetrics', traits: {"smithy.api#required" => {}}))
    AudienceQualityMetrics.add_member(:recall_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'recallMetric', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}}))
    AudienceQualityMetrics.type = Types::AudienceQualityMetrics
    AudienceSize.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AudienceSize.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    AudienceSize.type = Types::AudienceSize
    AudienceSizeBins.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeValue)
    AudienceSizeConfig.add_member(:audience_size_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeType, location_name: 'audienceSizeType', traits: {"smithy.api#required" => {}}))
    AudienceSizeConfig.add_member(:audience_size_bins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeBins, location_name: 'audienceSizeBins', traits: {"smithy.api#required" => {}}))
    AudienceSizeConfig.type = Types::AudienceSizeConfig
    AudienceSizeType.add_member(:absolute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABSOLUTE', traits: {"smithy.api#enumValue" => "ABSOLUTE"}))
    AudienceSizeType.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENTAGE', traits: {"smithy.api#enumValue" => "PERCENTAGE"}))
    AutoRefreshMode.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoRefreshMode.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CancelTrainedModelInferenceJobRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelTrainedModelInferenceJobRequest.add_member(:trained_model_inference_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, location_name: 'trainedModelInferenceJobArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelTrainedModelInferenceJobRequest.type = Types::CancelTrainedModelInferenceJobRequest
    CancelTrainedModelRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelTrainedModelRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelTrainedModelRequest.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier', traits: {"smithy.api#httpQuery" => "versionIdentifier"}))
    CancelTrainedModelRequest.type = Types::CancelTrainedModelRequest
    CollaborationConfiguredModelAlgorithmAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationConfiguredModelAlgorithmAssociationSummary)
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredModelAlgorithmAssociationSummary.type = Types::CollaborationConfiguredModelAlgorithmAssociationSummary
    CollaborationMLInputChannelSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationMLInputChannelSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationMLInputChannelSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArnList, location_name: 'configuredModelAlgorithmAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    CollaborationMLInputChannelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CollaborationMLInputChannelSummary.type = Types::CollaborationMLInputChannelSummary
    CollaborationMLInputChannelsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationMLInputChannelSummary)
    CollaborationTrainedModelExportJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationTrainedModelExportJobSummary)
    CollaborationTrainedModelExportJobSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationTrainedModelExportJobSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationTrainedModelExportJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    CollaborationTrainedModelExportJobSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CollaborationTrainedModelExportJobSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier'))
    CollaborationTrainedModelExportJobSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelExportJobSummary.type = Types::CollaborationTrainedModelExportJobSummary
    CollaborationTrainedModelInferenceJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationTrainedModelInferenceJobSummary)
    CollaborationTrainedModelInferenceJobSummary.add_member(:trained_model_inference_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, location_name: 'trainedModelInferenceJobArn', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:metrics_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsStatus, location_name: 'metricsStatus'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:metrics_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'metricsStatusDetails'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:logs_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsStatus, location_name: 'logsStatus'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:logs_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'logsStatusDetails'))
    CollaborationTrainedModelInferenceJobSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationTrainedModelInferenceJobSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelInferenceJobSummary.type = Types::CollaborationTrainedModelInferenceJobSummary
    CollaborationTrainedModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationTrainedModelSummary)
    CollaborationTrainedModelSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationTrainedModelSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CollaborationTrainedModelSummary.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    CollaborationTrainedModelSummary.add_member(:incremental_training_data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: 'incrementalTrainingDataChannels'))
    CollaborationTrainedModelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CollaborationTrainedModelSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    CollaborationTrainedModelSummary.type = Types::CollaborationTrainedModelSummary
    ColumnSchema.add_member(:column_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'columnName', traits: {"smithy.api#required" => {}}))
    ColumnSchema.add_member(:column_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnTypeList, location_name: 'columnTypes', traits: {"smithy.api#required" => {}}))
    ColumnSchema.type = Types::ColumnSchema
    ColumnType.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ID', traits: {"smithy.api#enumValue" => "USER_ID"}))
    ColumnType.add_member(:item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITEM_ID', traits: {"smithy.api#enumValue" => "ITEM_ID"}))
    ColumnType.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ColumnType.add_member(:categorical_feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CATEGORICAL_FEATURE', traits: {"smithy.api#enumValue" => "CATEGORICAL_FEATURE"}))
    ColumnType.add_member(:numerical_feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMERICAL_FEATURE', traits: {"smithy.api#enumValue" => "NUMERICAL_FEATURE"}))
    ColumnTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnType)
    ComputeConfiguration.add_member(:worker, Types::ComputeConfiguration::Worker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerComputeConfiguration, location_name: 'worker'))
    ComputeConfiguration.add_member(:unknown, Types::ComputeConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ComputeConfiguration.type = Types::ComputeConfiguration
    ConfiguredAudienceModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelSummary)
    ConfiguredAudienceModelOutputConfig.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceDestination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelOutputConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelOutputConfig.type = Types::ConfiguredAudienceModelOutputConfig
    ConfiguredAudienceModelStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConfiguredAudienceModelSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ConfiguredAudienceModelSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ConfiguredAudienceModelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelSummary.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelSummary.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, location_name: 'outputConfig', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    ConfiguredAudienceModelSummary.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelSummary.type = Types::ConfiguredAudienceModelSummary
    ConfiguredModelAlgorithmAssociationArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn)
    ConfiguredModelAlgorithmAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationSummary)
    ConfiguredModelAlgorithmAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmAssociationSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmAssociationSummary.type = Types::ConfiguredModelAlgorithmAssociationSummary
    ConfiguredModelAlgorithmList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmSummary)
    ConfiguredModelAlgorithmSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ConfiguredModelAlgorithmSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ConfiguredModelAlgorithmSummary.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ConfiguredModelAlgorithmSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    ConfiguredModelAlgorithmSummary.type = Types::ConfiguredModelAlgorithmSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContainerArguments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerArgument)
    ContainerConfig.add_member(:image_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: 'imageUri', traits: {"smithy.api#required" => {}}))
    ContainerConfig.add_member(:entrypoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerEntrypoint, location_name: 'entrypoint'))
    ContainerConfig.add_member(:arguments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerArguments, location_name: 'arguments'))
    ContainerConfig.add_member(:metric_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinitionList, location_name: 'metricDefinitions'))
    ContainerConfig.type = Types::ContainerConfig
    ContainerEntrypoint.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerEntrypointString)
    CreateAudienceModelRequest.add_member(:training_data_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'trainingDataStartTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateAudienceModelRequest.add_member(:training_data_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'trainingDataEndTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateAudienceModelRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAudienceModelRequest.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#required" => {}}))
    CreateAudienceModelRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateAudienceModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateAudienceModelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateAudienceModelRequest.type = Types::CreateAudienceModelRequest
    CreateAudienceModelResponse.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#required" => {}}))
    CreateAudienceModelResponse.type = Types::CreateAudienceModelResponse
    CreateConfiguredAudienceModelRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelRequest.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelRequest.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, location_name: 'outputConfig', traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateConfiguredAudienceModelRequest.add_member(:shared_audience_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsList, location_name: 'sharedAudienceMetrics', traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelRequest.add_member(:min_matching_seed_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: 'minMatchingSeedSize', traits: {"smithy.api#default" => 500}))
    CreateConfiguredAudienceModelRequest.add_member(:audience_size_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: 'audienceSizeConfig'))
    CreateConfiguredAudienceModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateConfiguredAudienceModelRequest.add_member(:child_resource_tag_on_create_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOnCreatePolicy, location_name: 'childResourceTagOnCreatePolicy'))
    CreateConfiguredAudienceModelRequest.type = Types::CreateConfiguredAudienceModelRequest
    CreateConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelResponse.type = Types::CreateConfiguredAudienceModelResponse
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:privacy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyConfiguration, location_name: 'privacyConfiguration'))
    CreateConfiguredModelAlgorithmAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateConfiguredModelAlgorithmAssociationRequest.type = Types::CreateConfiguredModelAlgorithmAssociationRequest
    CreateConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmAssociationResponse.type = Types::CreateConfiguredModelAlgorithmAssociationResponse
    CreateConfiguredModelAlgorithmRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateConfiguredModelAlgorithmRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmRequest.add_member(:training_container_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerConfig, location_name: 'trainingContainerConfig'))
    CreateConfiguredModelAlgorithmRequest.add_member(:inference_container_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceContainerConfig, location_name: 'inferenceContainerConfig'))
    CreateConfiguredModelAlgorithmRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateConfiguredModelAlgorithmRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateConfiguredModelAlgorithmRequest.type = Types::CreateConfiguredModelAlgorithmRequest
    CreateConfiguredModelAlgorithmResponse.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    CreateConfiguredModelAlgorithmResponse.type = Types::CreateConfiguredModelAlgorithmResponse
    CreateMLInputChannelRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMLInputChannelRequest.add_member(:configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArnList, location_name: 'configuredModelAlgorithmAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    CreateMLInputChannelRequest.add_member(:input_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputChannel, location_name: 'inputChannel', traits: {"smithy.api#required" => {}}))
    CreateMLInputChannelRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateMLInputChannelRequest.add_member(:retention_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionInDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    CreateMLInputChannelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateMLInputChannelRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateMLInputChannelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateMLInputChannelRequest.type = Types::CreateMLInputChannelRequest
    CreateMLInputChannelResponse.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    CreateMLInputChannelResponse.type = Types::CreateMLInputChannelResponse
    CreateTrainedModelRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTrainedModelRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateTrainedModelRequest.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    CreateTrainedModelRequest.add_member(:hyperparameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'hyperparameters'))
    CreateTrainedModelRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateTrainedModelRequest.add_member(:resource_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfig, location_name: 'resourceConfig', traits: {"smithy.api#required" => {}}))
    CreateTrainedModelRequest.add_member(:stopping_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StoppingCondition, location_name: 'stoppingCondition'))
    CreateTrainedModelRequest.add_member(:incremental_training_data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannels, location_name: 'incrementalTrainingDataChannels'))
    CreateTrainedModelRequest.add_member(:data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingDataChannels, location_name: 'dataChannels', traits: {"smithy.api#required" => {}}))
    CreateTrainedModelRequest.add_member(:training_input_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: 'trainingInputMode', traits: {"smithy.api#default" => "File"}))
    CreateTrainedModelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateTrainedModelRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateTrainedModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateTrainedModelRequest.type = Types::CreateTrainedModelRequest
    CreateTrainedModelResponse.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    CreateTrainedModelResponse.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    CreateTrainedModelResponse.type = Types::CreateTrainedModelResponse
    CreateTrainingDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateTrainingDatasetRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateTrainingDatasetRequest.add_member(:training_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetList, location_name: 'trainingData', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    CreateTrainingDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateTrainingDatasetRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateTrainingDatasetRequest.type = Types::CreateTrainingDatasetRequest
    CreateTrainingDatasetResponse.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#required" => {}}))
    CreateTrainingDatasetResponse.type = Types::CreateTrainingDatasetResponse
    CustomDataIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDataIdentifier)
    CustomEntityConfig.add_member(:custom_data_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDataIdentifierList, location_name: 'customDataIdentifiers', traits: {"smithy.api#required" => {}}))
    CustomEntityConfig.type = Types::CustomEntityConfig
    DataSource.add_member(:glue_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDataSource, location_name: 'glueDataSource', traits: {"smithy.api#required" => {}}))
    DataSource.type = Types::DataSource
    Dataset.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Dataset.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetInputConfig, location_name: 'inputConfig', traits: {"smithy.api#required" => {}}))
    Dataset.type = Types::Dataset
    DatasetInputConfig.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSchemaList, location_name: 'schema', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    DatasetInputConfig.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#required" => {}}))
    DatasetInputConfig.type = Types::DatasetInputConfig
    DatasetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset)
    DatasetSchemaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnSchema)
    DatasetType.add_member(:interactions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERACTIONS', traits: {"smithy.api#enumValue" => "INTERACTIONS"}))
    DeleteAudienceGenerationJobRequest.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAudienceGenerationJobRequest.type = Types::DeleteAudienceGenerationJobRequest
    DeleteAudienceModelRequest.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAudienceModelRequest.type = Types::DeleteAudienceModelRequest
    DeleteConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredAudienceModelPolicyRequest.type = Types::DeleteConfiguredAudienceModelPolicyRequest
    DeleteConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredAudienceModelRequest.type = Types::DeleteConfiguredAudienceModelRequest
    DeleteConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredModelAlgorithmAssociationRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredModelAlgorithmAssociationRequest.type = Types::DeleteConfiguredModelAlgorithmAssociationRequest
    DeleteConfiguredModelAlgorithmRequest.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredModelAlgorithmRequest.type = Types::DeleteConfiguredModelAlgorithmRequest
    DeleteMLConfigurationRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMLConfigurationRequest.type = Types::DeleteMLConfigurationRequest
    DeleteMLInputChannelDataRequest.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMLInputChannelDataRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMLInputChannelDataRequest.type = Types::DeleteMLInputChannelDataRequest
    DeleteTrainedModelOutputRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrainedModelOutputRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrainedModelOutputRequest.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier', traits: {"smithy.api#httpQuery" => "versionIdentifier"}))
    DeleteTrainedModelOutputRequest.type = Types::DeleteTrainedModelOutputRequest
    DeleteTrainingDatasetRequest.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrainingDatasetRequest.type = Types::DeleteTrainingDatasetRequest
    Destination.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ConfigMap, location_name: 's3Destination', traits: {"smithy.api#required" => {}}))
    Destination.type = Types::Destination
    EntityType.add_member(:all_personally_identifiable_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_PERSONALLY_IDENTIFIABLE_INFORMATION', traits: {"smithy.api#enumValue" => "ALL_PERSONALLY_IDENTIFIABLE_INFORMATION"}))
    EntityType.add_member(:numbers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBERS', traits: {"smithy.api#enumValue" => "NUMBERS"}))
    EntityType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    EntityTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType)
    Environment.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_]*$"})
    Environment.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    GetAudienceGenerationJobRequest.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAudienceGenerationJobRequest.type = Types::GetAudienceGenerationJobRequest
    GetAudienceGenerationJobResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetAudienceGenerationJobResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetAudienceGenerationJobResponse.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#required" => {}}))
    GetAudienceGenerationJobResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetAudienceGenerationJobResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetAudienceGenerationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetAudienceGenerationJobResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetAudienceGenerationJobResponse.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    GetAudienceGenerationJobResponse.add_member(:seed_audience, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobDataSource, location_name: 'seedAudience'))
    GetAudienceGenerationJobResponse.add_member(:include_seed_in_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeSeedInOutput'))
    GetAudienceGenerationJobResponse.add_member(:collaboration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId'))
    GetAudienceGenerationJobResponse.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceQualityMetrics, location_name: 'metrics'))
    GetAudienceGenerationJobResponse.add_member(:started_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'startedBy'))
    GetAudienceGenerationJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetAudienceGenerationJobResponse.add_member(:protected_query_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'protectedQueryIdentifier'))
    GetAudienceGenerationJobResponse.type = Types::GetAudienceGenerationJobResponse
    GetAudienceModelRequest.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAudienceModelRequest.type = Types::GetAudienceModelRequest
    GetAudienceModelResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetAudienceModelResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetAudienceModelResponse.add_member(:training_data_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'trainingDataStartTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetAudienceModelResponse.add_member(:training_data_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'trainingDataEndTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetAudienceModelResponse.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#required" => {}}))
    GetAudienceModelResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetAudienceModelResponse.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#required" => {}}))
    GetAudienceModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetAudienceModelResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetAudienceModelResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    GetAudienceModelResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetAudienceModelResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetAudienceModelResponse.type = Types::GetAudienceModelResponse
    GetCollaborationConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationRequest.type = Types::GetCollaborationConfiguredModelAlgorithmAssociationRequest
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.add_member(:privacy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyConfiguration, location_name: 'privacyConfiguration'))
    GetCollaborationConfiguredModelAlgorithmAssociationResponse.type = Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse
    GetCollaborationMLInputChannelRequest.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationMLInputChannelRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationMLInputChannelRequest.type = Types::GetCollaborationMLInputChannelRequest
    GetCollaborationMLInputChannelResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArnList, location_name: 'configuredModelAlgorithmAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetCollaborationMLInputChannelResponse.add_member(:retention_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionInDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.add_member(:number_of_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfRecords', traits: {"smithy.api#range" => {"min" => 0, "max" => 100000000000}}))
    GetCollaborationMLInputChannelResponse.add_member(:privacy_budgets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgets, location_name: 'privacyBudgets'))
    GetCollaborationMLInputChannelResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetCollaborationMLInputChannelResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetCollaborationMLInputChannelResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetCollaborationMLInputChannelResponse.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    GetCollaborationMLInputChannelResponse.type = Types::GetCollaborationMLInputChannelResponse
    GetCollaborationTrainedModelRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationTrainedModelRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationTrainedModelRequest.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier', traits: {"smithy.api#httpQuery" => "versionIdentifier"}))
    GetCollaborationTrainedModelRequest.type = Types::GetCollaborationTrainedModelRequest
    GetCollaborationTrainedModelResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    GetCollaborationTrainedModelResponse.add_member(:incremental_training_data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: 'incrementalTrainingDataChannels'))
    GetCollaborationTrainedModelResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetCollaborationTrainedModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetCollaborationTrainedModelResponse.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.add_member(:resource_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfig, location_name: 'resourceConfig'))
    GetCollaborationTrainedModelResponse.add_member(:training_input_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: 'trainingInputMode'))
    GetCollaborationTrainedModelResponse.add_member(:stopping_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StoppingCondition, location_name: 'stoppingCondition'))
    GetCollaborationTrainedModelResponse.add_member(:metrics_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsStatus, location_name: 'metricsStatus'))
    GetCollaborationTrainedModelResponse.add_member(:metrics_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'metricsStatusDetails'))
    GetCollaborationTrainedModelResponse.add_member(:logs_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsStatus, location_name: 'logsStatus'))
    GetCollaborationTrainedModelResponse.add_member(:logs_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'logsStatusDetails'))
    GetCollaborationTrainedModelResponse.add_member(:training_container_image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'trainingContainerImageDigest'))
    GetCollaborationTrainedModelResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetCollaborationTrainedModelResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetCollaborationTrainedModelResponse.add_member(:creator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#required" => {}}))
    GetCollaborationTrainedModelResponse.type = Types::GetCollaborationTrainedModelResponse
    GetConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredAudienceModelPolicyRequest.type = Types::GetConfiguredAudienceModelPolicyRequest
    GetConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'configuredAudienceModelPolicy', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelPolicyResponse.add_member(:policy_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hash, location_name: 'policyHash', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelPolicyResponse.type = Types::GetConfiguredAudienceModelPolicyResponse
    GetConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredAudienceModelRequest.type = Types::GetConfiguredAudienceModelRequest
    GetConfiguredAudienceModelResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetConfiguredAudienceModelResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelResponse.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelResponse.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, location_name: 'outputConfig', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetConfiguredAudienceModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelResponse.add_member(:shared_audience_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsList, location_name: 'sharedAudienceMetrics', traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelResponse.add_member(:min_matching_seed_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: 'minMatchingSeedSize'))
    GetConfiguredAudienceModelResponse.add_member(:audience_size_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: 'audienceSizeConfig'))
    GetConfiguredAudienceModelResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetConfiguredAudienceModelResponse.add_member(:child_resource_tag_on_create_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOnCreatePolicy, location_name: 'childResourceTagOnCreatePolicy'))
    GetConfiguredAudienceModelResponse.type = Types::GetConfiguredAudienceModelResponse
    GetConfiguredModelAlgorithmAssociationRequest.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationRequest.type = Types::GetConfiguredModelAlgorithmAssociationRequest
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:privacy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyConfiguration, location_name: 'privacyConfiguration'))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetConfiguredModelAlgorithmAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetConfiguredModelAlgorithmAssociationResponse.type = Types::GetConfiguredModelAlgorithmAssociationResponse
    GetConfiguredModelAlgorithmRequest.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmRequest.type = Types::GetConfiguredModelAlgorithmRequest
    GetConfiguredModelAlgorithmResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetConfiguredModelAlgorithmResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetConfiguredModelAlgorithmResponse.add_member(:configured_model_algorithm_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmArn, location_name: 'configuredModelAlgorithmArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmResponse.add_member(:training_container_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerConfig, location_name: 'trainingContainerConfig'))
    GetConfiguredModelAlgorithmResponse.add_member(:inference_container_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceContainerConfig, location_name: 'inferenceContainerConfig'))
    GetConfiguredModelAlgorithmResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    GetConfiguredModelAlgorithmResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetConfiguredModelAlgorithmResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetConfiguredModelAlgorithmResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    GetConfiguredModelAlgorithmResponse.type = Types::GetConfiguredModelAlgorithmResponse
    GetMLConfigurationRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLConfigurationRequest.type = Types::GetMLConfigurationRequest
    GetMLConfigurationResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetMLConfigurationResponse.add_member(:default_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLOutputConfiguration, location_name: 'defaultOutputLocation', traits: {"smithy.api#required" => {}}))
    GetMLConfigurationResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetMLConfigurationResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetMLConfigurationResponse.type = Types::GetMLConfigurationResponse
    GetMLInputChannelRequest.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLInputChannelRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLInputChannelRequest.type = Types::GetMLInputChannelRequest
    GetMLInputChannelResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArnList, location_name: 'configuredModelAlgorithmAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetMLInputChannelResponse.add_member(:retention_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionInDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:number_of_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfRecords', traits: {"smithy.api#range" => {"min" => 0, "max" => 100000000000}}))
    GetMLInputChannelResponse.add_member(:privacy_budgets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgets, location_name: 'privacyBudgets'))
    GetMLInputChannelResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetMLInputChannelResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetMLInputChannelResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetMLInputChannelResponse.add_member(:input_channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputChannel, location_name: 'inputChannel', traits: {"smithy.api#required" => {}}))
    GetMLInputChannelResponse.add_member(:protected_query_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'protectedQueryIdentifier'))
    GetMLInputChannelResponse.add_member(:number_of_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'numberOfFiles', traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}}))
    GetMLInputChannelResponse.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'sizeInGb', traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}}))
    GetMLInputChannelResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    GetMLInputChannelResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetMLInputChannelResponse.type = Types::GetMLInputChannelResponse
    GetTrainedModelInferenceJobRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainedModelInferenceJobRequest.add_member(:trained_model_inference_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, location_name: 'trainedModelInferenceJobArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainedModelInferenceJobRequest.type = Types::GetTrainedModelInferenceJobRequest
    GetTrainedModelInferenceJobResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTrainedModelInferenceJobResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTrainedModelInferenceJobResponse.add_member(:trained_model_inference_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, location_name: 'trainedModelInferenceJobArn', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn'))
    GetTrainedModelInferenceJobResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier'))
    GetTrainedModelInferenceJobResponse.add_member(:resource_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceResourceConfig, location_name: 'resourceConfig', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInferenceDataSource, location_name: 'dataSource', traits: {"smithy.api#required" => {}}))
    GetTrainedModelInferenceJobResponse.add_member(:container_execution_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceContainerExecutionParameters, location_name: 'containerExecutionParameters'))
    GetTrainedModelInferenceJobResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetTrainedModelInferenceJobResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetTrainedModelInferenceJobResponse.add_member(:inference_container_image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'inferenceContainerImageDigest'))
    GetTrainedModelInferenceJobResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceEnvironmentMap, location_name: 'environment'))
    GetTrainedModelInferenceJobResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    GetTrainedModelInferenceJobResponse.add_member(:metrics_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsStatus, location_name: 'metricsStatus'))
    GetTrainedModelInferenceJobResponse.add_member(:metrics_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'metricsStatusDetails'))
    GetTrainedModelInferenceJobResponse.add_member(:logs_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsStatus, location_name: 'logsStatus'))
    GetTrainedModelInferenceJobResponse.add_member(:logs_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'logsStatusDetails'))
    GetTrainedModelInferenceJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetTrainedModelInferenceJobResponse.type = Types::GetTrainedModelInferenceJobResponse
    GetTrainedModelRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainedModelRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainedModelRequest.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier', traits: {"smithy.api#httpQuery" => "versionIdentifier"}))
    GetTrainedModelRequest.type = Types::GetTrainedModelRequest
    GetTrainedModelResponse.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    GetTrainedModelResponse.add_member(:incremental_training_data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: 'incrementalTrainingDataChannels'))
    GetTrainedModelResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetTrainedModelResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: 'statusDetails'))
    GetTrainedModelResponse.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.add_member(:resource_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfig, location_name: 'resourceConfig'))
    GetTrainedModelResponse.add_member(:training_input_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingInputMode, location_name: 'trainingInputMode'))
    GetTrainedModelResponse.add_member(:stopping_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StoppingCondition, location_name: 'stoppingCondition'))
    GetTrainedModelResponse.add_member(:metrics_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsStatus, location_name: 'metricsStatus'))
    GetTrainedModelResponse.add_member(:metrics_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'metricsStatusDetails'))
    GetTrainedModelResponse.add_member(:logs_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsStatus, location_name: 'logsStatus'))
    GetTrainedModelResponse.add_member(:logs_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'logsStatusDetails'))
    GetTrainedModelResponse.add_member(:training_container_image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'trainingContainerImageDigest'))
    GetTrainedModelResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTrainedModelResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTrainedModelResponse.add_member(:hyperparameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HyperParameters, location_name: 'hyperparameters'))
    GetTrainedModelResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    GetTrainedModelResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    GetTrainedModelResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetTrainedModelResponse.add_member(:data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingDataChannels, location_name: 'dataChannels', traits: {"smithy.api#required" => {}}))
    GetTrainedModelResponse.type = Types::GetTrainedModelResponse
    GetTrainingDatasetRequest.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainingDatasetRequest.type = Types::GetTrainingDatasetRequest
    GetTrainingDatasetResponse.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTrainingDatasetResponse.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTrainingDatasetResponse.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#required" => {}}))
    GetTrainingDatasetResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetTrainingDatasetResponse.add_member(:training_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetList, location_name: 'trainingData', traits: {"smithy.api#required" => {}}))
    GetTrainingDatasetResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetTrainingDatasetResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    GetTrainingDatasetResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetTrainingDatasetResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    GetTrainingDatasetResponse.type = Types::GetTrainingDatasetResponse
    GlueDataSource.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlueTableName, location_name: 'tableName', traits: {"smithy.api#required" => {}}))
    GlueDataSource.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDatabaseName, location_name: 'databaseName', traits: {"smithy.api#required" => {}}))
    GlueDataSource.add_member(:catalog_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'catalogId'))
    GlueDataSource.type = Types::GlueDataSource
    HyperParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    HyperParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}, "smithy.api#pattern" => "^.*$"})
    IncrementalTrainingDataChannel.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    IncrementalTrainingDataChannel.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    IncrementalTrainingDataChannel.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingDataChannelName, location_name: 'channelName', traits: {"smithy.api#required" => {}}))
    IncrementalTrainingDataChannel.type = Types::IncrementalTrainingDataChannel
    IncrementalTrainingDataChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingDataChannelName, location_name: 'channelName', traits: {"smithy.api#required" => {}}))
    IncrementalTrainingDataChannelOutput.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    IncrementalTrainingDataChannelOutput.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'modelName', traits: {"smithy.api#required" => {}}))
    IncrementalTrainingDataChannelOutput.type = Types::IncrementalTrainingDataChannelOutput
    IncrementalTrainingDataChannels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannel)
    IncrementalTrainingDataChannelsOutput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelOutput)
    InferenceContainerConfig.add_member(:image_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmImage, location_name: 'imageUri', traits: {"smithy.api#required" => {}}))
    InferenceContainerConfig.type = Types::InferenceContainerConfig
    InferenceContainerExecutionParameters.add_member(:max_payload_in_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxPayloadInMB', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    InferenceContainerExecutionParameters.type = Types::InferenceContainerExecutionParameters
    InferenceEnvironmentMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_]*$"})
    InferenceEnvironmentMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    InferenceInstanceType.add_member(:ml_r7_i_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_48XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.48xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.16xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.xlarge"}))
    InferenceInstanceType.add_member(:ml_m5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.4xlarge"}))
    InferenceInstanceType.add_member(:ml_p2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P2_XLARGE', traits: {"smithy.api#enumValue" => "ml.p2.xlarge"}))
    InferenceInstanceType.add_member(:ml_m4_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_16XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.16xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.16xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.12xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.8xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_LARGE', traits: {"smithy.api#enumValue" => "ml.r7i.large"}))
    InferenceInstanceType.add_member(:ml_m7_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.12xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.24xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.24xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.8xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_LARGE', traits: {"smithy.api#enumValue" => "ml.r6i.large"}))
    InferenceInstanceType.add_member(:ml_g5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.2xlarge"}))
    InferenceInstanceType.add_member(:ml_m5_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_LARGE', traits: {"smithy.api#enumValue" => "ml.m5.large"}))
    InferenceInstanceType.add_member(:ml_m7_i_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_48XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.48xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.16xlarge"}))
    InferenceInstanceType.add_member(:ml_p2_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P2_16XLARGE', traits: {"smithy.api#enumValue" => "ml.p2.16xlarge"}))
    InferenceInstanceType.add_member(:ml_g5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.4xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.16xlarge"}))
    InferenceInstanceType.add_member(:ml_c4_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.2xlarge"}))
    InferenceInstanceType.add_member(:ml_c5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.2xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_32XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.32xlarge"}))
    InferenceInstanceType.add_member(:ml_c4_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.4xlarge"}))
    InferenceInstanceType.add_member(:ml_g5_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_8XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.8xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.xlarge"}))
    InferenceInstanceType.add_member(:ml_c5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.4xlarge"}))
    InferenceInstanceType.add_member(:ml_g4_dn_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.12xlarge"}))
    InferenceInstanceType.add_member(:ml_g4_dn_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_12XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.12xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.12xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.24xlarge"}))
    InferenceInstanceType.add_member(:ml_g4_dn_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_2XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.2xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.24xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.2xlarge"}))
    InferenceInstanceType.add_member(:ml_c4_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_8XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.8xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.2xlarge"}))
    InferenceInstanceType.add_member(:ml_g4_dn_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_4XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.4xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_48XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.48xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.4xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.16xlarge"}))
    InferenceInstanceType.add_member(:ml_c5_9_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_9XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.9xlarge"}))
    InferenceInstanceType.add_member(:ml_g4_dn_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_16XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.16xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.16xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.4xlarge"}))
    InferenceInstanceType.add_member(:ml_c5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.xlarge"}))
    InferenceInstanceType.add_member(:ml_c4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.xlarge"}))
    InferenceInstanceType.add_member(:ml_g4_dn_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_8XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.8xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.8xlarge"}))
    InferenceInstanceType.add_member(:ml_c7_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_LARGE', traits: {"smithy.api#enumValue" => "ml.c7i.large"}))
    InferenceInstanceType.add_member(:ml_g5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.8xlarge"}))
    InferenceInstanceType.add_member(:ml_c6_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_LARGE', traits: {"smithy.api#enumValue" => "ml.c6i.large"}))
    InferenceInstanceType.add_member(:ml_g5_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_12XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.12xlarge"}))
    InferenceInstanceType.add_member(:ml_g5_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_24XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.24xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.2xlarge"}))
    InferenceInstanceType.add_member(:ml_c5_18_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_18XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.18xlarge"}))
    InferenceInstanceType.add_member(:ml_g5_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_48XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.48xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.2xlarge"}))
    InferenceInstanceType.add_member(:ml_g5_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_16XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.16xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.4xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_32XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.32xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.4xlarge"}))
    InferenceInstanceType.add_member(:ml_m5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.xlarge"}))
    InferenceInstanceType.add_member(:ml_m4_10_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_10XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.10xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.xlarge"}))
    InferenceInstanceType.add_member(:ml_m5_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_12XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.12xlarge"}))
    InferenceInstanceType.add_member(:ml_m4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.2xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.12xlarge"}))
    InferenceInstanceType.add_member(:ml_m5_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_24XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.24xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.12xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.8xlarge"}))
    InferenceInstanceType.add_member(:ml_m7_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_LARGE', traits: {"smithy.api#enumValue" => "ml.m7i.large"}))
    InferenceInstanceType.add_member(:ml_r6_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.24xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.2xlarge"}))
    InferenceInstanceType.add_member(:ml_m4_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.2xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.24xlarge"}))
    InferenceInstanceType.add_member(:ml_r7_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.4xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.8xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_LARGE', traits: {"smithy.api#enumValue" => "ml.m6i.large"}))
    InferenceInstanceType.add_member(:ml_m5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.2xlarge"}))
    InferenceInstanceType.add_member(:ml_p2_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P2_8XLARGE', traits: {"smithy.api#enumValue" => "ml.p2.8xlarge"}))
    InferenceInstanceType.add_member(:ml_r6_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R6I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.r6i.4xlarge"}))
    InferenceInstanceType.add_member(:ml_m6_i_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_32XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.32xlarge"}))
    InferenceInstanceType.add_member(:ml_m4_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.4xlarge"}))
    InferenceInstanceType.add_member(:ml_p3_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3_16XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3.16xlarge"}))
    InferenceInstanceType.add_member(:ml_p3_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3_2XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3.2xlarge"}))
    InferenceInstanceType.add_member(:ml_p3_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3_8XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3.8xlarge"}))
    InferenceOutputConfiguration.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'accept', traits: {"smithy.api#default" => "application/json", "smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^.*$"}))
    InferenceOutputConfiguration.add_member(:members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceReceiverMembers, location_name: 'members', traits: {"smithy.api#required" => {}}))
    InferenceOutputConfiguration.type = Types::InferenceOutputConfiguration
    InferenceReceiverMember.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#required" => {}}))
    InferenceReceiverMember.type = Types::InferenceReceiverMember
    InferenceReceiverMembers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceReceiverMember)
    InferenceResourceConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceInstanceType, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    InferenceResourceConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'instanceCount', traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1, "max" => 10}}))
    InferenceResourceConfig.type = Types::InferenceResourceConfig
    InputChannel.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputChannelDataSource, location_name: 'dataSource', traits: {"smithy.api#required" => {}}))
    InputChannel.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    InputChannel.type = Types::InputChannel
    InputChannelDataSource.add_member(:protected_query_input_parameters, Types::InputChannelDataSource::ProtectedQueryInputParameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryInputParameters, location_name: 'protectedQueryInputParameters'))
    InputChannelDataSource.add_member(:unknown, Types::InputChannelDataSource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    InputChannelDataSource.type = Types::InputChannelDataSource
    InstanceType.add_member(:ml_m4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.xlarge"}))
    InstanceType.add_member(:ml_m4_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.2xlarge"}))
    InstanceType.add_member(:ml_m4_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.4xlarge"}))
    InstanceType.add_member(:ml_m4_10_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_10XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.10xlarge"}))
    InstanceType.add_member(:ml_m4_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M4_16XLARGE', traits: {"smithy.api#enumValue" => "ml.m4.16xlarge"}))
    InstanceType.add_member(:ml_g4_dn_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.xlarge"}))
    InstanceType.add_member(:ml_g4_dn_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_2XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.2xlarge"}))
    InstanceType.add_member(:ml_g4_dn_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_4XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.4xlarge"}))
    InstanceType.add_member(:ml_g4_dn_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_8XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.8xlarge"}))
    InstanceType.add_member(:ml_g4_dn_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_12XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.12xlarge"}))
    InstanceType.add_member(:ml_g4_dn_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G4DN_16XLARGE', traits: {"smithy.api#enumValue" => "ml.g4dn.16xlarge"}))
    InstanceType.add_member(:ml_m5_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_LARGE', traits: {"smithy.api#enumValue" => "ml.m5.large"}))
    InstanceType.add_member(:ml_m5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.xlarge"}))
    InstanceType.add_member(:ml_m5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.2xlarge"}))
    InstanceType.add_member(:ml_m5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.4xlarge"}))
    InstanceType.add_member(:ml_m5_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_12XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.12xlarge"}))
    InstanceType.add_member(:ml_m5_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M5_24XLARGE', traits: {"smithy.api#enumValue" => "ml.m5.24xlarge"}))
    InstanceType.add_member(:ml_c4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.xlarge"}))
    InstanceType.add_member(:ml_c4_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.2xlarge"}))
    InstanceType.add_member(:ml_c4_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.4xlarge"}))
    InstanceType.add_member(:ml_c4_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C4_8XLARGE', traits: {"smithy.api#enumValue" => "ml.c4.8xlarge"}))
    InstanceType.add_member(:ml_p2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P2_XLARGE', traits: {"smithy.api#enumValue" => "ml.p2.xlarge"}))
    InstanceType.add_member(:ml_p2_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P2_8XLARGE', traits: {"smithy.api#enumValue" => "ml.p2.8xlarge"}))
    InstanceType.add_member(:ml_p2_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P2_16XLARGE', traits: {"smithy.api#enumValue" => "ml.p2.16xlarge"}))
    InstanceType.add_member(:ml_p4_d_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P4D_24XLARGE', traits: {"smithy.api#enumValue" => "ml.p4d.24xlarge"}))
    InstanceType.add_member(:ml_p4_de_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P4DE_24XLARGE', traits: {"smithy.api#enumValue" => "ml.p4de.24xlarge"}))
    InstanceType.add_member(:ml_p5_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P5_48XLARGE', traits: {"smithy.api#enumValue" => "ml.p5.48xlarge"}))
    InstanceType.add_member(:ml_c5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.xlarge"}))
    InstanceType.add_member(:ml_c5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.2xlarge"}))
    InstanceType.add_member(:ml_c5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.4xlarge"}))
    InstanceType.add_member(:ml_c5_9_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_9XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.9xlarge"}))
    InstanceType.add_member(:ml_c5_18_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5_18XLARGE', traits: {"smithy.api#enumValue" => "ml.c5.18xlarge"}))
    InstanceType.add_member(:ml_c5_n_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5N_XLARGE', traits: {"smithy.api#enumValue" => "ml.c5n.xlarge"}))
    InstanceType.add_member(:ml_c5_n_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5N_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c5n.2xlarge"}))
    InstanceType.add_member(:ml_c5_n_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5N_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c5n.4xlarge"}))
    InstanceType.add_member(:ml_c5_n_9_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5N_9XLARGE', traits: {"smithy.api#enumValue" => "ml.c5n.9xlarge"}))
    InstanceType.add_member(:ml_c5_n_18_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C5N_18XLARGE', traits: {"smithy.api#enumValue" => "ml.c5n.18xlarge"}))
    InstanceType.add_member(:ml_g5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.xlarge"}))
    InstanceType.add_member(:ml_g5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.2xlarge"}))
    InstanceType.add_member(:ml_g5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.4xlarge"}))
    InstanceType.add_member(:ml_g5_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_8XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.8xlarge"}))
    InstanceType.add_member(:ml_g5_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_16XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.16xlarge"}))
    InstanceType.add_member(:ml_g5_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_12XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.12xlarge"}))
    InstanceType.add_member(:ml_g5_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_24XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.24xlarge"}))
    InstanceType.add_member(:ml_g5_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G5_48XLARGE', traits: {"smithy.api#enumValue" => "ml.g5.48xlarge"}))
    InstanceType.add_member(:ml_trn1_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_TRN1_2XLARGE', traits: {"smithy.api#enumValue" => "ml.trn1.2xlarge"}))
    InstanceType.add_member(:ml_trn1_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_TRN1_32XLARGE', traits: {"smithy.api#enumValue" => "ml.trn1.32xlarge"}))
    InstanceType.add_member(:ml_trn1_n_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_TRN1N_32XLARGE', traits: {"smithy.api#enumValue" => "ml.trn1n.32xlarge"}))
    InstanceType.add_member(:ml_m6_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_LARGE', traits: {"smithy.api#enumValue" => "ml.m6i.large"}))
    InstanceType.add_member(:ml_m6_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.xlarge"}))
    InstanceType.add_member(:ml_m6_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.2xlarge"}))
    InstanceType.add_member(:ml_m6_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.4xlarge"}))
    InstanceType.add_member(:ml_m6_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.8xlarge"}))
    InstanceType.add_member(:ml_m6_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.12xlarge"}))
    InstanceType.add_member(:ml_m6_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.16xlarge"}))
    InstanceType.add_member(:ml_m6_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.24xlarge"}))
    InstanceType.add_member(:ml_m6_i_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M6I_32XLARGE', traits: {"smithy.api#enumValue" => "ml.m6i.32xlarge"}))
    InstanceType.add_member(:ml_c6_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.xlarge"}))
    InstanceType.add_member(:ml_c6_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.2xlarge"}))
    InstanceType.add_member(:ml_c6_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.8xlarge"}))
    InstanceType.add_member(:ml_c6_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.4xlarge"}))
    InstanceType.add_member(:ml_c6_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.12xlarge"}))
    InstanceType.add_member(:ml_c6_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.16xlarge"}))
    InstanceType.add_member(:ml_c6_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.24xlarge"}))
    InstanceType.add_member(:ml_c6_i_32_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C6I_32XLARGE', traits: {"smithy.api#enumValue" => "ml.c6i.32xlarge"}))
    InstanceType.add_member(:ml_r5_d_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_LARGE', traits: {"smithy.api#enumValue" => "ml.r5d.large"}))
    InstanceType.add_member(:ml_r5_d_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.xlarge"}))
    InstanceType.add_member(:ml_r5_d_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_2XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.2xlarge"}))
    InstanceType.add_member(:ml_r5_d_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_4XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.4xlarge"}))
    InstanceType.add_member(:ml_r5_d_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_8XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.8xlarge"}))
    InstanceType.add_member(:ml_r5_d_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_12XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.12xlarge"}))
    InstanceType.add_member(:ml_r5_d_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_16XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.16xlarge"}))
    InstanceType.add_member(:ml_r5_d_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5D_24XLARGE', traits: {"smithy.api#enumValue" => "ml.r5d.24xlarge"}))
    InstanceType.add_member(:ml_t3_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_T3_MEDIUM', traits: {"smithy.api#enumValue" => "ml.t3.medium"}))
    InstanceType.add_member(:ml_t3_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_T3_LARGE', traits: {"smithy.api#enumValue" => "ml.t3.large"}))
    InstanceType.add_member(:ml_t3_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_T3_XLARGE', traits: {"smithy.api#enumValue" => "ml.t3.xlarge"}))
    InstanceType.add_member(:ml_t3_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_T3_2XLARGE', traits: {"smithy.api#enumValue" => "ml.t3.2xlarge"}))
    InstanceType.add_member(:ml_r5_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_LARGE', traits: {"smithy.api#enumValue" => "ml.r5.large"}))
    InstanceType.add_member(:ml_r5_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.xlarge"}))
    InstanceType.add_member(:ml_r5_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_2XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.2xlarge"}))
    InstanceType.add_member(:ml_r5_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_4XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.4xlarge"}))
    InstanceType.add_member(:ml_r5_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_8XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.8xlarge"}))
    InstanceType.add_member(:ml_r5_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_12XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.12xlarge"}))
    InstanceType.add_member(:ml_r5_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_16XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.16xlarge"}))
    InstanceType.add_member(:ml_r5_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R5_24XLARGE', traits: {"smithy.api#enumValue" => "ml.r5.24xlarge"}))
    InstanceType.add_member(:ml_c7_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_LARGE', traits: {"smithy.api#enumValue" => "ml.c7i.large"}))
    InstanceType.add_member(:ml_c7_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.xlarge"}))
    InstanceType.add_member(:ml_c7_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.2xlarge"}))
    InstanceType.add_member(:ml_c7_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.4xlarge"}))
    InstanceType.add_member(:ml_c7_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.8xlarge"}))
    InstanceType.add_member(:ml_c7_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.12xlarge"}))
    InstanceType.add_member(:ml_c7_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.16xlarge"}))
    InstanceType.add_member(:ml_c7_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.24xlarge"}))
    InstanceType.add_member(:ml_c7_i_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_C7I_48XLARGE', traits: {"smithy.api#enumValue" => "ml.c7i.48xlarge"}))
    InstanceType.add_member(:ml_m7_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_LARGE', traits: {"smithy.api#enumValue" => "ml.m7i.large"}))
    InstanceType.add_member(:ml_m7_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.xlarge"}))
    InstanceType.add_member(:ml_m7_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.2xlarge"}))
    InstanceType.add_member(:ml_m7_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.4xlarge"}))
    InstanceType.add_member(:ml_m7_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.8xlarge"}))
    InstanceType.add_member(:ml_m7_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.12xlarge"}))
    InstanceType.add_member(:ml_m7_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.16xlarge"}))
    InstanceType.add_member(:ml_m7_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.24xlarge"}))
    InstanceType.add_member(:ml_m7_i_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_M7I_48XLARGE', traits: {"smithy.api#enumValue" => "ml.m7i.48xlarge"}))
    InstanceType.add_member(:ml_r7_i_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_LARGE', traits: {"smithy.api#enumValue" => "ml.r7i.large"}))
    InstanceType.add_member(:ml_r7_i_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.xlarge"}))
    InstanceType.add_member(:ml_r7_i_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_2XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.2xlarge"}))
    InstanceType.add_member(:ml_r7_i_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_4XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.4xlarge"}))
    InstanceType.add_member(:ml_r7_i_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_8XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.8xlarge"}))
    InstanceType.add_member(:ml_r7_i_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_12XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.12xlarge"}))
    InstanceType.add_member(:ml_r7_i_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_16XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.16xlarge"}))
    InstanceType.add_member(:ml_r7_i_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_24XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.24xlarge"}))
    InstanceType.add_member(:ml_r7_i_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_R7I_48XLARGE', traits: {"smithy.api#enumValue" => "ml.r7i.48xlarge"}))
    InstanceType.add_member(:ml_g6_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.xlarge"}))
    InstanceType.add_member(:ml_g6_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_2XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.2xlarge"}))
    InstanceType.add_member(:ml_g6_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_4XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.4xlarge"}))
    InstanceType.add_member(:ml_g6_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_8XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.8xlarge"}))
    InstanceType.add_member(:ml_g6_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_12XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.12xlarge"}))
    InstanceType.add_member(:ml_g6_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_16XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.16xlarge"}))
    InstanceType.add_member(:ml_g6_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_24XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.24xlarge"}))
    InstanceType.add_member(:ml_g6_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6_48XLARGE', traits: {"smithy.api#enumValue" => "ml.g6.48xlarge"}))
    InstanceType.add_member(:ml_g6_e_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.xlarge"}))
    InstanceType.add_member(:ml_g6_e_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_2XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.2xlarge"}))
    InstanceType.add_member(:ml_g6_e_4_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_4XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.4xlarge"}))
    InstanceType.add_member(:ml_g6_e_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_8XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.8xlarge"}))
    InstanceType.add_member(:ml_g6_e_12_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_12XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.12xlarge"}))
    InstanceType.add_member(:ml_g6_e_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_16XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.16xlarge"}))
    InstanceType.add_member(:ml_g6_e_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_24XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.24xlarge"}))
    InstanceType.add_member(:ml_g6_e_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_G6E_48XLARGE', traits: {"smithy.api#enumValue" => "ml.g6e.48xlarge"}))
    InstanceType.add_member(:ml_p5_en_48_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P5EN_48XLARGE', traits: {"smithy.api#enumValue" => "ml.p5en.48xlarge"}))
    InstanceType.add_member(:ml_p3_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3_2XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3.2xlarge"}))
    InstanceType.add_member(:ml_p3_8_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3_8XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3.8xlarge"}))
    InstanceType.add_member(:ml_p3_16_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3_16XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3.16xlarge"}))
    InstanceType.add_member(:ml_p3_dn_24_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_P3DN_24XLARGE', traits: {"smithy.api#deprecated" => {"message" => "P3 instance types are deprecated. Use P4 or newer instance types for better performance and cost efficiency.", "since" => "2025-09-02"}, "smithy.api#enumValue" => "ml.p3dn.24xlarge"}))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServiceException.type = Types::InternalServiceException
    ListAudienceExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAudienceExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAudienceExportJobsRequest.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#httpQuery" => "audienceGenerationJobArn"}))
    ListAudienceExportJobsRequest.type = Types::ListAudienceExportJobsRequest
    ListAudienceExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAudienceExportJobsResponse.add_member(:audience_export_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceExportJobList, location_name: 'audienceExportJobs', traits: {"smithy.api#required" => {}}))
    ListAudienceExportJobsResponse.type = Types::ListAudienceExportJobsResponse
    ListAudienceGenerationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAudienceGenerationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAudienceGenerationJobsRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpQuery" => "configuredAudienceModelArn"}))
    ListAudienceGenerationJobsRequest.add_member(:collaboration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#httpQuery" => "collaborationId"}))
    ListAudienceGenerationJobsRequest.type = Types::ListAudienceGenerationJobsRequest
    ListAudienceGenerationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAudienceGenerationJobsResponse.add_member(:audience_generation_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobList, location_name: 'audienceGenerationJobs', traits: {"smithy.api#required" => {}}))
    ListAudienceGenerationJobsResponse.type = Types::ListAudienceGenerationJobsResponse
    ListAudienceModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAudienceModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAudienceModelsRequest.type = Types::ListAudienceModelsRequest
    ListAudienceModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAudienceModelsResponse.add_member(:audience_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelList, location_name: 'audienceModels', traits: {"smithy.api#required" => {}}))
    ListAudienceModelsResponse.type = Types::ListAudienceModelsResponse
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCollaborationConfiguredModelAlgorithmAssociationsRequest.type = Types::ListCollaborationConfiguredModelAlgorithmAssociationsRequest
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse.add_member(:collaboration_configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationConfiguredModelAlgorithmAssociationList, location_name: 'collaborationConfiguredModelAlgorithmAssociations', traits: {"smithy.api#required" => {}}))
    ListCollaborationConfiguredModelAlgorithmAssociationsResponse.type = Types::ListCollaborationConfiguredModelAlgorithmAssociationsResponse
    ListCollaborationMLInputChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationMLInputChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationMLInputChannelsRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCollaborationMLInputChannelsRequest.type = Types::ListCollaborationMLInputChannelsRequest
    ListCollaborationMLInputChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCollaborationMLInputChannelsResponse.add_member(:collaboration_ml_input_channels_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationMLInputChannelsList, location_name: 'collaborationMLInputChannelsList', traits: {"smithy.api#required" => {}}))
    ListCollaborationMLInputChannelsResponse.type = Types::ListCollaborationMLInputChannelsResponse
    ListCollaborationTrainedModelExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCollaborationTrainedModelExportJobsRequest.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier', traits: {"smithy.api#httpQuery" => "trainedModelVersionIdentifier"}))
    ListCollaborationTrainedModelExportJobsRequest.type = Types::ListCollaborationTrainedModelExportJobsRequest
    ListCollaborationTrainedModelExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCollaborationTrainedModelExportJobsResponse.add_member(:collaboration_trained_model_export_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationTrainedModelExportJobList, location_name: 'collaborationTrainedModelExportJobs', traits: {"smithy.api#required" => {}}))
    ListCollaborationTrainedModelExportJobsResponse.type = Types::ListCollaborationTrainedModelExportJobsResponse
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpQuery" => "trainedModelArn"}))
    ListCollaborationTrainedModelInferenceJobsRequest.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier', traits: {"smithy.api#httpQuery" => "trainedModelVersionIdentifier"}))
    ListCollaborationTrainedModelInferenceJobsRequest.type = Types::ListCollaborationTrainedModelInferenceJobsRequest
    ListCollaborationTrainedModelInferenceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCollaborationTrainedModelInferenceJobsResponse.add_member(:collaboration_trained_model_inference_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationTrainedModelInferenceJobList, location_name: 'collaborationTrainedModelInferenceJobs', traits: {"smithy.api#required" => {}}))
    ListCollaborationTrainedModelInferenceJobsResponse.type = Types::ListCollaborationTrainedModelInferenceJobsResponse
    ListCollaborationTrainedModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationTrainedModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationTrainedModelsRequest.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCollaborationTrainedModelsRequest.type = Types::ListCollaborationTrainedModelsRequest
    ListCollaborationTrainedModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCollaborationTrainedModelsResponse.add_member(:collaboration_trained_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationTrainedModelList, location_name: 'collaborationTrainedModels', traits: {"smithy.api#required" => {}}))
    ListCollaborationTrainedModelsResponse.type = Types::ListCollaborationTrainedModelsResponse
    ListConfiguredAudienceModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredAudienceModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredAudienceModelsRequest.type = Types::ListConfiguredAudienceModelsRequest
    ListConfiguredAudienceModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListConfiguredAudienceModelsResponse.add_member(:configured_audience_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelList, location_name: 'configuredAudienceModels', traits: {"smithy.api#required" => {}}))
    ListConfiguredAudienceModelsResponse.type = Types::ListConfiguredAudienceModelsResponse
    ListConfiguredModelAlgorithmAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredModelAlgorithmAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredModelAlgorithmAssociationsRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfiguredModelAlgorithmAssociationsRequest.type = Types::ListConfiguredModelAlgorithmAssociationsRequest
    ListConfiguredModelAlgorithmAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListConfiguredModelAlgorithmAssociationsResponse.add_member(:configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationList, location_name: 'configuredModelAlgorithmAssociations', traits: {"smithy.api#required" => {}}))
    ListConfiguredModelAlgorithmAssociationsResponse.type = Types::ListConfiguredModelAlgorithmAssociationsResponse
    ListConfiguredModelAlgorithmsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredModelAlgorithmsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredModelAlgorithmsRequest.type = Types::ListConfiguredModelAlgorithmsRequest
    ListConfiguredModelAlgorithmsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListConfiguredModelAlgorithmsResponse.add_member(:configured_model_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmList, location_name: 'configuredModelAlgorithms', traits: {"smithy.api#required" => {}}))
    ListConfiguredModelAlgorithmsResponse.type = Types::ListConfiguredModelAlgorithmsResponse
    ListMLInputChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMLInputChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMLInputChannelsRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMLInputChannelsRequest.type = Types::ListMLInputChannelsRequest
    ListMLInputChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMLInputChannelsResponse.add_member(:ml_input_channels_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelsList, location_name: 'mlInputChannelsList', traits: {"smithy.api#required" => {}}))
    ListMLInputChannelsResponse.type = Types::ListMLInputChannelsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrainedModelInferenceJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTrainedModelInferenceJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTrainedModelInferenceJobsRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrainedModelInferenceJobsRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpQuery" => "trainedModelArn"}))
    ListTrainedModelInferenceJobsRequest.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier', traits: {"smithy.api#httpQuery" => "trainedModelVersionIdentifier"}))
    ListTrainedModelInferenceJobsRequest.type = Types::ListTrainedModelInferenceJobsRequest
    ListTrainedModelInferenceJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListTrainedModelInferenceJobsResponse.add_member(:trained_model_inference_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobList, location_name: 'trainedModelInferenceJobs', traits: {"smithy.api#required" => {}}))
    ListTrainedModelInferenceJobsResponse.type = Types::ListTrainedModelInferenceJobsResponse
    ListTrainedModelVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTrainedModelVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTrainedModelVersionsRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrainedModelVersionsRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrainedModelVersionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListTrainedModelVersionsRequest.type = Types::ListTrainedModelVersionsRequest
    ListTrainedModelVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListTrainedModelVersionsResponse.add_member(:trained_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelList, location_name: 'trainedModels', traits: {"smithy.api#required" => {}}))
    ListTrainedModelVersionsResponse.type = Types::ListTrainedModelVersionsResponse
    ListTrainedModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTrainedModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTrainedModelsRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrainedModelsRequest.type = Types::ListTrainedModelsRequest
    ListTrainedModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListTrainedModelsResponse.add_member(:trained_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelList, location_name: 'trainedModels', traits: {"smithy.api#required" => {}}))
    ListTrainedModelsResponse.type = Types::ListTrainedModelsResponse
    ListTrainingDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTrainingDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTrainingDatasetsRequest.type = Types::ListTrainingDatasetsRequest
    ListTrainingDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListTrainingDatasetsResponse.add_member(:training_datasets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetList, location_name: 'trainingDatasets', traits: {"smithy.api#required" => {}}))
    ListTrainingDatasetsResponse.type = Types::ListTrainingDatasetsResponse
    LogRedactionConfiguration.add_member(:entities_to_redact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypeList, location_name: 'entitiesToRedact', traits: {"smithy.api#required" => {}}))
    LogRedactionConfiguration.add_member(:custom_entity_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEntityConfig, location_name: 'customEntityConfig'))
    LogRedactionConfiguration.type = Types::LogRedactionConfiguration
    LogType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    LogType.add_member(:error_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_SUMMARY', traits: {"smithy.api#enumValue" => "ERROR_SUMMARY"}))
    LogsConfigurationPolicy.add_member(:allowed_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'allowedAccountIds', traits: {"smithy.api#required" => {}}))
    LogsConfigurationPolicy.add_member(:filter_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'filterPattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}}))
    LogsConfigurationPolicy.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#default" => "ALL"}))
    LogsConfigurationPolicy.add_member(:log_redaction_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogRedactionConfiguration, location_name: 'logRedactionConfiguration'))
    LogsConfigurationPolicy.type = Types::LogsConfigurationPolicy
    LogsConfigurationPolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfigurationPolicy)
    LogsStatus.add_member(:publish_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISH_SUCCEEDED', traits: {"smithy.api#enumValue" => "PUBLISH_SUCCEEDED"}))
    LogsStatus.add_member(:publish_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISH_FAILED', traits: {"smithy.api#enumValue" => "PUBLISH_FAILED"}))
    MLInputChannelStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    MLInputChannelStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    MLInputChannelStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    MLInputChannelStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MLInputChannelStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_PENDING', traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    MLInputChannelStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    MLInputChannelStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    MLInputChannelStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    MLInputChannelSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MLInputChannelSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MLInputChannelSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    MLInputChannelSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    MLInputChannelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MLInputChannelSummary.add_member(:configured_model_algorithm_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArnList, location_name: 'configuredModelAlgorithmAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    MLInputChannelSummary.add_member(:protected_query_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'protectedQueryIdentifier'))
    MLInputChannelSummary.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    MLInputChannelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    MLInputChannelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    MLInputChannelSummary.type = Types::MLInputChannelSummary
    MLInputChannelsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelSummary)
    MLOutputConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination'))
    MLOutputConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    MLOutputConfiguration.type = Types::MLOutputConfiguration
    MetricDefinition.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MetricDefinition.add_member(:regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricRegex, location_name: 'regex', traits: {"smithy.api#required" => {}}))
    MetricDefinition.type = Types::MetricDefinition
    MetricDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDefinition)
    MetricsConfigurationPolicy.add_member(:noise_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoiseLevelType, location_name: 'noiseLevel', traits: {"smithy.api#required" => {}}))
    MetricsConfigurationPolicy.type = Types::MetricsConfigurationPolicy
    MetricsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedAudienceMetrics)
    MetricsStatus.add_member(:publish_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISH_SUCCEEDED', traits: {"smithy.api#enumValue" => "PUBLISH_SUCCEEDED"}))
    MetricsStatus.add_member(:publish_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISH_FAILED', traits: {"smithy.api#enumValue" => "PUBLISH_FAILED"}))
    ModelInferenceDataSource.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    ModelInferenceDataSource.type = Types::ModelInferenceDataSource
    ModelTrainingDataChannel.add_member(:ml_input_channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLInputChannelArn, location_name: 'mlInputChannelArn', traits: {"smithy.api#required" => {}}))
    ModelTrainingDataChannel.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingDataChannelName, location_name: 'channelName', traits: {"smithy.api#required" => {}}))
    ModelTrainingDataChannel.add_member(:s3_data_distribution_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataDistributionType, location_name: 's3DataDistributionType', traits: {"smithy.api#default" => "FullyReplicated"}))
    ModelTrainingDataChannel.type = Types::ModelTrainingDataChannel
    ModelTrainingDataChannels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingDataChannel)
    NoiseLevelType.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    NoiseLevelType.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    NoiseLevelType.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    NoiseLevelType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ParameterMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterKey)
    ParameterMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    PolicyExistenceCondition.add_member(:policy_must_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MUST_EXIST', traits: {"smithy.api#enumValue" => "POLICY_MUST_EXIST"}))
    PolicyExistenceCondition.add_member(:policy_must_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MUST_NOT_EXIST', traits: {"smithy.api#enumValue" => "POLICY_MUST_NOT_EXIST"}))
    PrivacyBudgets.add_member(:access_budgets, Types::PrivacyBudgets::AccessBudgets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessBudgets, location_name: 'accessBudgets'))
    PrivacyBudgets.add_member(:unknown, Types::PrivacyBudgets::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgets.type = Types::PrivacyBudgets
    PrivacyConfiguration.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyConfigurationPolicies, location_name: 'policies', traits: {"smithy.api#required" => {}}))
    PrivacyConfiguration.type = Types::PrivacyConfiguration
    PrivacyConfigurationPolicies.add_member(:trained_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelsConfigurationPolicy, location_name: 'trainedModels'))
    PrivacyConfigurationPolicies.add_member(:trained_model_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportsConfigurationPolicy, location_name: 'trainedModelExports'))
    PrivacyConfigurationPolicies.add_member(:trained_model_inference_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobsConfigurationPolicy, location_name: 'trainedModelInferenceJobs'))
    PrivacyConfigurationPolicies.type = Types::PrivacyConfigurationPolicies
    ProtectedQueryInputParameters.add_member(:sql_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, location_name: 'sqlParameters', traits: {"smithy.api#required" => {}}))
    ProtectedQueryInputParameters.add_member(:compute_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: 'computeConfiguration'))
    ProtectedQueryInputParameters.add_member(:result_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormat, location_name: 'resultFormat', traits: {"smithy.api#default" => "CSV"}))
    ProtectedQueryInputParameters.type = Types::ProtectedQueryInputParameters
    ProtectedQuerySQLParameters.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString', traits: {"smithy.api#length" => {"max" => 500000}}))
    ProtectedQuerySQLParameters.add_member(:analysis_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'analysisTemplateArn'))
    ProtectedQuerySQLParameters.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'parameters'))
    ProtectedQuerySQLParameters.type = Types::ProtectedQuerySQLParameters
    PutConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfiguredAudienceModelPolicyRequest.add_member(:configured_audience_model_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'configuredAudienceModelPolicy', traits: {"smithy.api#required" => {}}))
    PutConfiguredAudienceModelPolicyRequest.add_member(:previous_policy_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hash, location_name: 'previousPolicyHash'))
    PutConfiguredAudienceModelPolicyRequest.add_member(:policy_existence_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyExistenceCondition, location_name: 'policyExistenceCondition'))
    PutConfiguredAudienceModelPolicyRequest.type = Types::PutConfiguredAudienceModelPolicyRequest
    PutConfiguredAudienceModelPolicyResponse.add_member(:configured_audience_model_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'configuredAudienceModelPolicy', traits: {"smithy.api#required" => {}}))
    PutConfiguredAudienceModelPolicyResponse.add_member(:policy_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hash, location_name: 'policyHash', traits: {"smithy.api#required" => {}}))
    PutConfiguredAudienceModelPolicyResponse.type = Types::PutConfiguredAudienceModelPolicyResponse
    PutMLConfigurationRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMLConfigurationRequest.add_member(:default_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MLOutputConfiguration, location_name: 'defaultOutputLocation', traits: {"smithy.api#required" => {}}))
    PutMLConfigurationRequest.type = Types::PutMLConfigurationRequest
    RelevanceMetric.add_member(:audience_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSize, location_name: 'audienceSize', traits: {"smithy.api#required" => {}}))
    RelevanceMetric.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'score', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 10.0}}))
    RelevanceMetric.type = Types::RelevanceMetric
    RelevanceMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceMetric)
    ResourceConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'instanceCount', traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1, "max" => 5}}))
    ResourceConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    ResourceConfig.add_member(:volume_size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'volumeSizeInGB', traits: {"smithy.api#range" => {"min" => 1, "max" => 8192}, "smithy.api#required" => {}}))
    ResourceConfig.type = Types::ResourceConfig
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ResultFormat.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    S3ConfigMap.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Path, location_name: 's3Uri', traits: {"smithy.api#required" => {}}))
    S3ConfigMap.type = Types::S3ConfigMap
    S3DataDistributionType.add_member(:fully_replicated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULLY_REPLICATED', traits: {"smithy.api#enumValue" => "FullyReplicated"}))
    S3DataDistributionType.add_member(:sharded_by_s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARDED_BY_S3_KEY', traits: {"smithy.api#enumValue" => "ShardedByS3Key"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaName'))
    ServiceQuotaExceededException.add_member(:quota_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'quotaValue', traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SharedAudienceMetrics.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    SharedAudienceMetrics.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    StartAudienceExportJobRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    StartAudienceExportJobRequest.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#required" => {}}))
    StartAudienceExportJobRequest.add_member(:audience_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSize, location_name: 'audienceSize', traits: {"smithy.api#required" => {}}))
    StartAudienceExportJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    StartAudienceExportJobRequest.type = Types::StartAudienceExportJobRequest
    StartAudienceGenerationJobRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    StartAudienceGenerationJobRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    StartAudienceGenerationJobRequest.add_member(:seed_audience, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobDataSource, location_name: 'seedAudience', traits: {"smithy.api#required" => {}}))
    StartAudienceGenerationJobRequest.add_member(:include_seed_in_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeSeedInOutput', traits: {"smithy.api#default" => false}))
    StartAudienceGenerationJobRequest.add_member(:collaboration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId'))
    StartAudienceGenerationJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    StartAudienceGenerationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    StartAudienceGenerationJobRequest.type = Types::StartAudienceGenerationJobRequest
    StartAudienceGenerationJobResponse.add_member(:audience_generation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceGenerationJobArn, location_name: 'audienceGenerationJobArn', traits: {"smithy.api#required" => {}}))
    StartAudienceGenerationJobResponse.type = Types::StartAudienceGenerationJobResponse
    StartTrainedModelExportJobRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    StartTrainedModelExportJobRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartTrainedModelExportJobRequest.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier'))
    StartTrainedModelExportJobRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartTrainedModelExportJobRequest.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    StartTrainedModelExportJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    StartTrainedModelExportJobRequest.type = Types::StartTrainedModelExportJobRequest
    StartTrainedModelInferenceJobRequest.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartTrainedModelInferenceJobRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    StartTrainedModelInferenceJobRequest.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    StartTrainedModelInferenceJobRequest.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier'))
    StartTrainedModelInferenceJobRequest.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn'))
    StartTrainedModelInferenceJobRequest.add_member(:resource_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceResourceConfig, location_name: 'resourceConfig', traits: {"smithy.api#required" => {}}))
    StartTrainedModelInferenceJobRequest.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    StartTrainedModelInferenceJobRequest.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInferenceDataSource, location_name: 'dataSource', traits: {"smithy.api#required" => {}}))
    StartTrainedModelInferenceJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    StartTrainedModelInferenceJobRequest.add_member(:container_execution_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceContainerExecutionParameters, location_name: 'containerExecutionParameters'))
    StartTrainedModelInferenceJobRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceEnvironmentMap, location_name: 'environment'))
    StartTrainedModelInferenceJobRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    StartTrainedModelInferenceJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    StartTrainedModelInferenceJobRequest.type = Types::StartTrainedModelInferenceJobRequest
    StartTrainedModelInferenceJobResponse.add_member(:trained_model_inference_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, location_name: 'trainedModelInferenceJobArn', traits: {"smithy.api#required" => {}}))
    StartTrainedModelInferenceJobResponse.type = Types::StartTrainedModelInferenceJobResponse
    StatusDetails.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusCode'))
    StatusDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    StatusDetails.type = Types::StatusDetails
    StoppingCondition.add_member(:max_runtime_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxRuntimeInSeconds', traits: {"smithy.api#default" => 86400, "smithy.api#range" => {"min" => 1, "max" => 2419200}}))
    StoppingCondition.type = Types::StoppingCondition
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagOnCreatePolicy.add_member(:from_parent_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FROM_PARENT_RESOURCE', traits: {"smithy.api#enumValue" => "FROM_PARENT_RESOURCE"}))
    TagOnCreatePolicy.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TrainedModelArtifactMaxSize.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArtifactMaxSizeUnitType, location_name: 'unit', traits: {"smithy.api#required" => {}}))
    TrainedModelArtifactMaxSize.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArtifactMaxSizeValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    TrainedModelArtifactMaxSize.type = Types::TrainedModelArtifactMaxSize
    TrainedModelArtifactMaxSizeUnitType.add_member(:gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GB', traits: {"smithy.api#enumValue" => "GB"}))
    TrainedModelExportFileType.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    TrainedModelExportFileType.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTPUT', traits: {"smithy.api#enumValue" => "OUTPUT"}))
    TrainedModelExportFileTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportFileType)
    TrainedModelExportJobStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    TrainedModelExportJobStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    TrainedModelExportJobStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    TrainedModelExportJobStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrainedModelExportOutputConfiguration.add_member(:members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportReceiverMembers, location_name: 'members', traits: {"smithy.api#required" => {}}))
    TrainedModelExportOutputConfiguration.type = Types::TrainedModelExportOutputConfiguration
    TrainedModelExportReceiverMember.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#required" => {}}))
    TrainedModelExportReceiverMember.type = Types::TrainedModelExportReceiverMember
    TrainedModelExportReceiverMembers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportReceiverMember)
    TrainedModelExportsConfigurationPolicy.add_member(:max_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportsMaxSize, location_name: 'maxSize', traits: {"smithy.api#required" => {}}))
    TrainedModelExportsConfigurationPolicy.add_member(:files_to_export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportFileTypeList, location_name: 'filesToExport', traits: {"smithy.api#required" => {}}))
    TrainedModelExportsConfigurationPolicy.type = Types::TrainedModelExportsConfigurationPolicy
    TrainedModelExportsMaxSize.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportsMaxSizeUnitType, location_name: 'unit', traits: {"smithy.api#required" => {}}))
    TrainedModelExportsMaxSize.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelExportsMaxSizeValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    TrainedModelExportsMaxSize.type = Types::TrainedModelExportsMaxSize
    TrainedModelExportsMaxSizeUnitType.add_member(:gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GB', traits: {"smithy.api#enumValue" => "GB"}))
    TrainedModelInferenceJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobSummary)
    TrainedModelInferenceJobStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    TrainedModelInferenceJobStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    TrainedModelInferenceJobStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    TrainedModelInferenceJobStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrainedModelInferenceJobStatus.add_member(:cancel_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_PENDING', traits: {"smithy.api#enumValue" => "CANCEL_PENDING"}))
    TrainedModelInferenceJobStatus.add_member(:cancel_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CANCEL_IN_PROGRESS"}))
    TrainedModelInferenceJobStatus.add_member(:cancel_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_FAILED', traits: {"smithy.api#enumValue" => "CANCEL_FAILED"}))
    TrainedModelInferenceJobStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TrainedModelInferenceJobSummary.add_member(:trained_model_inference_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobArn, location_name: 'trainedModelInferenceJobArn', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn'))
    TrainedModelInferenceJobSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:trained_model_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'trainedModelVersionIdentifier'))
    TrainedModelInferenceJobSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:output_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceJobSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    TrainedModelInferenceJobSummary.add_member(:metrics_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsStatus, location_name: 'metricsStatus'))
    TrainedModelInferenceJobSummary.add_member(:metrics_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'metricsStatusDetails'))
    TrainedModelInferenceJobSummary.add_member(:logs_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsStatus, location_name: 'logsStatus'))
    TrainedModelInferenceJobSummary.add_member(:logs_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'logsStatusDetails'))
    TrainedModelInferenceJobSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TrainedModelInferenceJobSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TrainedModelInferenceJobSummary.type = Types::TrainedModelInferenceJobSummary
    TrainedModelInferenceJobsConfigurationPolicy.add_member(:container_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfigurationPolicyList, location_name: 'containerLogs'))
    TrainedModelInferenceJobsConfigurationPolicy.add_member(:max_output_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceMaxOutputSize, location_name: 'maxOutputSize'))
    TrainedModelInferenceJobsConfigurationPolicy.type = Types::TrainedModelInferenceJobsConfigurationPolicy
    TrainedModelInferenceMaxOutputSize.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceMaxOutputSizeUnitType, location_name: 'unit', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceMaxOutputSize.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelInferenceMaxOutputSizeValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    TrainedModelInferenceMaxOutputSize.type = Types::TrainedModelInferenceMaxOutputSize
    TrainedModelInferenceMaxOutputSizeUnitType.add_member(:gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GB', traits: {"smithy.api#enumValue" => "GB"}))
    TrainedModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelSummary)
    TrainedModelStatus.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    TrainedModelStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    TrainedModelStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    TrainedModelStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrainedModelStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_PENDING', traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    TrainedModelStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    TrainedModelStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    TrainedModelStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TrainedModelStatus.add_member(:cancel_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_PENDING', traits: {"smithy.api#enumValue" => "CANCEL_PENDING"}))
    TrainedModelStatus.add_member(:cancel_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CANCEL_IN_PROGRESS"}))
    TrainedModelStatus.add_member(:cancel_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_FAILED', traits: {"smithy.api#enumValue" => "CANCEL_FAILED"}))
    TrainedModelSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TrainedModelSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TrainedModelSummary.add_member(:trained_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArn, location_name: 'trainedModelArn', traits: {"smithy.api#required" => {}}))
    TrainedModelSummary.add_member(:version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'versionIdentifier'))
    TrainedModelSummary.add_member(:incremental_training_data_channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalTrainingDataChannelsOutput, location_name: 'incrementalTrainingDataChannels'))
    TrainedModelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TrainedModelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    TrainedModelSummary.add_member(:membership_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipIdentifier', traits: {"smithy.api#required" => {}}))
    TrainedModelSummary.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationIdentifier', traits: {"smithy.api#required" => {}}))
    TrainedModelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrainedModelSummary.add_member(:configured_model_algorithm_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredModelAlgorithmAssociationArn, location_name: 'configuredModelAlgorithmAssociationArn', traits: {"smithy.api#required" => {}}))
    TrainedModelSummary.type = Types::TrainedModelSummary
    TrainedModelsConfigurationPolicy.add_member(:container_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfigurationPolicyList, location_name: 'containerLogs'))
    TrainedModelsConfigurationPolicy.add_member(:container_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsConfigurationPolicy, location_name: 'containerMetrics'))
    TrainedModelsConfigurationPolicy.add_member(:max_artifact_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainedModelArtifactMaxSize, location_name: 'maxArtifactSize'))
    TrainedModelsConfigurationPolicy.type = Types::TrainedModelsConfigurationPolicy
    TrainingDatasetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetSummary)
    TrainingDatasetStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrainingDatasetSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TrainingDatasetSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TrainingDatasetSummary.add_member(:training_dataset_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetArn, location_name: 'trainingDatasetArn', traits: {"smithy.api#required" => {}}))
    TrainingDatasetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TrainingDatasetSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDatasetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrainingDatasetSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    TrainingDatasetSummary.type = Types::TrainingDatasetSummary
    TrainingInputMode.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE', traits: {"smithy.api#enumValue" => "File"}))
    TrainingInputMode.add_member(:fast_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAST_FILE', traits: {"smithy.api#enumValue" => "FastFile"}))
    TrainingInputMode.add_member(:pipe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PIPE', traits: {"smithy.api#enumValue" => "Pipe"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConfiguredAudienceModelRequest.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfiguredAudienceModelRequest.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelOutputConfig, location_name: 'outputConfig'))
    UpdateConfiguredAudienceModelRequest.add_member(:audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceModelArn, location_name: 'audienceModelArn'))
    UpdateConfiguredAudienceModelRequest.add_member(:shared_audience_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsList, location_name: 'sharedAudienceMetrics'))
    UpdateConfiguredAudienceModelRequest.add_member(:min_matching_seed_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinMatchingSeedSize, location_name: 'minMatchingSeedSize'))
    UpdateConfiguredAudienceModelRequest.add_member(:audience_size_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceSizeConfig, location_name: 'audienceSizeConfig'))
    UpdateConfiguredAudienceModelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    UpdateConfiguredAudienceModelRequest.type = Types::UpdateConfiguredAudienceModelRequest
    UpdateConfiguredAudienceModelResponse.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#required" => {}}))
    UpdateConfiguredAudienceModelResponse.type = Types::UpdateConfiguredAudienceModelResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WorkerComputeConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerComputeType, location_name: 'type', traits: {"smithy.api#default" => "CR.1X"}))
    WorkerComputeConfiguration.add_member(:number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'number', traits: {"smithy.api#default" => 16, "smithy.api#range" => {"min" => 2, "max" => 400}}))
    WorkerComputeConfiguration.type = Types::WorkerComputeConfiguration
    WorkerComputeType.add_member(:cr1_x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CR1X', traits: {"smithy.api#enumValue" => "CR.1X"}))
    WorkerComputeType.add_member(:cr4_x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CR4X', traits: {"smithy.api#enumValue" => "CR.4X"}))

    AWSStarkControlService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cleanroomsml#AWSStarkControlService"
      service.name = "AWSStarkControlService"
      service.version = "2023-09-06"
      service.traits = {"aws.api#service" => {"sdkId" => "CleanRoomsML", "arnNamespace" => "cleanrooms-ml", "cloudTrailEventSource" => "cleanrooms-ml.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "cleanrooms-ml"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Clean Rooms ML"}
      service.add_operation(:cancel_trained_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CancelTrainedModel"
        operation.name = "CancelTrainedModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTrainedModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_trained_model_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CancelTrainedModelInferenceJob"
        operation.name = "CancelTrainedModelInferenceJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTrainedModelInferenceJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateAudienceModel"
        operation.name = "CreateAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAudienceModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/audience-model"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateConfiguredAudienceModel"
        operation.name = "CreateConfiguredAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configured-audience-model"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_model_algorithm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateConfiguredModelAlgorithm"
        operation.name = "CreateConfiguredModelAlgorithm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configured-model-algorithms"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_model_algorithm_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateConfiguredModelAlgorithmAssociation"
        operation.name = "CreateConfiguredModelAlgorithmAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredModelAlgorithmAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configured-model-algorithm-associations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ml_input_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateMLInputChannel"
        operation.name = "CreateMLInputChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMLInputChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMLInputChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/ml-input-channels"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_trained_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateTrainedModel"
        operation.name = "CreateTrainedModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrainedModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrainedModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/trained-models"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_training_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#CreateTrainingDataset"
        operation.name = "CreateTrainingDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrainingDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrainingDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/training-dataset"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_audience_generation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteAudienceGenerationJob"
        operation.name = "DeleteAudienceGenerationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAudienceGenerationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/audience-generation-job/{audienceGenerationJobArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteAudienceModel"
        operation.name = "DeleteAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/audience-model/{audienceModelArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteConfiguredAudienceModel"
        operation.name = "DeleteConfiguredAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/configured-audience-model/{configuredAudienceModelArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_audience_model_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteConfiguredAudienceModelPolicy"
        operation.name = "DeleteConfiguredAudienceModelPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/configured-audience-model/{configuredAudienceModelArn}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_model_algorithm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteConfiguredModelAlgorithm"
        operation.name = "DeleteConfiguredModelAlgorithm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredModelAlgorithmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/configured-model-algorithms/{configuredModelAlgorithmArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_model_algorithm_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteConfiguredModelAlgorithmAssociation"
        operation.name = "DeleteConfiguredModelAlgorithmAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredModelAlgorithmAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ml_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteMLConfiguration"
        operation.name = "DeleteMLConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMLConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/ml-configurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ml_input_channel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteMLInputChannelData"
        operation.name = "DeleteMLInputChannelData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMLInputChannelDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trained_model_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteTrainedModelOutput"
        operation.name = "DeleteTrainedModelOutput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrainedModelOutputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_training_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#DeleteTrainingDataset"
        operation.name = "DeleteTrainingDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrainingDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/training-dataset/{trainingDatasetArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_audience_generation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetAudienceGenerationJob"
        operation.name = "GetAudienceGenerationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAudienceGenerationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAudienceGenerationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/audience-generation-job/{audienceGenerationJobArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetAudienceModel"
        operation.name = "GetAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAudienceModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/audience-model/{audienceModelArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_configured_model_algorithm_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetCollaborationConfiguredModelAlgorithmAssociation"
        operation.name = "GetCollaborationConfiguredModelAlgorithmAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationConfiguredModelAlgorithmAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationConfiguredModelAlgorithmAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_ml_input_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetCollaborationMLInputChannel"
        operation.name = "GetCollaborationMLInputChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationMLInputChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/ml-input-channels/{mlInputChannelArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_trained_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetCollaborationTrainedModel"
        operation.name = "GetCollaborationTrainedModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationTrainedModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationTrainedModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetConfiguredAudienceModel"
        operation.name = "GetConfiguredAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configured-audience-model/{configuredAudienceModelArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_audience_model_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetConfiguredAudienceModelPolicy"
        operation.name = "GetConfiguredAudienceModelPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configured-audience-model/{configuredAudienceModelArn}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_model_algorithm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetConfiguredModelAlgorithm"
        operation.name = "GetConfiguredModelAlgorithm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configured-model-algorithms/{configuredModelAlgorithmArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_model_algorithm_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetConfiguredModelAlgorithmAssociation"
        operation.name = "GetConfiguredModelAlgorithmAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredModelAlgorithmAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ml_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetMLConfiguration"
        operation.name = "GetMLConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMLConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMLConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/ml-configurations"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ml_input_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetMLInputChannel"
        operation.name = "GetMLInputChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMLInputChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMLInputChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trained_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetTrainedModel"
        operation.name = "GetTrainedModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrainedModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrainedModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trained_model_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetTrainedModelInferenceJob"
        operation.name = "GetTrainedModelInferenceJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrainedModelInferenceJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrainedModelInferenceJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_training_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#GetTrainingDataset"
        operation.name = "GetTrainingDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrainingDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrainingDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/training-dataset/{trainingDatasetArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_audience_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListAudienceExportJobs"
        operation.name = "ListAudienceExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAudienceExportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAudienceExportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/audience-export-job"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAudienceExportJobs.new
      end)
      service.add_operation(:list_audience_generation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListAudienceGenerationJobs"
        operation.name = "ListAudienceGenerationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAudienceGenerationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAudienceGenerationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/audience-generation-job"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAudienceGenerationJobs.new
      end)
      service.add_operation(:list_audience_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListAudienceModels"
        operation.name = "ListAudienceModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAudienceModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAudienceModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/audience-model"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAudienceModels.new
      end)
      service.add_operation(:list_collaboration_configured_model_algorithm_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListCollaborationConfiguredModelAlgorithmAssociations"
        operation.name = "ListCollaborationConfiguredModelAlgorithmAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationConfiguredModelAlgorithmAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationConfiguredModelAlgorithmAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationConfiguredModelAlgorithmAssociations.new
      end)
      service.add_operation(:list_collaboration_ml_input_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListCollaborationMLInputChannels"
        operation.name = "ListCollaborationMLInputChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationMLInputChannelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationMLInputChannelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/ml-input-channels"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationMLInputChannels.new
      end)
      service.add_operation(:list_collaboration_trained_model_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListCollaborationTrainedModelExportJobs"
        operation.name = "ListCollaborationTrainedModelExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelExportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelExportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}/export-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationTrainedModelExportJobs.new
      end)
      service.add_operation(:list_collaboration_trained_model_inference_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListCollaborationTrainedModelInferenceJobs"
        operation.name = "ListCollaborationTrainedModelInferenceJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelInferenceJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelInferenceJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/trained-model-inference-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationTrainedModelInferenceJobs.new
      end)
      service.add_operation(:list_collaboration_trained_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListCollaborationTrainedModels"
        operation.name = "ListCollaborationTrainedModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationTrainedModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/trained-models"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationTrainedModels.new
      end)
      service.add_operation(:list_configured_audience_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListConfiguredAudienceModels"
        operation.name = "ListConfiguredAudienceModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configured-audience-model"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredAudienceModels.new
      end)
      service.add_operation(:list_configured_model_algorithm_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListConfiguredModelAlgorithmAssociations"
        operation.name = "ListConfiguredModelAlgorithmAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configured-model-algorithm-associations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredModelAlgorithmAssociations.new
      end)
      service.add_operation(:list_configured_model_algorithms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListConfiguredModelAlgorithms"
        operation.name = "ListConfiguredModelAlgorithms"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredModelAlgorithmsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configured-model-algorithms"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredModelAlgorithms.new
      end)
      service.add_operation(:list_ml_input_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListMLInputChannels"
        operation.name = "ListMLInputChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMLInputChannelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMLInputChannelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/ml-input-channels"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMLInputChannels.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_trained_model_inference_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListTrainedModelInferenceJobs"
        operation.name = "ListTrainedModelInferenceJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainedModelInferenceJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainedModelInferenceJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/trained-model-inference-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrainedModelInferenceJobs.new
      end)
      service.add_operation(:list_trained_model_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListTrainedModelVersions"
        operation.name = "ListTrainedModelVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainedModelVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainedModelVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrainedModelVersions.new
      end)
      service.add_operation(:list_trained_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListTrainedModels"
        operation.name = "ListTrainedModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainedModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainedModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/trained-models"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrainedModels.new
      end)
      service.add_operation(:list_training_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#ListTrainingDatasets"
        operation.name = "ListTrainingDatasets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainingDatasetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrainingDatasetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/training-dataset"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrainingDatasets.new
      end)
      service.add_operation(:put_configured_audience_model_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#PutConfiguredAudienceModelPolicy"
        operation.name = "PutConfiguredAudienceModelPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfiguredAudienceModelPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfiguredAudienceModelPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/configured-audience-model/{configuredAudienceModelArn}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_ml_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#PutMLConfiguration"
        operation.name = "PutMLConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMLConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/memberships/{membershipIdentifier}/ml-configurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_audience_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#StartAudienceExportJob"
        operation.name = "StartAudienceExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAudienceExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/audience-export-job"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_audience_generation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#StartAudienceGenerationJob"
        operation.name = "StartAudienceGenerationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAudienceGenerationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAudienceGenerationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/audience-generation-job"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_trained_model_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#StartTrainedModelExportJob"
        operation.name = "StartTrainedModelExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTrainedModelExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/export-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_trained_model_inference_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#StartTrainedModelInferenceJob"
        operation.name = "StartTrainedModelInferenceJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTrainedModelInferenceJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTrainedModelInferenceJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/trained-model-inference-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_configured_audience_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanroomsml#UpdateConfiguredAudienceModel"
        operation.name = "UpdateConfiguredAudienceModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/configured-audience-model/{configuredAudienceModelArn}"}, "smithy.api#idempotent" => {}}
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

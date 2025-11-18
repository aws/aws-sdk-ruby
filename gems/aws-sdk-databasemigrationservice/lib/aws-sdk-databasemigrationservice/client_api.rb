# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DatabaseMigrationService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedFault = Shapes::StructureShape.new(name: 'AccessDeniedFault')
    AccountQuota = Shapes::StructureShape.new(name: 'AccountQuota')
    AccountQuotaList = Shapes::ListShape.new(name: 'AccountQuotaList')
    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    AddTagsToResourceResponse = Shapes::StructureShape.new(name: 'AddTagsToResourceResponse')
    ApplyPendingMaintenanceActionMessage = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResponse = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionResponse')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssessmentReportType = Shapes::StringShape.new(name: 'AssessmentReportType')
    AssessmentReportTypesList = Shapes::ListShape.new(name: 'AssessmentReportTypesList')
    AuthMechanismValue = Shapes::StringShape.new(name: 'AuthMechanismValue')
    AuthTypeValue = Shapes::StringShape.new(name: 'AuthTypeValue')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZonesList = Shapes::ListShape.new(name: 'AvailabilityZonesList')
    AvailableUpgradesList = Shapes::ListShape.new(name: 'AvailableUpgradesList')
    BatchStartRecommendationsErrorEntry = Shapes::StructureShape.new(name: 'BatchStartRecommendationsErrorEntry')
    BatchStartRecommendationsErrorEntryList = Shapes::ListShape.new(name: 'BatchStartRecommendationsErrorEntryList')
    BatchStartRecommendationsRequest = Shapes::StructureShape.new(name: 'BatchStartRecommendationsRequest')
    BatchStartRecommendationsResponse = Shapes::StructureShape.new(name: 'BatchStartRecommendationsResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    CancelMetadataModelConversionMessage = Shapes::StructureShape.new(name: 'CancelMetadataModelConversionMessage')
    CancelMetadataModelConversionResponse = Shapes::StructureShape.new(name: 'CancelMetadataModelConversionResponse')
    CancelMetadataModelCreationMessage = Shapes::StructureShape.new(name: 'CancelMetadataModelCreationMessage')
    CancelMetadataModelCreationResponse = Shapes::StructureShape.new(name: 'CancelMetadataModelCreationResponse')
    CancelReplicationTaskAssessmentRunMessage = Shapes::StructureShape.new(name: 'CancelReplicationTaskAssessmentRunMessage')
    CancelReplicationTaskAssessmentRunResponse = Shapes::StructureShape.new(name: 'CancelReplicationTaskAssessmentRunResponse')
    CannedAclForObjectsValue = Shapes::StringShape.new(name: 'CannedAclForObjectsValue')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateWallet = Shapes::BlobShape.new(name: 'CertificateWallet')
    CharLengthSemantics = Shapes::StringShape.new(name: 'CharLengthSemantics')
    CollectorHealthCheck = Shapes::StructureShape.new(name: 'CollectorHealthCheck')
    CollectorNotFoundFault = Shapes::StructureShape.new(name: 'CollectorNotFoundFault')
    CollectorResponse = Shapes::StructureShape.new(name: 'CollectorResponse')
    CollectorResponses = Shapes::ListShape.new(name: 'CollectorResponses')
    CollectorShortInfoResponse = Shapes::StructureShape.new(name: 'CollectorShortInfoResponse')
    CollectorStatus = Shapes::StringShape.new(name: 'CollectorStatus')
    CollectorsList = Shapes::ListShape.new(name: 'CollectorsList')
    CompressionTypeValue = Shapes::StringShape.new(name: 'CompressionTypeValue')
    ComputeConfig = Shapes::StructureShape.new(name: 'ComputeConfig')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    CreateDataMigrationMessage = Shapes::StructureShape.new(name: 'CreateDataMigrationMessage')
    CreateDataMigrationResponse = Shapes::StructureShape.new(name: 'CreateDataMigrationResponse')
    CreateDataProviderMessage = Shapes::StructureShape.new(name: 'CreateDataProviderMessage')
    CreateDataProviderResponse = Shapes::StructureShape.new(name: 'CreateDataProviderResponse')
    CreateEndpointMessage = Shapes::StructureShape.new(name: 'CreateEndpointMessage')
    CreateEndpointResponse = Shapes::StructureShape.new(name: 'CreateEndpointResponse')
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResponse')
    CreateFleetAdvisorCollectorRequest = Shapes::StructureShape.new(name: 'CreateFleetAdvisorCollectorRequest')
    CreateFleetAdvisorCollectorResponse = Shapes::StructureShape.new(name: 'CreateFleetAdvisorCollectorResponse')
    CreateInstanceProfileMessage = Shapes::StructureShape.new(name: 'CreateInstanceProfileMessage')
    CreateInstanceProfileResponse = Shapes::StructureShape.new(name: 'CreateInstanceProfileResponse')
    CreateMigrationProjectMessage = Shapes::StructureShape.new(name: 'CreateMigrationProjectMessage')
    CreateMigrationProjectResponse = Shapes::StructureShape.new(name: 'CreateMigrationProjectResponse')
    CreateReplicationConfigMessage = Shapes::StructureShape.new(name: 'CreateReplicationConfigMessage')
    CreateReplicationConfigResponse = Shapes::StructureShape.new(name: 'CreateReplicationConfigResponse')
    CreateReplicationInstanceMessage = Shapes::StructureShape.new(name: 'CreateReplicationInstanceMessage')
    CreateReplicationInstanceResponse = Shapes::StructureShape.new(name: 'CreateReplicationInstanceResponse')
    CreateReplicationSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateReplicationSubnetGroupMessage')
    CreateReplicationSubnetGroupResponse = Shapes::StructureShape.new(name: 'CreateReplicationSubnetGroupResponse')
    CreateReplicationTaskMessage = Shapes::StructureShape.new(name: 'CreateReplicationTaskMessage')
    CreateReplicationTaskResponse = Shapes::StructureShape.new(name: 'CreateReplicationTaskResponse')
    DataFormatValue = Shapes::StringShape.new(name: 'DataFormatValue')
    DataMigration = Shapes::StructureShape.new(name: 'DataMigration')
    DataMigrationCidrBlock = Shapes::ListShape.new(name: 'DataMigrationCidrBlock')
    DataMigrationSettings = Shapes::StructureShape.new(name: 'DataMigrationSettings')
    DataMigrationStatistics = Shapes::StructureShape.new(name: 'DataMigrationStatistics')
    DataMigrations = Shapes::ListShape.new(name: 'DataMigrations')
    DataProvider = Shapes::StructureShape.new(name: 'DataProvider')
    DataProviderDescriptor = Shapes::StructureShape.new(name: 'DataProviderDescriptor')
    DataProviderDescriptorDefinition = Shapes::StructureShape.new(name: 'DataProviderDescriptorDefinition')
    DataProviderDescriptorDefinitionList = Shapes::ListShape.new(name: 'DataProviderDescriptorDefinitionList')
    DataProviderDescriptorList = Shapes::ListShape.new(name: 'DataProviderDescriptorList')
    DataProviderList = Shapes::ListShape.new(name: 'DataProviderList')
    DataProviderSettings = Shapes::UnionShape.new(name: 'DataProviderSettings')
    DatabaseInstanceSoftwareDetailsResponse = Shapes::StructureShape.new(name: 'DatabaseInstanceSoftwareDetailsResponse')
    DatabaseList = Shapes::ListShape.new(name: 'DatabaseList')
    DatabaseMode = Shapes::StringShape.new(name: 'DatabaseMode')
    DatabaseResponse = Shapes::StructureShape.new(name: 'DatabaseResponse')
    DatabaseShortInfoResponse = Shapes::StructureShape.new(name: 'DatabaseShortInfoResponse')
    DatePartitionDelimiterValue = Shapes::StringShape.new(name: 'DatePartitionDelimiterValue')
    DatePartitionSequenceValue = Shapes::StringShape.new(name: 'DatePartitionSequenceValue')
    DefaultErrorDetails = Shapes::StructureShape.new(name: 'DefaultErrorDetails')
    DeleteCertificateMessage = Shapes::StructureShape.new(name: 'DeleteCertificateMessage')
    DeleteCertificateResponse = Shapes::StructureShape.new(name: 'DeleteCertificateResponse')
    DeleteCollectorRequest = Shapes::StructureShape.new(name: 'DeleteCollectorRequest')
    DeleteConnectionMessage = Shapes::StructureShape.new(name: 'DeleteConnectionMessage')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteDataMigrationMessage = Shapes::StructureShape.new(name: 'DeleteDataMigrationMessage')
    DeleteDataMigrationResponse = Shapes::StructureShape.new(name: 'DeleteDataMigrationResponse')
    DeleteDataProviderMessage = Shapes::StructureShape.new(name: 'DeleteDataProviderMessage')
    DeleteDataProviderResponse = Shapes::StructureShape.new(name: 'DeleteDataProviderResponse')
    DeleteEndpointMessage = Shapes::StructureShape.new(name: 'DeleteEndpointMessage')
    DeleteEndpointResponse = Shapes::StructureShape.new(name: 'DeleteEndpointResponse')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionResponse')
    DeleteFleetAdvisorDatabasesRequest = Shapes::StructureShape.new(name: 'DeleteFleetAdvisorDatabasesRequest')
    DeleteFleetAdvisorDatabasesResponse = Shapes::StructureShape.new(name: 'DeleteFleetAdvisorDatabasesResponse')
    DeleteInstanceProfileMessage = Shapes::StructureShape.new(name: 'DeleteInstanceProfileMessage')
    DeleteInstanceProfileResponse = Shapes::StructureShape.new(name: 'DeleteInstanceProfileResponse')
    DeleteMigrationProjectMessage = Shapes::StructureShape.new(name: 'DeleteMigrationProjectMessage')
    DeleteMigrationProjectResponse = Shapes::StructureShape.new(name: 'DeleteMigrationProjectResponse')
    DeleteReplicationConfigMessage = Shapes::StructureShape.new(name: 'DeleteReplicationConfigMessage')
    DeleteReplicationConfigResponse = Shapes::StructureShape.new(name: 'DeleteReplicationConfigResponse')
    DeleteReplicationInstanceMessage = Shapes::StructureShape.new(name: 'DeleteReplicationInstanceMessage')
    DeleteReplicationInstanceResponse = Shapes::StructureShape.new(name: 'DeleteReplicationInstanceResponse')
    DeleteReplicationSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteReplicationSubnetGroupMessage')
    DeleteReplicationSubnetGroupResponse = Shapes::StructureShape.new(name: 'DeleteReplicationSubnetGroupResponse')
    DeleteReplicationTaskAssessmentRunMessage = Shapes::StructureShape.new(name: 'DeleteReplicationTaskAssessmentRunMessage')
    DeleteReplicationTaskAssessmentRunResponse = Shapes::StructureShape.new(name: 'DeleteReplicationTaskAssessmentRunResponse')
    DeleteReplicationTaskMessage = Shapes::StructureShape.new(name: 'DeleteReplicationTaskMessage')
    DeleteReplicationTaskResponse = Shapes::StructureShape.new(name: 'DeleteReplicationTaskResponse')
    DescribeAccountAttributesMessage = Shapes::StructureShape.new(name: 'DescribeAccountAttributesMessage')
    DescribeAccountAttributesResponse = Shapes::StructureShape.new(name: 'DescribeAccountAttributesResponse')
    DescribeApplicableIndividualAssessmentsMessage = Shapes::StructureShape.new(name: 'DescribeApplicableIndividualAssessmentsMessage')
    DescribeApplicableIndividualAssessmentsResponse = Shapes::StructureShape.new(name: 'DescribeApplicableIndividualAssessmentsResponse')
    DescribeCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeCertificatesMessage')
    DescribeCertificatesResponse = Shapes::StructureShape.new(name: 'DescribeCertificatesResponse')
    DescribeConnectionsMessage = Shapes::StructureShape.new(name: 'DescribeConnectionsMessage')
    DescribeConnectionsResponse = Shapes::StructureShape.new(name: 'DescribeConnectionsResponse')
    DescribeConversionConfigurationMessage = Shapes::StructureShape.new(name: 'DescribeConversionConfigurationMessage')
    DescribeConversionConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeConversionConfigurationResponse')
    DescribeDataMigrationsMessage = Shapes::StructureShape.new(name: 'DescribeDataMigrationsMessage')
    DescribeDataMigrationsResponse = Shapes::StructureShape.new(name: 'DescribeDataMigrationsResponse')
    DescribeDataProvidersMessage = Shapes::StructureShape.new(name: 'DescribeDataProvidersMessage')
    DescribeDataProvidersResponse = Shapes::StructureShape.new(name: 'DescribeDataProvidersResponse')
    DescribeEndpointSettingsMessage = Shapes::StructureShape.new(name: 'DescribeEndpointSettingsMessage')
    DescribeEndpointSettingsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointSettingsResponse')
    DescribeEndpointTypesMessage = Shapes::StructureShape.new(name: 'DescribeEndpointTypesMessage')
    DescribeEndpointTypesResponse = Shapes::StructureShape.new(name: 'DescribeEndpointTypesResponse')
    DescribeEndpointsMessage = Shapes::StructureShape.new(name: 'DescribeEndpointsMessage')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DescribeEngineVersionsMessage = Shapes::StructureShape.new(name: 'DescribeEngineVersionsMessage')
    DescribeEngineVersionsResponse = Shapes::StructureShape.new(name: 'DescribeEngineVersionsResponse')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventCategoriesResponse = Shapes::StructureShape.new(name: 'DescribeEventCategoriesResponse')
    DescribeEventSubscriptionsMessage = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsMessage')
    DescribeEventSubscriptionsResponse = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsResponse')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeEventsResponse = Shapes::StructureShape.new(name: 'DescribeEventsResponse')
    DescribeExtensionPackAssociationsMessage = Shapes::StructureShape.new(name: 'DescribeExtensionPackAssociationsMessage')
    DescribeExtensionPackAssociationsResponse = Shapes::StructureShape.new(name: 'DescribeExtensionPackAssociationsResponse')
    DescribeFleetAdvisorCollectorsRequest = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorCollectorsRequest')
    DescribeFleetAdvisorCollectorsResponse = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorCollectorsResponse')
    DescribeFleetAdvisorDatabasesRequest = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorDatabasesRequest')
    DescribeFleetAdvisorDatabasesResponse = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorDatabasesResponse')
    DescribeFleetAdvisorLsaAnalysisRequest = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorLsaAnalysisRequest')
    DescribeFleetAdvisorLsaAnalysisResponse = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorLsaAnalysisResponse')
    DescribeFleetAdvisorSchemaObjectSummaryRequest = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorSchemaObjectSummaryRequest')
    DescribeFleetAdvisorSchemaObjectSummaryResponse = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorSchemaObjectSummaryResponse')
    DescribeFleetAdvisorSchemasRequest = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorSchemasRequest')
    DescribeFleetAdvisorSchemasResponse = Shapes::StructureShape.new(name: 'DescribeFleetAdvisorSchemasResponse')
    DescribeInstanceProfilesMessage = Shapes::StructureShape.new(name: 'DescribeInstanceProfilesMessage')
    DescribeInstanceProfilesResponse = Shapes::StructureShape.new(name: 'DescribeInstanceProfilesResponse')
    DescribeMetadataModelAssessmentsMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelAssessmentsMessage')
    DescribeMetadataModelAssessmentsResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelAssessmentsResponse')
    DescribeMetadataModelChildrenMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelChildrenMessage')
    DescribeMetadataModelChildrenResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelChildrenResponse')
    DescribeMetadataModelConversionsMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelConversionsMessage')
    DescribeMetadataModelConversionsResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelConversionsResponse')
    DescribeMetadataModelCreationsMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelCreationsMessage')
    DescribeMetadataModelCreationsResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelCreationsResponse')
    DescribeMetadataModelExportsAsScriptMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelExportsAsScriptMessage')
    DescribeMetadataModelExportsAsScriptResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelExportsAsScriptResponse')
    DescribeMetadataModelExportsToTargetMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelExportsToTargetMessage')
    DescribeMetadataModelExportsToTargetResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelExportsToTargetResponse')
    DescribeMetadataModelImportsMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelImportsMessage')
    DescribeMetadataModelImportsResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelImportsResponse')
    DescribeMetadataModelMessage = Shapes::StructureShape.new(name: 'DescribeMetadataModelMessage')
    DescribeMetadataModelResponse = Shapes::StructureShape.new(name: 'DescribeMetadataModelResponse')
    DescribeMigrationProjectsMessage = Shapes::StructureShape.new(name: 'DescribeMigrationProjectsMessage')
    DescribeMigrationProjectsResponse = Shapes::StructureShape.new(name: 'DescribeMigrationProjectsResponse')
    DescribeOrderableReplicationInstancesMessage = Shapes::StructureShape.new(name: 'DescribeOrderableReplicationInstancesMessage')
    DescribeOrderableReplicationInstancesResponse = Shapes::StructureShape.new(name: 'DescribeOrderableReplicationInstancesResponse')
    DescribePendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'DescribePendingMaintenanceActionsMessage')
    DescribePendingMaintenanceActionsResponse = Shapes::StructureShape.new(name: 'DescribePendingMaintenanceActionsResponse')
    DescribeRecommendationLimitationsRequest = Shapes::StructureShape.new(name: 'DescribeRecommendationLimitationsRequest')
    DescribeRecommendationLimitationsResponse = Shapes::StructureShape.new(name: 'DescribeRecommendationLimitationsResponse')
    DescribeRecommendationsRequest = Shapes::StructureShape.new(name: 'DescribeRecommendationsRequest')
    DescribeRecommendationsResponse = Shapes::StructureShape.new(name: 'DescribeRecommendationsResponse')
    DescribeRefreshSchemasStatusMessage = Shapes::StructureShape.new(name: 'DescribeRefreshSchemasStatusMessage')
    DescribeRefreshSchemasStatusResponse = Shapes::StructureShape.new(name: 'DescribeRefreshSchemasStatusResponse')
    DescribeReplicationConfigsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationConfigsMessage')
    DescribeReplicationConfigsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationConfigsResponse')
    DescribeReplicationInstanceTaskLogsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationInstanceTaskLogsMessage')
    DescribeReplicationInstanceTaskLogsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationInstanceTaskLogsResponse')
    DescribeReplicationInstancesMessage = Shapes::StructureShape.new(name: 'DescribeReplicationInstancesMessage')
    DescribeReplicationInstancesResponse = Shapes::StructureShape.new(name: 'DescribeReplicationInstancesResponse')
    DescribeReplicationSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationSubnetGroupsMessage')
    DescribeReplicationSubnetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationSubnetGroupsResponse')
    DescribeReplicationTableStatisticsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTableStatisticsMessage')
    DescribeReplicationTableStatisticsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTableStatisticsResponse')
    DescribeReplicationTaskAssessmentResultsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTaskAssessmentResultsMessage')
    DescribeReplicationTaskAssessmentResultsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTaskAssessmentResultsResponse')
    DescribeReplicationTaskAssessmentRunsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTaskAssessmentRunsMessage')
    DescribeReplicationTaskAssessmentRunsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTaskAssessmentRunsResponse')
    DescribeReplicationTaskIndividualAssessmentsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTaskIndividualAssessmentsMessage')
    DescribeReplicationTaskIndividualAssessmentsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTaskIndividualAssessmentsResponse')
    DescribeReplicationTasksMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTasksMessage')
    DescribeReplicationTasksResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTasksResponse')
    DescribeReplicationsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationsMessage')
    DescribeReplicationsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationsResponse')
    DescribeSchemasMessage = Shapes::StructureShape.new(name: 'DescribeSchemasMessage')
    DescribeSchemasResponse = Shapes::StructureShape.new(name: 'DescribeSchemasResponse')
    DescribeTableStatisticsMessage = Shapes::StructureShape.new(name: 'DescribeTableStatisticsMessage')
    DescribeTableStatisticsResponse = Shapes::StructureShape.new(name: 'DescribeTableStatisticsResponse')
    DmsSslModeValue = Shapes::StringShape.new(name: 'DmsSslModeValue')
    DmsTransferSettings = Shapes::StructureShape.new(name: 'DmsTransferSettings')
    DocDbDataProviderSettings = Shapes::StructureShape.new(name: 'DocDbDataProviderSettings')
    DocDbSettings = Shapes::StructureShape.new(name: 'DocDbSettings')
    DoubleOptional = Shapes::FloatShape.new(name: 'DoubleOptional')
    DynamoDbSettings = Shapes::StructureShape.new(name: 'DynamoDbSettings')
    ElasticsearchSettings = Shapes::StructureShape.new(name: 'ElasticsearchSettings')
    EncodingTypeValue = Shapes::StringShape.new(name: 'EncodingTypeValue')
    EncryptionModeValue = Shapes::StringShape.new(name: 'EncryptionModeValue')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointList = Shapes::ListShape.new(name: 'EndpointList')
    EndpointSetting = Shapes::StructureShape.new(name: 'EndpointSetting')
    EndpointSettingEnumValues = Shapes::ListShape.new(name: 'EndpointSettingEnumValues')
    EndpointSettingTypeValue = Shapes::StringShape.new(name: 'EndpointSettingTypeValue')
    EndpointSettingsList = Shapes::ListShape.new(name: 'EndpointSettingsList')
    EngineVersion = Shapes::StructureShape.new(name: 'EngineVersion')
    EngineVersionList = Shapes::ListShape.new(name: 'EngineVersionList')
    ErrorDetails = Shapes::UnionShape.new(name: 'ErrorDetails')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategoriesList = Shapes::ListShape.new(name: 'EventCategoriesList')
    EventCategoryGroup = Shapes::StructureShape.new(name: 'EventCategoryGroup')
    EventCategoryGroupList = Shapes::ListShape.new(name: 'EventCategoryGroupList')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventSubscription = Shapes::StructureShape.new(name: 'EventSubscription')
    EventSubscriptionsList = Shapes::ListShape.new(name: 'EventSubscriptionsList')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExcludeTestList = Shapes::ListShape.new(name: 'ExcludeTestList')
    ExportMetadataModelAssessmentMessage = Shapes::StructureShape.new(name: 'ExportMetadataModelAssessmentMessage')
    ExportMetadataModelAssessmentResponse = Shapes::StructureShape.new(name: 'ExportMetadataModelAssessmentResponse')
    ExportMetadataModelAssessmentResultEntry = Shapes::StructureShape.new(name: 'ExportMetadataModelAssessmentResultEntry')
    ExportSqlDetails = Shapes::StructureShape.new(name: 'ExportSqlDetails')
    FailedDependencyFault = Shapes::StructureShape.new(name: 'FailedDependencyFault')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    FleetAdvisorLsaAnalysisResponse = Shapes::StructureShape.new(name: 'FleetAdvisorLsaAnalysisResponse')
    FleetAdvisorLsaAnalysisResponseList = Shapes::ListShape.new(name: 'FleetAdvisorLsaAnalysisResponseList')
    FleetAdvisorSchemaList = Shapes::ListShape.new(name: 'FleetAdvisorSchemaList')
    FleetAdvisorSchemaObjectList = Shapes::ListShape.new(name: 'FleetAdvisorSchemaObjectList')
    FleetAdvisorSchemaObjectResponse = Shapes::StructureShape.new(name: 'FleetAdvisorSchemaObjectResponse')
    GcpMySQLSettings = Shapes::StructureShape.new(name: 'GcpMySQLSettings')
    GetTargetSelectionRulesMessage = Shapes::StructureShape.new(name: 'GetTargetSelectionRulesMessage')
    GetTargetSelectionRulesResponse = Shapes::StructureShape.new(name: 'GetTargetSelectionRulesResponse')
    IBMDb2Settings = Shapes::StructureShape.new(name: 'IBMDb2Settings')
    IbmDb2LuwDataProviderSettings = Shapes::StructureShape.new(name: 'IbmDb2LuwDataProviderSettings')
    IbmDb2zOsDataProviderSettings = Shapes::StructureShape.new(name: 'IbmDb2zOsDataProviderSettings')
    ImportCertificateMessage = Shapes::StructureShape.new(name: 'ImportCertificateMessage')
    ImportCertificateResponse = Shapes::StructureShape.new(name: 'ImportCertificateResponse')
    IncludeTestList = Shapes::ListShape.new(name: 'IncludeTestList')
    IndividualAssessmentNameList = Shapes::ListShape.new(name: 'IndividualAssessmentNameList')
    InstanceProfile = Shapes::StructureShape.new(name: 'InstanceProfile')
    InstanceProfileList = Shapes::ListShape.new(name: 'InstanceProfileList')
    InsufficientResourceCapacityFault = Shapes::StructureShape.new(name: 'InsufficientResourceCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidCertificateFault = Shapes::StructureShape.new(name: 'InvalidCertificateFault')
    InvalidOperationFault = Shapes::StructureShape.new(name: 'InvalidOperationFault')
    InvalidResourceStateFault = Shapes::StructureShape.new(name: 'InvalidResourceStateFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InventoryData = Shapes::StructureShape.new(name: 'InventoryData')
    Iso8601DateTime = Shapes::TimestampShape.new(name: 'Iso8601DateTime', timestampFormat: "iso8601")
    KMSAccessDeniedFault = Shapes::StructureShape.new(name: 'KMSAccessDeniedFault')
    KMSDisabledFault = Shapes::StructureShape.new(name: 'KMSDisabledFault')
    KMSFault = Shapes::StructureShape.new(name: 'KMSFault')
    KMSInvalidStateFault = Shapes::StructureShape.new(name: 'KMSInvalidStateFault')
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault')
    KMSNotFoundFault = Shapes::StructureShape.new(name: 'KMSNotFoundFault')
    KMSThrottlingFault = Shapes::StructureShape.new(name: 'KMSThrottlingFault')
    KafkaSaslMechanism = Shapes::StringShape.new(name: 'KafkaSaslMechanism')
    KafkaSecurityProtocol = Shapes::StringShape.new(name: 'KafkaSecurityProtocol')
    KafkaSettings = Shapes::StructureShape.new(name: 'KafkaSettings')
    KafkaSslEndpointIdentificationAlgorithm = Shapes::StringShape.new(name: 'KafkaSslEndpointIdentificationAlgorithm')
    KerberosAuthenticationSettings = Shapes::StructureShape.new(name: 'KerberosAuthenticationSettings')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KinesisSettings = Shapes::StructureShape.new(name: 'KinesisSettings')
    Limitation = Shapes::StructureShape.new(name: 'Limitation')
    LimitationList = Shapes::ListShape.new(name: 'LimitationList')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongOptional = Shapes::IntegerShape.new(name: 'LongOptional')
    LongVarcharMappingType = Shapes::StringShape.new(name: 'LongVarcharMappingType')
    MariaDbDataProviderSettings = Shapes::StructureShape.new(name: 'MariaDbDataProviderSettings')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MessageFormatValue = Shapes::StringShape.new(name: 'MessageFormatValue')
    MetadataModelProperties = Shapes::UnionShape.new(name: 'MetadataModelProperties')
    MetadataModelReference = Shapes::StructureShape.new(name: 'MetadataModelReference')
    MetadataModelReferenceList = Shapes::ListShape.new(name: 'MetadataModelReferenceList')
    MicrosoftSQLServerSettings = Shapes::StructureShape.new(name: 'MicrosoftSQLServerSettings')
    MicrosoftSqlServerDataProviderSettings = Shapes::StructureShape.new(name: 'MicrosoftSqlServerDataProviderSettings')
    MigrationProject = Shapes::StructureShape.new(name: 'MigrationProject')
    MigrationProjectIdentifier = Shapes::StringShape.new(name: 'MigrationProjectIdentifier')
    MigrationProjectList = Shapes::ListShape.new(name: 'MigrationProjectList')
    MigrationTypeValue = Shapes::StringShape.new(name: 'MigrationTypeValue')
    ModifyConversionConfigurationMessage = Shapes::StructureShape.new(name: 'ModifyConversionConfigurationMessage')
    ModifyConversionConfigurationResponse = Shapes::StructureShape.new(name: 'ModifyConversionConfigurationResponse')
    ModifyDataMigrationMessage = Shapes::StructureShape.new(name: 'ModifyDataMigrationMessage')
    ModifyDataMigrationResponse = Shapes::StructureShape.new(name: 'ModifyDataMigrationResponse')
    ModifyDataProviderMessage = Shapes::StructureShape.new(name: 'ModifyDataProviderMessage')
    ModifyDataProviderResponse = Shapes::StructureShape.new(name: 'ModifyDataProviderResponse')
    ModifyEndpointMessage = Shapes::StructureShape.new(name: 'ModifyEndpointMessage')
    ModifyEndpointResponse = Shapes::StructureShape.new(name: 'ModifyEndpointResponse')
    ModifyEventSubscriptionMessage = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResponse = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionResponse')
    ModifyInstanceProfileMessage = Shapes::StructureShape.new(name: 'ModifyInstanceProfileMessage')
    ModifyInstanceProfileResponse = Shapes::StructureShape.new(name: 'ModifyInstanceProfileResponse')
    ModifyMigrationProjectMessage = Shapes::StructureShape.new(name: 'ModifyMigrationProjectMessage')
    ModifyMigrationProjectResponse = Shapes::StructureShape.new(name: 'ModifyMigrationProjectResponse')
    ModifyReplicationConfigMessage = Shapes::StructureShape.new(name: 'ModifyReplicationConfigMessage')
    ModifyReplicationConfigResponse = Shapes::StructureShape.new(name: 'ModifyReplicationConfigResponse')
    ModifyReplicationInstanceMessage = Shapes::StructureShape.new(name: 'ModifyReplicationInstanceMessage')
    ModifyReplicationInstanceResponse = Shapes::StructureShape.new(name: 'ModifyReplicationInstanceResponse')
    ModifyReplicationSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyReplicationSubnetGroupMessage')
    ModifyReplicationSubnetGroupResponse = Shapes::StructureShape.new(name: 'ModifyReplicationSubnetGroupResponse')
    ModifyReplicationTaskMessage = Shapes::StructureShape.new(name: 'ModifyReplicationTaskMessage')
    ModifyReplicationTaskResponse = Shapes::StructureShape.new(name: 'ModifyReplicationTaskResponse')
    MongoDbDataProviderSettings = Shapes::StructureShape.new(name: 'MongoDbDataProviderSettings')
    MongoDbSettings = Shapes::StructureShape.new(name: 'MongoDbSettings')
    MoveReplicationTaskMessage = Shapes::StructureShape.new(name: 'MoveReplicationTaskMessage')
    MoveReplicationTaskResponse = Shapes::StructureShape.new(name: 'MoveReplicationTaskResponse')
    MySQLAuthenticationMethod = Shapes::StringShape.new(name: 'MySQLAuthenticationMethod')
    MySQLSettings = Shapes::StructureShape.new(name: 'MySQLSettings')
    MySqlDataProviderSettings = Shapes::StructureShape.new(name: 'MySqlDataProviderSettings')
    NeptuneSettings = Shapes::StructureShape.new(name: 'NeptuneSettings')
    NestingLevelValue = Shapes::StringShape.new(name: 'NestingLevelValue')
    OracleAuthenticationMethod = Shapes::StringShape.new(name: 'OracleAuthenticationMethod')
    OracleDataProviderSettings = Shapes::StructureShape.new(name: 'OracleDataProviderSettings')
    OracleSettings = Shapes::StructureShape.new(name: 'OracleSettings')
    OrderableReplicationInstance = Shapes::StructureShape.new(name: 'OrderableReplicationInstance')
    OrderableReplicationInstanceList = Shapes::ListShape.new(name: 'OrderableReplicationInstanceList')
    OriginTypeValue = Shapes::StringShape.new(name: 'OriginTypeValue')
    ParquetVersionValue = Shapes::StringShape.new(name: 'ParquetVersionValue')
    PendingMaintenanceAction = Shapes::StructureShape.new(name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = Shapes::ListShape.new(name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = Shapes::ListShape.new(name: 'PendingMaintenanceActions')
    PluginNameValue = Shapes::StringShape.new(name: 'PluginNameValue')
    PostgreSQLAuthenticationMethod = Shapes::StringShape.new(name: 'PostgreSQLAuthenticationMethod')
    PostgreSQLSettings = Shapes::StructureShape.new(name: 'PostgreSQLSettings')
    PostgreSqlDataProviderSettings = Shapes::StructureShape.new(name: 'PostgreSqlDataProviderSettings')
    PremigrationAssessmentStatus = Shapes::StructureShape.new(name: 'PremigrationAssessmentStatus')
    PremigrationAssessmentStatusList = Shapes::ListShape.new(name: 'PremigrationAssessmentStatusList')
    ProcessedObject = Shapes::StructureShape.new(name: 'ProcessedObject')
    Progress = Shapes::StructureShape.new(name: 'Progress')
    ProvisionData = Shapes::StructureShape.new(name: 'ProvisionData')
    PublicIpAddressList = Shapes::ListShape.new(name: 'PublicIpAddressList')
    RdsConfiguration = Shapes::StructureShape.new(name: 'RdsConfiguration')
    RdsRecommendation = Shapes::StructureShape.new(name: 'RdsRecommendation')
    RdsRequirements = Shapes::StructureShape.new(name: 'RdsRequirements')
    RebootReplicationInstanceMessage = Shapes::StructureShape.new(name: 'RebootReplicationInstanceMessage')
    RebootReplicationInstanceResponse = Shapes::StructureShape.new(name: 'RebootReplicationInstanceResponse')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationData = Shapes::StructureShape.new(name: 'RecommendationData')
    RecommendationList = Shapes::ListShape.new(name: 'RecommendationList')
    RecommendationSettings = Shapes::StructureShape.new(name: 'RecommendationSettings')
    RedisAuthTypeValue = Shapes::StringShape.new(name: 'RedisAuthTypeValue')
    RedisSettings = Shapes::StructureShape.new(name: 'RedisSettings')
    RedshiftDataProviderSettings = Shapes::StructureShape.new(name: 'RedshiftDataProviderSettings')
    RedshiftSettings = Shapes::StructureShape.new(name: 'RedshiftSettings')
    RefreshSchemasMessage = Shapes::StructureShape.new(name: 'RefreshSchemasMessage')
    RefreshSchemasResponse = Shapes::StructureShape.new(name: 'RefreshSchemasResponse')
    RefreshSchemasStatus = Shapes::StructureShape.new(name: 'RefreshSchemasStatus')
    RefreshSchemasStatusTypeValue = Shapes::StringShape.new(name: 'RefreshSchemasStatusTypeValue')
    ReleaseStatusValues = Shapes::StringShape.new(name: 'ReleaseStatusValues')
    ReloadOptionValue = Shapes::StringShape.new(name: 'ReloadOptionValue')
    ReloadReplicationTablesMessage = Shapes::StructureShape.new(name: 'ReloadReplicationTablesMessage')
    ReloadReplicationTablesResponse = Shapes::StructureShape.new(name: 'ReloadReplicationTablesResponse')
    ReloadTablesMessage = Shapes::StructureShape.new(name: 'ReloadTablesMessage')
    ReloadTablesResponse = Shapes::StructureShape.new(name: 'ReloadTablesResponse')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    RemoveTagsFromResourceResponse = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResponse')
    Replication = Shapes::StructureShape.new(name: 'Replication')
    ReplicationConfig = Shapes::StructureShape.new(name: 'ReplicationConfig')
    ReplicationConfigList = Shapes::ListShape.new(name: 'ReplicationConfigList')
    ReplicationEndpointTypeValue = Shapes::StringShape.new(name: 'ReplicationEndpointTypeValue')
    ReplicationInstance = Shapes::StructureShape.new(name: 'ReplicationInstance')
    ReplicationInstanceClass = Shapes::StringShape.new(name: 'ReplicationInstanceClass')
    ReplicationInstanceIpv6AddressList = Shapes::ListShape.new(name: 'ReplicationInstanceIpv6AddressList')
    ReplicationInstanceList = Shapes::ListShape.new(name: 'ReplicationInstanceList')
    ReplicationInstancePrivateIpAddressList = Shapes::ListShape.new(name: 'ReplicationInstancePrivateIpAddressList')
    ReplicationInstancePublicIpAddressList = Shapes::ListShape.new(name: 'ReplicationInstancePublicIpAddressList')
    ReplicationInstanceTaskLog = Shapes::StructureShape.new(name: 'ReplicationInstanceTaskLog')
    ReplicationInstanceTaskLogsList = Shapes::ListShape.new(name: 'ReplicationInstanceTaskLogsList')
    ReplicationList = Shapes::ListShape.new(name: 'ReplicationList')
    ReplicationPendingModifiedValues = Shapes::StructureShape.new(name: 'ReplicationPendingModifiedValues')
    ReplicationStats = Shapes::StructureShape.new(name: 'ReplicationStats')
    ReplicationSubnetGroup = Shapes::StructureShape.new(name: 'ReplicationSubnetGroup')
    ReplicationSubnetGroupDoesNotCoverEnoughAZs = Shapes::StructureShape.new(name: 'ReplicationSubnetGroupDoesNotCoverEnoughAZs')
    ReplicationSubnetGroups = Shapes::ListShape.new(name: 'ReplicationSubnetGroups')
    ReplicationTableStatisticsList = Shapes::ListShape.new(name: 'ReplicationTableStatisticsList')
    ReplicationTask = Shapes::StructureShape.new(name: 'ReplicationTask')
    ReplicationTaskAssessmentResult = Shapes::StructureShape.new(name: 'ReplicationTaskAssessmentResult')
    ReplicationTaskAssessmentResultList = Shapes::ListShape.new(name: 'ReplicationTaskAssessmentResultList')
    ReplicationTaskAssessmentRun = Shapes::StructureShape.new(name: 'ReplicationTaskAssessmentRun')
    ReplicationTaskAssessmentRunList = Shapes::ListShape.new(name: 'ReplicationTaskAssessmentRunList')
    ReplicationTaskAssessmentRunProgress = Shapes::StructureShape.new(name: 'ReplicationTaskAssessmentRunProgress')
    ReplicationTaskAssessmentRunResultStatistic = Shapes::StructureShape.new(name: 'ReplicationTaskAssessmentRunResultStatistic')
    ReplicationTaskIndividualAssessment = Shapes::StructureShape.new(name: 'ReplicationTaskIndividualAssessment')
    ReplicationTaskIndividualAssessmentList = Shapes::ListShape.new(name: 'ReplicationTaskIndividualAssessmentList')
    ReplicationTaskList = Shapes::ListShape.new(name: 'ReplicationTaskList')
    ReplicationTaskStats = Shapes::StructureShape.new(name: 'ReplicationTaskStats')
    ResourceAlreadyExistsFault = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsFault')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault')
    ResourcePendingMaintenanceActions = Shapes::StructureShape.new(name: 'ResourcePendingMaintenanceActions')
    ResourceQuotaExceededFault = Shapes::StructureShape.new(name: 'ResourceQuotaExceededFault')
    RunFleetAdvisorLsaAnalysisResponse = Shapes::StructureShape.new(name: 'RunFleetAdvisorLsaAnalysisResponse')
    S3AccessDeniedFault = Shapes::StructureShape.new(name: 'S3AccessDeniedFault')
    S3ResourceNotFoundFault = Shapes::StructureShape.new(name: 'S3ResourceNotFoundFault')
    S3Settings = Shapes::StructureShape.new(name: 'S3Settings')
    SCApplicationAttributes = Shapes::StructureShape.new(name: 'SCApplicationAttributes')
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault')
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault')
    SafeguardPolicy = Shapes::StringShape.new(name: 'SafeguardPolicy')
    SchemaConversionRequest = Shapes::StructureShape.new(name: 'SchemaConversionRequest')
    SchemaConversionRequestList = Shapes::ListShape.new(name: 'SchemaConversionRequestList')
    SchemaList = Shapes::ListShape.new(name: 'SchemaList')
    SchemaResponse = Shapes::StructureShape.new(name: 'SchemaResponse')
    SchemaShortInfoResponse = Shapes::StructureShape.new(name: 'SchemaShortInfoResponse')
    SecretString = Shapes::StringShape.new(name: 'SecretString')
    ServerShortInfoResponse = Shapes::StructureShape.new(name: 'ServerShortInfoResponse')
    SourceDataSetting = Shapes::StructureShape.new(name: 'SourceDataSetting')
    SourceDataSettings = Shapes::ListShape.new(name: 'SourceDataSettings')
    SourceIdsList = Shapes::ListShape.new(name: 'SourceIdsList')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    SqlServerAuthenticationMethod = Shapes::StringShape.new(name: 'SqlServerAuthenticationMethod')
    SslSecurityProtocolValue = Shapes::StringShape.new(name: 'SslSecurityProtocolValue')
    StartDataMigrationMessage = Shapes::StructureShape.new(name: 'StartDataMigrationMessage')
    StartDataMigrationResponse = Shapes::StructureShape.new(name: 'StartDataMigrationResponse')
    StartExtensionPackAssociationMessage = Shapes::StructureShape.new(name: 'StartExtensionPackAssociationMessage')
    StartExtensionPackAssociationResponse = Shapes::StructureShape.new(name: 'StartExtensionPackAssociationResponse')
    StartMetadataModelAssessmentMessage = Shapes::StructureShape.new(name: 'StartMetadataModelAssessmentMessage')
    StartMetadataModelAssessmentResponse = Shapes::StructureShape.new(name: 'StartMetadataModelAssessmentResponse')
    StartMetadataModelConversionMessage = Shapes::StructureShape.new(name: 'StartMetadataModelConversionMessage')
    StartMetadataModelConversionResponse = Shapes::StructureShape.new(name: 'StartMetadataModelConversionResponse')
    StartMetadataModelCreationMessage = Shapes::StructureShape.new(name: 'StartMetadataModelCreationMessage')
    StartMetadataModelCreationResponse = Shapes::StructureShape.new(name: 'StartMetadataModelCreationResponse')
    StartMetadataModelExportAsScriptMessage = Shapes::StructureShape.new(name: 'StartMetadataModelExportAsScriptMessage')
    StartMetadataModelExportAsScriptResponse = Shapes::StructureShape.new(name: 'StartMetadataModelExportAsScriptResponse')
    StartMetadataModelExportToTargetMessage = Shapes::StructureShape.new(name: 'StartMetadataModelExportToTargetMessage')
    StartMetadataModelExportToTargetResponse = Shapes::StructureShape.new(name: 'StartMetadataModelExportToTargetResponse')
    StartMetadataModelImportMessage = Shapes::StructureShape.new(name: 'StartMetadataModelImportMessage')
    StartMetadataModelImportResponse = Shapes::StructureShape.new(name: 'StartMetadataModelImportResponse')
    StartRecommendationsRequest = Shapes::StructureShape.new(name: 'StartRecommendationsRequest')
    StartRecommendationsRequestEntry = Shapes::StructureShape.new(name: 'StartRecommendationsRequestEntry')
    StartRecommendationsRequestEntryList = Shapes::ListShape.new(name: 'StartRecommendationsRequestEntryList')
    StartReplicationMessage = Shapes::StructureShape.new(name: 'StartReplicationMessage')
    StartReplicationMigrationTypeValue = Shapes::StringShape.new(name: 'StartReplicationMigrationTypeValue')
    StartReplicationResponse = Shapes::StructureShape.new(name: 'StartReplicationResponse')
    StartReplicationTaskAssessmentMessage = Shapes::StructureShape.new(name: 'StartReplicationTaskAssessmentMessage')
    StartReplicationTaskAssessmentResponse = Shapes::StructureShape.new(name: 'StartReplicationTaskAssessmentResponse')
    StartReplicationTaskAssessmentRunMessage = Shapes::StructureShape.new(name: 'StartReplicationTaskAssessmentRunMessage')
    StartReplicationTaskAssessmentRunResponse = Shapes::StructureShape.new(name: 'StartReplicationTaskAssessmentRunResponse')
    StartReplicationTaskMessage = Shapes::StructureShape.new(name: 'StartReplicationTaskMessage')
    StartReplicationTaskResponse = Shapes::StructureShape.new(name: 'StartReplicationTaskResponse')
    StartReplicationTaskTypeValue = Shapes::StringShape.new(name: 'StartReplicationTaskTypeValue')
    StatementProperties = Shapes::StructureShape.new(name: 'StatementProperties')
    StopDataMigrationMessage = Shapes::StructureShape.new(name: 'StopDataMigrationMessage')
    StopDataMigrationResponse = Shapes::StructureShape.new(name: 'StopDataMigrationResponse')
    StopReplicationMessage = Shapes::StructureShape.new(name: 'StopReplicationMessage')
    StopReplicationResponse = Shapes::StructureShape.new(name: 'StopReplicationResponse')
    StopReplicationTaskMessage = Shapes::StructureShape.new(name: 'StopReplicationTaskMessage')
    StopReplicationTaskResponse = Shapes::StructureShape.new(name: 'StopReplicationTaskResponse')
    StorageQuotaExceededFault = Shapes::StructureShape.new(name: 'StorageQuotaExceededFault')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SupportedEndpointType = Shapes::StructureShape.new(name: 'SupportedEndpointType')
    SupportedEndpointTypeList = Shapes::ListShape.new(name: 'SupportedEndpointTypeList')
    SybaseAseDataProviderSettings = Shapes::StructureShape.new(name: 'SybaseAseDataProviderSettings')
    SybaseSettings = Shapes::StructureShape.new(name: 'SybaseSettings')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    TableListToReload = Shapes::ListShape.new(name: 'TableListToReload')
    TablePreparationMode = Shapes::StringShape.new(name: 'TablePreparationMode')
    TableStatistics = Shapes::StructureShape.new(name: 'TableStatistics')
    TableStatisticsList = Shapes::ListShape.new(name: 'TableStatisticsList')
    TableToReload = Shapes::StructureShape.new(name: 'TableToReload')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TargetDataSetting = Shapes::StructureShape.new(name: 'TargetDataSetting')
    TargetDataSettings = Shapes::ListShape.new(name: 'TargetDataSettings')
    TargetDbType = Shapes::StringShape.new(name: 'TargetDbType')
    TestConnectionMessage = Shapes::StructureShape.new(name: 'TestConnectionMessage')
    TestConnectionResponse = Shapes::StructureShape.new(name: 'TestConnectionResponse')
    TimestreamSettings = Shapes::StructureShape.new(name: 'TimestreamSettings')
    TlogAccessMode = Shapes::StringShape.new(name: 'TlogAccessMode')
    UpdateSubscriptionsToEventBridgeMessage = Shapes::StructureShape.new(name: 'UpdateSubscriptionsToEventBridgeMessage')
    UpdateSubscriptionsToEventBridgeResponse = Shapes::StructureShape.new(name: 'UpdateSubscriptionsToEventBridgeResponse')
    UpgradeDependencyFailureFault = Shapes::StructureShape.new(name: 'UpgradeDependencyFailureFault')
    VersionStatus = Shapes::StringShape.new(name: 'VersionStatus')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')

    AccessDeniedFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedFault.struct_class = Types::AccessDeniedFault

    AccountQuota.add_member(:account_quota_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountQuotaName"))
    AccountQuota.add_member(:used, Shapes::ShapeRef.new(shape: Long, location_name: "Used"))
    AccountQuota.add_member(:max, Shapes::ShapeRef.new(shape: Long, location_name: "Max"))
    AccountQuota.struct_class = Types::AccountQuota

    AccountQuotaList.member = Shapes::ShapeRef.new(shape: AccountQuota)

    AddTagsToResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    AddTagsToResourceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceMessage.struct_class = Types::AddTagsToResourceMessage

    AddTagsToResourceResponse.struct_class = Types::AddTagsToResourceResponse

    ApplyPendingMaintenanceActionMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplyAction"))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptInType"))
    ApplyPendingMaintenanceActionMessage.struct_class = Types::ApplyPendingMaintenanceActionMessage

    ApplyPendingMaintenanceActionResponse.add_member(:resource_pending_maintenance_actions, Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResponse.struct_class = Types::ApplyPendingMaintenanceActionResponse

    ArnList.member = Shapes::ShapeRef.new(shape: String)

    AssessmentReportTypesList.member = Shapes::ShapeRef.new(shape: AssessmentReportType)

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZonesList.member = Shapes::ShapeRef.new(shape: String)

    AvailableUpgradesList.member = Shapes::ShapeRef.new(shape: String)

    BatchStartRecommendationsErrorEntry.add_member(:database_id, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    BatchStartRecommendationsErrorEntry.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchStartRecommendationsErrorEntry.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    BatchStartRecommendationsErrorEntry.struct_class = Types::BatchStartRecommendationsErrorEntry

    BatchStartRecommendationsErrorEntryList.member = Shapes::ShapeRef.new(shape: BatchStartRecommendationsErrorEntry)

    BatchStartRecommendationsRequest.add_member(:data, Shapes::ShapeRef.new(shape: StartRecommendationsRequestEntryList, location_name: "Data"))
    BatchStartRecommendationsRequest.struct_class = Types::BatchStartRecommendationsRequest

    BatchStartRecommendationsResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchStartRecommendationsErrorEntryList, location_name: "ErrorEntries"))
    BatchStartRecommendationsResponse.struct_class = Types::BatchStartRecommendationsResponse

    CancelMetadataModelConversionMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    CancelMetadataModelConversionMessage.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequestIdentifier"))
    CancelMetadataModelConversionMessage.struct_class = Types::CancelMetadataModelConversionMessage

    CancelMetadataModelConversionResponse.add_member(:request, Shapes::ShapeRef.new(shape: SchemaConversionRequest, location_name: "Request"))
    CancelMetadataModelConversionResponse.struct_class = Types::CancelMetadataModelConversionResponse

    CancelMetadataModelCreationMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    CancelMetadataModelCreationMessage.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequestIdentifier"))
    CancelMetadataModelCreationMessage.struct_class = Types::CancelMetadataModelCreationMessage

    CancelMetadataModelCreationResponse.add_member(:request, Shapes::ShapeRef.new(shape: SchemaConversionRequest, location_name: "Request"))
    CancelMetadataModelCreationResponse.struct_class = Types::CancelMetadataModelCreationResponse

    CancelReplicationTaskAssessmentRunMessage.add_member(:replication_task_assessment_run_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskAssessmentRunArn"))
    CancelReplicationTaskAssessmentRunMessage.struct_class = Types::CancelReplicationTaskAssessmentRunMessage

    CancelReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun, location_name: "ReplicationTaskAssessmentRun"))
    CancelReplicationTaskAssessmentRunResponse.struct_class = Types::CancelReplicationTaskAssessmentRunResponse

    Certificate.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_creation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CertificateCreationDate"))
    Certificate.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: String, location_name: "CertificatePem"))
    Certificate.add_member(:certificate_wallet, Shapes::ShapeRef.new(shape: CertificateWallet, location_name: "CertificateWallet"))
    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Certificate.add_member(:certificate_owner, Shapes::ShapeRef.new(shape: String, location_name: "CertificateOwner"))
    Certificate.add_member(:valid_from_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidFromDate"))
    Certificate.add_member(:valid_to_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidToDate"))
    Certificate.add_member(:signing_algorithm, Shapes::ShapeRef.new(shape: String, location_name: "SigningAlgorithm"))
    Certificate.add_member(:key_length, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "KeyLength"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate)

    CollectorHealthCheck.add_member(:collector_status, Shapes::ShapeRef.new(shape: CollectorStatus, location_name: "CollectorStatus"))
    CollectorHealthCheck.add_member(:local_collector_s3_access, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "LocalCollectorS3Access"))
    CollectorHealthCheck.add_member(:web_collector_s3_access, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WebCollectorS3Access"))
    CollectorHealthCheck.add_member(:web_collector_granted_role_based_access, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WebCollectorGrantedRoleBasedAccess"))
    CollectorHealthCheck.struct_class = Types::CollectorHealthCheck

    CollectorNotFoundFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    CollectorNotFoundFault.struct_class = Types::CollectorNotFoundFault

    CollectorResponse.add_member(:collector_referenced_id, Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId"))
    CollectorResponse.add_member(:collector_name, Shapes::ShapeRef.new(shape: String, location_name: "CollectorName"))
    CollectorResponse.add_member(:collector_version, Shapes::ShapeRef.new(shape: String, location_name: "CollectorVersion"))
    CollectorResponse.add_member(:version_status, Shapes::ShapeRef.new(shape: VersionStatus, location_name: "VersionStatus"))
    CollectorResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CollectorResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    CollectorResponse.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CollectorResponse.add_member(:collector_health_check, Shapes::ShapeRef.new(shape: CollectorHealthCheck, location_name: "CollectorHealthCheck"))
    CollectorResponse.add_member(:last_data_received, Shapes::ShapeRef.new(shape: String, location_name: "LastDataReceived"))
    CollectorResponse.add_member(:registered_date, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredDate"))
    CollectorResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: String, location_name: "CreatedDate"))
    CollectorResponse.add_member(:modified_date, Shapes::ShapeRef.new(shape: String, location_name: "ModifiedDate"))
    CollectorResponse.add_member(:inventory_data, Shapes::ShapeRef.new(shape: InventoryData, location_name: "InventoryData"))
    CollectorResponse.struct_class = Types::CollectorResponse

    CollectorResponses.member = Shapes::ShapeRef.new(shape: CollectorResponse)

    CollectorShortInfoResponse.add_member(:collector_referenced_id, Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId"))
    CollectorShortInfoResponse.add_member(:collector_name, Shapes::ShapeRef.new(shape: String, location_name: "CollectorName"))
    CollectorShortInfoResponse.struct_class = Types::CollectorShortInfoResponse

    CollectorsList.member = Shapes::ShapeRef.new(shape: CollectorShortInfoResponse)

    ComputeConfig.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ComputeConfig.add_member(:dns_name_servers, Shapes::ShapeRef.new(shape: String, location_name: "DnsNameServers"))
    ComputeConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ComputeConfig.add_member(:max_capacity_units, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxCapacityUnits"))
    ComputeConfig.add_member(:min_capacity_units, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinCapacityUnits"))
    ComputeConfig.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ComputeConfig.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ComputeConfig.add_member(:replication_subnet_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupId"))
    ComputeConfig.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    ComputeConfig.struct_class = Types::ComputeConfig

    Connection.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    Connection.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    Connection.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Connection.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    Connection.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    Connection.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    Connection.struct_class = Types::Connection

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateDataMigrationMessage.add_member(:data_migration_name, Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationName"))
    CreateDataMigrationMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MigrationProjectIdentifier"))
    CreateDataMigrationMessage.add_member(:data_migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, required: true, location_name: "DataMigrationType"))
    CreateDataMigrationMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceAccessRoleArn"))
    CreateDataMigrationMessage.add_member(:enable_cloudwatch_logs, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCloudwatchLogs"))
    CreateDataMigrationMessage.add_member(:source_data_settings, Shapes::ShapeRef.new(shape: SourceDataSettings, location_name: "SourceDataSettings"))
    CreateDataMigrationMessage.add_member(:target_data_settings, Shapes::ShapeRef.new(shape: TargetDataSettings, location_name: "TargetDataSettings"))
    CreateDataMigrationMessage.add_member(:number_of_jobs, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfJobs"))
    CreateDataMigrationMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataMigrationMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: SecretString, location_name: "SelectionRules"))
    CreateDataMigrationMessage.struct_class = Types::CreateDataMigrationMessage

    CreateDataMigrationResponse.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    CreateDataMigrationResponse.struct_class = Types::CreateDataMigrationResponse

    CreateDataProviderMessage.add_member(:data_provider_name, Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    CreateDataProviderMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateDataProviderMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDataProviderMessage.add_member(:virtual, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Virtual"))
    CreateDataProviderMessage.add_member(:settings, Shapes::ShapeRef.new(shape: DataProviderSettings, required: true, location_name: "Settings"))
    CreateDataProviderMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataProviderMessage.struct_class = Types::CreateDataProviderMessage

    CreateDataProviderResponse.add_member(:data_provider, Shapes::ShapeRef.new(shape: DataProvider, location_name: "DataProvider"))
    CreateDataProviderResponse.struct_class = Types::CreateDataProviderResponse

    CreateEndpointMessage.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointIdentifier"))
    CreateEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, required: true, location_name: "EndpointType"))
    CreateEndpointMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineName"))
    CreateEndpointMessage.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    CreateEndpointMessage.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    CreateEndpointMessage.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    CreateEndpointMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateEndpointMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateEndpointMessage.add_member(:extra_connection_attributes, Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    CreateEndpointMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateEndpointMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointMessage.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    CreateEndpointMessage.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    CreateEndpointMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CreateEndpointMessage.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    CreateEndpointMessage.add_member(:dynamo_db_settings, Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    CreateEndpointMessage.add_member(:s3_settings, Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    CreateEndpointMessage.add_member(:dms_transfer_settings, Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    CreateEndpointMessage.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    CreateEndpointMessage.add_member(:kinesis_settings, Shapes::ShapeRef.new(shape: KinesisSettings, location_name: "KinesisSettings"))
    CreateEndpointMessage.add_member(:kafka_settings, Shapes::ShapeRef.new(shape: KafkaSettings, location_name: "KafkaSettings"))
    CreateEndpointMessage.add_member(:elasticsearch_settings, Shapes::ShapeRef.new(shape: ElasticsearchSettings, location_name: "ElasticsearchSettings"))
    CreateEndpointMessage.add_member(:neptune_settings, Shapes::ShapeRef.new(shape: NeptuneSettings, location_name: "NeptuneSettings"))
    CreateEndpointMessage.add_member(:redshift_settings, Shapes::ShapeRef.new(shape: RedshiftSettings, location_name: "RedshiftSettings"))
    CreateEndpointMessage.add_member(:postgre_sql_settings, Shapes::ShapeRef.new(shape: PostgreSQLSettings, location_name: "PostgreSQLSettings"))
    CreateEndpointMessage.add_member(:my_sql_settings, Shapes::ShapeRef.new(shape: MySQLSettings, location_name: "MySQLSettings"))
    CreateEndpointMessage.add_member(:oracle_settings, Shapes::ShapeRef.new(shape: OracleSettings, location_name: "OracleSettings"))
    CreateEndpointMessage.add_member(:sybase_settings, Shapes::ShapeRef.new(shape: SybaseSettings, location_name: "SybaseSettings"))
    CreateEndpointMessage.add_member(:microsoft_sql_server_settings, Shapes::ShapeRef.new(shape: MicrosoftSQLServerSettings, location_name: "MicrosoftSQLServerSettings"))
    CreateEndpointMessage.add_member(:ibm_db_2_settings, Shapes::ShapeRef.new(shape: IBMDb2Settings, location_name: "IBMDb2Settings"))
    CreateEndpointMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateEndpointMessage.add_member(:doc_db_settings, Shapes::ShapeRef.new(shape: DocDbSettings, location_name: "DocDbSettings"))
    CreateEndpointMessage.add_member(:redis_settings, Shapes::ShapeRef.new(shape: RedisSettings, location_name: "RedisSettings"))
    CreateEndpointMessage.add_member(:gcp_my_sql_settings, Shapes::ShapeRef.new(shape: GcpMySQLSettings, location_name: "GcpMySQLSettings"))
    CreateEndpointMessage.add_member(:timestream_settings, Shapes::ShapeRef.new(shape: TimestreamSettings, location_name: "TimestreamSettings"))
    CreateEndpointMessage.struct_class = Types::CreateEndpointMessage

    CreateEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    CreateEndpointResponse.struct_class = Types::CreateEndpointResponse

    CreateEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnsTopicArn"))
    CreateEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventSubscriptionMessage.struct_class = Types::CreateEventSubscriptionMessage

    CreateEventSubscriptionResponse.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    CreateEventSubscriptionResponse.struct_class = Types::CreateEventSubscriptionResponse

    CreateFleetAdvisorCollectorRequest.add_member(:collector_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CollectorName"))
    CreateFleetAdvisorCollectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateFleetAdvisorCollectorRequest.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceAccessRoleArn"))
    CreateFleetAdvisorCollectorRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketName"))
    CreateFleetAdvisorCollectorRequest.struct_class = Types::CreateFleetAdvisorCollectorRequest

    CreateFleetAdvisorCollectorResponse.add_member(:collector_referenced_id, Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId"))
    CreateFleetAdvisorCollectorResponse.add_member(:collector_name, Shapes::ShapeRef.new(shape: String, location_name: "CollectorName"))
    CreateFleetAdvisorCollectorResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateFleetAdvisorCollectorResponse.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CreateFleetAdvisorCollectorResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    CreateFleetAdvisorCollectorResponse.struct_class = Types::CreateFleetAdvisorCollectorResponse

    CreateInstanceProfileMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateInstanceProfileMessage.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    CreateInstanceProfileMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateInstanceProfileMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateInstanceProfileMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateInstanceProfileMessage.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    CreateInstanceProfileMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateInstanceProfileMessage.add_member(:subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupIdentifier"))
    CreateInstanceProfileMessage.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroups"))
    CreateInstanceProfileMessage.struct_class = Types::CreateInstanceProfileMessage

    CreateInstanceProfileResponse.add_member(:instance_profile, Shapes::ShapeRef.new(shape: InstanceProfile, location_name: "InstanceProfile"))
    CreateInstanceProfileResponse.struct_class = Types::CreateInstanceProfileResponse

    CreateMigrationProjectMessage.add_member(:migration_project_name, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectName"))
    CreateMigrationProjectMessage.add_member(:source_data_provider_descriptors, Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, required: true, location_name: "SourceDataProviderDescriptors"))
    CreateMigrationProjectMessage.add_member(:target_data_provider_descriptors, Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, required: true, location_name: "TargetDataProviderDescriptors"))
    CreateMigrationProjectMessage.add_member(:instance_profile_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceProfileIdentifier"))
    CreateMigrationProjectMessage.add_member(:transformation_rules, Shapes::ShapeRef.new(shape: String, location_name: "TransformationRules"))
    CreateMigrationProjectMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateMigrationProjectMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMigrationProjectMessage.add_member(:schema_conversion_application_attributes, Shapes::ShapeRef.new(shape: SCApplicationAttributes, location_name: "SchemaConversionApplicationAttributes"))
    CreateMigrationProjectMessage.struct_class = Types::CreateMigrationProjectMessage

    CreateMigrationProjectResponse.add_member(:migration_project, Shapes::ShapeRef.new(shape: MigrationProject, location_name: "MigrationProject"))
    CreateMigrationProjectResponse.struct_class = Types::CreateMigrationProjectResponse

    CreateReplicationConfigMessage.add_member(:replication_config_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigIdentifier"))
    CreateReplicationConfigMessage.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEndpointArn"))
    CreateReplicationConfigMessage.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetEndpointArn"))
    CreateReplicationConfigMessage.add_member(:compute_config, Shapes::ShapeRef.new(shape: ComputeConfig, required: true, location_name: "ComputeConfig"))
    CreateReplicationConfigMessage.add_member(:replication_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, required: true, location_name: "ReplicationType"))
    CreateReplicationConfigMessage.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TableMappings"))
    CreateReplicationConfigMessage.add_member(:replication_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSettings"))
    CreateReplicationConfigMessage.add_member(:supplemental_settings, Shapes::ShapeRef.new(shape: String, location_name: "SupplementalSettings"))
    CreateReplicationConfigMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateReplicationConfigMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationConfigMessage.struct_class = Types::CreateReplicationConfigMessage

    CreateReplicationConfigResponse.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    CreateReplicationConfigResponse.struct_class = Types::CreateReplicationConfigResponse

    CreateReplicationInstanceMessage.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceIdentifier"))
    CreateReplicationInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateReplicationInstanceMessage.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: ReplicationInstanceClass, required: true, location_name: "ReplicationInstanceClass"))
    CreateReplicationInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateReplicationInstanceMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateReplicationInstanceMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier"))
    CreateReplicationInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateReplicationInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateReplicationInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateReplicationInstanceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationInstanceMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateReplicationInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateReplicationInstanceMessage.add_member(:dns_name_servers, Shapes::ShapeRef.new(shape: String, location_name: "DnsNameServers"))
    CreateReplicationInstanceMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateReplicationInstanceMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateReplicationInstanceMessage.add_member(:kerberos_authentication_settings, Shapes::ShapeRef.new(shape: KerberosAuthenticationSettings, location_name: "KerberosAuthenticationSettings"))
    CreateReplicationInstanceMessage.struct_class = Types::CreateReplicationInstanceMessage

    CreateReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    CreateReplicationInstanceResponse.struct_class = Types::CreateReplicationInstanceResponse

    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupIdentifier"))
    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupDescription"))
    CreateReplicationSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateReplicationSubnetGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationSubnetGroupMessage.struct_class = Types::CreateReplicationSubnetGroupMessage

    CreateReplicationSubnetGroupResponse.add_member(:replication_subnet_group, Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    CreateReplicationSubnetGroupResponse.struct_class = Types::CreateReplicationSubnetGroupResponse

    CreateReplicationTaskMessage.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskIdentifier"))
    CreateReplicationTaskMessage.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEndpointArn"))
    CreateReplicationTaskMessage.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetEndpointArn"))
    CreateReplicationTaskMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    CreateReplicationTaskMessage.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, required: true, location_name: "MigrationType"))
    CreateReplicationTaskMessage.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TableMappings"))
    CreateReplicationTaskMessage.add_member(:replication_task_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    CreateReplicationTaskMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    CreateReplicationTaskMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    CreateReplicationTaskMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    CreateReplicationTaskMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationTaskMessage.add_member(:task_data, Shapes::ShapeRef.new(shape: String, location_name: "TaskData"))
    CreateReplicationTaskMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateReplicationTaskMessage.struct_class = Types::CreateReplicationTaskMessage

    CreateReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    CreateReplicationTaskResponse.struct_class = Types::CreateReplicationTaskResponse

    DataMigration.add_member(:data_migration_name, Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationName"))
    DataMigration.add_member(:data_migration_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationArn"))
    DataMigration.add_member(:data_migration_create_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataMigrationCreateTime"))
    DataMigration.add_member(:data_migration_start_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataMigrationStartTime"))
    DataMigration.add_member(:data_migration_end_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataMigrationEndTime"))
    DataMigration.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    DataMigration.add_member(:migration_project_arn, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectArn"))
    DataMigration.add_member(:data_migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "DataMigrationType"))
    DataMigration.add_member(:data_migration_settings, Shapes::ShapeRef.new(shape: DataMigrationSettings, location_name: "DataMigrationSettings"))
    DataMigration.add_member(:source_data_settings, Shapes::ShapeRef.new(shape: SourceDataSettings, location_name: "SourceDataSettings"))
    DataMigration.add_member(:target_data_settings, Shapes::ShapeRef.new(shape: TargetDataSettings, location_name: "TargetDataSettings"))
    DataMigration.add_member(:data_migration_statistics, Shapes::ShapeRef.new(shape: DataMigrationStatistics, location_name: "DataMigrationStatistics"))
    DataMigration.add_member(:data_migration_status, Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationStatus"))
    DataMigration.add_member(:public_ip_addresses, Shapes::ShapeRef.new(shape: PublicIpAddressList, location_name: "PublicIpAddresses"))
    DataMigration.add_member(:data_migration_cidr_blocks, Shapes::ShapeRef.new(shape: DataMigrationCidrBlock, location_name: "DataMigrationCidrBlocks"))
    DataMigration.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    DataMigration.add_member(:stop_reason, Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    DataMigration.struct_class = Types::DataMigration

    DataMigrationCidrBlock.member = Shapes::ShapeRef.new(shape: String)

    DataMigrationSettings.add_member(:number_of_jobs, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfJobs"))
    DataMigrationSettings.add_member(:cloudwatch_logs_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CloudwatchLogsEnabled"))
    DataMigrationSettings.add_member(:selection_rules, Shapes::ShapeRef.new(shape: SecretString, location_name: "SelectionRules"))
    DataMigrationSettings.struct_class = Types::DataMigrationSettings

    DataMigrationStatistics.add_member(:tables_loaded, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded"))
    DataMigrationStatistics.add_member(:elapsed_time_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis"))
    DataMigrationStatistics.add_member(:tables_loading, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading"))
    DataMigrationStatistics.add_member(:full_load_percentage, Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadPercentage"))
    DataMigrationStatistics.add_member(:cdc_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "CDCLatency"))
    DataMigrationStatistics.add_member(:tables_queued, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued"))
    DataMigrationStatistics.add_member(:tables_errored, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored"))
    DataMigrationStatistics.add_member(:start_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartTime"))
    DataMigrationStatistics.add_member(:stop_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StopTime"))
    DataMigrationStatistics.struct_class = Types::DataMigrationStatistics

    DataMigrations.member = Shapes::ShapeRef.new(shape: DataMigration)

    DataProvider.add_member(:data_provider_name, Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    DataProvider.add_member(:data_provider_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataProviderArn"))
    DataProvider.add_member(:data_provider_creation_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataProviderCreationTime"))
    DataProvider.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DataProvider.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DataProvider.add_member(:virtual, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Virtual"))
    DataProvider.add_member(:settings, Shapes::ShapeRef.new(shape: DataProviderSettings, location_name: "Settings"))
    DataProvider.struct_class = Types::DataProvider

    DataProviderDescriptor.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    DataProviderDescriptor.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    DataProviderDescriptor.add_member(:data_provider_name, Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    DataProviderDescriptor.add_member(:data_provider_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataProviderArn"))
    DataProviderDescriptor.struct_class = Types::DataProviderDescriptor

    DataProviderDescriptorDefinition.add_member(:data_provider_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataProviderIdentifier"))
    DataProviderDescriptorDefinition.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    DataProviderDescriptorDefinition.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    DataProviderDescriptorDefinition.struct_class = Types::DataProviderDescriptorDefinition

    DataProviderDescriptorDefinitionList.member = Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinition)

    DataProviderDescriptorList.member = Shapes::ShapeRef.new(shape: DataProviderDescriptor)

    DataProviderList.member = Shapes::ShapeRef.new(shape: DataProvider)

    DataProviderSettings.add_member(:redshift_settings, Shapes::ShapeRef.new(shape: RedshiftDataProviderSettings, location_name: "RedshiftSettings"))
    DataProviderSettings.add_member(:postgre_sql_settings, Shapes::ShapeRef.new(shape: PostgreSqlDataProviderSettings, location_name: "PostgreSqlSettings"))
    DataProviderSettings.add_member(:my_sql_settings, Shapes::ShapeRef.new(shape: MySqlDataProviderSettings, location_name: "MySqlSettings"))
    DataProviderSettings.add_member(:oracle_settings, Shapes::ShapeRef.new(shape: OracleDataProviderSettings, location_name: "OracleSettings"))
    DataProviderSettings.add_member(:sybase_ase_settings, Shapes::ShapeRef.new(shape: SybaseAseDataProviderSettings, location_name: "SybaseAseSettings"))
    DataProviderSettings.add_member(:microsoft_sql_server_settings, Shapes::ShapeRef.new(shape: MicrosoftSqlServerDataProviderSettings, location_name: "MicrosoftSqlServerSettings"))
    DataProviderSettings.add_member(:doc_db_settings, Shapes::ShapeRef.new(shape: DocDbDataProviderSettings, location_name: "DocDbSettings"))
    DataProviderSettings.add_member(:maria_db_settings, Shapes::ShapeRef.new(shape: MariaDbDataProviderSettings, location_name: "MariaDbSettings"))
    DataProviderSettings.add_member(:ibm_db_2_luw_settings, Shapes::ShapeRef.new(shape: IbmDb2LuwDataProviderSettings, location_name: "IbmDb2LuwSettings"))
    DataProviderSettings.add_member(:ibm_db_2z_os_settings, Shapes::ShapeRef.new(shape: IbmDb2zOsDataProviderSettings, location_name: "IbmDb2zOsSettings"))
    DataProviderSettings.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbDataProviderSettings, location_name: "MongoDbSettings"))
    DataProviderSettings.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataProviderSettings.add_member_subclass(:redshift_settings, Types::DataProviderSettings::RedshiftSettings)
    DataProviderSettings.add_member_subclass(:postgre_sql_settings, Types::DataProviderSettings::PostgreSqlSettings)
    DataProviderSettings.add_member_subclass(:my_sql_settings, Types::DataProviderSettings::MySqlSettings)
    DataProviderSettings.add_member_subclass(:oracle_settings, Types::DataProviderSettings::OracleSettings)
    DataProviderSettings.add_member_subclass(:sybase_ase_settings, Types::DataProviderSettings::SybaseAseSettings)
    DataProviderSettings.add_member_subclass(:microsoft_sql_server_settings, Types::DataProviderSettings::MicrosoftSqlServerSettings)
    DataProviderSettings.add_member_subclass(:doc_db_settings, Types::DataProviderSettings::DocDbSettings)
    DataProviderSettings.add_member_subclass(:maria_db_settings, Types::DataProviderSettings::MariaDbSettings)
    DataProviderSettings.add_member_subclass(:ibm_db_2_luw_settings, Types::DataProviderSettings::IbmDb2LuwSettings)
    DataProviderSettings.add_member_subclass(:ibm_db_2z_os_settings, Types::DataProviderSettings::IbmDb2zOsSettings)
    DataProviderSettings.add_member_subclass(:mongo_db_settings, Types::DataProviderSettings::MongoDbSettings)
    DataProviderSettings.add_member_subclass(:unknown, Types::DataProviderSettings::Unknown)
    DataProviderSettings.struct_class = Types::DataProviderSettings

    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine_edition, Shapes::ShapeRef.new(shape: String, location_name: "EngineEdition"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:service_pack, Shapes::ShapeRef.new(shape: String, location_name: "ServicePack"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:support_level, Shapes::ShapeRef.new(shape: String, location_name: "SupportLevel"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:os_architecture, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "OsArchitecture"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:tooltip, Shapes::ShapeRef.new(shape: String, location_name: "Tooltip"))
    DatabaseInstanceSoftwareDetailsResponse.struct_class = Types::DatabaseInstanceSoftwareDetailsResponse

    DatabaseList.member = Shapes::ShapeRef.new(shape: DatabaseResponse)

    DatabaseResponse.add_member(:database_id, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    DatabaseResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DatabaseResponse.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    DatabaseResponse.add_member(:number_of_schemas, Shapes::ShapeRef.new(shape: LongOptional, location_name: "NumberOfSchemas"))
    DatabaseResponse.add_member(:server, Shapes::ShapeRef.new(shape: ServerShortInfoResponse, location_name: "Server"))
    DatabaseResponse.add_member(:software_details, Shapes::ShapeRef.new(shape: DatabaseInstanceSoftwareDetailsResponse, location_name: "SoftwareDetails"))
    DatabaseResponse.add_member(:collectors, Shapes::ShapeRef.new(shape: CollectorsList, location_name: "Collectors"))
    DatabaseResponse.struct_class = Types::DatabaseResponse

    DatabaseShortInfoResponse.add_member(:database_id, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    DatabaseShortInfoResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DatabaseShortInfoResponse.add_member(:database_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseIpAddress"))
    DatabaseShortInfoResponse.add_member(:database_engine, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseEngine"))
    DatabaseShortInfoResponse.struct_class = Types::DatabaseShortInfoResponse

    DefaultErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DefaultErrorDetails.struct_class = Types::DefaultErrorDetails

    DeleteCertificateMessage.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CertificateArn"))
    DeleteCertificateMessage.struct_class = Types::DeleteCertificateMessage

    DeleteCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    DeleteCertificateResponse.struct_class = Types::DeleteCertificateResponse

    DeleteCollectorRequest.add_member(:collector_referenced_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CollectorReferencedId"))
    DeleteCollectorRequest.struct_class = Types::DeleteCollectorRequest

    DeleteConnectionMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DeleteConnectionMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    DeleteConnectionMessage.struct_class = Types::DeleteConnectionMessage

    DeleteConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteDataMigrationMessage.add_member(:data_migration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataMigrationIdentifier"))
    DeleteDataMigrationMessage.struct_class = Types::DeleteDataMigrationMessage

    DeleteDataMigrationResponse.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    DeleteDataMigrationResponse.struct_class = Types::DeleteDataMigrationResponse

    DeleteDataProviderMessage.add_member(:data_provider_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataProviderIdentifier"))
    DeleteDataProviderMessage.struct_class = Types::DeleteDataProviderMessage

    DeleteDataProviderResponse.add_member(:data_provider, Shapes::ShapeRef.new(shape: DataProvider, location_name: "DataProvider"))
    DeleteDataProviderResponse.struct_class = Types::DeleteDataProviderResponse

    DeleteEndpointMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DeleteEndpointMessage.struct_class = Types::DeleteEndpointMessage

    DeleteEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    DeleteEndpointResponse.struct_class = Types::DeleteEndpointResponse

    DeleteEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    DeleteEventSubscriptionMessage.struct_class = Types::DeleteEventSubscriptionMessage

    DeleteEventSubscriptionResponse.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    DeleteEventSubscriptionResponse.struct_class = Types::DeleteEventSubscriptionResponse

    DeleteFleetAdvisorDatabasesRequest.add_member(:database_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "DatabaseIds"))
    DeleteFleetAdvisorDatabasesRequest.struct_class = Types::DeleteFleetAdvisorDatabasesRequest

    DeleteFleetAdvisorDatabasesResponse.add_member(:database_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "DatabaseIds"))
    DeleteFleetAdvisorDatabasesResponse.struct_class = Types::DeleteFleetAdvisorDatabasesResponse

    DeleteInstanceProfileMessage.add_member(:instance_profile_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceProfileIdentifier"))
    DeleteInstanceProfileMessage.struct_class = Types::DeleteInstanceProfileMessage

    DeleteInstanceProfileResponse.add_member(:instance_profile, Shapes::ShapeRef.new(shape: InstanceProfile, location_name: "InstanceProfile"))
    DeleteInstanceProfileResponse.struct_class = Types::DeleteInstanceProfileResponse

    DeleteMigrationProjectMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MigrationProjectIdentifier"))
    DeleteMigrationProjectMessage.struct_class = Types::DeleteMigrationProjectMessage

    DeleteMigrationProjectResponse.add_member(:migration_project, Shapes::ShapeRef.new(shape: MigrationProject, location_name: "MigrationProject"))
    DeleteMigrationProjectResponse.struct_class = Types::DeleteMigrationProjectResponse

    DeleteReplicationConfigMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigArn"))
    DeleteReplicationConfigMessage.struct_class = Types::DeleteReplicationConfigMessage

    DeleteReplicationConfigResponse.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    DeleteReplicationConfigResponse.struct_class = Types::DeleteReplicationConfigResponse

    DeleteReplicationInstanceMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    DeleteReplicationInstanceMessage.struct_class = Types::DeleteReplicationInstanceMessage

    DeleteReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    DeleteReplicationInstanceResponse.struct_class = Types::DeleteReplicationInstanceResponse

    DeleteReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupIdentifier"))
    DeleteReplicationSubnetGroupMessage.struct_class = Types::DeleteReplicationSubnetGroupMessage

    DeleteReplicationSubnetGroupResponse.struct_class = Types::DeleteReplicationSubnetGroupResponse

    DeleteReplicationTaskAssessmentRunMessage.add_member(:replication_task_assessment_run_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskAssessmentRunArn"))
    DeleteReplicationTaskAssessmentRunMessage.struct_class = Types::DeleteReplicationTaskAssessmentRunMessage

    DeleteReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun, location_name: "ReplicationTaskAssessmentRun"))
    DeleteReplicationTaskAssessmentRunResponse.struct_class = Types::DeleteReplicationTaskAssessmentRunResponse

    DeleteReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    DeleteReplicationTaskMessage.struct_class = Types::DeleteReplicationTaskMessage

    DeleteReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    DeleteReplicationTaskResponse.struct_class = Types::DeleteReplicationTaskResponse

    DescribeAccountAttributesMessage.struct_class = Types::DescribeAccountAttributesMessage

    DescribeAccountAttributesResponse.add_member(:account_quotas, Shapes::ShapeRef.new(shape: AccountQuotaList, location_name: "AccountQuotas"))
    DescribeAccountAttributesResponse.add_member(:unique_account_identifier, Shapes::ShapeRef.new(shape: String, location_name: "UniqueAccountIdentifier"))
    DescribeAccountAttributesResponse.struct_class = Types::DescribeAccountAttributesResponse

    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:source_engine_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceEngineName"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:target_engine_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetEngineName"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeApplicableIndividualAssessmentsMessage.struct_class = Types::DescribeApplicableIndividualAssessmentsMessage

    DescribeApplicableIndividualAssessmentsResponse.add_member(:individual_assessment_names, Shapes::ShapeRef.new(shape: IndividualAssessmentNameList, location_name: "IndividualAssessmentNames"))
    DescribeApplicableIndividualAssessmentsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeApplicableIndividualAssessmentsResponse.struct_class = Types::DescribeApplicableIndividualAssessmentsResponse

    DescribeCertificatesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesMessage.struct_class = Types::DescribeCertificatesMessage

    DescribeCertificatesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    DescribeCertificatesResponse.struct_class = Types::DescribeCertificatesResponse

    DescribeConnectionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeConnectionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeConnectionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeConnectionsMessage.struct_class = Types::DescribeConnectionsMessage

    DescribeConnectionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    DescribeConnectionsResponse.struct_class = Types::DescribeConnectionsResponse

    DescribeConversionConfigurationMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeConversionConfigurationMessage.struct_class = Types::DescribeConversionConfigurationMessage

    DescribeConversionConfigurationResponse.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier"))
    DescribeConversionConfigurationResponse.add_member(:conversion_configuration, Shapes::ShapeRef.new(shape: String, location_name: "ConversionConfiguration"))
    DescribeConversionConfigurationResponse.struct_class = Types::DescribeConversionConfigurationResponse

    DescribeDataMigrationsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDataMigrationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataMigrationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeDataMigrationsMessage.add_member(:without_settings, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WithoutSettings"))
    DescribeDataMigrationsMessage.add_member(:without_statistics, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WithoutStatistics"))
    DescribeDataMigrationsMessage.struct_class = Types::DescribeDataMigrationsMessage

    DescribeDataMigrationsResponse.add_member(:data_migrations, Shapes::ShapeRef.new(shape: DataMigrations, location_name: "DataMigrations"))
    DescribeDataMigrationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeDataMigrationsResponse.struct_class = Types::DescribeDataMigrationsResponse

    DescribeDataProvidersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDataProvidersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataProvidersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataProvidersMessage.struct_class = Types::DescribeDataProvidersMessage

    DescribeDataProvidersResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataProvidersResponse.add_member(:data_providers, Shapes::ShapeRef.new(shape: DataProviderList, location_name: "DataProviders"))
    DescribeDataProvidersResponse.struct_class = Types::DescribeDataProvidersResponse

    DescribeEndpointSettingsMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineName"))
    DescribeEndpointSettingsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointSettingsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointSettingsMessage.struct_class = Types::DescribeEndpointSettingsMessage

    DescribeEndpointSettingsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointSettingsResponse.add_member(:endpoint_settings, Shapes::ShapeRef.new(shape: EndpointSettingsList, location_name: "EndpointSettings"))
    DescribeEndpointSettingsResponse.struct_class = Types::DescribeEndpointSettingsResponse

    DescribeEndpointTypesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEndpointTypesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointTypesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointTypesMessage.struct_class = Types::DescribeEndpointTypesMessage

    DescribeEndpointTypesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointTypesResponse.add_member(:supported_endpoint_types, Shapes::ShapeRef.new(shape: SupportedEndpointTypeList, location_name: "SupportedEndpointTypes"))
    DescribeEndpointTypesResponse.struct_class = Types::DescribeEndpointTypesResponse

    DescribeEndpointsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEndpointsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointsMessage.struct_class = Types::DescribeEndpointsMessage

    DescribeEndpointsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointList, location_name: "Endpoints"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    DescribeEngineVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineVersionsMessage.struct_class = Types::DescribeEngineVersionsMessage

    DescribeEngineVersionsResponse.add_member(:engine_versions, Shapes::ShapeRef.new(shape: EngineVersionList, location_name: "EngineVersions"))
    DescribeEngineVersionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineVersionsResponse.struct_class = Types::DescribeEngineVersionsResponse

    DescribeEventCategoriesMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventCategoriesMessage.struct_class = Types::DescribeEventCategoriesMessage

    DescribeEventCategoriesResponse.add_member(:event_category_group_list, Shapes::ShapeRef.new(shape: EventCategoryGroupList, location_name: "EventCategoryGroupList"))
    DescribeEventCategoriesResponse.struct_class = Types::DescribeEventCategoriesResponse

    DescribeEventSubscriptionsMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsMessage.struct_class = Types::DescribeEventSubscriptionsMessage

    DescribeEventSubscriptionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsResponse.add_member(:event_subscriptions_list, Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    DescribeEventSubscriptionsResponse.struct_class = Types::DescribeEventSubscriptionsResponse

    DescribeEventsMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeEventsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    DescribeEventsResponse.struct_class = Types::DescribeEventsResponse

    DescribeExtensionPackAssociationsMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeExtensionPackAssociationsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeExtensionPackAssociationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeExtensionPackAssociationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeExtensionPackAssociationsMessage.struct_class = Types::DescribeExtensionPackAssociationsMessage

    DescribeExtensionPackAssociationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeExtensionPackAssociationsResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeExtensionPackAssociationsResponse.struct_class = Types::DescribeExtensionPackAssociationsResponse

    DescribeFleetAdvisorCollectorsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorCollectorsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorCollectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorCollectorsRequest.struct_class = Types::DescribeFleetAdvisorCollectorsRequest

    DescribeFleetAdvisorCollectorsResponse.add_member(:collectors, Shapes::ShapeRef.new(shape: CollectorResponses, location_name: "Collectors"))
    DescribeFleetAdvisorCollectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorCollectorsResponse.struct_class = Types::DescribeFleetAdvisorCollectorsResponse

    DescribeFleetAdvisorDatabasesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorDatabasesRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorDatabasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorDatabasesRequest.struct_class = Types::DescribeFleetAdvisorDatabasesRequest

    DescribeFleetAdvisorDatabasesResponse.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseList, location_name: "Databases"))
    DescribeFleetAdvisorDatabasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorDatabasesResponse.struct_class = Types::DescribeFleetAdvisorDatabasesResponse

    DescribeFleetAdvisorLsaAnalysisRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorLsaAnalysisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorLsaAnalysisRequest.struct_class = Types::DescribeFleetAdvisorLsaAnalysisRequest

    DescribeFleetAdvisorLsaAnalysisResponse.add_member(:analysis, Shapes::ShapeRef.new(shape: FleetAdvisorLsaAnalysisResponseList, location_name: "Analysis"))
    DescribeFleetAdvisorLsaAnalysisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorLsaAnalysisResponse.struct_class = Types::DescribeFleetAdvisorLsaAnalysisResponse

    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.struct_class = Types::DescribeFleetAdvisorSchemaObjectSummaryRequest

    DescribeFleetAdvisorSchemaObjectSummaryResponse.add_member(:fleet_advisor_schema_objects, Shapes::ShapeRef.new(shape: FleetAdvisorSchemaObjectList, location_name: "FleetAdvisorSchemaObjects"))
    DescribeFleetAdvisorSchemaObjectSummaryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemaObjectSummaryResponse.struct_class = Types::DescribeFleetAdvisorSchemaObjectSummaryResponse

    DescribeFleetAdvisorSchemasRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorSchemasRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorSchemasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemasRequest.struct_class = Types::DescribeFleetAdvisorSchemasRequest

    DescribeFleetAdvisorSchemasResponse.add_member(:fleet_advisor_schemas, Shapes::ShapeRef.new(shape: FleetAdvisorSchemaList, location_name: "FleetAdvisorSchemas"))
    DescribeFleetAdvisorSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemasResponse.struct_class = Types::DescribeFleetAdvisorSchemasResponse

    DescribeInstanceProfilesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeInstanceProfilesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeInstanceProfilesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeInstanceProfilesMessage.struct_class = Types::DescribeInstanceProfilesMessage

    DescribeInstanceProfilesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeInstanceProfilesResponse.add_member(:instance_profiles, Shapes::ShapeRef.new(shape: InstanceProfileList, location_name: "InstanceProfiles"))
    DescribeInstanceProfilesResponse.struct_class = Types::DescribeInstanceProfilesResponse

    DescribeMetadataModelAssessmentsMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelAssessmentsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelAssessmentsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelAssessmentsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelAssessmentsMessage.struct_class = Types::DescribeMetadataModelAssessmentsMessage

    DescribeMetadataModelAssessmentsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelAssessmentsResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelAssessmentsResponse.struct_class = Types::DescribeMetadataModelAssessmentsResponse

    DescribeMetadataModelChildrenMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    DescribeMetadataModelChildrenMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelChildrenMessage.add_member(:origin, Shapes::ShapeRef.new(shape: OriginTypeValue, required: true, location_name: "Origin"))
    DescribeMetadataModelChildrenMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelChildrenMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelChildrenMessage.struct_class = Types::DescribeMetadataModelChildrenMessage

    DescribeMetadataModelChildrenResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelChildrenResponse.add_member(:metadata_model_children, Shapes::ShapeRef.new(shape: MetadataModelReferenceList, location_name: "MetadataModelChildren"))
    DescribeMetadataModelChildrenResponse.struct_class = Types::DescribeMetadataModelChildrenResponse

    DescribeMetadataModelConversionsMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelConversionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelConversionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelConversionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelConversionsMessage.struct_class = Types::DescribeMetadataModelConversionsMessage

    DescribeMetadataModelConversionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelConversionsResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelConversionsResponse.struct_class = Types::DescribeMetadataModelConversionsResponse

    DescribeMetadataModelCreationsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelCreationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelCreationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelCreationsMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelCreationsMessage.struct_class = Types::DescribeMetadataModelCreationsMessage

    DescribeMetadataModelCreationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelCreationsResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelCreationsResponse.struct_class = Types::DescribeMetadataModelCreationsResponse

    DescribeMetadataModelExportsAsScriptMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelExportsAsScriptMessage.struct_class = Types::DescribeMetadataModelExportsAsScriptMessage

    DescribeMetadataModelExportsAsScriptResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsAsScriptResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelExportsAsScriptResponse.struct_class = Types::DescribeMetadataModelExportsAsScriptResponse

    DescribeMetadataModelExportsToTargetMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelExportsToTargetMessage.struct_class = Types::DescribeMetadataModelExportsToTargetMessage

    DescribeMetadataModelExportsToTargetResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsToTargetResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelExportsToTargetResponse.struct_class = Types::DescribeMetadataModelExportsToTargetResponse

    DescribeMetadataModelImportsMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelImportsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelImportsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelImportsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelImportsMessage.struct_class = Types::DescribeMetadataModelImportsMessage

    DescribeMetadataModelImportsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelImportsResponse.add_member(:requests, Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelImportsResponse.struct_class = Types::DescribeMetadataModelImportsResponse

    DescribeMetadataModelMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    DescribeMetadataModelMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    DescribeMetadataModelMessage.add_member(:origin, Shapes::ShapeRef.new(shape: OriginTypeValue, required: true, location_name: "Origin"))
    DescribeMetadataModelMessage.struct_class = Types::DescribeMetadataModelMessage

    DescribeMetadataModelResponse.add_member(:metadata_model_name, Shapes::ShapeRef.new(shape: String, location_name: "MetadataModelName"))
    DescribeMetadataModelResponse.add_member(:metadata_model_type, Shapes::ShapeRef.new(shape: String, location_name: "MetadataModelType"))
    DescribeMetadataModelResponse.add_member(:target_metadata_models, Shapes::ShapeRef.new(shape: MetadataModelReferenceList, location_name: "TargetMetadataModels"))
    DescribeMetadataModelResponse.add_member(:definition, Shapes::ShapeRef.new(shape: String, location_name: "Definition"))
    DescribeMetadataModelResponse.struct_class = Types::DescribeMetadataModelResponse

    DescribeMigrationProjectsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMigrationProjectsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMigrationProjectsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMigrationProjectsMessage.struct_class = Types::DescribeMigrationProjectsMessage

    DescribeMigrationProjectsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMigrationProjectsResponse.add_member(:migration_projects, Shapes::ShapeRef.new(shape: MigrationProjectList, location_name: "MigrationProjects"))
    DescribeMigrationProjectsResponse.struct_class = Types::DescribeMigrationProjectsResponse

    DescribeOrderableReplicationInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableReplicationInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableReplicationInstancesMessage.struct_class = Types::DescribeOrderableReplicationInstancesMessage

    DescribeOrderableReplicationInstancesResponse.add_member(:orderable_replication_instances, Shapes::ShapeRef.new(shape: OrderableReplicationInstanceList, location_name: "OrderableReplicationInstances"))
    DescribeOrderableReplicationInstancesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableReplicationInstancesResponse.struct_class = Types::DescribeOrderableReplicationInstancesResponse

    DescribePendingMaintenanceActionsMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.struct_class = Types::DescribePendingMaintenanceActionsMessage

    DescribePendingMaintenanceActionsResponse.add_member(:pending_maintenance_actions, Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: "PendingMaintenanceActions"))
    DescribePendingMaintenanceActionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsResponse.struct_class = Types::DescribePendingMaintenanceActionsResponse

    DescribeRecommendationLimitationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeRecommendationLimitationsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeRecommendationLimitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationLimitationsRequest.struct_class = Types::DescribeRecommendationLimitationsRequest

    DescribeRecommendationLimitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationLimitationsResponse.add_member(:limitations, Shapes::ShapeRef.new(shape: LimitationList, location_name: "Limitations"))
    DescribeRecommendationLimitationsResponse.struct_class = Types::DescribeRecommendationLimitationsResponse

    DescribeRecommendationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeRecommendationsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationsRequest.struct_class = Types::DescribeRecommendationsRequest

    DescribeRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: RecommendationList, location_name: "Recommendations"))
    DescribeRecommendationsResponse.struct_class = Types::DescribeRecommendationsResponse

    DescribeRefreshSchemasStatusMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DescribeRefreshSchemasStatusMessage.struct_class = Types::DescribeRefreshSchemasStatusMessage

    DescribeRefreshSchemasStatusResponse.add_member(:refresh_schemas_status, Shapes::ShapeRef.new(shape: RefreshSchemasStatus, location_name: "RefreshSchemasStatus"))
    DescribeRefreshSchemasStatusResponse.struct_class = Types::DescribeRefreshSchemasStatusResponse

    DescribeReplicationConfigsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationConfigsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationConfigsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationConfigsMessage.struct_class = Types::DescribeReplicationConfigsMessage

    DescribeReplicationConfigsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationConfigsResponse.add_member(:replication_configs, Shapes::ShapeRef.new(shape: ReplicationConfigList, location_name: "ReplicationConfigs"))
    DescribeReplicationConfigsResponse.struct_class = Types::DescribeReplicationConfigsResponse

    DescribeReplicationInstanceTaskLogsMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstanceTaskLogsMessage.struct_class = Types::DescribeReplicationInstanceTaskLogsMessage

    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_task_logs, Shapes::ShapeRef.new(shape: ReplicationInstanceTaskLogsList, location_name: "ReplicationInstanceTaskLogs"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstanceTaskLogsResponse.struct_class = Types::DescribeReplicationInstanceTaskLogsResponse

    DescribeReplicationInstancesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstancesMessage.struct_class = Types::DescribeReplicationInstancesMessage

    DescribeReplicationInstancesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstancesResponse.add_member(:replication_instances, Shapes::ShapeRef.new(shape: ReplicationInstanceList, location_name: "ReplicationInstances"))
    DescribeReplicationInstancesResponse.struct_class = Types::DescribeReplicationInstancesResponse

    DescribeReplicationSubnetGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationSubnetGroupsMessage.struct_class = Types::DescribeReplicationSubnetGroupsMessage

    DescribeReplicationSubnetGroupsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationSubnetGroupsResponse.add_member(:replication_subnet_groups, Shapes::ShapeRef.new(shape: ReplicationSubnetGroups, location_name: "ReplicationSubnetGroups"))
    DescribeReplicationSubnetGroupsResponse.struct_class = Types::DescribeReplicationSubnetGroupsResponse

    DescribeReplicationTableStatisticsMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigArn"))
    DescribeReplicationTableStatisticsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTableStatisticsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTableStatisticsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTableStatisticsMessage.struct_class = Types::DescribeReplicationTableStatisticsMessage

    DescribeReplicationTableStatisticsResponse.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    DescribeReplicationTableStatisticsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTableStatisticsResponse.add_member(:replication_table_statistics, Shapes::ShapeRef.new(shape: ReplicationTableStatisticsList, location_name: "ReplicationTableStatistics"))
    DescribeReplicationTableStatisticsResponse.struct_class = Types::DescribeReplicationTableStatisticsResponse

    DescribeReplicationTaskAssessmentResultsMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentResultsMessage.struct_class = Types::DescribeReplicationTaskAssessmentResultsMessage

    DescribeReplicationTaskAssessmentResultsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:replication_task_assessment_results, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentResultList, location_name: "ReplicationTaskAssessmentResults"))
    DescribeReplicationTaskAssessmentResultsResponse.struct_class = Types::DescribeReplicationTaskAssessmentResultsResponse

    DescribeReplicationTaskAssessmentRunsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentRunsMessage.struct_class = Types::DescribeReplicationTaskAssessmentRunsMessage

    DescribeReplicationTaskAssessmentRunsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentRunsResponse.add_member(:replication_task_assessment_runs, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunList, location_name: "ReplicationTaskAssessmentRuns"))
    DescribeReplicationTaskAssessmentRunsResponse.struct_class = Types::DescribeReplicationTaskAssessmentRunsResponse

    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskIndividualAssessmentsMessage.struct_class = Types::DescribeReplicationTaskIndividualAssessmentsMessage

    DescribeReplicationTaskIndividualAssessmentsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskIndividualAssessmentsResponse.add_member(:replication_task_individual_assessments, Shapes::ShapeRef.new(shape: ReplicationTaskIndividualAssessmentList, location_name: "ReplicationTaskIndividualAssessments"))
    DescribeReplicationTaskIndividualAssessmentsResponse.struct_class = Types::DescribeReplicationTaskIndividualAssessmentsResponse

    DescribeReplicationTasksMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTasksMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTasksMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTasksMessage.add_member(:without_settings, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WithoutSettings"))
    DescribeReplicationTasksMessage.struct_class = Types::DescribeReplicationTasksMessage

    DescribeReplicationTasksResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTasksResponse.add_member(:replication_tasks, Shapes::ShapeRef.new(shape: ReplicationTaskList, location_name: "ReplicationTasks"))
    DescribeReplicationTasksResponse.struct_class = Types::DescribeReplicationTasksResponse

    DescribeReplicationsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationsMessage.struct_class = Types::DescribeReplicationsMessage

    DescribeReplicationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationsResponse.add_member(:replications, Shapes::ShapeRef.new(shape: ReplicationList, location_name: "Replications"))
    DescribeReplicationsResponse.struct_class = Types::DescribeReplicationsResponse

    DescribeSchemasMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DescribeSchemasMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSchemasMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSchemasMessage.struct_class = Types::DescribeSchemasMessage

    DescribeSchemasResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaList, location_name: "Schemas"))
    DescribeSchemasResponse.struct_class = Types::DescribeSchemasResponse

    DescribeTableStatisticsMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    DescribeTableStatisticsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeTableStatisticsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableStatisticsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeTableStatisticsMessage.struct_class = Types::DescribeTableStatisticsMessage

    DescribeTableStatisticsResponse.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeTableStatisticsResponse.add_member(:table_statistics, Shapes::ShapeRef.new(shape: TableStatisticsList, location_name: "TableStatistics"))
    DescribeTableStatisticsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableStatisticsResponse.struct_class = Types::DescribeTableStatisticsResponse

    DmsTransferSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    DmsTransferSettings.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    DmsTransferSettings.struct_class = Types::DmsTransferSettings

    DocDbDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    DocDbDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DocDbDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DocDbDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    DocDbDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    DocDbDataProviderSettings.struct_class = Types::DocDbDataProviderSettings

    DocDbSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    DocDbSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    DocDbSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    DocDbSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DocDbSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DocDbSettings.add_member(:nesting_level, Shapes::ShapeRef.new(shape: NestingLevelValue, location_name: "NestingLevel"))
    DocDbSettings.add_member(:extract_doc_id, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExtractDocId"))
    DocDbSettings.add_member(:docs_to_investigate, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DocsToInvestigate"))
    DocDbSettings.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DocDbSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    DocDbSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    DocDbSettings.add_member(:use_update_look_up, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseUpdateLookUp"))
    DocDbSettings.add_member(:replicate_shard_collections, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReplicateShardCollections"))
    DocDbSettings.struct_class = Types::DocDbSettings

    DynamoDbSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceAccessRoleArn"))
    DynamoDbSettings.struct_class = Types::DynamoDbSettings

    ElasticsearchSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceAccessRoleArn"))
    ElasticsearchSettings.add_member(:endpoint_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointUri"))
    ElasticsearchSettings.add_member(:full_load_error_percentage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "FullLoadErrorPercentage"))
    ElasticsearchSettings.add_member(:error_retry_duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ErrorRetryDuration"))
    ElasticsearchSettings.add_member(:use_new_mapping_type, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseNewMappingType"))
    ElasticsearchSettings.struct_class = Types::ElasticsearchSettings

    Endpoint.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    Endpoint.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    Endpoint.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Endpoint.add_member(:engine_display_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineDisplayName"))
    Endpoint.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    Endpoint.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    Endpoint.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    Endpoint.add_member(:extra_connection_attributes, Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    Endpoint.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Endpoint.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Endpoint.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    Endpoint.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Endpoint.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    Endpoint.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    Endpoint.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    Endpoint.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "ExternalId"))
    Endpoint.add_member(:dynamo_db_settings, Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    Endpoint.add_member(:s3_settings, Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    Endpoint.add_member(:dms_transfer_settings, Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    Endpoint.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    Endpoint.add_member(:kinesis_settings, Shapes::ShapeRef.new(shape: KinesisSettings, location_name: "KinesisSettings"))
    Endpoint.add_member(:kafka_settings, Shapes::ShapeRef.new(shape: KafkaSettings, location_name: "KafkaSettings"))
    Endpoint.add_member(:elasticsearch_settings, Shapes::ShapeRef.new(shape: ElasticsearchSettings, location_name: "ElasticsearchSettings"))
    Endpoint.add_member(:neptune_settings, Shapes::ShapeRef.new(shape: NeptuneSettings, location_name: "NeptuneSettings"))
    Endpoint.add_member(:redshift_settings, Shapes::ShapeRef.new(shape: RedshiftSettings, location_name: "RedshiftSettings"))
    Endpoint.add_member(:postgre_sql_settings, Shapes::ShapeRef.new(shape: PostgreSQLSettings, location_name: "PostgreSQLSettings"))
    Endpoint.add_member(:my_sql_settings, Shapes::ShapeRef.new(shape: MySQLSettings, location_name: "MySQLSettings"))
    Endpoint.add_member(:oracle_settings, Shapes::ShapeRef.new(shape: OracleSettings, location_name: "OracleSettings"))
    Endpoint.add_member(:sybase_settings, Shapes::ShapeRef.new(shape: SybaseSettings, location_name: "SybaseSettings"))
    Endpoint.add_member(:microsoft_sql_server_settings, Shapes::ShapeRef.new(shape: MicrosoftSQLServerSettings, location_name: "MicrosoftSQLServerSettings"))
    Endpoint.add_member(:ibm_db_2_settings, Shapes::ShapeRef.new(shape: IBMDb2Settings, location_name: "IBMDb2Settings"))
    Endpoint.add_member(:doc_db_settings, Shapes::ShapeRef.new(shape: DocDbSettings, location_name: "DocDbSettings"))
    Endpoint.add_member(:redis_settings, Shapes::ShapeRef.new(shape: RedisSettings, location_name: "RedisSettings"))
    Endpoint.add_member(:gcp_my_sql_settings, Shapes::ShapeRef.new(shape: GcpMySQLSettings, location_name: "GcpMySQLSettings"))
    Endpoint.add_member(:timestream_settings, Shapes::ShapeRef.new(shape: TimestreamSettings, location_name: "TimestreamSettings"))
    Endpoint.struct_class = Types::Endpoint

    EndpointList.member = Shapes::ShapeRef.new(shape: Endpoint)

    EndpointSetting.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EndpointSetting.add_member(:type, Shapes::ShapeRef.new(shape: EndpointSettingTypeValue, location_name: "Type"))
    EndpointSetting.add_member(:enum_values, Shapes::ShapeRef.new(shape: EndpointSettingEnumValues, location_name: "EnumValues"))
    EndpointSetting.add_member(:sensitive, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Sensitive"))
    EndpointSetting.add_member(:units, Shapes::ShapeRef.new(shape: String, location_name: "Units"))
    EndpointSetting.add_member(:applicability, Shapes::ShapeRef.new(shape: String, location_name: "Applicability"))
    EndpointSetting.add_member(:int_value_min, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IntValueMin"))
    EndpointSetting.add_member(:int_value_max, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IntValueMax"))
    EndpointSetting.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "DefaultValue"))
    EndpointSetting.struct_class = Types::EndpointSetting

    EndpointSettingEnumValues.member = Shapes::ShapeRef.new(shape: String)

    EndpointSettingsList.member = Shapes::ShapeRef.new(shape: EndpointSetting)

    EngineVersion.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    EngineVersion.add_member(:lifecycle, Shapes::ShapeRef.new(shape: String, location_name: "Lifecycle"))
    EngineVersion.add_member(:release_status, Shapes::ShapeRef.new(shape: ReleaseStatusValues, location_name: "ReleaseStatus"))
    EngineVersion.add_member(:launch_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "LaunchDate"))
    EngineVersion.add_member(:auto_upgrade_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoUpgradeDate"))
    EngineVersion.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "DeprecationDate"))
    EngineVersion.add_member(:force_upgrade_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ForceUpgradeDate"))
    EngineVersion.add_member(:available_upgrades, Shapes::ShapeRef.new(shape: AvailableUpgradesList, location_name: "AvailableUpgrades"))
    EngineVersion.struct_class = Types::EngineVersion

    EngineVersionList.member = Shapes::ShapeRef.new(shape: EngineVersion)

    ErrorDetails.add_member(:default_error_details, Shapes::ShapeRef.new(shape: DefaultErrorDetails, location_name: "defaultErrorDetails"))
    ErrorDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ErrorDetails.add_member_subclass(:default_error_details, Types::ErrorDetails::DefaultErrorDetails)
    ErrorDetails.add_member_subclass(:unknown, Types::ErrorDetails::Unknown)
    ErrorDetails.struct_class = Types::ErrorDetails

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.struct_class = Types::Event

    EventCategoriesList.member = Shapes::ShapeRef.new(shape: String)

    EventCategoryGroup.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoryGroup.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventCategoryGroup.struct_class = Types::EventCategoryGroup

    EventCategoryGroupList.member = Shapes::ShapeRef.new(shape: EventCategoryGroup)

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    EventSubscription.add_member(:customer_aws_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    EventSubscription.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventSubscription.struct_class = Types::EventSubscription

    EventSubscriptionsList.member = Shapes::ShapeRef.new(shape: EventSubscription)

    ExcludeTestList.member = Shapes::ShapeRef.new(shape: String)

    ExportMetadataModelAssessmentMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    ExportMetadataModelAssessmentMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    ExportMetadataModelAssessmentMessage.add_member(:file_name, Shapes::ShapeRef.new(shape: String, location_name: "FileName"))
    ExportMetadataModelAssessmentMessage.add_member(:assessment_report_types, Shapes::ShapeRef.new(shape: AssessmentReportTypesList, location_name: "AssessmentReportTypes"))
    ExportMetadataModelAssessmentMessage.struct_class = Types::ExportMetadataModelAssessmentMessage

    ExportMetadataModelAssessmentResponse.add_member(:pdf_report, Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentResultEntry, location_name: "PdfReport"))
    ExportMetadataModelAssessmentResponse.add_member(:csv_report, Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentResultEntry, location_name: "CsvReport"))
    ExportMetadataModelAssessmentResponse.struct_class = Types::ExportMetadataModelAssessmentResponse

    ExportMetadataModelAssessmentResultEntry.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: String, location_name: "S3ObjectKey"))
    ExportMetadataModelAssessmentResultEntry.add_member(:object_url, Shapes::ShapeRef.new(shape: String, location_name: "ObjectURL"))
    ExportMetadataModelAssessmentResultEntry.struct_class = Types::ExportMetadataModelAssessmentResultEntry

    ExportSqlDetails.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: String, location_name: "S3ObjectKey"))
    ExportSqlDetails.add_member(:object_url, Shapes::ShapeRef.new(shape: String, location_name: "ObjectURL"))
    ExportSqlDetails.struct_class = Types::ExportSqlDetails

    FailedDependencyFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    FailedDependencyFault.struct_class = Types::FailedDependencyFault

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: String)

    FleetAdvisorLsaAnalysisResponse.add_member(:lsa_analysis_id, Shapes::ShapeRef.new(shape: String, location_name: "LsaAnalysisId"))
    FleetAdvisorLsaAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    FleetAdvisorLsaAnalysisResponse.struct_class = Types::FleetAdvisorLsaAnalysisResponse

    FleetAdvisorLsaAnalysisResponseList.member = Shapes::ShapeRef.new(shape: FleetAdvisorLsaAnalysisResponse)

    FleetAdvisorSchemaList.member = Shapes::ShapeRef.new(shape: SchemaResponse)

    FleetAdvisorSchemaObjectList.member = Shapes::ShapeRef.new(shape: FleetAdvisorSchemaObjectResponse)

    FleetAdvisorSchemaObjectResponse.add_member(:schema_id, Shapes::ShapeRef.new(shape: String, location_name: "SchemaId"))
    FleetAdvisorSchemaObjectResponse.add_member(:object_type, Shapes::ShapeRef.new(shape: String, location_name: "ObjectType"))
    FleetAdvisorSchemaObjectResponse.add_member(:number_of_objects, Shapes::ShapeRef.new(shape: LongOptional, location_name: "NumberOfObjects"))
    FleetAdvisorSchemaObjectResponse.add_member(:code_line_count, Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeLineCount"))
    FleetAdvisorSchemaObjectResponse.add_member(:code_size, Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeSize"))
    FleetAdvisorSchemaObjectResponse.struct_class = Types::FleetAdvisorSchemaObjectResponse

    GcpMySQLSettings.add_member(:after_connect_script, Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    GcpMySQLSettings.add_member(:clean_source_metadata_on_mismatch, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CleanSourceMetadataOnMismatch"))
    GcpMySQLSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    GcpMySQLSettings.add_member(:events_poll_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "EventsPollInterval"))
    GcpMySQLSettings.add_member(:target_db_type, Shapes::ShapeRef.new(shape: TargetDbType, location_name: "TargetDbType"))
    GcpMySQLSettings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    GcpMySQLSettings.add_member(:parallel_load_threads, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ParallelLoadThreads"))
    GcpMySQLSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    GcpMySQLSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    GcpMySQLSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    GcpMySQLSettings.add_member(:server_timezone, Shapes::ShapeRef.new(shape: String, location_name: "ServerTimezone"))
    GcpMySQLSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    GcpMySQLSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    GcpMySQLSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    GcpMySQLSettings.struct_class = Types::GcpMySQLSettings

    GetTargetSelectionRulesMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    GetTargetSelectionRulesMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    GetTargetSelectionRulesMessage.struct_class = Types::GetTargetSelectionRulesMessage

    GetTargetSelectionRulesResponse.add_member(:target_selection_rules, Shapes::ShapeRef.new(shape: String, location_name: "TargetSelectionRules"))
    GetTargetSelectionRulesResponse.struct_class = Types::GetTargetSelectionRulesResponse

    IBMDb2Settings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    IBMDb2Settings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    IBMDb2Settings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    IBMDb2Settings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    IBMDb2Settings.add_member(:set_data_capture_changes, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SetDataCaptureChanges"))
    IBMDb2Settings.add_member(:current_lsn, Shapes::ShapeRef.new(shape: String, location_name: "CurrentLsn"))
    IBMDb2Settings.add_member(:max_k_bytes_per_read, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxKBytesPerRead"))
    IBMDb2Settings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    IBMDb2Settings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    IBMDb2Settings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    IBMDb2Settings.add_member(:load_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "LoadTimeout"))
    IBMDb2Settings.add_member(:write_buffer_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "WriteBufferSize"))
    IBMDb2Settings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    IBMDb2Settings.add_member(:keep_csv_files, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "KeepCsvFiles"))
    IBMDb2Settings.struct_class = Types::IBMDb2Settings

    IbmDb2LuwDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    IbmDb2LuwDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    IbmDb2LuwDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    IbmDb2LuwDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    IbmDb2LuwDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    IbmDb2LuwDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    IbmDb2LuwDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    IbmDb2LuwDataProviderSettings.struct_class = Types::IbmDb2LuwDataProviderSettings

    IbmDb2zOsDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    IbmDb2zOsDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    IbmDb2zOsDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    IbmDb2zOsDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    IbmDb2zOsDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    IbmDb2zOsDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    IbmDb2zOsDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    IbmDb2zOsDataProviderSettings.struct_class = Types::IbmDb2zOsDataProviderSettings

    ImportCertificateMessage.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CertificateIdentifier"))
    ImportCertificateMessage.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: SecretString, location_name: "CertificatePem"))
    ImportCertificateMessage.add_member(:certificate_wallet, Shapes::ShapeRef.new(shape: CertificateWallet, location_name: "CertificateWallet"))
    ImportCertificateMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportCertificateMessage.struct_class = Types::ImportCertificateMessage

    ImportCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    ImportCertificateResponse.struct_class = Types::ImportCertificateResponse

    IncludeTestList.member = Shapes::ShapeRef.new(shape: String)

    IndividualAssessmentNameList.member = Shapes::ShapeRef.new(shape: String)

    InstanceProfile.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    InstanceProfile.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    InstanceProfile.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    InstanceProfile.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    InstanceProfile.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    InstanceProfile.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    InstanceProfile.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    InstanceProfile.add_member(:instance_profile_creation_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "InstanceProfileCreationTime"))
    InstanceProfile.add_member(:subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupIdentifier"))
    InstanceProfile.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroups"))
    InstanceProfile.struct_class = Types::InstanceProfile

    InstanceProfileList.member = Shapes::ShapeRef.new(shape: InstanceProfile)

    InsufficientResourceCapacityFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InsufficientResourceCapacityFault.struct_class = Types::InsufficientResourceCapacityFault

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    InvalidCertificateFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidCertificateFault.struct_class = Types::InvalidCertificateFault

    InvalidOperationFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidOperationFault.struct_class = Types::InvalidOperationFault

    InvalidResourceStateFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidResourceStateFault.struct_class = Types::InvalidResourceStateFault

    InvalidSubnet.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidSubnet.struct_class = Types::InvalidSubnet

    InventoryData.add_member(:number_of_databases, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfDatabases"))
    InventoryData.add_member(:number_of_schemas, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfSchemas"))
    InventoryData.struct_class = Types::InventoryData

    KMSAccessDeniedFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSAccessDeniedFault.struct_class = Types::KMSAccessDeniedFault

    KMSDisabledFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSDisabledFault.struct_class = Types::KMSDisabledFault

    KMSFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSFault.struct_class = Types::KMSFault

    KMSInvalidStateFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSInvalidStateFault.struct_class = Types::KMSInvalidStateFault

    KMSKeyNotAccessibleFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSKeyNotAccessibleFault.struct_class = Types::KMSKeyNotAccessibleFault

    KMSNotFoundFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSNotFoundFault.struct_class = Types::KMSNotFoundFault

    KMSThrottlingFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSThrottlingFault.struct_class = Types::KMSThrottlingFault

    KafkaSettings.add_member(:broker, Shapes::ShapeRef.new(shape: String, location_name: "Broker"))
    KafkaSettings.add_member(:topic, Shapes::ShapeRef.new(shape: String, location_name: "Topic"))
    KafkaSettings.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormatValue, location_name: "MessageFormat"))
    KafkaSettings.add_member(:include_transaction_details, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTransactionDetails"))
    KafkaSettings.add_member(:include_partition_value, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludePartitionValue"))
    KafkaSettings.add_member(:partition_include_schema_table, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PartitionIncludeSchemaTable"))
    KafkaSettings.add_member(:include_table_alter_operations, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTableAlterOperations"))
    KafkaSettings.add_member(:include_control_details, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeControlDetails"))
    KafkaSettings.add_member(:message_max_bytes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MessageMaxBytes"))
    KafkaSettings.add_member(:include_null_and_empty, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeNullAndEmpty"))
    KafkaSettings.add_member(:security_protocol, Shapes::ShapeRef.new(shape: KafkaSecurityProtocol, location_name: "SecurityProtocol"))
    KafkaSettings.add_member(:ssl_client_certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "SslClientCertificateArn"))
    KafkaSettings.add_member(:ssl_client_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "SslClientKeyArn"))
    KafkaSettings.add_member(:ssl_client_key_password, Shapes::ShapeRef.new(shape: SecretString, location_name: "SslClientKeyPassword"))
    KafkaSettings.add_member(:ssl_ca_certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "SslCaCertificateArn"))
    KafkaSettings.add_member(:sasl_username, Shapes::ShapeRef.new(shape: String, location_name: "SaslUsername"))
    KafkaSettings.add_member(:sasl_password, Shapes::ShapeRef.new(shape: SecretString, location_name: "SaslPassword"))
    KafkaSettings.add_member(:no_hex_prefix, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "NoHexPrefix"))
    KafkaSettings.add_member(:sasl_mechanism, Shapes::ShapeRef.new(shape: KafkaSaslMechanism, location_name: "SaslMechanism"))
    KafkaSettings.add_member(:ssl_endpoint_identification_algorithm, Shapes::ShapeRef.new(shape: KafkaSslEndpointIdentificationAlgorithm, location_name: "SslEndpointIdentificationAlgorithm"))
    KafkaSettings.add_member(:use_large_integer_value, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseLargeIntegerValue"))
    KafkaSettings.struct_class = Types::KafkaSettings

    KerberosAuthenticationSettings.add_member(:key_cache_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "KeyCacheSecretId"))
    KerberosAuthenticationSettings.add_member(:key_cache_secret_iam_arn, Shapes::ShapeRef.new(shape: String, location_name: "KeyCacheSecretIamArn"))
    KerberosAuthenticationSettings.add_member(:krb_5_file_contents, Shapes::ShapeRef.new(shape: String, location_name: "Krb5FileContents"))
    KerberosAuthenticationSettings.struct_class = Types::KerberosAuthenticationSettings

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    KinesisSettings.add_member(:stream_arn, Shapes::ShapeRef.new(shape: String, location_name: "StreamArn"))
    KinesisSettings.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormatValue, location_name: "MessageFormat"))
    KinesisSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    KinesisSettings.add_member(:include_transaction_details, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTransactionDetails"))
    KinesisSettings.add_member(:include_partition_value, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludePartitionValue"))
    KinesisSettings.add_member(:partition_include_schema_table, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PartitionIncludeSchemaTable"))
    KinesisSettings.add_member(:include_table_alter_operations, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTableAlterOperations"))
    KinesisSettings.add_member(:include_control_details, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeControlDetails"))
    KinesisSettings.add_member(:include_null_and_empty, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeNullAndEmpty"))
    KinesisSettings.add_member(:no_hex_prefix, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "NoHexPrefix"))
    KinesisSettings.add_member(:use_large_integer_value, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseLargeIntegerValue"))
    KinesisSettings.struct_class = Types::KinesisSettings

    Limitation.add_member(:database_id, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    Limitation.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Limitation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Limitation.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Limitation.add_member(:impact, Shapes::ShapeRef.new(shape: String, location_name: "Impact"))
    Limitation.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Limitation.struct_class = Types::Limitation

    LimitationList.member = Shapes::ShapeRef.new(shape: Limitation)

    ListTagsForResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    ListTagsForResourceMessage.add_member(:resource_arn_list, Shapes::ShapeRef.new(shape: ArnList, location_name: "ResourceArnList"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MariaDbDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MariaDbDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MariaDbDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MariaDbDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MariaDbDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    MariaDbDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    MariaDbDataProviderSettings.struct_class = Types::MariaDbDataProviderSettings

    MetadataModelProperties.add_member(:statement_properties, Shapes::ShapeRef.new(shape: StatementProperties, location_name: "StatementProperties"))
    MetadataModelProperties.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MetadataModelProperties.add_member_subclass(:statement_properties, Types::MetadataModelProperties::StatementProperties)
    MetadataModelProperties.add_member_subclass(:unknown, Types::MetadataModelProperties::Unknown)
    MetadataModelProperties.struct_class = Types::MetadataModelProperties

    MetadataModelReference.add_member(:metadata_model_name, Shapes::ShapeRef.new(shape: String, location_name: "MetadataModelName"))
    MetadataModelReference.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules"))
    MetadataModelReference.struct_class = Types::MetadataModelReference

    MetadataModelReferenceList.member = Shapes::ShapeRef.new(shape: MetadataModelReference)

    MicrosoftSQLServerSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MicrosoftSQLServerSettings.add_member(:bcp_packet_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BcpPacketSize"))
    MicrosoftSQLServerSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MicrosoftSQLServerSettings.add_member(:control_tables_file_group, Shapes::ShapeRef.new(shape: String, location_name: "ControlTablesFileGroup"))
    MicrosoftSQLServerSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MicrosoftSQLServerSettings.add_member(:query_single_always_on_node, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "QuerySingleAlwaysOnNode"))
    MicrosoftSQLServerSettings.add_member(:read_backup_only, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReadBackupOnly"))
    MicrosoftSQLServerSettings.add_member(:safeguard_policy, Shapes::ShapeRef.new(shape: SafeguardPolicy, location_name: "SafeguardPolicy"))
    MicrosoftSQLServerSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MicrosoftSQLServerSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MicrosoftSQLServerSettings.add_member(:use_bcp_full_load, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseBcpFullLoad"))
    MicrosoftSQLServerSettings.add_member(:use_third_party_backup_device, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseThirdPartyBackupDevice"))
    MicrosoftSQLServerSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    MicrosoftSQLServerSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    MicrosoftSQLServerSettings.add_member(:trim_space_in_char, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimSpaceInChar"))
    MicrosoftSQLServerSettings.add_member(:tlog_access_mode, Shapes::ShapeRef.new(shape: TlogAccessMode, location_name: "TlogAccessMode"))
    MicrosoftSQLServerSettings.add_member(:force_lob_lookup, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceLobLookup"))
    MicrosoftSQLServerSettings.add_member(:authentication_method, Shapes::ShapeRef.new(shape: SqlServerAuthenticationMethod, location_name: "AuthenticationMethod"))
    MicrosoftSQLServerSettings.struct_class = Types::MicrosoftSQLServerSettings

    MicrosoftSqlServerDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MicrosoftSqlServerDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MicrosoftSqlServerDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MicrosoftSqlServerDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MicrosoftSqlServerDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MicrosoftSqlServerDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    MicrosoftSqlServerDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    MicrosoftSqlServerDataProviderSettings.struct_class = Types::MicrosoftSqlServerDataProviderSettings

    MigrationProject.add_member(:migration_project_name, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectName"))
    MigrationProject.add_member(:migration_project_arn, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectArn"))
    MigrationProject.add_member(:migration_project_creation_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "MigrationProjectCreationTime"))
    MigrationProject.add_member(:source_data_provider_descriptors, Shapes::ShapeRef.new(shape: DataProviderDescriptorList, location_name: "SourceDataProviderDescriptors"))
    MigrationProject.add_member(:target_data_provider_descriptors, Shapes::ShapeRef.new(shape: DataProviderDescriptorList, location_name: "TargetDataProviderDescriptors"))
    MigrationProject.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    MigrationProject.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    MigrationProject.add_member(:transformation_rules, Shapes::ShapeRef.new(shape: String, location_name: "TransformationRules"))
    MigrationProject.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    MigrationProject.add_member(:schema_conversion_application_attributes, Shapes::ShapeRef.new(shape: SCApplicationAttributes, location_name: "SchemaConversionApplicationAttributes"))
    MigrationProject.struct_class = Types::MigrationProject

    MigrationProjectList.member = Shapes::ShapeRef.new(shape: MigrationProject)

    ModifyConversionConfigurationMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    ModifyConversionConfigurationMessage.add_member(:conversion_configuration, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConversionConfiguration"))
    ModifyConversionConfigurationMessage.struct_class = Types::ModifyConversionConfigurationMessage

    ModifyConversionConfigurationResponse.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier"))
    ModifyConversionConfigurationResponse.struct_class = Types::ModifyConversionConfigurationResponse

    ModifyDataMigrationMessage.add_member(:data_migration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataMigrationIdentifier"))
    ModifyDataMigrationMessage.add_member(:data_migration_name, Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationName"))
    ModifyDataMigrationMessage.add_member(:enable_cloudwatch_logs, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCloudwatchLogs"))
    ModifyDataMigrationMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ModifyDataMigrationMessage.add_member(:data_migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "DataMigrationType"))
    ModifyDataMigrationMessage.add_member(:source_data_settings, Shapes::ShapeRef.new(shape: SourceDataSettings, location_name: "SourceDataSettings"))
    ModifyDataMigrationMessage.add_member(:target_data_settings, Shapes::ShapeRef.new(shape: TargetDataSettings, location_name: "TargetDataSettings"))
    ModifyDataMigrationMessage.add_member(:number_of_jobs, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfJobs"))
    ModifyDataMigrationMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: SecretString, location_name: "SelectionRules"))
    ModifyDataMigrationMessage.struct_class = Types::ModifyDataMigrationMessage

    ModifyDataMigrationResponse.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    ModifyDataMigrationResponse.struct_class = Types::ModifyDataMigrationResponse

    ModifyDataProviderMessage.add_member(:data_provider_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataProviderIdentifier"))
    ModifyDataProviderMessage.add_member(:data_provider_name, Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    ModifyDataProviderMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyDataProviderMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    ModifyDataProviderMessage.add_member(:virtual, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Virtual"))
    ModifyDataProviderMessage.add_member(:exact_settings, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExactSettings"))
    ModifyDataProviderMessage.add_member(:settings, Shapes::ShapeRef.new(shape: DataProviderSettings, location_name: "Settings"))
    ModifyDataProviderMessage.struct_class = Types::ModifyDataProviderMessage

    ModifyDataProviderResponse.add_member(:data_provider, Shapes::ShapeRef.new(shape: DataProvider, location_name: "DataProvider"))
    ModifyDataProviderResponse.struct_class = Types::ModifyDataProviderResponse

    ModifyEndpointMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    ModifyEndpointMessage.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    ModifyEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    ModifyEndpointMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    ModifyEndpointMessage.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    ModifyEndpointMessage.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    ModifyEndpointMessage.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    ModifyEndpointMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyEndpointMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    ModifyEndpointMessage.add_member(:extra_connection_attributes, Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    ModifyEndpointMessage.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    ModifyEndpointMessage.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    ModifyEndpointMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ModifyEndpointMessage.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    ModifyEndpointMessage.add_member(:dynamo_db_settings, Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    ModifyEndpointMessage.add_member(:s3_settings, Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    ModifyEndpointMessage.add_member(:dms_transfer_settings, Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    ModifyEndpointMessage.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    ModifyEndpointMessage.add_member(:kinesis_settings, Shapes::ShapeRef.new(shape: KinesisSettings, location_name: "KinesisSettings"))
    ModifyEndpointMessage.add_member(:kafka_settings, Shapes::ShapeRef.new(shape: KafkaSettings, location_name: "KafkaSettings"))
    ModifyEndpointMessage.add_member(:elasticsearch_settings, Shapes::ShapeRef.new(shape: ElasticsearchSettings, location_name: "ElasticsearchSettings"))
    ModifyEndpointMessage.add_member(:neptune_settings, Shapes::ShapeRef.new(shape: NeptuneSettings, location_name: "NeptuneSettings"))
    ModifyEndpointMessage.add_member(:redshift_settings, Shapes::ShapeRef.new(shape: RedshiftSettings, location_name: "RedshiftSettings"))
    ModifyEndpointMessage.add_member(:postgre_sql_settings, Shapes::ShapeRef.new(shape: PostgreSQLSettings, location_name: "PostgreSQLSettings"))
    ModifyEndpointMessage.add_member(:my_sql_settings, Shapes::ShapeRef.new(shape: MySQLSettings, location_name: "MySQLSettings"))
    ModifyEndpointMessage.add_member(:oracle_settings, Shapes::ShapeRef.new(shape: OracleSettings, location_name: "OracleSettings"))
    ModifyEndpointMessage.add_member(:sybase_settings, Shapes::ShapeRef.new(shape: SybaseSettings, location_name: "SybaseSettings"))
    ModifyEndpointMessage.add_member(:microsoft_sql_server_settings, Shapes::ShapeRef.new(shape: MicrosoftSQLServerSettings, location_name: "MicrosoftSQLServerSettings"))
    ModifyEndpointMessage.add_member(:ibm_db_2_settings, Shapes::ShapeRef.new(shape: IBMDb2Settings, location_name: "IBMDb2Settings"))
    ModifyEndpointMessage.add_member(:doc_db_settings, Shapes::ShapeRef.new(shape: DocDbSettings, location_name: "DocDbSettings"))
    ModifyEndpointMessage.add_member(:redis_settings, Shapes::ShapeRef.new(shape: RedisSettings, location_name: "RedisSettings"))
    ModifyEndpointMessage.add_member(:exact_settings, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExactSettings"))
    ModifyEndpointMessage.add_member(:gcp_my_sql_settings, Shapes::ShapeRef.new(shape: GcpMySQLSettings, location_name: "GcpMySQLSettings"))
    ModifyEndpointMessage.add_member(:timestream_settings, Shapes::ShapeRef.new(shape: TimestreamSettings, location_name: "TimestreamSettings"))
    ModifyEndpointMessage.struct_class = Types::ModifyEndpointMessage

    ModifyEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    ModifyEndpointResponse.struct_class = Types::ModifyEndpointResponse

    ModifyEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    ModifyEventSubscriptionMessage.struct_class = Types::ModifyEventSubscriptionMessage

    ModifyEventSubscriptionResponse.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    ModifyEventSubscriptionResponse.struct_class = Types::ModifyEventSubscriptionResponse

    ModifyInstanceProfileMessage.add_member(:instance_profile_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceProfileIdentifier"))
    ModifyInstanceProfileMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ModifyInstanceProfileMessage.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    ModifyInstanceProfileMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    ModifyInstanceProfileMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ModifyInstanceProfileMessage.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    ModifyInstanceProfileMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyInstanceProfileMessage.add_member(:subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupIdentifier"))
    ModifyInstanceProfileMessage.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroups"))
    ModifyInstanceProfileMessage.struct_class = Types::ModifyInstanceProfileMessage

    ModifyInstanceProfileResponse.add_member(:instance_profile, Shapes::ShapeRef.new(shape: InstanceProfile, location_name: "InstanceProfile"))
    ModifyInstanceProfileResponse.struct_class = Types::ModifyInstanceProfileResponse

    ModifyMigrationProjectMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MigrationProjectIdentifier"))
    ModifyMigrationProjectMessage.add_member(:migration_project_name, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectName"))
    ModifyMigrationProjectMessage.add_member(:source_data_provider_descriptors, Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, location_name: "SourceDataProviderDescriptors"))
    ModifyMigrationProjectMessage.add_member(:target_data_provider_descriptors, Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, location_name: "TargetDataProviderDescriptors"))
    ModifyMigrationProjectMessage.add_member(:instance_profile_identifier, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileIdentifier"))
    ModifyMigrationProjectMessage.add_member(:transformation_rules, Shapes::ShapeRef.new(shape: String, location_name: "TransformationRules"))
    ModifyMigrationProjectMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyMigrationProjectMessage.add_member(:schema_conversion_application_attributes, Shapes::ShapeRef.new(shape: SCApplicationAttributes, location_name: "SchemaConversionApplicationAttributes"))
    ModifyMigrationProjectMessage.struct_class = Types::ModifyMigrationProjectMessage

    ModifyMigrationProjectResponse.add_member(:migration_project, Shapes::ShapeRef.new(shape: MigrationProject, location_name: "MigrationProject"))
    ModifyMigrationProjectResponse.struct_class = Types::ModifyMigrationProjectResponse

    ModifyReplicationConfigMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigArn"))
    ModifyReplicationConfigMessage.add_member(:replication_config_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier"))
    ModifyReplicationConfigMessage.add_member(:replication_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType"))
    ModifyReplicationConfigMessage.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ModifyReplicationConfigMessage.add_member(:replication_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSettings"))
    ModifyReplicationConfigMessage.add_member(:supplemental_settings, Shapes::ShapeRef.new(shape: String, location_name: "SupplementalSettings"))
    ModifyReplicationConfigMessage.add_member(:compute_config, Shapes::ShapeRef.new(shape: ComputeConfig, location_name: "ComputeConfig"))
    ModifyReplicationConfigMessage.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ModifyReplicationConfigMessage.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ModifyReplicationConfigMessage.struct_class = Types::ModifyReplicationConfigMessage

    ModifyReplicationConfigResponse.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    ModifyReplicationConfigResponse.struct_class = Types::ModifyReplicationConfigResponse

    ModifyReplicationInstanceMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    ModifyReplicationInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyReplicationInstanceMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    ModifyReplicationInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyReplicationInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyReplicationInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ModifyReplicationInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyReplicationInstanceMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade"))
    ModifyReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    ModifyReplicationInstanceMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ModifyReplicationInstanceMessage.add_member(:kerberos_authentication_settings, Shapes::ShapeRef.new(shape: KerberosAuthenticationSettings, location_name: "KerberosAuthenticationSettings"))
    ModifyReplicationInstanceMessage.struct_class = Types::ModifyReplicationInstanceMessage

    ModifyReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    ModifyReplicationInstanceResponse.struct_class = Types::ModifyReplicationInstanceResponse

    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupIdentifier"))
    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription"))
    ModifyReplicationSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyReplicationSubnetGroupMessage.struct_class = Types::ModifyReplicationSubnetGroupMessage

    ModifyReplicationSubnetGroupResponse.add_member(:replication_subnet_group, Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    ModifyReplicationSubnetGroupResponse.struct_class = Types::ModifyReplicationSubnetGroupResponse

    ModifyReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    ModifyReplicationTaskMessage.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ModifyReplicationTaskMessage.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    ModifyReplicationTaskMessage.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ModifyReplicationTaskMessage.add_member(:replication_task_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    ModifyReplicationTaskMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    ModifyReplicationTaskMessage.add_member(:task_data, Shapes::ShapeRef.new(shape: String, location_name: "TaskData"))
    ModifyReplicationTaskMessage.struct_class = Types::ModifyReplicationTaskMessage

    ModifyReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    ModifyReplicationTaskResponse.struct_class = Types::ModifyReplicationTaskResponse

    MongoDbDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MongoDbDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MongoDbDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MongoDbDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MongoDbDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MongoDbDataProviderSettings.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthTypeValue, location_name: "AuthType"))
    MongoDbDataProviderSettings.add_member(:auth_source, Shapes::ShapeRef.new(shape: String, location_name: "AuthSource"))
    MongoDbDataProviderSettings.add_member(:auth_mechanism, Shapes::ShapeRef.new(shape: AuthMechanismValue, location_name: "AuthMechanism"))
    MongoDbDataProviderSettings.struct_class = Types::MongoDbDataProviderSettings

    MongoDbSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MongoDbSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MongoDbSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MongoDbSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MongoDbSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MongoDbSettings.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthTypeValue, location_name: "AuthType"))
    MongoDbSettings.add_member(:auth_mechanism, Shapes::ShapeRef.new(shape: AuthMechanismValue, location_name: "AuthMechanism"))
    MongoDbSettings.add_member(:nesting_level, Shapes::ShapeRef.new(shape: NestingLevelValue, location_name: "NestingLevel"))
    MongoDbSettings.add_member(:extract_doc_id, Shapes::ShapeRef.new(shape: String, location_name: "ExtractDocId"))
    MongoDbSettings.add_member(:docs_to_investigate, Shapes::ShapeRef.new(shape: String, location_name: "DocsToInvestigate"))
    MongoDbSettings.add_member(:auth_source, Shapes::ShapeRef.new(shape: String, location_name: "AuthSource"))
    MongoDbSettings.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    MongoDbSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    MongoDbSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    MongoDbSettings.add_member(:use_update_look_up, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseUpdateLookUp"))
    MongoDbSettings.add_member(:replicate_shard_collections, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReplicateShardCollections"))
    MongoDbSettings.struct_class = Types::MongoDbSettings

    MoveReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    MoveReplicationTaskMessage.add_member(:target_replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetReplicationInstanceArn"))
    MoveReplicationTaskMessage.struct_class = Types::MoveReplicationTaskMessage

    MoveReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    MoveReplicationTaskResponse.struct_class = Types::MoveReplicationTaskResponse

    MySQLSettings.add_member(:after_connect_script, Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    MySQLSettings.add_member(:clean_source_metadata_on_mismatch, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CleanSourceMetadataOnMismatch"))
    MySQLSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MySQLSettings.add_member(:events_poll_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "EventsPollInterval"))
    MySQLSettings.add_member(:target_db_type, Shapes::ShapeRef.new(shape: TargetDbType, location_name: "TargetDbType"))
    MySQLSettings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    MySQLSettings.add_member(:parallel_load_threads, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ParallelLoadThreads"))
    MySQLSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MySQLSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MySQLSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MySQLSettings.add_member(:server_timezone, Shapes::ShapeRef.new(shape: String, location_name: "ServerTimezone"))
    MySQLSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MySQLSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    MySQLSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    MySQLSettings.add_member(:execute_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ExecuteTimeout"))
    MySQLSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    MySQLSettings.add_member(:authentication_method, Shapes::ShapeRef.new(shape: MySQLAuthenticationMethod, location_name: "AuthenticationMethod"))
    MySQLSettings.struct_class = Types::MySQLSettings

    MySqlDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MySqlDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MySqlDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MySqlDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MySqlDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    MySqlDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    MySqlDataProviderSettings.struct_class = Types::MySqlDataProviderSettings

    NeptuneSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    NeptuneSettings.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketName"))
    NeptuneSettings.add_member(:s3_bucket_folder, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketFolder"))
    NeptuneSettings.add_member(:error_retry_duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ErrorRetryDuration"))
    NeptuneSettings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    NeptuneSettings.add_member(:max_retry_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRetryCount"))
    NeptuneSettings.add_member(:iam_auth_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IamAuthEnabled"))
    NeptuneSettings.struct_class = Types::NeptuneSettings

    OracleDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    OracleDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    OracleDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    OracleDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    OracleDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    OracleDataProviderSettings.add_member(:asm_server, Shapes::ShapeRef.new(shape: String, location_name: "AsmServer"))
    OracleDataProviderSettings.add_member(:secrets_manager_oracle_asm_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmSecretId"))
    OracleDataProviderSettings.add_member(:secrets_manager_oracle_asm_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmAccessRoleArn"))
    OracleDataProviderSettings.add_member(:secrets_manager_security_db_encryption_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecurityDbEncryptionSecretId"))
    OracleDataProviderSettings.add_member(:secrets_manager_security_db_encryption_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecurityDbEncryptionAccessRoleArn"))
    OracleDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    OracleDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    OracleDataProviderSettings.struct_class = Types::OracleDataProviderSettings

    OracleSettings.add_member(:add_supplemental_logging, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AddSupplementalLogging"))
    OracleSettings.add_member(:archived_log_dest_id, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ArchivedLogDestId"))
    OracleSettings.add_member(:additional_archived_log_dest_id, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AdditionalArchivedLogDestId"))
    OracleSettings.add_member(:extra_archived_log_dest_ids, Shapes::ShapeRef.new(shape: IntegerList, location_name: "ExtraArchivedLogDestIds"))
    OracleSettings.add_member(:allow_select_nested_tables, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowSelectNestedTables"))
    OracleSettings.add_member(:parallel_asm_read_threads, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ParallelAsmReadThreads"))
    OracleSettings.add_member(:read_ahead_blocks, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ReadAheadBlocks"))
    OracleSettings.add_member(:access_alternate_directly, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AccessAlternateDirectly"))
    OracleSettings.add_member(:use_alternate_folder_for_online, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseAlternateFolderForOnline"))
    OracleSettings.add_member(:oracle_path_prefix, Shapes::ShapeRef.new(shape: String, location_name: "OraclePathPrefix"))
    OracleSettings.add_member(:use_path_prefix, Shapes::ShapeRef.new(shape: String, location_name: "UsePathPrefix"))
    OracleSettings.add_member(:replace_path_prefix, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReplacePathPrefix"))
    OracleSettings.add_member(:enable_homogenous_tablespace, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableHomogenousTablespace"))
    OracleSettings.add_member(:direct_path_no_log, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DirectPathNoLog"))
    OracleSettings.add_member(:archived_logs_only, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ArchivedLogsOnly"))
    OracleSettings.add_member(:asm_password, Shapes::ShapeRef.new(shape: SecretString, location_name: "AsmPassword"))
    OracleSettings.add_member(:asm_server, Shapes::ShapeRef.new(shape: String, location_name: "AsmServer"))
    OracleSettings.add_member(:asm_user, Shapes::ShapeRef.new(shape: String, location_name: "AsmUser"))
    OracleSettings.add_member(:char_length_semantics, Shapes::ShapeRef.new(shape: CharLengthSemantics, location_name: "CharLengthSemantics"))
    OracleSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    OracleSettings.add_member(:direct_path_parallel_load, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DirectPathParallelLoad"))
    OracleSettings.add_member(:fail_tasks_on_lob_truncation, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "FailTasksOnLobTruncation"))
    OracleSettings.add_member(:number_datatype_scale, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberDatatypeScale"))
    OracleSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    OracleSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    OracleSettings.add_member(:read_table_space_name, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReadTableSpaceName"))
    OracleSettings.add_member(:retry_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "RetryInterval"))
    OracleSettings.add_member(:security_db_encryption, Shapes::ShapeRef.new(shape: SecretString, location_name: "SecurityDbEncryption"))
    OracleSettings.add_member(:security_db_encryption_name, Shapes::ShapeRef.new(shape: String, location_name: "SecurityDbEncryptionName"))
    OracleSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    OracleSettings.add_member(:spatial_data_option_to_geo_json_function_name, Shapes::ShapeRef.new(shape: String, location_name: "SpatialDataOptionToGeoJsonFunctionName"))
    OracleSettings.add_member(:standby_delay_time, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StandbyDelayTime"))
    OracleSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    OracleSettings.add_member(:use_b_file, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseBFile"))
    OracleSettings.add_member(:use_direct_path_full_load, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDirectPathFullLoad"))
    OracleSettings.add_member(:use_logminer_reader, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseLogminerReader"))
    OracleSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    OracleSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    OracleSettings.add_member(:secrets_manager_oracle_asm_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmAccessRoleArn"))
    OracleSettings.add_member(:secrets_manager_oracle_asm_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmSecretId"))
    OracleSettings.add_member(:trim_space_in_char, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimSpaceInChar"))
    OracleSettings.add_member(:convert_timestamp_with_zone_to_utc, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ConvertTimestampWithZoneToUTC"))
    OracleSettings.add_member(:open_transaction_window, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "OpenTransactionWindow"))
    OracleSettings.add_member(:authentication_method, Shapes::ShapeRef.new(shape: OracleAuthenticationMethod, location_name: "AuthenticationMethod"))
    OracleSettings.struct_class = Types::OracleSettings

    OrderableReplicationInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    OrderableReplicationInstance.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    OrderableReplicationInstance.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    OrderableReplicationInstance.add_member(:min_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "MinAllocatedStorage"))
    OrderableReplicationInstance.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAllocatedStorage"))
    OrderableReplicationInstance.add_member(:default_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "DefaultAllocatedStorage"))
    OrderableReplicationInstance.add_member(:included_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "IncludedAllocatedStorage"))
    OrderableReplicationInstance.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: "AvailabilityZones"))
    OrderableReplicationInstance.add_member(:release_status, Shapes::ShapeRef.new(shape: ReleaseStatusValues, location_name: "ReleaseStatus"))
    OrderableReplicationInstance.struct_class = Types::OrderableReplicationInstance

    OrderableReplicationInstanceList.member = Shapes::ShapeRef.new(shape: OrderableReplicationInstance)

    PendingMaintenanceAction.add_member(:action, Shapes::ShapeRef.new(shape: String, location_name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: String, location_name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PendingMaintenanceAction.struct_class = Types::PendingMaintenanceAction

    PendingMaintenanceActionDetails.member = Shapes::ShapeRef.new(shape: PendingMaintenanceAction)

    PendingMaintenanceActions.member = Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions)

    PostgreSQLSettings.add_member(:after_connect_script, Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    PostgreSQLSettings.add_member(:capture_ddls, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CaptureDdls"))
    PostgreSQLSettings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    PostgreSQLSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    PostgreSQLSettings.add_member(:ddl_artifacts_schema, Shapes::ShapeRef.new(shape: String, location_name: "DdlArtifactsSchema"))
    PostgreSQLSettings.add_member(:execute_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ExecuteTimeout"))
    PostgreSQLSettings.add_member(:fail_tasks_on_lob_truncation, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "FailTasksOnLobTruncation"))
    PostgreSQLSettings.add_member(:heartbeat_enable, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "HeartbeatEnable"))
    PostgreSQLSettings.add_member(:heartbeat_schema, Shapes::ShapeRef.new(shape: String, location_name: "HeartbeatSchema"))
    PostgreSQLSettings.add_member(:heartbeat_frequency, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "HeartbeatFrequency"))
    PostgreSQLSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    PostgreSQLSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PostgreSQLSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    PostgreSQLSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    PostgreSQLSettings.add_member(:slot_name, Shapes::ShapeRef.new(shape: String, location_name: "SlotName"))
    PostgreSQLSettings.add_member(:plugin_name, Shapes::ShapeRef.new(shape: PluginNameValue, location_name: "PluginName"))
    PostgreSQLSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    PostgreSQLSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    PostgreSQLSettings.add_member(:trim_space_in_char, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimSpaceInChar"))
    PostgreSQLSettings.add_member(:map_boolean_as_boolean, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MapBooleanAsBoolean"))
    PostgreSQLSettings.add_member(:map_jsonb_as_clob, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MapJsonbAsClob"))
    PostgreSQLSettings.add_member(:map_long_varchar_as, Shapes::ShapeRef.new(shape: LongVarcharMappingType, location_name: "MapLongVarcharAs"))
    PostgreSQLSettings.add_member(:database_mode, Shapes::ShapeRef.new(shape: DatabaseMode, location_name: "DatabaseMode"))
    PostgreSQLSettings.add_member(:babelfish_database_name, Shapes::ShapeRef.new(shape: String, location_name: "BabelfishDatabaseName"))
    PostgreSQLSettings.add_member(:disable_unicode_source_filter, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DisableUnicodeSourceFilter"))
    PostgreSQLSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    PostgreSQLSettings.add_member(:authentication_method, Shapes::ShapeRef.new(shape: PostgreSQLAuthenticationMethod, location_name: "AuthenticationMethod"))
    PostgreSQLSettings.struct_class = Types::PostgreSQLSettings

    PostgreSqlDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    PostgreSqlDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PostgreSqlDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    PostgreSqlDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    PostgreSqlDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    PostgreSqlDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    PostgreSqlDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    PostgreSqlDataProviderSettings.struct_class = Types::PostgreSqlDataProviderSettings

    PremigrationAssessmentStatus.add_member(:premigration_assessment_run_arn, Shapes::ShapeRef.new(shape: String, location_name: "PremigrationAssessmentRunArn"))
    PremigrationAssessmentStatus.add_member(:fail_on_assessment_failure, Shapes::ShapeRef.new(shape: Boolean, location_name: "FailOnAssessmentFailure"))
    PremigrationAssessmentStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    PremigrationAssessmentStatus.add_member(:premigration_assessment_run_creation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "PremigrationAssessmentRunCreationDate"))
    PremigrationAssessmentStatus.add_member(:assessment_progress, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunProgress, location_name: "AssessmentProgress"))
    PremigrationAssessmentStatus.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    PremigrationAssessmentStatus.add_member(:result_location_bucket, Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationBucket"))
    PremigrationAssessmentStatus.add_member(:result_location_folder, Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationFolder"))
    PremigrationAssessmentStatus.add_member(:result_encryption_mode, Shapes::ShapeRef.new(shape: String, location_name: "ResultEncryptionMode"))
    PremigrationAssessmentStatus.add_member(:result_kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResultKmsKeyArn"))
    PremigrationAssessmentStatus.add_member(:result_statistic, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunResultStatistic, location_name: "ResultStatistic"))
    PremigrationAssessmentStatus.struct_class = Types::PremigrationAssessmentStatus

    PremigrationAssessmentStatusList.member = Shapes::ShapeRef.new(shape: PremigrationAssessmentStatus)

    ProcessedObject.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ProcessedObject.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ProcessedObject.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    ProcessedObject.struct_class = Types::ProcessedObject

    Progress.add_member(:progress_percent, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "ProgressPercent"))
    Progress.add_member(:total_objects, Shapes::ShapeRef.new(shape: Long, location_name: "TotalObjects"))
    Progress.add_member(:progress_step, Shapes::ShapeRef.new(shape: String, location_name: "ProgressStep"))
    Progress.add_member(:processed_object, Shapes::ShapeRef.new(shape: ProcessedObject, location_name: "ProcessedObject"))
    Progress.struct_class = Types::Progress

    ProvisionData.add_member(:provision_state, Shapes::ShapeRef.new(shape: String, location_name: "ProvisionState"))
    ProvisionData.add_member(:provisioned_capacity_units, Shapes::ShapeRef.new(shape: Integer, location_name: "ProvisionedCapacityUnits"))
    ProvisionData.add_member(:date_provisioned, Shapes::ShapeRef.new(shape: TStamp, location_name: "DateProvisioned"))
    ProvisionData.add_member(:is_new_provisioning_available, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsNewProvisioningAvailable"))
    ProvisionData.add_member(:date_new_provisioning_data_available, Shapes::ShapeRef.new(shape: TStamp, location_name: "DateNewProvisioningDataAvailable"))
    ProvisionData.add_member(:reason_for_new_provisioning_data, Shapes::ShapeRef.new(shape: String, location_name: "ReasonForNewProvisioningData"))
    ProvisionData.struct_class = Types::ProvisionData

    PublicIpAddressList.member = Shapes::ShapeRef.new(shape: String)

    RdsConfiguration.add_member(:engine_edition, Shapes::ShapeRef.new(shape: String, location_name: "EngineEdition"))
    RdsConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    RdsConfiguration.add_member(:instance_vcpu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceVcpu"))
    RdsConfiguration.add_member(:instance_memory, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceMemory"))
    RdsConfiguration.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RdsConfiguration.add_member(:storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageSize"))
    RdsConfiguration.add_member(:storage_iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageIops"))
    RdsConfiguration.add_member(:deployment_option, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentOption"))
    RdsConfiguration.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RdsConfiguration.struct_class = Types::RdsConfiguration

    RdsRecommendation.add_member(:requirements_to_target, Shapes::ShapeRef.new(shape: RdsRequirements, location_name: "RequirementsToTarget"))
    RdsRecommendation.add_member(:target_configuration, Shapes::ShapeRef.new(shape: RdsConfiguration, location_name: "TargetConfiguration"))
    RdsRecommendation.struct_class = Types::RdsRecommendation

    RdsRequirements.add_member(:engine_edition, Shapes::ShapeRef.new(shape: String, location_name: "EngineEdition"))
    RdsRequirements.add_member(:instance_vcpu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceVcpu"))
    RdsRequirements.add_member(:instance_memory, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceMemory"))
    RdsRequirements.add_member(:storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageSize"))
    RdsRequirements.add_member(:storage_iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageIops"))
    RdsRequirements.add_member(:deployment_option, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentOption"))
    RdsRequirements.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RdsRequirements.struct_class = Types::RdsRequirements

    RebootReplicationInstanceMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    RebootReplicationInstanceMessage.add_member(:force_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootReplicationInstanceMessage.add_member(:force_planned_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForcePlannedFailover"))
    RebootReplicationInstanceMessage.struct_class = Types::RebootReplicationInstanceMessage

    RebootReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    RebootReplicationInstanceResponse.struct_class = Types::RebootReplicationInstanceResponse

    Recommendation.add_member(:database_id, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    Recommendation.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Recommendation.add_member(:created_date, Shapes::ShapeRef.new(shape: String, location_name: "CreatedDate"))
    Recommendation.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Recommendation.add_member(:preferred, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Preferred"))
    Recommendation.add_member(:settings, Shapes::ShapeRef.new(shape: RecommendationSettings, location_name: "Settings"))
    Recommendation.add_member(:data, Shapes::ShapeRef.new(shape: RecommendationData, location_name: "Data"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationData.add_member(:rds_engine, Shapes::ShapeRef.new(shape: RdsRecommendation, location_name: "RdsEngine"))
    RecommendationData.struct_class = Types::RecommendationData

    RecommendationList.member = Shapes::ShapeRef.new(shape: Recommendation)

    RecommendationSettings.add_member(:instance_sizing_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceSizingType"))
    RecommendationSettings.add_member(:workload_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "WorkloadType"))
    RecommendationSettings.struct_class = Types::RecommendationSettings

    RedisSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServerName"))
    RedisSettings.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Port"))
    RedisSettings.add_member(:ssl_security_protocol, Shapes::ShapeRef.new(shape: SslSecurityProtocolValue, location_name: "SslSecurityProtocol"))
    RedisSettings.add_member(:auth_type, Shapes::ShapeRef.new(shape: RedisAuthTypeValue, location_name: "AuthType"))
    RedisSettings.add_member(:auth_user_name, Shapes::ShapeRef.new(shape: String, location_name: "AuthUserName"))
    RedisSettings.add_member(:auth_password, Shapes::ShapeRef.new(shape: SecretString, location_name: "AuthPassword"))
    RedisSettings.add_member(:ssl_ca_certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "SslCaCertificateArn"))
    RedisSettings.struct_class = Types::RedisSettings

    RedshiftDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    RedshiftDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RedshiftDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RedshiftDataProviderSettings.add_member(:s3_path, Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    RedshiftDataProviderSettings.add_member(:s3_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    RedshiftDataProviderSettings.struct_class = Types::RedshiftDataProviderSettings

    RedshiftSettings.add_member(:accept_any_date, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AcceptAnyDate"))
    RedshiftSettings.add_member(:after_connect_script, Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    RedshiftSettings.add_member(:bucket_folder, Shapes::ShapeRef.new(shape: String, location_name: "BucketFolder"))
    RedshiftSettings.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    RedshiftSettings.add_member(:case_sensitive_names, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CaseSensitiveNames"))
    RedshiftSettings.add_member(:comp_update, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CompUpdate"))
    RedshiftSettings.add_member(:connection_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ConnectionTimeout"))
    RedshiftSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RedshiftSettings.add_member(:date_format, Shapes::ShapeRef.new(shape: String, location_name: "DateFormat"))
    RedshiftSettings.add_member(:empty_as_null, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EmptyAsNull"))
    RedshiftSettings.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionModeValue, location_name: "EncryptionMode"))
    RedshiftSettings.add_member(:explicit_ids, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExplicitIds"))
    RedshiftSettings.add_member(:file_transfer_upload_streams, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "FileTransferUploadStreams"))
    RedshiftSettings.add_member(:load_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "LoadTimeout"))
    RedshiftSettings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    RedshiftSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    RedshiftSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RedshiftSettings.add_member(:remove_quotes, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RemoveQuotes"))
    RedshiftSettings.add_member(:replace_invalid_chars, Shapes::ShapeRef.new(shape: String, location_name: "ReplaceInvalidChars"))
    RedshiftSettings.add_member(:replace_chars, Shapes::ShapeRef.new(shape: String, location_name: "ReplaceChars"))
    RedshiftSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    RedshiftSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    RedshiftSettings.add_member(:server_side_encryption_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "ServerSideEncryptionKmsKeyId"))
    RedshiftSettings.add_member(:time_format, Shapes::ShapeRef.new(shape: String, location_name: "TimeFormat"))
    RedshiftSettings.add_member(:trim_blanks, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimBlanks"))
    RedshiftSettings.add_member(:truncate_columns, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TruncateColumns"))
    RedshiftSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    RedshiftSettings.add_member(:write_buffer_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "WriteBufferSize"))
    RedshiftSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    RedshiftSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    RedshiftSettings.add_member(:map_boolean_as_boolean, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MapBooleanAsBoolean"))
    RedshiftSettings.struct_class = Types::RedshiftSettings

    RefreshSchemasMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    RefreshSchemasMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    RefreshSchemasMessage.struct_class = Types::RefreshSchemasMessage

    RefreshSchemasResponse.add_member(:refresh_schemas_status, Shapes::ShapeRef.new(shape: RefreshSchemasStatus, location_name: "RefreshSchemasStatus"))
    RefreshSchemasResponse.struct_class = Types::RefreshSchemasResponse

    RefreshSchemasStatus.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    RefreshSchemasStatus.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    RefreshSchemasStatus.add_member(:status, Shapes::ShapeRef.new(shape: RefreshSchemasStatusTypeValue, location_name: "Status"))
    RefreshSchemasStatus.add_member(:last_refresh_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastRefreshDate"))
    RefreshSchemasStatus.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    RefreshSchemasStatus.struct_class = Types::RefreshSchemasStatus

    ReloadReplicationTablesMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigArn"))
    ReloadReplicationTablesMessage.add_member(:tables_to_reload, Shapes::ShapeRef.new(shape: TableListToReload, required: true, location_name: "TablesToReload"))
    ReloadReplicationTablesMessage.add_member(:reload_option, Shapes::ShapeRef.new(shape: ReloadOptionValue, location_name: "ReloadOption"))
    ReloadReplicationTablesMessage.struct_class = Types::ReloadReplicationTablesMessage

    ReloadReplicationTablesResponse.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    ReloadReplicationTablesResponse.struct_class = Types::ReloadReplicationTablesResponse

    ReloadTablesMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    ReloadTablesMessage.add_member(:tables_to_reload, Shapes::ShapeRef.new(shape: TableListToReload, required: true, location_name: "TablesToReload"))
    ReloadTablesMessage.add_member(:reload_option, Shapes::ShapeRef.new(shape: ReloadOptionValue, location_name: "ReloadOption"))
    ReloadTablesMessage.struct_class = Types::ReloadTablesMessage

    ReloadTablesResponse.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReloadTablesResponse.struct_class = Types::ReloadTablesResponse

    RemoveTagsFromResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceMessage.struct_class = Types::RemoveTagsFromResourceMessage

    RemoveTagsFromResourceResponse.struct_class = Types::RemoveTagsFromResourceResponse

    Replication.add_member(:replication_config_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier"))
    Replication.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    Replication.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    Replication.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    Replication.add_member(:replication_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType"))
    Replication.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Replication.add_member(:provision_data, Shapes::ShapeRef.new(shape: ProvisionData, location_name: "ProvisionData"))
    Replication.add_member(:premigration_assessment_statuses, Shapes::ShapeRef.new(shape: PremigrationAssessmentStatusList, location_name: "PremigrationAssessmentStatuses"))
    Replication.add_member(:stop_reason, Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    Replication.add_member(:failure_messages, Shapes::ShapeRef.new(shape: StringList, location_name: "FailureMessages"))
    Replication.add_member(:replication_stats, Shapes::ShapeRef.new(shape: ReplicationStats, location_name: "ReplicationStats"))
    Replication.add_member(:start_replication_type, Shapes::ShapeRef.new(shape: String, location_name: "StartReplicationType"))
    Replication.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    Replication.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    Replication.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    Replication.add_member(:recovery_checkpoint, Shapes::ShapeRef.new(shape: String, location_name: "RecoveryCheckpoint"))
    Replication.add_member(:replication_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationCreateTime"))
    Replication.add_member(:replication_update_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationUpdateTime"))
    Replication.add_member(:replication_last_stop_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationLastStopTime"))
    Replication.add_member(:replication_deprovision_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationDeprovisionTime"))
    Replication.struct_class = Types::Replication

    ReplicationConfig.add_member(:replication_config_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier"))
    ReplicationConfig.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    ReplicationConfig.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ReplicationConfig.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ReplicationConfig.add_member(:replication_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType"))
    ReplicationConfig.add_member(:compute_config, Shapes::ShapeRef.new(shape: ComputeConfig, location_name: "ComputeConfig"))
    ReplicationConfig.add_member(:replication_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSettings"))
    ReplicationConfig.add_member(:supplemental_settings, Shapes::ShapeRef.new(shape: String, location_name: "SupplementalSettings"))
    ReplicationConfig.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ReplicationConfig.add_member(:replication_config_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationConfigCreateTime"))
    ReplicationConfig.add_member(:replication_config_update_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationConfigUpdateTime"))
    ReplicationConfig.struct_class = Types::ReplicationConfig

    ReplicationConfigList.member = Shapes::ShapeRef.new(shape: ReplicationConfig)

    ReplicationInstance.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    ReplicationInstance.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    ReplicationInstance.add_member(:replication_instance_status, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceStatus"))
    ReplicationInstance.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    ReplicationInstance.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    ReplicationInstance.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    ReplicationInstance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ReplicationInstance.add_member(:replication_subnet_group, Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    ReplicationInstance.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ReplicationInstance.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: ReplicationPendingModifiedValues, location_name: "PendingModifiedValues"))
    ReplicationInstance.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    ReplicationInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ReplicationInstance.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    ReplicationInstance.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ReplicationInstance.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    ReplicationInstance.add_member(:replication_instance_public_ip_address, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "ReplicationInstancePublicIpAddress"))
    ReplicationInstance.add_member(:replication_instance_private_ip_address, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "ReplicationInstancePrivateIpAddress"))
    ReplicationInstance.add_member(:replication_instance_public_ip_addresses, Shapes::ShapeRef.new(shape: ReplicationInstancePublicIpAddressList, location_name: "ReplicationInstancePublicIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_private_ip_addresses, Shapes::ShapeRef.new(shape: ReplicationInstancePrivateIpAddressList, location_name: "ReplicationInstancePrivateIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_ipv_6_addresses, Shapes::ShapeRef.new(shape: ReplicationInstanceIpv6AddressList, location_name: "ReplicationInstanceIpv6Addresses"))
    ReplicationInstance.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    ReplicationInstance.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SecondaryAvailabilityZone"))
    ReplicationInstance.add_member(:free_until, Shapes::ShapeRef.new(shape: TStamp, location_name: "FreeUntil"))
    ReplicationInstance.add_member(:dns_name_servers, Shapes::ShapeRef.new(shape: String, location_name: "DnsNameServers"))
    ReplicationInstance.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ReplicationInstance.add_member(:kerberos_authentication_settings, Shapes::ShapeRef.new(shape: KerberosAuthenticationSettings, location_name: "KerberosAuthenticationSettings"))
    ReplicationInstance.struct_class = Types::ReplicationInstance

    ReplicationInstanceIpv6AddressList.member = Shapes::ShapeRef.new(shape: String)

    ReplicationInstanceList.member = Shapes::ShapeRef.new(shape: ReplicationInstance)

    ReplicationInstancePrivateIpAddressList.member = Shapes::ShapeRef.new(shape: String)

    ReplicationInstancePublicIpAddressList.member = Shapes::ShapeRef.new(shape: String)

    ReplicationInstanceTaskLog.add_member(:replication_task_name, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskName"))
    ReplicationInstanceTaskLog.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationInstanceTaskLog.add_member(:replication_instance_task_log_size, Shapes::ShapeRef.new(shape: Long, location_name: "ReplicationInstanceTaskLogSize"))
    ReplicationInstanceTaskLog.struct_class = Types::ReplicationInstanceTaskLog

    ReplicationInstanceTaskLogsList.member = Shapes::ShapeRef.new(shape: ReplicationInstanceTaskLog)

    ReplicationList.member = Shapes::ShapeRef.new(shape: Replication)

    ReplicationPendingModifiedValues.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    ReplicationPendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ReplicationPendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ReplicationPendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ReplicationPendingModifiedValues.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ReplicationPendingModifiedValues.struct_class = Types::ReplicationPendingModifiedValues

    ReplicationStats.add_member(:full_load_progress_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadProgressPercent"))
    ReplicationStats.add_member(:elapsed_time_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis"))
    ReplicationStats.add_member(:tables_loaded, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded"))
    ReplicationStats.add_member(:tables_loading, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading"))
    ReplicationStats.add_member(:tables_queued, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued"))
    ReplicationStats.add_member(:tables_errored, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored"))
    ReplicationStats.add_member(:fresh_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "FreshStartDate"))
    ReplicationStats.add_member(:start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartDate"))
    ReplicationStats.add_member(:stop_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "StopDate"))
    ReplicationStats.add_member(:full_load_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadStartDate"))
    ReplicationStats.add_member(:full_load_finish_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadFinishDate"))
    ReplicationStats.struct_class = Types::ReplicationStats

    ReplicationSubnetGroup.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier"))
    ReplicationSubnetGroup.add_member(:replication_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription"))
    ReplicationSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ReplicationSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    ReplicationSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    ReplicationSubnetGroup.add_member(:supported_network_types, Shapes::ShapeRef.new(shape: StringList, location_name: "SupportedNetworkTypes"))
    ReplicationSubnetGroup.struct_class = Types::ReplicationSubnetGroup

    ReplicationSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReplicationSubnetGroupDoesNotCoverEnoughAZs.struct_class = Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs

    ReplicationSubnetGroups.member = Shapes::ShapeRef.new(shape: ReplicationSubnetGroup)

    ReplicationTableStatisticsList.member = Shapes::ShapeRef.new(shape: TableStatistics)

    ReplicationTask.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ReplicationTask.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ReplicationTask.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ReplicationTask.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    ReplicationTask.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    ReplicationTask.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ReplicationTask.add_member(:replication_task_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    ReplicationTask.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTask.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    ReplicationTask.add_member(:stop_reason, Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    ReplicationTask.add_member(:replication_task_creation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskCreationDate"))
    ReplicationTask.add_member(:replication_task_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskStartDate"))
    ReplicationTask.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    ReplicationTask.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    ReplicationTask.add_member(:recovery_checkpoint, Shapes::ShapeRef.new(shape: String, location_name: "RecoveryCheckpoint"))
    ReplicationTask.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTask.add_member(:replication_task_stats, Shapes::ShapeRef.new(shape: ReplicationTaskStats, location_name: "ReplicationTaskStats"))
    ReplicationTask.add_member(:task_data, Shapes::ShapeRef.new(shape: String, location_name: "TaskData"))
    ReplicationTask.add_member(:target_replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetReplicationInstanceArn"))
    ReplicationTask.struct_class = Types::ReplicationTask

    ReplicationTaskAssessmentResult.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_last_assessment_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskLastAssessmentDate"))
    ReplicationTaskAssessmentResult.add_member(:assessment_status, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentStatus"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results_file, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentResultsFile"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentResults"))
    ReplicationTaskAssessmentResult.add_member(:s3_object_url, Shapes::ShapeRef.new(shape: SecretString, location_name: "S3ObjectUrl"))
    ReplicationTaskAssessmentResult.struct_class = Types::ReplicationTaskAssessmentResult

    ReplicationTaskAssessmentResultList.member = Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentResult)

    ReplicationTaskAssessmentRun.add_member(:replication_task_assessment_run_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskAssessmentRunArn"))
    ReplicationTaskAssessmentRun.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentRun.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTaskAssessmentRun.add_member(:replication_task_assessment_run_creation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskAssessmentRunCreationDate"))
    ReplicationTaskAssessmentRun.add_member(:assessment_progress, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunProgress, location_name: "AssessmentProgress"))
    ReplicationTaskAssessmentRun.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    ReplicationTaskAssessmentRun.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ReplicationTaskAssessmentRun.add_member(:result_location_bucket, Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationBucket"))
    ReplicationTaskAssessmentRun.add_member(:result_location_folder, Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationFolder"))
    ReplicationTaskAssessmentRun.add_member(:result_encryption_mode, Shapes::ShapeRef.new(shape: String, location_name: "ResultEncryptionMode"))
    ReplicationTaskAssessmentRun.add_member(:result_kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResultKmsKeyArn"))
    ReplicationTaskAssessmentRun.add_member(:assessment_run_name, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentRunName"))
    ReplicationTaskAssessmentRun.add_member(:is_latest_task_assessment_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLatestTaskAssessmentRun"))
    ReplicationTaskAssessmentRun.add_member(:result_statistic, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunResultStatistic, location_name: "ResultStatistic"))
    ReplicationTaskAssessmentRun.struct_class = Types::ReplicationTaskAssessmentRun

    ReplicationTaskAssessmentRunList.member = Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun)

    ReplicationTaskAssessmentRunProgress.add_member(:individual_assessment_count, Shapes::ShapeRef.new(shape: Integer, location_name: "IndividualAssessmentCount"))
    ReplicationTaskAssessmentRunProgress.add_member(:individual_assessment_completed_count, Shapes::ShapeRef.new(shape: Integer, location_name: "IndividualAssessmentCompletedCount"))
    ReplicationTaskAssessmentRunProgress.struct_class = Types::ReplicationTaskAssessmentRunProgress

    ReplicationTaskAssessmentRunResultStatistic.add_member(:passed, Shapes::ShapeRef.new(shape: Integer, location_name: "Passed"))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "Failed"))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:error, Shapes::ShapeRef.new(shape: Integer, location_name: "Error"))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:warning, Shapes::ShapeRef.new(shape: Integer, location_name: "Warning"))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:cancelled, Shapes::ShapeRef.new(shape: Integer, location_name: "Cancelled"))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:skipped, Shapes::ShapeRef.new(shape: Integer, location_name: "Skipped"))
    ReplicationTaskAssessmentRunResultStatistic.struct_class = Types::ReplicationTaskAssessmentRunResultStatistic

    ReplicationTaskIndividualAssessment.add_member(:replication_task_individual_assessment_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIndividualAssessmentArn"))
    ReplicationTaskIndividualAssessment.add_member(:replication_task_assessment_run_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskAssessmentRunArn"))
    ReplicationTaskIndividualAssessment.add_member(:individual_assessment_name, Shapes::ShapeRef.new(shape: String, location_name: "IndividualAssessmentName"))
    ReplicationTaskIndividualAssessment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTaskIndividualAssessment.add_member(:replication_task_individual_assessment_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskIndividualAssessmentStartDate"))
    ReplicationTaskIndividualAssessment.struct_class = Types::ReplicationTaskIndividualAssessment

    ReplicationTaskIndividualAssessmentList.member = Shapes::ShapeRef.new(shape: ReplicationTaskIndividualAssessment)

    ReplicationTaskList.member = Shapes::ShapeRef.new(shape: ReplicationTask)

    ReplicationTaskStats.add_member(:full_load_progress_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadProgressPercent"))
    ReplicationTaskStats.add_member(:elapsed_time_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis"))
    ReplicationTaskStats.add_member(:tables_loaded, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded"))
    ReplicationTaskStats.add_member(:tables_loading, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading"))
    ReplicationTaskStats.add_member(:tables_queued, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued"))
    ReplicationTaskStats.add_member(:tables_errored, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored"))
    ReplicationTaskStats.add_member(:fresh_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "FreshStartDate"))
    ReplicationTaskStats.add_member(:start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartDate"))
    ReplicationTaskStats.add_member(:stop_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "StopDate"))
    ReplicationTaskStats.add_member(:full_load_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadStartDate"))
    ReplicationTaskStats.add_member(:full_load_finish_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadFinishDate"))
    ReplicationTaskStats.struct_class = Types::ReplicationTaskStats

    ResourceAlreadyExistsFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceAlreadyExistsFault.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    ResourceAlreadyExistsFault.struct_class = Types::ResourceAlreadyExistsFault

    ResourceNotFoundFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundFault.struct_class = Types::ResourceNotFoundFault

    ResourcePendingMaintenanceActions.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.struct_class = Types::ResourcePendingMaintenanceActions

    ResourceQuotaExceededFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceQuotaExceededFault.struct_class = Types::ResourceQuotaExceededFault

    RunFleetAdvisorLsaAnalysisResponse.add_member(:lsa_analysis_id, Shapes::ShapeRef.new(shape: String, location_name: "LsaAnalysisId"))
    RunFleetAdvisorLsaAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    RunFleetAdvisorLsaAnalysisResponse.struct_class = Types::RunFleetAdvisorLsaAnalysisResponse

    S3AccessDeniedFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    S3AccessDeniedFault.struct_class = Types::S3AccessDeniedFault

    S3ResourceNotFoundFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    S3ResourceNotFoundFault.struct_class = Types::S3ResourceNotFoundFault

    S3Settings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    S3Settings.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    S3Settings.add_member(:csv_row_delimiter, Shapes::ShapeRef.new(shape: String, location_name: "CsvRowDelimiter"))
    S3Settings.add_member(:csv_delimiter, Shapes::ShapeRef.new(shape: String, location_name: "CsvDelimiter"))
    S3Settings.add_member(:bucket_folder, Shapes::ShapeRef.new(shape: String, location_name: "BucketFolder"))
    S3Settings.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    S3Settings.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionTypeValue, location_name: "CompressionType"))
    S3Settings.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionModeValue, location_name: "EncryptionMode"))
    S3Settings.add_member(:server_side_encryption_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "ServerSideEncryptionKmsKeyId"))
    S3Settings.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormatValue, location_name: "DataFormat"))
    S3Settings.add_member(:encoding_type, Shapes::ShapeRef.new(shape: EncodingTypeValue, location_name: "EncodingType"))
    S3Settings.add_member(:dict_page_size_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DictPageSizeLimit"))
    S3Settings.add_member(:row_group_length, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "RowGroupLength"))
    S3Settings.add_member(:data_page_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DataPageSize"))
    S3Settings.add_member(:parquet_version, Shapes::ShapeRef.new(shape: ParquetVersionValue, location_name: "ParquetVersion"))
    S3Settings.add_member(:enable_statistics, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableStatistics"))
    S3Settings.add_member(:include_op_for_full_load, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeOpForFullLoad"))
    S3Settings.add_member(:cdc_inserts_only, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CdcInsertsOnly"))
    S3Settings.add_member(:timestamp_column_name, Shapes::ShapeRef.new(shape: String, location_name: "TimestampColumnName"))
    S3Settings.add_member(:parquet_timestamp_in_millisecond, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ParquetTimestampInMillisecond"))
    S3Settings.add_member(:cdc_inserts_and_updates, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CdcInsertsAndUpdates"))
    S3Settings.add_member(:date_partition_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DatePartitionEnabled"))
    S3Settings.add_member(:date_partition_sequence, Shapes::ShapeRef.new(shape: DatePartitionSequenceValue, location_name: "DatePartitionSequence"))
    S3Settings.add_member(:date_partition_delimiter, Shapes::ShapeRef.new(shape: DatePartitionDelimiterValue, location_name: "DatePartitionDelimiter"))
    S3Settings.add_member(:use_csv_no_sup_value, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseCsvNoSupValue"))
    S3Settings.add_member(:csv_no_sup_value, Shapes::ShapeRef.new(shape: String, location_name: "CsvNoSupValue"))
    S3Settings.add_member(:preserve_transactions, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PreserveTransactions"))
    S3Settings.add_member(:cdc_path, Shapes::ShapeRef.new(shape: String, location_name: "CdcPath"))
    S3Settings.add_member(:use_task_start_time_for_full_load_timestamp, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseTaskStartTimeForFullLoadTimestamp"))
    S3Settings.add_member(:canned_acl_for_objects, Shapes::ShapeRef.new(shape: CannedAclForObjectsValue, location_name: "CannedAclForObjects"))
    S3Settings.add_member(:add_column_name, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AddColumnName"))
    S3Settings.add_member(:cdc_max_batch_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "CdcMaxBatchInterval"))
    S3Settings.add_member(:cdc_min_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "CdcMinFileSize"))
    S3Settings.add_member(:csv_null_value, Shapes::ShapeRef.new(shape: String, location_name: "CsvNullValue"))
    S3Settings.add_member(:ignore_header_rows, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IgnoreHeaderRows"))
    S3Settings.add_member(:max_file_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    S3Settings.add_member(:rfc_4180, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Rfc4180"))
    S3Settings.add_member(:date_partition_timezone, Shapes::ShapeRef.new(shape: String, location_name: "DatePartitionTimezone"))
    S3Settings.add_member(:add_trailing_padding_character, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AddTrailingPaddingCharacter"))
    S3Settings.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: String, location_name: "ExpectedBucketOwner"))
    S3Settings.add_member(:glue_catalog_generation, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "GlueCatalogGeneration"))
    S3Settings.struct_class = Types::S3Settings

    SCApplicationAttributes.add_member(:s3_bucket_path, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketPath"))
    SCApplicationAttributes.add_member(:s3_bucket_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketRoleArn"))
    SCApplicationAttributes.struct_class = Types::SCApplicationAttributes

    SNSInvalidTopicFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SNSInvalidTopicFault.struct_class = Types::SNSInvalidTopicFault

    SNSNoAuthorizationFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SNSNoAuthorizationFault.struct_class = Types::SNSNoAuthorizationFault

    SchemaConversionRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SchemaConversionRequest.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    SchemaConversionRequest.add_member(:migration_project_arn, Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectArn"))
    SchemaConversionRequest.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "Error"))
    SchemaConversionRequest.add_member(:export_sql_details, Shapes::ShapeRef.new(shape: ExportSqlDetails, location_name: "ExportSqlDetails"))
    SchemaConversionRequest.add_member(:progress, Shapes::ShapeRef.new(shape: Progress, location_name: "Progress"))
    SchemaConversionRequest.struct_class = Types::SchemaConversionRequest

    SchemaConversionRequestList.member = Shapes::ShapeRef.new(shape: SchemaConversionRequest)

    SchemaList.member = Shapes::ShapeRef.new(shape: String)

    SchemaResponse.add_member(:code_line_count, Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeLineCount"))
    SchemaResponse.add_member(:code_size, Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeSize"))
    SchemaResponse.add_member(:complexity, Shapes::ShapeRef.new(shape: String, location_name: "Complexity"))
    SchemaResponse.add_member(:server, Shapes::ShapeRef.new(shape: ServerShortInfoResponse, location_name: "Server"))
    SchemaResponse.add_member(:database_instance, Shapes::ShapeRef.new(shape: DatabaseShortInfoResponse, location_name: "DatabaseInstance"))
    SchemaResponse.add_member(:schema_id, Shapes::ShapeRef.new(shape: String, location_name: "SchemaId"))
    SchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    SchemaResponse.add_member(:original_schema, Shapes::ShapeRef.new(shape: SchemaShortInfoResponse, location_name: "OriginalSchema"))
    SchemaResponse.add_member(:similarity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "Similarity"))
    SchemaResponse.struct_class = Types::SchemaResponse

    SchemaShortInfoResponse.add_member(:schema_id, Shapes::ShapeRef.new(shape: String, location_name: "SchemaId"))
    SchemaShortInfoResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    SchemaShortInfoResponse.add_member(:database_id, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    SchemaShortInfoResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    SchemaShortInfoResponse.add_member(:database_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseIpAddress"))
    SchemaShortInfoResponse.struct_class = Types::SchemaShortInfoResponse

    ServerShortInfoResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: String, location_name: "ServerId"))
    ServerShortInfoResponse.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    ServerShortInfoResponse.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    ServerShortInfoResponse.struct_class = Types::ServerShortInfoResponse

    SourceDataSetting.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CDCStartPosition"))
    SourceDataSetting.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CDCStartTime"))
    SourceDataSetting.add_member(:cdc_stop_time, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CDCStopTime"))
    SourceDataSetting.add_member(:slot_name, Shapes::ShapeRef.new(shape: String, location_name: "SlotName"))
    SourceDataSetting.struct_class = Types::SourceDataSetting

    SourceDataSettings.member = Shapes::ShapeRef.new(shape: SourceDataSetting)

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String)

    StartDataMigrationMessage.add_member(:data_migration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataMigrationIdentifier"))
    StartDataMigrationMessage.add_member(:start_type, Shapes::ShapeRef.new(shape: StartReplicationMigrationTypeValue, required: true, location_name: "StartType"))
    StartDataMigrationMessage.struct_class = Types::StartDataMigrationMessage

    StartDataMigrationResponse.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    StartDataMigrationResponse.struct_class = Types::StartDataMigrationResponse

    StartExtensionPackAssociationMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartExtensionPackAssociationMessage.struct_class = Types::StartExtensionPackAssociationMessage

    StartExtensionPackAssociationResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartExtensionPackAssociationResponse.struct_class = Types::StartExtensionPackAssociationResponse

    StartMetadataModelAssessmentMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartMetadataModelAssessmentMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    StartMetadataModelAssessmentMessage.struct_class = Types::StartMetadataModelAssessmentMessage

    StartMetadataModelAssessmentResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelAssessmentResponse.struct_class = Types::StartMetadataModelAssessmentResponse

    StartMetadataModelConversionMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartMetadataModelConversionMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    StartMetadataModelConversionMessage.struct_class = Types::StartMetadataModelConversionMessage

    StartMetadataModelConversionResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelConversionResponse.struct_class = Types::StartMetadataModelConversionResponse

    StartMetadataModelCreationMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartMetadataModelCreationMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    StartMetadataModelCreationMessage.add_member(:metadata_model_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MetadataModelName"))
    StartMetadataModelCreationMessage.add_member(:properties, Shapes::ShapeRef.new(shape: MetadataModelProperties, required: true, location_name: "Properties"))
    StartMetadataModelCreationMessage.struct_class = Types::StartMetadataModelCreationMessage

    StartMetadataModelCreationResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelCreationResponse.struct_class = Types::StartMetadataModelCreationResponse

    StartMetadataModelExportAsScriptMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartMetadataModelExportAsScriptMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    StartMetadataModelExportAsScriptMessage.add_member(:origin, Shapes::ShapeRef.new(shape: OriginTypeValue, required: true, location_name: "Origin"))
    StartMetadataModelExportAsScriptMessage.add_member(:file_name, Shapes::ShapeRef.new(shape: String, location_name: "FileName"))
    StartMetadataModelExportAsScriptMessage.struct_class = Types::StartMetadataModelExportAsScriptMessage

    StartMetadataModelExportAsScriptResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelExportAsScriptResponse.struct_class = Types::StartMetadataModelExportAsScriptResponse

    StartMetadataModelExportToTargetMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartMetadataModelExportToTargetMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    StartMetadataModelExportToTargetMessage.add_member(:overwrite_extension_pack, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "OverwriteExtensionPack"))
    StartMetadataModelExportToTargetMessage.struct_class = Types::StartMetadataModelExportToTargetMessage

    StartMetadataModelExportToTargetResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelExportToTargetResponse.struct_class = Types::StartMetadataModelExportToTargetResponse

    StartMetadataModelImportMessage.add_member(:migration_project_identifier, Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, required: true, location_name: "MigrationProjectIdentifier"))
    StartMetadataModelImportMessage.add_member(:selection_rules, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SelectionRules"))
    StartMetadataModelImportMessage.add_member(:origin, Shapes::ShapeRef.new(shape: OriginTypeValue, required: true, location_name: "Origin"))
    StartMetadataModelImportMessage.add_member(:refresh, Shapes::ShapeRef.new(shape: Boolean, location_name: "Refresh"))
    StartMetadataModelImportMessage.struct_class = Types::StartMetadataModelImportMessage

    StartMetadataModelImportResponse.add_member(:request_identifier, Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelImportResponse.struct_class = Types::StartMetadataModelImportResponse

    StartRecommendationsRequest.add_member(:database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DatabaseId"))
    StartRecommendationsRequest.add_member(:settings, Shapes::ShapeRef.new(shape: RecommendationSettings, required: true, location_name: "Settings"))
    StartRecommendationsRequest.struct_class = Types::StartRecommendationsRequest

    StartRecommendationsRequestEntry.add_member(:database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DatabaseId"))
    StartRecommendationsRequestEntry.add_member(:settings, Shapes::ShapeRef.new(shape: RecommendationSettings, required: true, location_name: "Settings"))
    StartRecommendationsRequestEntry.struct_class = Types::StartRecommendationsRequestEntry

    StartRecommendationsRequestEntryList.member = Shapes::ShapeRef.new(shape: StartRecommendationsRequestEntry)

    StartReplicationMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigArn"))
    StartReplicationMessage.add_member(:start_replication_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StartReplicationType"))
    StartReplicationMessage.add_member(:premigration_assessment_settings, Shapes::ShapeRef.new(shape: String, location_name: "PremigrationAssessmentSettings"))
    StartReplicationMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    StartReplicationMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    StartReplicationMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    StartReplicationMessage.struct_class = Types::StartReplicationMessage

    StartReplicationResponse.add_member(:replication, Shapes::ShapeRef.new(shape: Replication, location_name: "Replication"))
    StartReplicationResponse.struct_class = Types::StartReplicationResponse

    StartReplicationTaskAssessmentMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StartReplicationTaskAssessmentMessage.struct_class = Types::StartReplicationTaskAssessmentMessage

    StartReplicationTaskAssessmentResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StartReplicationTaskAssessmentResponse.struct_class = Types::StartReplicationTaskAssessmentResponse

    StartReplicationTaskAssessmentRunMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StartReplicationTaskAssessmentRunMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceAccessRoleArn"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_location_bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResultLocationBucket"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_location_folder, Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationFolder"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_encryption_mode, Shapes::ShapeRef.new(shape: String, location_name: "ResultEncryptionMode"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResultKmsKeyArn"))
    StartReplicationTaskAssessmentRunMessage.add_member(:assessment_run_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AssessmentRunName"))
    StartReplicationTaskAssessmentRunMessage.add_member(:include_only, Shapes::ShapeRef.new(shape: IncludeTestList, location_name: "IncludeOnly"))
    StartReplicationTaskAssessmentRunMessage.add_member(:exclude, Shapes::ShapeRef.new(shape: ExcludeTestList, location_name: "Exclude"))
    StartReplicationTaskAssessmentRunMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartReplicationTaskAssessmentRunMessage.struct_class = Types::StartReplicationTaskAssessmentRunMessage

    StartReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun, location_name: "ReplicationTaskAssessmentRun"))
    StartReplicationTaskAssessmentRunResponse.struct_class = Types::StartReplicationTaskAssessmentRunResponse

    StartReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StartReplicationTaskMessage.add_member(:start_replication_task_type, Shapes::ShapeRef.new(shape: StartReplicationTaskTypeValue, required: true, location_name: "StartReplicationTaskType"))
    StartReplicationTaskMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    StartReplicationTaskMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    StartReplicationTaskMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    StartReplicationTaskMessage.struct_class = Types::StartReplicationTaskMessage

    StartReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StartReplicationTaskResponse.struct_class = Types::StartReplicationTaskResponse

    StatementProperties.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Definition"))
    StatementProperties.struct_class = Types::StatementProperties

    StopDataMigrationMessage.add_member(:data_migration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataMigrationIdentifier"))
    StopDataMigrationMessage.struct_class = Types::StopDataMigrationMessage

    StopDataMigrationResponse.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    StopDataMigrationResponse.struct_class = Types::StopDataMigrationResponse

    StopReplicationMessage.add_member(:replication_config_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationConfigArn"))
    StopReplicationMessage.struct_class = Types::StopReplicationMessage

    StopReplicationResponse.add_member(:replication, Shapes::ShapeRef.new(shape: Replication, location_name: "Replication"))
    StopReplicationResponse.struct_class = Types::StopReplicationResponse

    StopReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StopReplicationTaskMessage.struct_class = Types::StopReplicationTaskMessage

    StopReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StopReplicationTaskResponse.struct_class = Types::StopReplicationTaskResponse

    StorageQuotaExceededFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    StorageQuotaExceededFault.struct_class = Types::StorageQuotaExceededFault

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetAlreadyInUse.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SubnetAlreadyInUse.struct_class = Types::SubnetAlreadyInUse

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String)

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet)

    SupportedEndpointType.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    SupportedEndpointType.add_member(:supports_cdc, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsCDC"))
    SupportedEndpointType.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    SupportedEndpointType.add_member(:replication_instance_engine_minimum_version, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceEngineMinimumVersion"))
    SupportedEndpointType.add_member(:engine_display_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineDisplayName"))
    SupportedEndpointType.struct_class = Types::SupportedEndpointType

    SupportedEndpointTypeList.member = Shapes::ShapeRef.new(shape: SupportedEndpointType)

    SybaseAseDataProviderSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    SybaseAseDataProviderSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    SybaseAseDataProviderSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    SybaseAseDataProviderSettings.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    SybaseAseDataProviderSettings.add_member(:encrypt_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EncryptPassword"))
    SybaseAseDataProviderSettings.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    SybaseAseDataProviderSettings.struct_class = Types::SybaseAseDataProviderSettings

    SybaseSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    SybaseSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    SybaseSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    SybaseSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    SybaseSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    SybaseSettings.add_member(:secrets_manager_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    SybaseSettings.add_member(:secrets_manager_secret_id, Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    SybaseSettings.struct_class = Types::SybaseSettings

    TableListToReload.member = Shapes::ShapeRef.new(shape: TableToReload)

    TableStatistics.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    TableStatistics.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    TableStatistics.add_member(:inserts, Shapes::ShapeRef.new(shape: Long, location_name: "Inserts"))
    TableStatistics.add_member(:deletes, Shapes::ShapeRef.new(shape: Long, location_name: "Deletes"))
    TableStatistics.add_member(:updates, Shapes::ShapeRef.new(shape: Long, location_name: "Updates"))
    TableStatistics.add_member(:ddls, Shapes::ShapeRef.new(shape: Long, location_name: "Ddls"))
    TableStatistics.add_member(:applied_inserts, Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedInserts"))
    TableStatistics.add_member(:applied_deletes, Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedDeletes"))
    TableStatistics.add_member(:applied_updates, Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedUpdates"))
    TableStatistics.add_member(:applied_ddls, Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedDdls"))
    TableStatistics.add_member(:full_load_rows, Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadRows"))
    TableStatistics.add_member(:full_load_condtnl_chk_failed_rows, Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadCondtnlChkFailedRows"))
    TableStatistics.add_member(:full_load_error_rows, Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadErrorRows"))
    TableStatistics.add_member(:full_load_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadStartTime"))
    TableStatistics.add_member(:full_load_end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadEndTime"))
    TableStatistics.add_member(:full_load_reloaded, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "FullLoadReloaded"))
    TableStatistics.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastUpdateTime"))
    TableStatistics.add_member(:table_state, Shapes::ShapeRef.new(shape: String, location_name: "TableState"))
    TableStatistics.add_member(:validation_pending_records, Shapes::ShapeRef.new(shape: Long, location_name: "ValidationPendingRecords"))
    TableStatistics.add_member(:validation_failed_records, Shapes::ShapeRef.new(shape: Long, location_name: "ValidationFailedRecords"))
    TableStatistics.add_member(:validation_suspended_records, Shapes::ShapeRef.new(shape: Long, location_name: "ValidationSuspendedRecords"))
    TableStatistics.add_member(:validation_state, Shapes::ShapeRef.new(shape: String, location_name: "ValidationState"))
    TableStatistics.add_member(:validation_state_details, Shapes::ShapeRef.new(shape: String, location_name: "ValidationStateDetails"))
    TableStatistics.add_member(:resync_state, Shapes::ShapeRef.new(shape: String, location_name: "ResyncState"))
    TableStatistics.add_member(:resync_rows_attempted, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ResyncRowsAttempted"))
    TableStatistics.add_member(:resync_rows_succeeded, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ResyncRowsSucceeded"))
    TableStatistics.add_member(:resync_rows_failed, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ResyncRowsFailed"))
    TableStatistics.add_member(:resync_progress, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "ResyncProgress"))
    TableStatistics.struct_class = Types::TableStatistics

    TableStatisticsList.member = Shapes::ShapeRef.new(shape: TableStatistics)

    TableToReload.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SchemaName"))
    TableToReload.add_member(:table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TableName"))
    TableToReload.struct_class = Types::TableToReload

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetDataSetting.add_member(:table_preparation_mode, Shapes::ShapeRef.new(shape: TablePreparationMode, location_name: "TablePreparationMode"))
    TargetDataSetting.struct_class = Types::TargetDataSetting

    TargetDataSettings.member = Shapes::ShapeRef.new(shape: TargetDataSetting)

    TestConnectionMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    TestConnectionMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    TestConnectionMessage.struct_class = Types::TestConnectionMessage

    TestConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    TestConnectionResponse.struct_class = Types::TestConnectionResponse

    TimestreamSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DatabaseName"))
    TimestreamSettings.add_member(:memory_duration, Shapes::ShapeRef.new(shape: IntegerOptional, required: true, location_name: "MemoryDuration"))
    TimestreamSettings.add_member(:magnetic_duration, Shapes::ShapeRef.new(shape: IntegerOptional, required: true, location_name: "MagneticDuration"))
    TimestreamSettings.add_member(:cdc_inserts_and_updates, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CdcInsertsAndUpdates"))
    TimestreamSettings.add_member(:enable_magnetic_store_writes, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableMagneticStoreWrites"))
    TimestreamSettings.struct_class = Types::TimestreamSettings

    UpdateSubscriptionsToEventBridgeMessage.add_member(:force_move, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceMove"))
    UpdateSubscriptionsToEventBridgeMessage.struct_class = Types::UpdateSubscriptionsToEventBridgeMessage

    UpdateSubscriptionsToEventBridgeResponse.add_member(:result, Shapes::ShapeRef.new(shape: String, location_name: "Result"))
    UpdateSubscriptionsToEventBridgeResponse.struct_class = Types::UpdateSubscriptionsToEventBridgeResponse

    UpgradeDependencyFailureFault.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UpgradeDependencyFailureFault.struct_class = Types::UpgradeDependencyFailureFault

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String)

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-01-01"

      api.metadata = {
        "apiVersion" => "2016-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "dms",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Database Migration Service",
        "serviceId" => "Database Migration Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonDMSv20160101",
        "uid" => "dms-2016-01-01",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:apply_pending_maintenance_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyPendingMaintenanceAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:batch_start_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStartRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchStartRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStartRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:cancel_metadata_model_conversion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMetadataModelConversion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelMetadataModelConversionMessage)
        o.output = Shapes::ShapeRef.new(shape: CancelMetadataModelConversionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:cancel_metadata_model_creation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMetadataModelCreation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelMetadataModelCreationMessage)
        o.output = Shapes::ShapeRef.new(shape: CancelMetadataModelCreationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:cancel_replication_task_assessment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelReplicationTaskAssessmentRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelReplicationTaskAssessmentRunMessage)
        o.output = Shapes::ShapeRef.new(shape: CancelReplicationTaskAssessmentRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:create_data_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataMigration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataMigrationMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDataMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:create_data_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataProviderMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDataProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:create_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEventSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingFault)
      end)

      api.add_operation(:create_fleet_advisor_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleetAdvisorCollector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetAdvisorCollectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetAdvisorCollectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:create_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceProfileMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:create_migration_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMigrationProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMigrationProjectMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateMigrationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:create_replication_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationConfigMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:create_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientResourceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:create_replication_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:create_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_data_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataMigration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataMigrationMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:delete_data_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataProviderMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:delete_fleet_advisor_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleetAdvisorCollector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCollectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: CollectorNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:delete_fleet_advisor_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleetAdvisorDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetAdvisorDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetAdvisorDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:delete_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceProfileMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:delete_migration_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMigrationProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMigrationProjectMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteMigrationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:delete_replication_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationConfigMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:delete_replication_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:delete_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_replication_task_assessment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationTaskAssessmentRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationTaskAssessmentRunMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationTaskAssessmentRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAttributesResponse)
      end)

      api.add_operation(:describe_applicable_individual_assessments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicableIndividualAssessments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicableIndividualAssessmentsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicableIndividualAssessmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_conversion_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConversionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConversionConfigurationMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeConversionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:describe_data_migrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataMigrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataMigrationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataMigrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_data_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataProvidersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoint_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointSettingsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointSettingsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoint_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointTypesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointTypesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineVersionsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_event_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventCategoriesResponse)
      end)

      api.add_operation(:describe_event_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_extension_pack_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExtensionPackAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExtensionPackAssociationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeExtensionPackAssociationsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_fleet_advisor_collectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAdvisorCollectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorCollectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorCollectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_advisor_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAdvisorDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_advisor_lsa_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAdvisorLsaAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorLsaAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorLsaAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_advisor_schema_object_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAdvisorSchemaObjectSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemaObjectSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemaObjectSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_advisor_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAdvisorSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemasRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceProfilesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:describe_metadata_model_assessments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelAssessments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelAssessmentsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelAssessmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model_children, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelChildren"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelChildrenMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelChildrenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model_conversions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelConversions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelConversionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelConversionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model_creations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelCreations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelCreationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelCreationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model_exports_as_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelExportsAsScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsAsScriptMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsAsScriptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model_exports_to_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelExportsToTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsToTargetMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsToTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_metadata_model_imports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetadataModelImports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetadataModelImportsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetadataModelImportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_migration_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMigrationProjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMigrationProjectsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeMigrationProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_orderable_replication_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrderableReplicationInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrderableReplicationInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrderableReplicationInstancesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_pending_maintenance_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePendingMaintenanceActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_recommendation_limitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecommendationLimitations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecommendationLimitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecommendationLimitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_refresh_schemas_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRefreshSchemasStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRefreshSchemasStatusMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeRefreshSchemasStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:describe_replication_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationConfigsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_instance_task_logs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationInstanceTaskLogs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationInstanceTaskLogsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationInstanceTaskLogsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationSubnetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_table_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTableStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTableStatisticsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTableStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_task_assessment_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTaskAssessmentResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentResultsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_task_assessment_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTaskAssessmentRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentRunsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_task_individual_assessments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTaskIndividualAssessments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTaskIndividualAssessmentsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTaskIndividualAssessmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTasksMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSchemasMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_table_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTableStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableStatisticsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:export_metadata_model_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportMetadataModelAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentMessage)
        o.output = Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:get_target_selection_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTargetSelectionRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTargetSelectionRulesMessage)
        o.output = Shapes::ShapeRef.new(shape: GetTargetSelectionRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:import_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCertificateMessage)
        o.output = Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCertificateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:modify_conversion_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyConversionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyConversionConfigurationMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyConversionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:modify_data_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDataMigration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDataMigrationMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDataMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:modify_data_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDataProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDataProviderMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDataProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:modify_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:modify_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:modify_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyInstanceProfileMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyInstanceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:modify_migration_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyMigrationProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyMigrationProjectMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyMigrationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:modify_replication_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationConfigMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:modify_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientResourceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UpgradeDependencyFailureFault)
      end)

      api.add_operation(:modify_replication_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:modify_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:move_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MoveReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MoveReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: MoveReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:reboot_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:refresh_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RefreshSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RefreshSchemasMessage)
        o.output = Shapes::ShapeRef.new(shape: RefreshSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:reload_replication_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReloadReplicationTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReloadReplicationTablesMessage)
        o.output = Shapes::ShapeRef.new(shape: ReloadReplicationTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:reload_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReloadTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReloadTablesMessage)
        o.output = Shapes::ShapeRef.new(shape: ReloadTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:run_fleet_advisor_lsa_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunFleetAdvisorLsaAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: RunFleetAdvisorLsaAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:start_data_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataMigration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDataMigrationMessage)
        o.output = Shapes::ShapeRef.new(shape: StartDataMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:start_extension_pack_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExtensionPackAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExtensionPackAssociationMessage)
        o.output = Shapes::ShapeRef.new(shape: StartExtensionPackAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:start_metadata_model_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetadataModelAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetadataModelAssessmentMessage)
        o.output = Shapes::ShapeRef.new(shape: StartMetadataModelAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:start_metadata_model_conversion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetadataModelConversion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetadataModelConversionMessage)
        o.output = Shapes::ShapeRef.new(shape: StartMetadataModelConversionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:start_metadata_model_creation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetadataModelCreation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetadataModelCreationMessage)
        o.output = Shapes::ShapeRef.new(shape: StartMetadataModelCreationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:start_metadata_model_export_as_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetadataModelExportAsScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetadataModelExportAsScriptMessage)
        o.output = Shapes::ShapeRef.new(shape: StartMetadataModelExportAsScriptResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:start_metadata_model_export_to_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetadataModelExportToTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetadataModelExportToTargetMessage)
        o.output = Shapes::ShapeRef.new(shape: StartMetadataModelExportToTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:start_metadata_model_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMetadataModelImport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMetadataModelImportMessage)
        o.output = Shapes::ShapeRef.new(shape: StartMetadataModelImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
      end)

      api.add_operation(:start_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:start_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:start_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:start_replication_task_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplicationTaskAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentMessage)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:start_replication_task_assessment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplicationTaskAssessmentRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentRunMessage)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
      end)

      api.add_operation(:stop_data_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDataMigration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDataMigrationMessage)
        o.output = Shapes::ShapeRef.new(shape: StopDataMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyFault)
      end)

      api.add_operation(:stop_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopReplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: StopReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:stop_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: StopReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:test_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestConnectionMessage)
        o.output = Shapes::ShapeRef.new(shape: TestConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:update_subscriptions_to_event_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriptionsToEventBridge"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionsToEventBridgeMessage)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionsToEventBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)
    end

  end
end

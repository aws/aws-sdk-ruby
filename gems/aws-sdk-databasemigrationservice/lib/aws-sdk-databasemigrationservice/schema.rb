# frozen_string_literal: true

# This is generated code!

module Aws::DatabaseMigrationService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#AccessDeniedFault", name: "AccessDeniedFault", traits: {"smithy.api#error" => "client"})
    AccountQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#AccountQuota", name: "AccountQuota")
    AccountQuotaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#AccountQuotaList", name: "AccountQuotaList")
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#AddTagsToResourceMessage", name: "AddTagsToResourceMessage")
    AddTagsToResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#AddTagsToResourceResponse", name: "AddTagsToResourceResponse")
    ApplyPendingMaintenanceActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ApplyPendingMaintenanceActionMessage", name: "ApplyPendingMaintenanceActionMessage")
    ApplyPendingMaintenanceActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ApplyPendingMaintenanceActionResponse", name: "ApplyPendingMaintenanceActionResponse")
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ArnList", name: "ArnList")
    AssessmentReportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#AssessmentReportType", name: "AssessmentReportType")
    AssessmentReportTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#AssessmentReportTypesList", name: "AssessmentReportTypesList", traits: {"smithy.api#length" => {"min" => 1}})
    AuthMechanismValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#AuthMechanismValue", name: "AuthMechanismValue")
    AuthTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#AuthTypeValue", name: "AuthTypeValue")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZonesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#AvailabilityZonesList", name: "AvailabilityZonesList")
    AvailableUpgradesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#AvailableUpgradesList", name: "AvailableUpgradesList")
    BatchStartRecommendationsErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#BatchStartRecommendationsErrorEntry", name: "BatchStartRecommendationsErrorEntry")
    BatchStartRecommendationsErrorEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#BatchStartRecommendationsErrorEntryList", name: "BatchStartRecommendationsErrorEntryList")
    BatchStartRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#BatchStartRecommendationsRequest", name: "BatchStartRecommendationsRequest")
    BatchStartRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#BatchStartRecommendationsResponse", name: "BatchStartRecommendationsResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databasemigrationservice#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.databasemigrationservice#BooleanOptional", name: "BooleanOptional")
    CancelMetadataModelConversionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CancelMetadataModelConversionMessage", name: "CancelMetadataModelConversionMessage")
    CancelMetadataModelConversionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CancelMetadataModelConversionResponse", name: "CancelMetadataModelConversionResponse")
    CancelMetadataModelCreationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CancelMetadataModelCreationMessage", name: "CancelMetadataModelCreationMessage")
    CancelMetadataModelCreationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CancelMetadataModelCreationResponse", name: "CancelMetadataModelCreationResponse")
    CancelReplicationTaskAssessmentRunMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CancelReplicationTaskAssessmentRunMessage", name: "CancelReplicationTaskAssessmentRunMessage")
    CancelReplicationTaskAssessmentRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CancelReplicationTaskAssessmentRunResponse", name: "CancelReplicationTaskAssessmentRunResponse")
    CannedAclForObjectsValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#CannedAclForObjectsValue", name: "CannedAclForObjectsValue")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Certificate", name: "Certificate")
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#CertificateList", name: "CertificateList")
    CertificateWallet = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.databasemigrationservice#CertificateWallet", name: "CertificateWallet")
    CharLengthSemantics = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#CharLengthSemantics", name: "CharLengthSemantics")
    CollectorHealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CollectorHealthCheck", name: "CollectorHealthCheck")
    CollectorNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CollectorNotFoundFault", name: "CollectorNotFoundFault", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CollectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CollectorResponse", name: "CollectorResponse")
    CollectorResponses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#CollectorResponses", name: "CollectorResponses")
    CollectorShortInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CollectorShortInfoResponse", name: "CollectorShortInfoResponse")
    CollectorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#CollectorStatus", name: "CollectorStatus")
    CollectorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#CollectorsList", name: "CollectorsList")
    CompressionTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#CompressionTypeValue", name: "CompressionTypeValue")
    ComputeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ComputeConfig", name: "ComputeConfig")
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Connection", name: "Connection")
    ConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ConnectionList", name: "ConnectionList")
    CreateDataMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateDataMigrationMessage", name: "CreateDataMigrationMessage")
    CreateDataMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateDataMigrationResponse", name: "CreateDataMigrationResponse")
    CreateDataProviderMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateDataProviderMessage", name: "CreateDataProviderMessage")
    CreateDataProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateDataProviderResponse", name: "CreateDataProviderResponse")
    CreateEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateEndpointMessage", name: "CreateEndpointMessage")
    CreateEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateEndpointResponse", name: "CreateEndpointResponse")
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateEventSubscriptionMessage", name: "CreateEventSubscriptionMessage")
    CreateEventSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateEventSubscriptionResponse", name: "CreateEventSubscriptionResponse")
    CreateFleetAdvisorCollectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateFleetAdvisorCollectorRequest", name: "CreateFleetAdvisorCollectorRequest")
    CreateFleetAdvisorCollectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateFleetAdvisorCollectorResponse", name: "CreateFleetAdvisorCollectorResponse")
    CreateInstanceProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateInstanceProfileMessage", name: "CreateInstanceProfileMessage")
    CreateInstanceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateInstanceProfileResponse", name: "CreateInstanceProfileResponse")
    CreateMigrationProjectMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateMigrationProjectMessage", name: "CreateMigrationProjectMessage")
    CreateMigrationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateMigrationProjectResponse", name: "CreateMigrationProjectResponse")
    CreateReplicationConfigMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationConfigMessage", name: "CreateReplicationConfigMessage")
    CreateReplicationConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationConfigResponse", name: "CreateReplicationConfigResponse")
    CreateReplicationInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationInstanceMessage", name: "CreateReplicationInstanceMessage")
    CreateReplicationInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationInstanceResponse", name: "CreateReplicationInstanceResponse")
    CreateReplicationSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationSubnetGroupMessage", name: "CreateReplicationSubnetGroupMessage")
    CreateReplicationSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationSubnetGroupResponse", name: "CreateReplicationSubnetGroupResponse")
    CreateReplicationTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationTaskMessage", name: "CreateReplicationTaskMessage")
    CreateReplicationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#CreateReplicationTaskResponse", name: "CreateReplicationTaskResponse")
    DataFormatValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#DataFormatValue", name: "DataFormatValue")
    DataMigration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DataMigration", name: "DataMigration")
    DataMigrationCidrBlock = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#DataMigrationCidrBlock", name: "DataMigrationCidrBlock")
    DataMigrationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DataMigrationSettings", name: "DataMigrationSettings")
    DataMigrationStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DataMigrationStatistics", name: "DataMigrationStatistics")
    DataMigrations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#DataMigrations", name: "DataMigrations")
    DataProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DataProvider", name: "DataProvider")
    DataProviderDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DataProviderDescriptor", name: "DataProviderDescriptor")
    DataProviderDescriptorDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DataProviderDescriptorDefinition", name: "DataProviderDescriptorDefinition")
    DataProviderDescriptorDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#DataProviderDescriptorDefinitionList", name: "DataProviderDescriptorDefinitionList")
    DataProviderDescriptorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#DataProviderDescriptorList", name: "DataProviderDescriptorList")
    DataProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#DataProviderList", name: "DataProviderList")
    DataProviderSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.databasemigrationservice#DataProviderSettings", name: "DataProviderSettings")
    DatabaseInstanceSoftwareDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DatabaseInstanceSoftwareDetailsResponse", name: "DatabaseInstanceSoftwareDetailsResponse")
    DatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#DatabaseList", name: "DatabaseList")
    DatabaseMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#DatabaseMode", name: "DatabaseMode")
    DatabaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DatabaseResponse", name: "DatabaseResponse")
    DatabaseShortInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DatabaseShortInfoResponse", name: "DatabaseShortInfoResponse")
    DatePartitionDelimiterValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#DatePartitionDelimiterValue", name: "DatePartitionDelimiterValue")
    DatePartitionSequenceValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#DatePartitionSequenceValue", name: "DatePartitionSequenceValue")
    DefaultErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DefaultErrorDetails", name: "DefaultErrorDetails")
    DeleteCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteCertificateMessage", name: "DeleteCertificateMessage")
    DeleteCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteCertificateResponse", name: "DeleteCertificateResponse")
    DeleteCollectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteCollectorRequest", name: "DeleteCollectorRequest")
    DeleteConnectionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteConnectionMessage", name: "DeleteConnectionMessage")
    DeleteConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteConnectionResponse", name: "DeleteConnectionResponse")
    DeleteDataMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteDataMigrationMessage", name: "DeleteDataMigrationMessage")
    DeleteDataMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteDataMigrationResponse", name: "DeleteDataMigrationResponse")
    DeleteDataProviderMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteDataProviderMessage", name: "DeleteDataProviderMessage")
    DeleteDataProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteDataProviderResponse", name: "DeleteDataProviderResponse")
    DeleteEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteEndpointMessage", name: "DeleteEndpointMessage")
    DeleteEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteEndpointResponse", name: "DeleteEndpointResponse")
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteEventSubscriptionMessage", name: "DeleteEventSubscriptionMessage")
    DeleteEventSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteEventSubscriptionResponse", name: "DeleteEventSubscriptionResponse")
    DeleteFleetAdvisorDatabasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteFleetAdvisorDatabasesRequest", name: "DeleteFleetAdvisorDatabasesRequest")
    DeleteFleetAdvisorDatabasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteFleetAdvisorDatabasesResponse", name: "DeleteFleetAdvisorDatabasesResponse")
    DeleteInstanceProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteInstanceProfileMessage", name: "DeleteInstanceProfileMessage")
    DeleteInstanceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteInstanceProfileResponse", name: "DeleteInstanceProfileResponse")
    DeleteMigrationProjectMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteMigrationProjectMessage", name: "DeleteMigrationProjectMessage")
    DeleteMigrationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteMigrationProjectResponse", name: "DeleteMigrationProjectResponse")
    DeleteReplicationConfigMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationConfigMessage", name: "DeleteReplicationConfigMessage")
    DeleteReplicationConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationConfigResponse", name: "DeleteReplicationConfigResponse")
    DeleteReplicationInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationInstanceMessage", name: "DeleteReplicationInstanceMessage")
    DeleteReplicationInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationInstanceResponse", name: "DeleteReplicationInstanceResponse")
    DeleteReplicationSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationSubnetGroupMessage", name: "DeleteReplicationSubnetGroupMessage")
    DeleteReplicationSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationSubnetGroupResponse", name: "DeleteReplicationSubnetGroupResponse")
    DeleteReplicationTaskAssessmentRunMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationTaskAssessmentRunMessage", name: "DeleteReplicationTaskAssessmentRunMessage")
    DeleteReplicationTaskAssessmentRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationTaskAssessmentRunResponse", name: "DeleteReplicationTaskAssessmentRunResponse")
    DeleteReplicationTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationTaskMessage", name: "DeleteReplicationTaskMessage")
    DeleteReplicationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DeleteReplicationTaskResponse", name: "DeleteReplicationTaskResponse")
    DescribeAccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeAccountAttributesMessage", name: "DescribeAccountAttributesMessage")
    DescribeAccountAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeAccountAttributesResponse", name: "DescribeAccountAttributesResponse")
    DescribeApplicableIndividualAssessmentsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeApplicableIndividualAssessmentsMessage", name: "DescribeApplicableIndividualAssessmentsMessage")
    DescribeApplicableIndividualAssessmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeApplicableIndividualAssessmentsResponse", name: "DescribeApplicableIndividualAssessmentsResponse")
    DescribeCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeCertificatesMessage", name: "DescribeCertificatesMessage")
    DescribeCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeCertificatesResponse", name: "DescribeCertificatesResponse")
    DescribeConnectionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeConnectionsMessage", name: "DescribeConnectionsMessage")
    DescribeConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeConnectionsResponse", name: "DescribeConnectionsResponse")
    DescribeConversionConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeConversionConfigurationMessage", name: "DescribeConversionConfigurationMessage")
    DescribeConversionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeConversionConfigurationResponse", name: "DescribeConversionConfigurationResponse")
    DescribeDataMigrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeDataMigrationsMessage", name: "DescribeDataMigrationsMessage")
    DescribeDataMigrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeDataMigrationsResponse", name: "DescribeDataMigrationsResponse")
    DescribeDataProvidersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeDataProvidersMessage", name: "DescribeDataProvidersMessage")
    DescribeDataProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeDataProvidersResponse", name: "DescribeDataProvidersResponse")
    DescribeEndpointSettingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEndpointSettingsMessage", name: "DescribeEndpointSettingsMessage")
    DescribeEndpointSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEndpointSettingsResponse", name: "DescribeEndpointSettingsResponse")
    DescribeEndpointTypesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEndpointTypesMessage", name: "DescribeEndpointTypesMessage")
    DescribeEndpointTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEndpointTypesResponse", name: "DescribeEndpointTypesResponse")
    DescribeEndpointsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEndpointsMessage", name: "DescribeEndpointsMessage")
    DescribeEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEndpointsResponse", name: "DescribeEndpointsResponse")
    DescribeEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEngineVersionsMessage", name: "DescribeEngineVersionsMessage")
    DescribeEngineVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEngineVersionsResponse", name: "DescribeEngineVersionsResponse")
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEventCategoriesMessage", name: "DescribeEventCategoriesMessage")
    DescribeEventCategoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEventCategoriesResponse", name: "DescribeEventCategoriesResponse")
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEventSubscriptionsMessage", name: "DescribeEventSubscriptionsMessage")
    DescribeEventSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEventSubscriptionsResponse", name: "DescribeEventSubscriptionsResponse")
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEventsMessage", name: "DescribeEventsMessage")
    DescribeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeEventsResponse", name: "DescribeEventsResponse")
    DescribeExtensionPackAssociationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeExtensionPackAssociationsMessage", name: "DescribeExtensionPackAssociationsMessage")
    DescribeExtensionPackAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeExtensionPackAssociationsResponse", name: "DescribeExtensionPackAssociationsResponse")
    DescribeFleetAdvisorCollectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorCollectorsRequest", name: "DescribeFleetAdvisorCollectorsRequest")
    DescribeFleetAdvisorCollectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorCollectorsResponse", name: "DescribeFleetAdvisorCollectorsResponse")
    DescribeFleetAdvisorDatabasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorDatabasesRequest", name: "DescribeFleetAdvisorDatabasesRequest")
    DescribeFleetAdvisorDatabasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorDatabasesResponse", name: "DescribeFleetAdvisorDatabasesResponse")
    DescribeFleetAdvisorLsaAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorLsaAnalysisRequest", name: "DescribeFleetAdvisorLsaAnalysisRequest")
    DescribeFleetAdvisorLsaAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorLsaAnalysisResponse", name: "DescribeFleetAdvisorLsaAnalysisResponse")
    DescribeFleetAdvisorSchemaObjectSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemaObjectSummaryRequest", name: "DescribeFleetAdvisorSchemaObjectSummaryRequest")
    DescribeFleetAdvisorSchemaObjectSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemaObjectSummaryResponse", name: "DescribeFleetAdvisorSchemaObjectSummaryResponse")
    DescribeFleetAdvisorSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemasRequest", name: "DescribeFleetAdvisorSchemasRequest")
    DescribeFleetAdvisorSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemasResponse", name: "DescribeFleetAdvisorSchemasResponse")
    DescribeInstanceProfilesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeInstanceProfilesMessage", name: "DescribeInstanceProfilesMessage")
    DescribeInstanceProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeInstanceProfilesResponse", name: "DescribeInstanceProfilesResponse")
    DescribeMetadataModelAssessmentsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelAssessmentsMessage", name: "DescribeMetadataModelAssessmentsMessage")
    DescribeMetadataModelAssessmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelAssessmentsResponse", name: "DescribeMetadataModelAssessmentsResponse")
    DescribeMetadataModelChildrenMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelChildrenMessage", name: "DescribeMetadataModelChildrenMessage")
    DescribeMetadataModelChildrenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelChildrenResponse", name: "DescribeMetadataModelChildrenResponse")
    DescribeMetadataModelConversionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelConversionsMessage", name: "DescribeMetadataModelConversionsMessage")
    DescribeMetadataModelConversionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelConversionsResponse", name: "DescribeMetadataModelConversionsResponse")
    DescribeMetadataModelCreationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelCreationsMessage", name: "DescribeMetadataModelCreationsMessage")
    DescribeMetadataModelCreationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelCreationsResponse", name: "DescribeMetadataModelCreationsResponse")
    DescribeMetadataModelExportsAsScriptMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsAsScriptMessage", name: "DescribeMetadataModelExportsAsScriptMessage")
    DescribeMetadataModelExportsAsScriptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsAsScriptResponse", name: "DescribeMetadataModelExportsAsScriptResponse")
    DescribeMetadataModelExportsToTargetMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsToTargetMessage", name: "DescribeMetadataModelExportsToTargetMessage")
    DescribeMetadataModelExportsToTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsToTargetResponse", name: "DescribeMetadataModelExportsToTargetResponse")
    DescribeMetadataModelImportsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelImportsMessage", name: "DescribeMetadataModelImportsMessage")
    DescribeMetadataModelImportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelImportsResponse", name: "DescribeMetadataModelImportsResponse")
    DescribeMetadataModelMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelMessage", name: "DescribeMetadataModelMessage")
    DescribeMetadataModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelResponse", name: "DescribeMetadataModelResponse")
    DescribeMigrationProjectsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMigrationProjectsMessage", name: "DescribeMigrationProjectsMessage")
    DescribeMigrationProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMigrationProjectsResponse", name: "DescribeMigrationProjectsResponse")
    DescribeOrderableReplicationInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeOrderableReplicationInstancesMessage", name: "DescribeOrderableReplicationInstancesMessage")
    DescribeOrderableReplicationInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeOrderableReplicationInstancesResponse", name: "DescribeOrderableReplicationInstancesResponse")
    DescribePendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribePendingMaintenanceActionsMessage", name: "DescribePendingMaintenanceActionsMessage")
    DescribePendingMaintenanceActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribePendingMaintenanceActionsResponse", name: "DescribePendingMaintenanceActionsResponse")
    DescribeRecommendationLimitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeRecommendationLimitationsRequest", name: "DescribeRecommendationLimitationsRequest")
    DescribeRecommendationLimitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeRecommendationLimitationsResponse", name: "DescribeRecommendationLimitationsResponse")
    DescribeRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeRecommendationsRequest", name: "DescribeRecommendationsRequest")
    DescribeRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeRecommendationsResponse", name: "DescribeRecommendationsResponse")
    DescribeRefreshSchemasStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeRefreshSchemasStatusMessage", name: "DescribeRefreshSchemasStatusMessage")
    DescribeRefreshSchemasStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeRefreshSchemasStatusResponse", name: "DescribeRefreshSchemasStatusResponse")
    DescribeReplicationConfigsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationConfigsMessage", name: "DescribeReplicationConfigsMessage")
    DescribeReplicationConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationConfigsResponse", name: "DescribeReplicationConfigsResponse")
    DescribeReplicationInstanceTaskLogsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationInstanceTaskLogsMessage", name: "DescribeReplicationInstanceTaskLogsMessage")
    DescribeReplicationInstanceTaskLogsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationInstanceTaskLogsResponse", name: "DescribeReplicationInstanceTaskLogsResponse")
    DescribeReplicationInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationInstancesMessage", name: "DescribeReplicationInstancesMessage")
    DescribeReplicationInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationInstancesResponse", name: "DescribeReplicationInstancesResponse")
    DescribeReplicationSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationSubnetGroupsMessage", name: "DescribeReplicationSubnetGroupsMessage")
    DescribeReplicationSubnetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationSubnetGroupsResponse", name: "DescribeReplicationSubnetGroupsResponse")
    DescribeReplicationTableStatisticsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTableStatisticsMessage", name: "DescribeReplicationTableStatisticsMessage")
    DescribeReplicationTableStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTableStatisticsResponse", name: "DescribeReplicationTableStatisticsResponse")
    DescribeReplicationTaskAssessmentResultsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentResultsMessage", name: "DescribeReplicationTaskAssessmentResultsMessage")
    DescribeReplicationTaskAssessmentResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentResultsResponse", name: "DescribeReplicationTaskAssessmentResultsResponse")
    DescribeReplicationTaskAssessmentRunsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentRunsMessage", name: "DescribeReplicationTaskAssessmentRunsMessage")
    DescribeReplicationTaskAssessmentRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentRunsResponse", name: "DescribeReplicationTaskAssessmentRunsResponse")
    DescribeReplicationTaskIndividualAssessmentsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTaskIndividualAssessmentsMessage", name: "DescribeReplicationTaskIndividualAssessmentsMessage")
    DescribeReplicationTaskIndividualAssessmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTaskIndividualAssessmentsResponse", name: "DescribeReplicationTaskIndividualAssessmentsResponse")
    DescribeReplicationTasksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTasksMessage", name: "DescribeReplicationTasksMessage")
    DescribeReplicationTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationTasksResponse", name: "DescribeReplicationTasksResponse")
    DescribeReplicationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationsMessage", name: "DescribeReplicationsMessage")
    DescribeReplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeReplicationsResponse", name: "DescribeReplicationsResponse")
    DescribeSchemasMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeSchemasMessage", name: "DescribeSchemasMessage")
    DescribeSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeSchemasResponse", name: "DescribeSchemasResponse")
    DescribeTableStatisticsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeTableStatisticsMessage", name: "DescribeTableStatisticsMessage")
    DescribeTableStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeTableStatisticsResponse", name: "DescribeTableStatisticsResponse")
    DmsSslModeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#DmsSslModeValue", name: "DmsSslModeValue")
    DmsTransferSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DmsTransferSettings", name: "DmsTransferSettings")
    DocDbDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DocDbDataProviderSettings", name: "DocDbDataProviderSettings")
    DocDbSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DocDbSettings", name: "DocDbSettings")
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.databasemigrationservice#DoubleOptional", name: "DoubleOptional")
    DynamoDbSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DynamoDbSettings", name: "DynamoDbSettings")
    ElasticsearchSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ElasticsearchSettings", name: "ElasticsearchSettings")
    EncodingTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#EncodingTypeValue", name: "EncodingTypeValue")
    EncryptionModeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#EncryptionModeValue", name: "EncryptionModeValue")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Endpoint", name: "Endpoint")
    EndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EndpointList", name: "EndpointList")
    EndpointSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#EndpointSetting", name: "EndpointSetting")
    EndpointSettingEnumValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EndpointSettingEnumValues", name: "EndpointSettingEnumValues")
    EndpointSettingTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#EndpointSettingTypeValue", name: "EndpointSettingTypeValue")
    EndpointSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EndpointSettingsList", name: "EndpointSettingsList")
    EngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#EngineVersion", name: "EngineVersion")
    EngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EngineVersionList", name: "EngineVersionList")
    ErrorDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.databasemigrationservice#ErrorDetails", name: "ErrorDetails")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Event", name: "Event")
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EventCategoriesList", name: "EventCategoriesList")
    EventCategoryGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#EventCategoryGroup", name: "EventCategoryGroup")
    EventCategoryGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EventCategoryGroupList", name: "EventCategoryGroupList")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EventList", name: "EventList")
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#EventSubscription", name: "EventSubscription")
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#EventSubscriptionsList", name: "EventSubscriptionsList")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#ExceptionMessage", name: "ExceptionMessage")
    ExcludeTestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ExcludeTestList", name: "ExcludeTestList")
    ExportMetadataModelAssessmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ExportMetadataModelAssessmentMessage", name: "ExportMetadataModelAssessmentMessage")
    ExportMetadataModelAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ExportMetadataModelAssessmentResponse", name: "ExportMetadataModelAssessmentResponse")
    ExportMetadataModelAssessmentResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ExportMetadataModelAssessmentResultEntry", name: "ExportMetadataModelAssessmentResultEntry")
    ExportSqlDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ExportSqlDetails", name: "ExportSqlDetails")
    FailedDependencyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#FailedDependencyFault", name: "FailedDependencyFault", traits: {"smithy.api#error" => "client"})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#FilterList", name: "FilterList")
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#FilterValueList", name: "FilterValueList")
    FleetAdvisorLsaAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#FleetAdvisorLsaAnalysisResponse", name: "FleetAdvisorLsaAnalysisResponse")
    FleetAdvisorLsaAnalysisResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#FleetAdvisorLsaAnalysisResponseList", name: "FleetAdvisorLsaAnalysisResponseList")
    FleetAdvisorSchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#FleetAdvisorSchemaList", name: "FleetAdvisorSchemaList")
    FleetAdvisorSchemaObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#FleetAdvisorSchemaObjectList", name: "FleetAdvisorSchemaObjectList")
    FleetAdvisorSchemaObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#FleetAdvisorSchemaObjectResponse", name: "FleetAdvisorSchemaObjectResponse")
    GcpMySQLSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#GcpMySQLSettings", name: "GcpMySQLSettings")
    GetTargetSelectionRulesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#GetTargetSelectionRulesMessage", name: "GetTargetSelectionRulesMessage")
    GetTargetSelectionRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#GetTargetSelectionRulesResponse", name: "GetTargetSelectionRulesResponse")
    IBMDb2Settings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#IBMDb2Settings", name: "IBMDb2Settings")
    IbmDb2LuwDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#IbmDb2LuwDataProviderSettings", name: "IbmDb2LuwDataProviderSettings")
    IbmDb2zOsDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#IbmDb2zOsDataProviderSettings", name: "IbmDb2zOsDataProviderSettings")
    ImportCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ImportCertificateMessage", name: "ImportCertificateMessage")
    ImportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ImportCertificateResponse", name: "ImportCertificateResponse")
    IncludeTestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#IncludeTestList", name: "IncludeTestList")
    IndividualAssessmentNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#IndividualAssessmentNameList", name: "IndividualAssessmentNameList")
    InstanceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InstanceProfile", name: "InstanceProfile")
    InstanceProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#InstanceProfileList", name: "InstanceProfileList")
    InsufficientResourceCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InsufficientResourceCapacityFault", name: "InsufficientResourceCapacityFault", traits: {"smithy.api#error" => "client"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databasemigrationservice#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#IntegerList", name: "IntegerList")
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databasemigrationservice#IntegerOptional", name: "IntegerOptional")
    InvalidCertificateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InvalidCertificateFault", name: "InvalidCertificateFault", traits: {"smithy.api#error" => "client"})
    InvalidOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InvalidOperationFault", name: "InvalidOperationFault", traits: {"smithy.api#error" => "client"})
    InvalidResourceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InvalidResourceStateFault", name: "InvalidResourceStateFault", traits: {"smithy.api#error" => "client"})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InvalidSubnet", name: "InvalidSubnet", traits: {"smithy.api#error" => "client"})
    InventoryData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#InventoryData", name: "InventoryData")
    Iso8601DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.databasemigrationservice#Iso8601DateTime", name: "Iso8601DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    KMSAccessDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSAccessDeniedFault", name: "KMSAccessDeniedFault", traits: {"smithy.api#error" => "client"})
    KMSDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSDisabledFault", name: "KMSDisabledFault", traits: {"smithy.api#error" => "client"})
    KMSFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSFault", name: "KMSFault", traits: {"smithy.api#error" => "client"})
    KMSInvalidStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSInvalidStateFault", name: "KMSInvalidStateFault", traits: {"smithy.api#error" => "client"})
    KMSKeyNotAccessibleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSKeyNotAccessibleFault", name: "KMSKeyNotAccessibleFault", traits: {"smithy.api#error" => "client"})
    KMSNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSNotFoundFault", name: "KMSNotFoundFault", traits: {"smithy.api#error" => "client"})
    KMSThrottlingFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KMSThrottlingFault", name: "KMSThrottlingFault", traits: {"smithy.api#error" => "client"})
    KafkaSaslMechanism = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#KafkaSaslMechanism", name: "KafkaSaslMechanism")
    KafkaSecurityProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#KafkaSecurityProtocol", name: "KafkaSecurityProtocol")
    KafkaSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KafkaSettings", name: "KafkaSettings")
    KafkaSslEndpointIdentificationAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#KafkaSslEndpointIdentificationAlgorithm", name: "KafkaSslEndpointIdentificationAlgorithm")
    KerberosAuthenticationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KerberosAuthenticationSettings", name: "KerberosAuthenticationSettings")
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#KeyList", name: "KeyList")
    KinesisSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#KinesisSettings", name: "KinesisSettings")
    LakehouseSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#LakehouseSettings", name: "LakehouseSettings")
    Limitation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Limitation", name: "Limitation")
    LimitationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#LimitationList", name: "LimitationList")
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ListTagsForResourceMessage", name: "ListTagsForResourceMessage")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databasemigrationservice#Long", name: "Long", traits: {"smithy.api#default" => 0})
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.databasemigrationservice#LongOptional", name: "LongOptional")
    LongVarcharMappingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#LongVarcharMappingType", name: "LongVarcharMappingType")
    MariaDbDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MariaDbDataProviderSettings", name: "MariaDbDataProviderSettings")
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#Marker", name: "Marker", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MessageFormatValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#MessageFormatValue", name: "MessageFormatValue")
    MetadataModelProperties = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.databasemigrationservice#MetadataModelProperties", name: "MetadataModelProperties")
    MetadataModelReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MetadataModelReference", name: "MetadataModelReference")
    MetadataModelReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#MetadataModelReferenceList", name: "MetadataModelReferenceList")
    MicrosoftSQLServerSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MicrosoftSQLServerSettings", name: "MicrosoftSQLServerSettings")
    MicrosoftSqlServerDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MicrosoftSqlServerDataProviderSettings", name: "MicrosoftSqlServerDataProviderSettings")
    MigrationProject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MigrationProject", name: "MigrationProject")
    MigrationProjectIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#MigrationProjectIdentifier", name: "MigrationProjectIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    MigrationProjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#MigrationProjectList", name: "MigrationProjectList")
    MigrationTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#MigrationTypeValue", name: "MigrationTypeValue")
    ModifyConversionConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyConversionConfigurationMessage", name: "ModifyConversionConfigurationMessage")
    ModifyConversionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyConversionConfigurationResponse", name: "ModifyConversionConfigurationResponse")
    ModifyDataMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyDataMigrationMessage", name: "ModifyDataMigrationMessage")
    ModifyDataMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyDataMigrationResponse", name: "ModifyDataMigrationResponse")
    ModifyDataProviderMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyDataProviderMessage", name: "ModifyDataProviderMessage")
    ModifyDataProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyDataProviderResponse", name: "ModifyDataProviderResponse")
    ModifyEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyEndpointMessage", name: "ModifyEndpointMessage")
    ModifyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyEndpointResponse", name: "ModifyEndpointResponse")
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyEventSubscriptionMessage", name: "ModifyEventSubscriptionMessage")
    ModifyEventSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyEventSubscriptionResponse", name: "ModifyEventSubscriptionResponse")
    ModifyInstanceProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyInstanceProfileMessage", name: "ModifyInstanceProfileMessage")
    ModifyInstanceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyInstanceProfileResponse", name: "ModifyInstanceProfileResponse")
    ModifyMigrationProjectMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyMigrationProjectMessage", name: "ModifyMigrationProjectMessage")
    ModifyMigrationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyMigrationProjectResponse", name: "ModifyMigrationProjectResponse")
    ModifyReplicationConfigMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationConfigMessage", name: "ModifyReplicationConfigMessage")
    ModifyReplicationConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationConfigResponse", name: "ModifyReplicationConfigResponse")
    ModifyReplicationInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationInstanceMessage", name: "ModifyReplicationInstanceMessage")
    ModifyReplicationInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationInstanceResponse", name: "ModifyReplicationInstanceResponse")
    ModifyReplicationSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationSubnetGroupMessage", name: "ModifyReplicationSubnetGroupMessage")
    ModifyReplicationSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationSubnetGroupResponse", name: "ModifyReplicationSubnetGroupResponse")
    ModifyReplicationTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationTaskMessage", name: "ModifyReplicationTaskMessage")
    ModifyReplicationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ModifyReplicationTaskResponse", name: "ModifyReplicationTaskResponse")
    MongoDbDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MongoDbDataProviderSettings", name: "MongoDbDataProviderSettings")
    MongoDbSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MongoDbSettings", name: "MongoDbSettings")
    MoveReplicationTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MoveReplicationTaskMessage", name: "MoveReplicationTaskMessage")
    MoveReplicationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MoveReplicationTaskResponse", name: "MoveReplicationTaskResponse")
    MySQLAuthenticationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#MySQLAuthenticationMethod", name: "MySQLAuthenticationMethod")
    MySQLSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MySQLSettings", name: "MySQLSettings")
    MySqlDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#MySqlDataProviderSettings", name: "MySqlDataProviderSettings")
    NeptuneSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#NeptuneSettings", name: "NeptuneSettings")
    NestingLevelValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#NestingLevelValue", name: "NestingLevelValue")
    OracleAuthenticationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#OracleAuthenticationMethod", name: "OracleAuthenticationMethod")
    OracleDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#OracleDataProviderSettings", name: "OracleDataProviderSettings")
    OracleSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#OracleSettings", name: "OracleSettings")
    OrderableReplicationInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#OrderableReplicationInstance", name: "OrderableReplicationInstance")
    OrderableReplicationInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#OrderableReplicationInstanceList", name: "OrderableReplicationInstanceList")
    OriginTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#OriginTypeValue", name: "OriginTypeValue")
    ParquetVersionValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#ParquetVersionValue", name: "ParquetVersionValue")
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#PendingMaintenanceAction", name: "PendingMaintenanceAction")
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#PendingMaintenanceActionDetails", name: "PendingMaintenanceActionDetails")
    PendingMaintenanceActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#PendingMaintenanceActions", name: "PendingMaintenanceActions")
    PluginNameValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#PluginNameValue", name: "PluginNameValue")
    PostgreSQLAuthenticationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#PostgreSQLAuthenticationMethod", name: "PostgreSQLAuthenticationMethod")
    PostgreSQLSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#PostgreSQLSettings", name: "PostgreSQLSettings")
    PostgreSqlDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#PostgreSqlDataProviderSettings", name: "PostgreSqlDataProviderSettings")
    PremigrationAssessmentStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#PremigrationAssessmentStatus", name: "PremigrationAssessmentStatus")
    PremigrationAssessmentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#PremigrationAssessmentStatusList", name: "PremigrationAssessmentStatusList")
    ProcessedObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ProcessedObject", name: "ProcessedObject")
    Progress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Progress", name: "Progress")
    ProvisionData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ProvisionData", name: "ProvisionData")
    PublicIpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#PublicIpAddressList", name: "PublicIpAddressList", traits: {"smithy.api#sensitive" => {}})
    RdsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RdsConfiguration", name: "RdsConfiguration")
    RdsRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RdsRecommendation", name: "RdsRecommendation")
    RdsRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RdsRequirements", name: "RdsRequirements")
    RebootReplicationInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RebootReplicationInstanceMessage", name: "RebootReplicationInstanceMessage")
    RebootReplicationInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RebootReplicationInstanceResponse", name: "RebootReplicationInstanceResponse")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Recommendation", name: "Recommendation")
    RecommendationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RecommendationData", name: "RecommendationData")
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#RecommendationList", name: "RecommendationList")
    RecommendationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RecommendationSettings", name: "RecommendationSettings")
    RedisAuthTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#RedisAuthTypeValue", name: "RedisAuthTypeValue")
    RedisSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RedisSettings", name: "RedisSettings")
    RedshiftDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RedshiftDataProviderSettings", name: "RedshiftDataProviderSettings")
    RedshiftSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RedshiftSettings", name: "RedshiftSettings")
    RefreshSchemasMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RefreshSchemasMessage", name: "RefreshSchemasMessage")
    RefreshSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RefreshSchemasResponse", name: "RefreshSchemasResponse")
    RefreshSchemasStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RefreshSchemasStatus", name: "RefreshSchemasStatus")
    RefreshSchemasStatusTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#RefreshSchemasStatusTypeValue", name: "RefreshSchemasStatusTypeValue")
    ReleaseStatusValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#ReleaseStatusValues", name: "ReleaseStatusValues")
    ReloadOptionValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#ReloadOptionValue", name: "ReloadOptionValue")
    ReloadReplicationTablesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReloadReplicationTablesMessage", name: "ReloadReplicationTablesMessage")
    ReloadReplicationTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReloadReplicationTablesResponse", name: "ReloadReplicationTablesResponse")
    ReloadTablesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReloadTablesMessage", name: "ReloadTablesMessage")
    ReloadTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReloadTablesResponse", name: "ReloadTablesResponse")
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RemoveTagsFromResourceMessage", name: "RemoveTagsFromResourceMessage")
    RemoveTagsFromResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RemoveTagsFromResourceResponse", name: "RemoveTagsFromResourceResponse")
    Replication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Replication", name: "Replication")
    ReplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationConfig", name: "ReplicationConfig")
    ReplicationConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationConfigList", name: "ReplicationConfigList")
    ReplicationEndpointTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationEndpointTypeValue", name: "ReplicationEndpointTypeValue")
    ReplicationInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstance", name: "ReplicationInstance")
    ReplicationInstanceClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstanceClass", name: "ReplicationInstanceClass", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    ReplicationInstanceIpv6AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstanceIpv6AddressList", name: "ReplicationInstanceIpv6AddressList")
    ReplicationInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstanceList", name: "ReplicationInstanceList")
    ReplicationInstancePrivateIpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstancePrivateIpAddressList", name: "ReplicationInstancePrivateIpAddressList")
    ReplicationInstancePublicIpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstancePublicIpAddressList", name: "ReplicationInstancePublicIpAddressList")
    ReplicationInstanceTaskLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstanceTaskLog", name: "ReplicationInstanceTaskLog")
    ReplicationInstanceTaskLogsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationInstanceTaskLogsList", name: "ReplicationInstanceTaskLogsList")
    ReplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationList", name: "ReplicationList")
    ReplicationPendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationPendingModifiedValues", name: "ReplicationPendingModifiedValues")
    ReplicationStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationStats", name: "ReplicationStats")
    ReplicationSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationSubnetGroup", name: "ReplicationSubnetGroup")
    ReplicationSubnetGroupDoesNotCoverEnoughAZs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationSubnetGroupDoesNotCoverEnoughAZs", name: "ReplicationSubnetGroupDoesNotCoverEnoughAZs", traits: {"smithy.api#error" => "client"})
    ReplicationSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationSubnetGroups", name: "ReplicationSubnetGroups")
    ReplicationTableStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTableStatisticsList", name: "ReplicationTableStatisticsList")
    ReplicationTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTask", name: "ReplicationTask")
    ReplicationTaskAssessmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskAssessmentResult", name: "ReplicationTaskAssessmentResult")
    ReplicationTaskAssessmentResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskAssessmentResultList", name: "ReplicationTaskAssessmentResultList")
    ReplicationTaskAssessmentRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskAssessmentRun", name: "ReplicationTaskAssessmentRun")
    ReplicationTaskAssessmentRunList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskAssessmentRunList", name: "ReplicationTaskAssessmentRunList")
    ReplicationTaskAssessmentRunProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskAssessmentRunProgress", name: "ReplicationTaskAssessmentRunProgress")
    ReplicationTaskAssessmentRunResultStatistic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskAssessmentRunResultStatistic", name: "ReplicationTaskAssessmentRunResultStatistic")
    ReplicationTaskIndividualAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskIndividualAssessment", name: "ReplicationTaskIndividualAssessment")
    ReplicationTaskIndividualAssessmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskIndividualAssessmentList", name: "ReplicationTaskIndividualAssessmentList")
    ReplicationTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskList", name: "ReplicationTaskList")
    ReplicationTaskStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ReplicationTaskStats", name: "ReplicationTaskStats")
    ResourceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ResourceAlreadyExistsFault", name: "ResourceAlreadyExistsFault", traits: {"smithy.api#error" => "client"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#ResourceArn", name: "ResourceArn")
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ResourceNotFoundFault", name: "ResourceNotFoundFault", traits: {"smithy.api#error" => "client"})
    ResourcePendingMaintenanceActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ResourcePendingMaintenanceActions", name: "ResourcePendingMaintenanceActions")
    ResourceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ResourceQuotaExceededFault", name: "ResourceQuotaExceededFault", traits: {"smithy.api#error" => "client"})
    RunFleetAdvisorLsaAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#RunFleetAdvisorLsaAnalysisResponse", name: "RunFleetAdvisorLsaAnalysisResponse")
    S3AccessDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#S3AccessDeniedFault", name: "S3AccessDeniedFault", traits: {"smithy.api#error" => "client"})
    S3ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#S3ResourceNotFoundFault", name: "S3ResourceNotFoundFault", traits: {"smithy.api#error" => "client"})
    S3Settings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#S3Settings", name: "S3Settings")
    SCApplicationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SCApplicationAttributes", name: "SCApplicationAttributes")
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SNSInvalidTopicFault", name: "SNSInvalidTopicFault", traits: {"smithy.api#error" => "client"})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SNSNoAuthorizationFault", name: "SNSNoAuthorizationFault", traits: {"smithy.api#error" => "client"})
    SafeguardPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#SafeguardPolicy", name: "SafeguardPolicy")
    SchemaConversionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SchemaConversionRequest", name: "SchemaConversionRequest")
    SchemaConversionRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SchemaConversionRequestList", name: "SchemaConversionRequestList")
    SchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SchemaList", name: "SchemaList")
    SchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SchemaResponse", name: "SchemaResponse")
    SchemaShortInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SchemaShortInfoResponse", name: "SchemaShortInfoResponse")
    SecretString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#SecretString", name: "SecretString", traits: {"smithy.api#sensitive" => {}})
    ServerShortInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#ServerShortInfoResponse", name: "ServerShortInfoResponse")
    SourceDataSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SourceDataSetting", name: "SourceDataSetting")
    SourceDataSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SourceDataSettings", name: "SourceDataSettings")
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SourceIdsList", name: "SourceIdsList")
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#SourceType", name: "SourceType")
    SqlServerAuthenticationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#SqlServerAuthenticationMethod", name: "SqlServerAuthenticationMethod")
    SslSecurityProtocolValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#SslSecurityProtocolValue", name: "SslSecurityProtocolValue")
    StartDataMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartDataMigrationMessage", name: "StartDataMigrationMessage")
    StartDataMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartDataMigrationResponse", name: "StartDataMigrationResponse")
    StartExtensionPackAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartExtensionPackAssociationMessage", name: "StartExtensionPackAssociationMessage")
    StartExtensionPackAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartExtensionPackAssociationResponse", name: "StartExtensionPackAssociationResponse")
    StartMetadataModelAssessmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelAssessmentMessage", name: "StartMetadataModelAssessmentMessage")
    StartMetadataModelAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelAssessmentResponse", name: "StartMetadataModelAssessmentResponse")
    StartMetadataModelConversionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelConversionMessage", name: "StartMetadataModelConversionMessage")
    StartMetadataModelConversionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelConversionResponse", name: "StartMetadataModelConversionResponse")
    StartMetadataModelCreationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelCreationMessage", name: "StartMetadataModelCreationMessage")
    StartMetadataModelCreationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelCreationResponse", name: "StartMetadataModelCreationResponse")
    StartMetadataModelExportAsScriptMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelExportAsScriptMessage", name: "StartMetadataModelExportAsScriptMessage")
    StartMetadataModelExportAsScriptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelExportAsScriptResponse", name: "StartMetadataModelExportAsScriptResponse")
    StartMetadataModelExportToTargetMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelExportToTargetMessage", name: "StartMetadataModelExportToTargetMessage")
    StartMetadataModelExportToTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelExportToTargetResponse", name: "StartMetadataModelExportToTargetResponse")
    StartMetadataModelImportMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelImportMessage", name: "StartMetadataModelImportMessage")
    StartMetadataModelImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartMetadataModelImportResponse", name: "StartMetadataModelImportResponse")
    StartRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartRecommendationsRequest", name: "StartRecommendationsRequest")
    StartRecommendationsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartRecommendationsRequestEntry", name: "StartRecommendationsRequestEntry")
    StartRecommendationsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#StartRecommendationsRequestEntryList", name: "StartRecommendationsRequestEntryList")
    StartReplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationMessage", name: "StartReplicationMessage")
    StartReplicationMigrationTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationMigrationTypeValue", name: "StartReplicationMigrationTypeValue")
    StartReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationResponse", name: "StartReplicationResponse")
    StartReplicationTaskAssessmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessmentMessage", name: "StartReplicationTaskAssessmentMessage")
    StartReplicationTaskAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessmentResponse", name: "StartReplicationTaskAssessmentResponse")
    StartReplicationTaskAssessmentRunMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessmentRunMessage", name: "StartReplicationTaskAssessmentRunMessage")
    StartReplicationTaskAssessmentRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessmentRunResponse", name: "StartReplicationTaskAssessmentRunResponse")
    StartReplicationTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskMessage", name: "StartReplicationTaskMessage")
    StartReplicationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskResponse", name: "StartReplicationTaskResponse")
    StartReplicationTaskTypeValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#StartReplicationTaskTypeValue", name: "StartReplicationTaskTypeValue")
    StatementProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StatementProperties", name: "StatementProperties")
    StopDataMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StopDataMigrationMessage", name: "StopDataMigrationMessage")
    StopDataMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StopDataMigrationResponse", name: "StopDataMigrationResponse")
    StopReplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StopReplicationMessage", name: "StopReplicationMessage")
    StopReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StopReplicationResponse", name: "StopReplicationResponse")
    StopReplicationTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StopReplicationTaskMessage", name: "StopReplicationTaskMessage")
    StopReplicationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StopReplicationTaskResponse", name: "StopReplicationTaskResponse")
    StorageQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#StorageQuotaExceededFault", name: "StorageQuotaExceededFault", traits: {"smithy.api#error" => "client"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.databasemigrationservice#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#StringList", name: "StringList")
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Subnet", name: "Subnet")
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SubnetAlreadyInUse", name: "SubnetAlreadyInUse", traits: {"smithy.api#error" => "client"})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SubnetList", name: "SubnetList")
    SupportedEndpointType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SupportedEndpointType", name: "SupportedEndpointType")
    SupportedEndpointTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#SupportedEndpointTypeList", name: "SupportedEndpointTypeList")
    SybaseAseDataProviderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SybaseAseDataProviderSettings", name: "SybaseAseDataProviderSettings")
    SybaseSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#SybaseSettings", name: "SybaseSettings")
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.databasemigrationservice#TStamp", name: "TStamp")
    TableListToReload = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#TableListToReload", name: "TableListToReload")
    TablePreparationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#TablePreparationMode", name: "TablePreparationMode")
    TableStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#TableStatistics", name: "TableStatistics")
    TableStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#TableStatisticsList", name: "TableStatisticsList")
    TableToReload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#TableToReload", name: "TableToReload")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#TagList", name: "TagList")
    TargetDataSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#TargetDataSetting", name: "TargetDataSetting")
    TargetDataSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#TargetDataSettings", name: "TargetDataSettings")
    TargetDbType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#TargetDbType", name: "TargetDbType")
    TestConnectionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#TestConnectionMessage", name: "TestConnectionMessage")
    TestConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#TestConnectionResponse", name: "TestConnectionResponse")
    TimestreamSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#TimestreamSettings", name: "TimestreamSettings")
    TlogAccessMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#TlogAccessMode", name: "TlogAccessMode")
    UpdateSubscriptionsToEventBridgeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#UpdateSubscriptionsToEventBridgeMessage", name: "UpdateSubscriptionsToEventBridgeMessage")
    UpdateSubscriptionsToEventBridgeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#UpdateSubscriptionsToEventBridgeResponse", name: "UpdateSubscriptionsToEventBridgeResponse")
    UpgradeDependencyFailureFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#UpgradeDependencyFailureFault", name: "UpgradeDependencyFailureFault", traits: {"smithy.api#error" => "client"})
    VersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.databasemigrationservice#VersionStatus", name: "VersionStatus")
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#VpcSecurityGroupIdList", name: "VpcSecurityGroupIdList")
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#VpcSecurityGroupMembership", name: "VpcSecurityGroupMembership")
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.databasemigrationservice#VpcSecurityGroupMembershipList", name: "VpcSecurityGroupMembershipList")

    AccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessDeniedFault.type = Types::AccessDeniedFault
    AccountQuota.add_member(:account_quota_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountQuotaName"))
    AccountQuota.add_member(:used, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Used", traits: {"smithy.api#default" => 0}))
    AccountQuota.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Max", traits: {"smithy.api#default" => 0}))
    AccountQuota.type = Types::AccountQuota
    AccountQuotaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountQuota, name: "member", traits: {"smithy.api#xmlName" => "AccountQuota"}))
    AddTagsToResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    AddTagsToResourceResponse.type = Types::AddTagsToResourceResponse
    ApplyPendingMaintenanceActionMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyAction", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptInType", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.type = Types::ApplyPendingMaintenanceActionMessage
    ApplyPendingMaintenanceActionResponse.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePendingMaintenanceActions, name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResponse.type = Types::ApplyPendingMaintenanceActionResponse
    ArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    AssessmentReportType.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "pdf"}))
    AssessmentReportType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "csv"}))
    AssessmentReportTypesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentReportType, name: "member"))
    AuthMechanismValue.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    AuthMechanismValue.add_member(:mongodb_cr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONGODB_CR", traits: {"smithy.api#enumValue" => "mongodb_cr"}))
    AuthMechanismValue.add_member(:scram_sha_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRAM_SHA_1", traits: {"smithy.api#enumValue" => "scram_sha_1"}))
    AuthTypeValue.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "no"}))
    AuthTypeValue.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZonesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    AvailableUpgradesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    BatchStartRecommendationsErrorEntry.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId"))
    BatchStartRecommendationsErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchStartRecommendationsErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    BatchStartRecommendationsErrorEntry.type = Types::BatchStartRecommendationsErrorEntry
    BatchStartRecommendationsErrorEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchStartRecommendationsErrorEntry, name: "member"))
    BatchStartRecommendationsRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: StartRecommendationsRequestEntryList, name: "Data"))
    BatchStartRecommendationsRequest.type = Types::BatchStartRecommendationsRequest
    BatchStartRecommendationsResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchStartRecommendationsErrorEntryList, name: "ErrorEntries"))
    BatchStartRecommendationsResponse.type = Types::BatchStartRecommendationsResponse
    CancelMetadataModelConversionMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    CancelMetadataModelConversionMessage.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier", traits: {"smithy.api#required" => {}}))
    CancelMetadataModelConversionMessage.type = Types::CancelMetadataModelConversionMessage
    CancelMetadataModelConversionResponse.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequest, name: "Request"))
    CancelMetadataModelConversionResponse.type = Types::CancelMetadataModelConversionResponse
    CancelMetadataModelCreationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    CancelMetadataModelCreationMessage.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier", traits: {"smithy.api#required" => {}}))
    CancelMetadataModelCreationMessage.type = Types::CancelMetadataModelCreationMessage
    CancelMetadataModelCreationResponse.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequest, name: "Request"))
    CancelMetadataModelCreationResponse.type = Types::CancelMetadataModelCreationResponse
    CancelReplicationTaskAssessmentRunMessage.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskAssessmentRunArn", traits: {"smithy.api#required" => {}}))
    CancelReplicationTaskAssessmentRunMessage.type = Types::CancelReplicationTaskAssessmentRunMessage
    CancelReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRun, name: "ReplicationTaskAssessmentRun"))
    CancelReplicationTaskAssessmentRunResponse.type = Types::CancelReplicationTaskAssessmentRunResponse
    CannedAclForObjectsValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    CannedAclForObjectsValue.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "private"}))
    CannedAclForObjectsValue.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "public-read"}))
    CannedAclForObjectsValue.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_READ_WRITE", traits: {"smithy.api#enumValue" => "public-read-write"}))
    CannedAclForObjectsValue.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHENTICATED_READ", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    CannedAclForObjectsValue.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EXEC_READ", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    CannedAclForObjectsValue.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUCKET_OWNER_READ", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    CannedAclForObjectsValue.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUCKET_OWNER_FULL_CONTROL", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    Certificate.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CertificateCreationDate"))
    Certificate.add_member(:certificate_pem, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificatePem"))
    Certificate.add_member(:certificate_wallet, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateWallet, name: "CertificateWallet"))
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    Certificate.add_member(:certificate_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateOwner"))
    Certificate.add_member(:valid_from_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidFromDate"))
    Certificate.add_member(:valid_to_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidToDate"))
    Certificate.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SigningAlgorithm"))
    Certificate.add_member(:key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "KeyLength"))
    Certificate.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    Certificate.type = Types::Certificate
    CertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "member", traits: {"smithy.api#xmlName" => "Certificate"}))
    CharLengthSemantics.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    CharLengthSemantics.add_member(:char, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAR", traits: {"smithy.api#enumValue" => "char"}))
    CharLengthSemantics.add_member(:byte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE", traits: {"smithy.api#enumValue" => "byte"}))
    CollectorHealthCheck.add_member(:collector_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorStatus, name: "CollectorStatus"))
    CollectorHealthCheck.add_member(:local_collector_s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "LocalCollectorS3Access"))
    CollectorHealthCheck.add_member(:web_collector_s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "WebCollectorS3Access"))
    CollectorHealthCheck.add_member(:web_collector_granted_role_based_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "WebCollectorGrantedRoleBasedAccess"))
    CollectorHealthCheck.type = Types::CollectorHealthCheck
    CollectorNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CollectorNotFoundFault.type = Types::CollectorNotFoundFault
    CollectorResponse.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorReferencedId"))
    CollectorResponse.add_member(:collector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorName"))
    CollectorResponse.add_member(:collector_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorVersion"))
    CollectorResponse.add_member(:version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, name: "VersionStatus"))
    CollectorResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CollectorResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName"))
    CollectorResponse.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    CollectorResponse.add_member(:collector_health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorHealthCheck, name: "CollectorHealthCheck"))
    CollectorResponse.add_member(:last_data_received, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastDataReceived"))
    CollectorResponse.add_member(:registered_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegisteredDate"))
    CollectorResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedDate"))
    CollectorResponse.add_member(:modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ModifiedDate"))
    CollectorResponse.add_member(:inventory_data, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryData, name: "InventoryData"))
    CollectorResponse.type = Types::CollectorResponse
    CollectorResponses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorResponse, name: "member"))
    CollectorShortInfoResponse.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorReferencedId"))
    CollectorShortInfoResponse.add_member(:collector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorName"))
    CollectorShortInfoResponse.type = Types::CollectorShortInfoResponse
    CollectorStatus.add_member(:unregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNREGISTERED", traits: {"smithy.api#enumValue" => "UNREGISTERED"}))
    CollectorStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CollectorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorShortInfoResponse, name: "member"))
    CompressionTypeValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    CompressionTypeValue.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "gzip"}))
    ComputeConfig.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    ComputeConfig.add_member(:dns_name_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DnsNameServers"))
    ComputeConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ComputeConfig.add_member(:max_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxCapacityUnits"))
    ComputeConfig.add_member(:min_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MinCapacityUnits"))
    ComputeConfig.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    ComputeConfig.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ComputeConfig.add_member(:replication_subnet_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupId"))
    ComputeConfig.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroupIds"))
    ComputeConfig.type = Types::ComputeConfig
    Connection.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    Connection.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn"))
    Connection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Connection.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    Connection.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointIdentifier"))
    Connection.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceIdentifier"))
    Connection.type = Types::Connection
    ConnectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "member", traits: {"smithy.api#xmlName" => "Connection"}))
    CreateDataMigrationMessage.add_member(:data_migration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationName"))
    CreateDataMigrationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    CreateDataMigrationMessage.add_member(:data_migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "DataMigrationType", traits: {"smithy.api#required" => {}}))
    CreateDataMigrationMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateDataMigrationMessage.add_member(:enable_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCloudwatchLogs"))
    CreateDataMigrationMessage.add_member(:source_data_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDataSettings, name: "SourceDataSettings"))
    CreateDataMigrationMessage.add_member(:target_data_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDataSettings, name: "TargetDataSettings"))
    CreateDataMigrationMessage.add_member(:number_of_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfJobs"))
    CreateDataMigrationMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDataMigrationMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "SelectionRules"))
    CreateDataMigrationMessage.type = Types::CreateDataMigrationMessage
    CreateDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigration, name: "DataMigration"))
    CreateDataMigrationResponse.type = Types::CreateDataMigrationResponse
    CreateDataProviderMessage.add_member(:data_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderName"))
    CreateDataProviderMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateDataProviderMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#required" => {}}))
    CreateDataProviderMessage.add_member(:virtual, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Virtual"))
    CreateDataProviderMessage.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderSettings, name: "Settings", traits: {"smithy.api#required" => {}}))
    CreateDataProviderMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDataProviderMessage.type = Types::CreateDataProviderMessage
    CreateDataProviderResponse.add_member(:data_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProvider, name: "DataProvider"))
    CreateDataProviderResponse.type = Types::CreateDataProviderResponse
    CreateEndpointMessage.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointIdentifier", traits: {"smithy.api#required" => {}}))
    CreateEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationEndpointTypeValue, name: "EndpointType", traits: {"smithy.api#required" => {}}))
    CreateEndpointMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName", traits: {"smithy.api#required" => {}}))
    CreateEndpointMessage.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    CreateEndpointMessage.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    CreateEndpointMessage.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    CreateEndpointMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateEndpointMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    CreateEndpointMessage.add_member(:extra_connection_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExtraConnectionAttributes"))
    CreateEndpointMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateEndpointMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEndpointMessage.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    CreateEndpointMessage.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    CreateEndpointMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    CreateEndpointMessage.add_member(:external_table_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExternalTableDefinition"))
    CreateEndpointMessage.add_member(:dynamo_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamoDbSettings, name: "DynamoDbSettings"))
    CreateEndpointMessage.add_member(:s3_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Settings, name: "S3Settings"))
    CreateEndpointMessage.add_member(:dms_transfer_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsTransferSettings, name: "DmsTransferSettings"))
    CreateEndpointMessage.add_member(:mongo_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MongoDbSettings, name: "MongoDbSettings"))
    CreateEndpointMessage.add_member(:kinesis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisSettings, name: "KinesisSettings"))
    CreateEndpointMessage.add_member(:kafka_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSettings, name: "KafkaSettings"))
    CreateEndpointMessage.add_member(:elasticsearch_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchSettings, name: "ElasticsearchSettings"))
    CreateEndpointMessage.add_member(:neptune_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NeptuneSettings, name: "NeptuneSettings"))
    CreateEndpointMessage.add_member(:redshift_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftSettings, name: "RedshiftSettings"))
    CreateEndpointMessage.add_member(:postgre_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: PostgreSQLSettings, name: "PostgreSQLSettings"))
    CreateEndpointMessage.add_member(:my_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MySQLSettings, name: "MySQLSettings"))
    CreateEndpointMessage.add_member(:oracle_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OracleSettings, name: "OracleSettings"))
    CreateEndpointMessage.add_member(:sybase_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SybaseSettings, name: "SybaseSettings"))
    CreateEndpointMessage.add_member(:microsoft_sql_server_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftSQLServerSettings, name: "MicrosoftSQLServerSettings"))
    CreateEndpointMessage.add_member(:ibm_db2_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: IBMDb2Settings, name: "IBMDb2Settings"))
    CreateEndpointMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    CreateEndpointMessage.add_member(:doc_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DocDbSettings, name: "DocDbSettings"))
    CreateEndpointMessage.add_member(:redis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedisSettings, name: "RedisSettings"))
    CreateEndpointMessage.add_member(:gcp_my_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GcpMySQLSettings, name: "GcpMySQLSettings"))
    CreateEndpointMessage.add_member(:timestream_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestreamSettings, name: "TimestreamSettings"))
    CreateEndpointMessage.type = Types::CreateEndpointMessage
    CreateEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    CreateEndpointResponse.type = Types::CreateEndpointResponse
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn", traits: {"smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResponse.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    CreateEventSubscriptionResponse.type = Types::CreateEventSubscriptionResponse
    CreateFleetAdvisorCollectorRequest.add_member(:collector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorName", traits: {"smithy.api#required" => {}}))
    CreateFleetAdvisorCollectorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateFleetAdvisorCollectorRequest.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateFleetAdvisorCollectorRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    CreateFleetAdvisorCollectorRequest.type = Types::CreateFleetAdvisorCollectorRequest
    CreateFleetAdvisorCollectorResponse.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorReferencedId"))
    CreateFleetAdvisorCollectorResponse.add_member(:collector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorName"))
    CreateFleetAdvisorCollectorResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateFleetAdvisorCollectorResponse.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    CreateFleetAdvisorCollectorResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName"))
    CreateFleetAdvisorCollectorResponse.type = Types::CreateFleetAdvisorCollectorResponse
    CreateInstanceProfileMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    CreateInstanceProfileMessage.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn"))
    CreateInstanceProfileMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateInstanceProfileMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateInstanceProfileMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    CreateInstanceProfileMessage.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileName"))
    CreateInstanceProfileMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateInstanceProfileMessage.add_member(:subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupIdentifier"))
    CreateInstanceProfileMessage.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroups"))
    CreateInstanceProfileMessage.type = Types::CreateInstanceProfileMessage
    CreateInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "InstanceProfile"))
    CreateInstanceProfileResponse.type = Types::CreateInstanceProfileResponse
    CreateMigrationProjectMessage.add_member(:migration_project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectName"))
    CreateMigrationProjectMessage.add_member(:source_data_provider_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorDefinitionList, name: "SourceDataProviderDescriptors", traits: {"smithy.api#required" => {}}))
    CreateMigrationProjectMessage.add_member(:target_data_provider_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorDefinitionList, name: "TargetDataProviderDescriptors", traits: {"smithy.api#required" => {}}))
    CreateMigrationProjectMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileIdentifier", traits: {"smithy.api#required" => {}}))
    CreateMigrationProjectMessage.add_member(:transformation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TransformationRules"))
    CreateMigrationProjectMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateMigrationProjectMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMigrationProjectMessage.add_member(:schema_conversion_application_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SCApplicationAttributes, name: "SchemaConversionApplicationAttributes"))
    CreateMigrationProjectMessage.type = Types::CreateMigrationProjectMessage
    CreateMigrationProjectResponse.add_member(:migration_project, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProject, name: "MigrationProject"))
    CreateMigrationProjectResponse.type = Types::CreateMigrationProjectResponse
    CreateReplicationConfigMessage.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfig, name: "ComputeConfig", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "ReplicationType", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableMappings", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:replication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSettings"))
    CreateReplicationConfigMessage.add_member(:supplemental_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SupplementalSettings"))
    CreateReplicationConfigMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    CreateReplicationConfigMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateReplicationConfigMessage.type = Types::CreateReplicationConfigMessage
    CreateReplicationConfigResponse.add_member(:replication_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfig, name: "ReplicationConfig"))
    CreateReplicationConfigResponse.type = Types::CreateReplicationConfigResponse
    CreateReplicationInstanceMessage.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    CreateReplicationInstanceMessage.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceClass, name: "ReplicationInstanceClass", traits: {"smithy.api#required" => {}}))
    CreateReplicationInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateReplicationInstanceMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    CreateReplicationInstanceMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupIdentifier"))
    CreateReplicationInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateReplicationInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    CreateReplicationInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateReplicationInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateReplicationInstanceMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateReplicationInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateReplicationInstanceMessage.add_member(:dns_name_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DnsNameServers"))
    CreateReplicationInstanceMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    CreateReplicationInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    CreateReplicationInstanceMessage.add_member(:kerberos_authentication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosAuthenticationSettings, name: "KerberosAuthenticationSettings"))
    CreateReplicationInstanceMessage.type = Types::CreateReplicationInstanceMessage
    CreateReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstance, name: "ReplicationInstance"))
    CreateReplicationInstanceResponse.type = Types::CreateReplicationInstanceResponse
    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupDescription", traits: {"smithy.api#required" => {}}))
    CreateReplicationSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    CreateReplicationSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateReplicationSubnetGroupMessage.type = Types::CreateReplicationSubnetGroupMessage
    CreateReplicationSubnetGroupResponse.add_member(:replication_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSubnetGroup, name: "ReplicationSubnetGroup"))
    CreateReplicationSubnetGroupResponse.type = Types::CreateReplicationSubnetGroupResponse
    CreateReplicationTaskMessage.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "MigrationType", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableMappings", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:replication_task_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskSettings"))
    CreateReplicationTaskMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CdcStartTime"))
    CreateReplicationTaskMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStartPosition"))
    CreateReplicationTaskMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStopPosition"))
    CreateReplicationTaskMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateReplicationTaskMessage.add_member(:task_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TaskData"))
    CreateReplicationTaskMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    CreateReplicationTaskMessage.type = Types::CreateReplicationTaskMessage
    CreateReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    CreateReplicationTaskResponse.type = Types::CreateReplicationTaskResponse
    DataFormatValue.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "csv"}))
    DataFormatValue.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARQUET", traits: {"smithy.api#enumValue" => "parquet"}))
    DataMigration.add_member(:data_migration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationName"))
    DataMigration.add_member(:data_migration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationArn"))
    DataMigration.add_member(:data_migration_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "DataMigrationCreateTime"))
    DataMigration.add_member(:data_migration_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "DataMigrationStartTime"))
    DataMigration.add_member(:data_migration_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "DataMigrationEndTime"))
    DataMigration.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    DataMigration.add_member(:migration_project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectArn"))
    DataMigration.add_member(:data_migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "DataMigrationType"))
    DataMigration.add_member(:data_migration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigrationSettings, name: "DataMigrationSettings"))
    DataMigration.add_member(:source_data_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDataSettings, name: "SourceDataSettings"))
    DataMigration.add_member(:target_data_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDataSettings, name: "TargetDataSettings"))
    DataMigration.add_member(:data_migration_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigrationStatistics, name: "DataMigrationStatistics"))
    DataMigration.add_member(:data_migration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationStatus"))
    DataMigration.add_member(:public_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicIpAddressList, name: "PublicIpAddresses"))
    DataMigration.add_member(:data_migration_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigrationCidrBlock, name: "DataMigrationCidrBlocks"))
    DataMigration.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    DataMigration.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StopReason"))
    DataMigration.type = Types::DataMigration
    DataMigrationCidrBlock.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DataMigrationSettings.add_member(:number_of_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfJobs"))
    DataMigrationSettings.add_member(:cloudwatch_logs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CloudwatchLogsEnabled"))
    DataMigrationSettings.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "SelectionRules"))
    DataMigrationSettings.type = Types::DataMigrationSettings
    DataMigrationStatistics.add_member(:tables_loaded, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesLoaded", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:elapsed_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ElapsedTimeMillis", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:tables_loading, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesLoading", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:full_load_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FullLoadPercentage", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:cdc_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CDCLatency", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:tables_queued, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesQueued", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:tables_errored, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesErrored", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartTime"))
    DataMigrationStatistics.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StopTime"))
    DataMigrationStatistics.type = Types::DataMigrationStatistics
    DataMigrations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigration, name: "member"))
    DataProvider.add_member(:data_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderName"))
    DataProvider.add_member(:data_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderArn"))
    DataProvider.add_member(:data_provider_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "DataProviderCreationTime"))
    DataProvider.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DataProvider.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DataProvider.add_member(:virtual, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Virtual"))
    DataProvider.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderSettings, name: "Settings"))
    DataProvider.type = Types::DataProvider
    DataProviderDescriptor.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    DataProviderDescriptor.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    DataProviderDescriptor.add_member(:data_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderName"))
    DataProviderDescriptor.add_member(:data_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderArn"))
    DataProviderDescriptor.type = Types::DataProviderDescriptor
    DataProviderDescriptorDefinition.add_member(:data_provider_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderIdentifier", traits: {"smithy.api#required" => {}}))
    DataProviderDescriptorDefinition.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    DataProviderDescriptorDefinition.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    DataProviderDescriptorDefinition.type = Types::DataProviderDescriptorDefinition
    DataProviderDescriptorDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorDefinition, name: "member"))
    DataProviderDescriptorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptor, name: "member"))
    DataProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProvider, name: "member", traits: {"smithy.api#xmlName" => "DataProvider"}))
    DataProviderSettings.add_member(:redshift_settings, Types::DataProviderSettings::RedshiftSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDataProviderSettings, name: "RedshiftSettings"))
    DataProviderSettings.add_member(:postgre_sql_settings, Types::DataProviderSettings::PostgreSqlSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: PostgreSqlDataProviderSettings, name: "PostgreSqlSettings"))
    DataProviderSettings.add_member(:my_sql_settings, Types::DataProviderSettings::MySqlSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: MySqlDataProviderSettings, name: "MySqlSettings"))
    DataProviderSettings.add_member(:oracle_settings, Types::DataProviderSettings::OracleSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: OracleDataProviderSettings, name: "OracleSettings"))
    DataProviderSettings.add_member(:sybase_ase_settings, Types::DataProviderSettings::SybaseAseSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: SybaseAseDataProviderSettings, name: "SybaseAseSettings"))
    DataProviderSettings.add_member(:microsoft_sql_server_settings, Types::DataProviderSettings::MicrosoftSqlServerSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftSqlServerDataProviderSettings, name: "MicrosoftSqlServerSettings"))
    DataProviderSettings.add_member(:doc_db_settings, Types::DataProviderSettings::DocDbSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: DocDbDataProviderSettings, name: "DocDbSettings"))
    DataProviderSettings.add_member(:maria_db_settings, Types::DataProviderSettings::MariaDbSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: MariaDbDataProviderSettings, name: "MariaDbSettings"))
    DataProviderSettings.add_member(:ibm_db2_luw_settings, Types::DataProviderSettings::IbmDb2LuwSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: IbmDb2LuwDataProviderSettings, name: "IbmDb2LuwSettings"))
    DataProviderSettings.add_member(:ibm_db2z_os_settings, Types::DataProviderSettings::IbmDb2zOsSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: IbmDb2zOsDataProviderSettings, name: "IbmDb2zOsSettings"))
    DataProviderSettings.add_member(:mongo_db_settings, Types::DataProviderSettings::MongoDbSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: MongoDbDataProviderSettings, name: "MongoDbSettings"))
    DataProviderSettings.add_member(:unknown, Types::DataProviderSettings::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataProviderSettings.type = Types::DataProviderSettings
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineEdition"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:service_pack, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServicePack"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:support_level, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SupportLevel"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:os_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "OsArchitecture"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:tooltip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tooltip"))
    DatabaseInstanceSoftwareDetailsResponse.type = Types::DatabaseInstanceSoftwareDetailsResponse
    DatabaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseResponse, name: "member"))
    DatabaseMode.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    DatabaseMode.add_member(:babelfish, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BABELFISH", traits: {"smithy.api#enumValue" => "babelfish"}))
    DatabaseResponse.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId"))
    DatabaseResponse.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    DatabaseResponse.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddress"))
    DatabaseResponse.add_member(:number_of_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "NumberOfSchemas"))
    DatabaseResponse.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerShortInfoResponse, name: "Server"))
    DatabaseResponse.add_member(:software_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInstanceSoftwareDetailsResponse, name: "SoftwareDetails"))
    DatabaseResponse.add_member(:collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorsList, name: "Collectors"))
    DatabaseResponse.type = Types::DatabaseResponse
    DatabaseShortInfoResponse.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId"))
    DatabaseShortInfoResponse.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    DatabaseShortInfoResponse.add_member(:database_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseIpAddress"))
    DatabaseShortInfoResponse.add_member(:database_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseEngine"))
    DatabaseShortInfoResponse.type = Types::DatabaseShortInfoResponse
    DatePartitionDelimiterValue.add_member(:slash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLASH", traits: {"smithy.api#enumValue" => "SLASH"}))
    DatePartitionDelimiterValue.add_member(:underscore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDERSCORE", traits: {"smithy.api#enumValue" => "UNDERSCORE"}))
    DatePartitionDelimiterValue.add_member(:dash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DASH", traits: {"smithy.api#enumValue" => "DASH"}))
    DatePartitionDelimiterValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DatePartitionSequenceValue.add_member(:yyyymmdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YYYYMMDD", traits: {"smithy.api#enumValue" => "YYYYMMDD"}))
    DatePartitionSequenceValue.add_member(:yyyymmddhh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YYYYMMDDHH", traits: {"smithy.api#enumValue" => "YYYYMMDDHH"}))
    DatePartitionSequenceValue.add_member(:yyyymm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YYYYMM", traits: {"smithy.api#enumValue" => "YYYYMM"}))
    DatePartitionSequenceValue.add_member(:mmyyyydd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MMYYYYDD", traits: {"smithy.api#enumValue" => "MMYYYYDD"}))
    DatePartitionSequenceValue.add_member(:ddmmyyyy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DDMMYYYY", traits: {"smithy.api#enumValue" => "DDMMYYYY"}))
    DefaultErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DefaultErrorDetails.type = Types::DefaultErrorDetails
    DeleteCertificateMessage.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    DeleteCertificateMessage.type = Types::DeleteCertificateMessage
    DeleteCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "Certificate"))
    DeleteCertificateResponse.type = Types::DeleteCertificateResponse
    DeleteCollectorRequest.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CollectorReferencedId", traits: {"smithy.api#required" => {}}))
    DeleteCollectorRequest.type = Types::DeleteCollectorRequest
    DeleteConnectionMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionMessage.type = Types::DeleteConnectionMessage
    DeleteConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection"))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteDataMigrationMessage.type = Types::DeleteDataMigrationMessage
    DeleteDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigration, name: "DataMigration"))
    DeleteDataMigrationResponse.type = Types::DeleteDataMigrationResponse
    DeleteDataProviderMessage.add_member(:data_provider_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteDataProviderMessage.type = Types::DeleteDataProviderMessage
    DeleteDataProviderResponse.add_member(:data_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProvider, name: "DataProvider"))
    DeleteDataProviderResponse.type = Types::DeleteDataProviderResponse
    DeleteEndpointMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteEndpointMessage.type = Types::DeleteEndpointMessage
    DeleteEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteEventSubscriptionResponse.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    DeleteEventSubscriptionResponse.type = Types::DeleteEventSubscriptionResponse
    DeleteFleetAdvisorDatabasesRequest.add_member(:database_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DatabaseIds", traits: {"smithy.api#required" => {}}))
    DeleteFleetAdvisorDatabasesRequest.type = Types::DeleteFleetAdvisorDatabasesRequest
    DeleteFleetAdvisorDatabasesResponse.add_member(:database_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DatabaseIds"))
    DeleteFleetAdvisorDatabasesResponse.type = Types::DeleteFleetAdvisorDatabasesResponse
    DeleteInstanceProfileMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteInstanceProfileMessage.type = Types::DeleteInstanceProfileMessage
    DeleteInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "InstanceProfile"))
    DeleteInstanceProfileResponse.type = Types::DeleteInstanceProfileResponse
    DeleteMigrationProjectMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteMigrationProjectMessage.type = Types::DeleteMigrationProjectMessage
    DeleteMigrationProjectResponse.add_member(:migration_project, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProject, name: "MigrationProject"))
    DeleteMigrationProjectResponse.type = Types::DeleteMigrationProjectResponse
    DeleteReplicationConfigMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationConfigMessage.type = Types::DeleteReplicationConfigMessage
    DeleteReplicationConfigResponse.add_member(:replication_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfig, name: "ReplicationConfig"))
    DeleteReplicationConfigResponse.type = Types::DeleteReplicationConfigResponse
    DeleteReplicationInstanceMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationInstanceMessage.type = Types::DeleteReplicationInstanceMessage
    DeleteReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstance, name: "ReplicationInstance"))
    DeleteReplicationInstanceResponse.type = Types::DeleteReplicationInstanceResponse
    DeleteReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteReplicationSubnetGroupMessage.type = Types::DeleteReplicationSubnetGroupMessage
    DeleteReplicationSubnetGroupResponse.type = Types::DeleteReplicationSubnetGroupResponse
    DeleteReplicationTaskAssessmentRunMessage.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskAssessmentRunArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationTaskAssessmentRunMessage.type = Types::DeleteReplicationTaskAssessmentRunMessage
    DeleteReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRun, name: "ReplicationTaskAssessmentRun"))
    DeleteReplicationTaskAssessmentRunResponse.type = Types::DeleteReplicationTaskAssessmentRunResponse
    DeleteReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationTaskMessage.type = Types::DeleteReplicationTaskMessage
    DeleteReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    DeleteReplicationTaskResponse.type = Types::DeleteReplicationTaskResponse
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeAccountAttributesResponse.add_member(:account_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountQuotaList, name: "AccountQuotas"))
    DescribeAccountAttributesResponse.add_member(:unique_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UniqueAccountIdentifier"))
    DescribeAccountAttributesResponse.type = Types::DescribeAccountAttributesResponse
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:source_engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEngineName"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:target_engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEngineName"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "MigrationType"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeApplicableIndividualAssessmentsMessage.type = Types::DescribeApplicableIndividualAssessmentsMessage
    DescribeApplicableIndividualAssessmentsResponse.add_member(:individual_assessment_names, ::Smithy::Schema::Shapes::MemberShape.new(target: IndividualAssessmentNameList, name: "IndividualAssessmentNames"))
    DescribeApplicableIndividualAssessmentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeApplicableIndividualAssessmentsResponse.type = Types::DescribeApplicableIndividualAssessmentsResponse
    DescribeCertificatesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCertificatesMessage.type = Types::DescribeCertificatesMessage
    DescribeCertificatesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCertificatesResponse.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "Certificates"))
    DescribeCertificatesResponse.type = Types::DescribeCertificatesResponse
    DescribeConnectionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeConnectionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeConnectionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeConnectionsMessage.type = Types::DescribeConnectionsMessage
    DescribeConnectionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionList, name: "Connections"))
    DescribeConnectionsResponse.type = Types::DescribeConnectionsResponse
    DescribeConversionConfigurationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeConversionConfigurationMessage.type = Types::DescribeConversionConfigurationMessage
    DescribeConversionConfigurationResponse.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectIdentifier"))
    DescribeConversionConfigurationResponse.add_member(:conversion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConversionConfiguration"))
    DescribeConversionConfigurationResponse.type = Types::DescribeConversionConfigurationResponse
    DescribeDataMigrationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDataMigrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDataMigrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeDataMigrationsMessage.add_member(:without_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "WithoutSettings"))
    DescribeDataMigrationsMessage.add_member(:without_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "WithoutStatistics"))
    DescribeDataMigrationsMessage.type = Types::DescribeDataMigrationsMessage
    DescribeDataMigrationsResponse.add_member(:data_migrations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigrations, name: "DataMigrations"))
    DescribeDataMigrationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeDataMigrationsResponse.type = Types::DescribeDataMigrationsResponse
    DescribeDataProvidersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDataProvidersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDataProvidersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataProvidersMessage.type = Types::DescribeDataProvidersMessage
    DescribeDataProvidersResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataProvidersResponse.add_member(:data_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderList, name: "DataProviders"))
    DescribeDataProvidersResponse.type = Types::DescribeDataProvidersResponse
    DescribeEndpointSettingsMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName", traits: {"smithy.api#required" => {}}))
    DescribeEndpointSettingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEndpointSettingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointSettingsMessage.type = Types::DescribeEndpointSettingsMessage
    DescribeEndpointSettingsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointSettingsResponse.add_member(:endpoint_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointSettingsList, name: "EndpointSettings"))
    DescribeEndpointSettingsResponse.type = Types::DescribeEndpointSettingsResponse
    DescribeEndpointTypesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEndpointTypesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEndpointTypesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointTypesMessage.type = Types::DescribeEndpointTypesMessage
    DescribeEndpointTypesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointTypesResponse.add_member(:supported_endpoint_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedEndpointTypeList, name: "SupportedEndpointTypes"))
    DescribeEndpointTypesResponse.type = Types::DescribeEndpointTypesResponse
    DescribeEndpointsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEndpointsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEndpointsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointsMessage.type = Types::DescribeEndpointsMessage
    DescribeEndpointsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointList, name: "Endpoints"))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEngineVersionsMessage.type = Types::DescribeEngineVersionsMessage
    DescribeEngineVersionsResponse.add_member(:engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersionList, name: "EngineVersions"))
    DescribeEngineVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEngineVersionsResponse.type = Types::DescribeEngineVersionsResponse
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventCategoriesResponse.add_member(:event_category_group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoryGroupList, name: "EventCategoryGroupList"))
    DescribeEventCategoriesResponse.type = Types::DescribeEventCategoriesResponse
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventSubscriptionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventSubscriptionsResponse.add_member(:event_subscriptions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionsList, name: "EventSubscriptionsList"))
    DescribeEventSubscriptionsResponse.type = Types::DescribeEventSubscriptionsResponse
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeEventsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events"))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeExtensionPackAssociationsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeExtensionPackAssociationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeExtensionPackAssociationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeExtensionPackAssociationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeExtensionPackAssociationsMessage.type = Types::DescribeExtensionPackAssociationsMessage
    DescribeExtensionPackAssociationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeExtensionPackAssociationsResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeExtensionPackAssociationsResponse.type = Types::DescribeExtensionPackAssociationsResponse
    DescribeFleetAdvisorCollectorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeFleetAdvisorCollectorsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeFleetAdvisorCollectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorCollectorsRequest.type = Types::DescribeFleetAdvisorCollectorsRequest
    DescribeFleetAdvisorCollectorsResponse.add_member(:collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorResponses, name: "Collectors"))
    DescribeFleetAdvisorCollectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorCollectorsResponse.type = Types::DescribeFleetAdvisorCollectorsResponse
    DescribeFleetAdvisorDatabasesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeFleetAdvisorDatabasesRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeFleetAdvisorDatabasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorDatabasesRequest.type = Types::DescribeFleetAdvisorDatabasesRequest
    DescribeFleetAdvisorDatabasesResponse.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseList, name: "Databases"))
    DescribeFleetAdvisorDatabasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorDatabasesResponse.type = Types::DescribeFleetAdvisorDatabasesResponse
    DescribeFleetAdvisorLsaAnalysisRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeFleetAdvisorLsaAnalysisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorLsaAnalysisRequest.type = Types::DescribeFleetAdvisorLsaAnalysisRequest
    DescribeFleetAdvisorLsaAnalysisResponse.add_member(:analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAdvisorLsaAnalysisResponseList, name: "Analysis"))
    DescribeFleetAdvisorLsaAnalysisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorLsaAnalysisResponse.type = Types::DescribeFleetAdvisorLsaAnalysisResponse
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.type = Types::DescribeFleetAdvisorSchemaObjectSummaryRequest
    DescribeFleetAdvisorSchemaObjectSummaryResponse.add_member(:fleet_advisor_schema_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAdvisorSchemaObjectList, name: "FleetAdvisorSchemaObjects"))
    DescribeFleetAdvisorSchemaObjectSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorSchemaObjectSummaryResponse.type = Types::DescribeFleetAdvisorSchemaObjectSummaryResponse
    DescribeFleetAdvisorSchemasRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeFleetAdvisorSchemasRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeFleetAdvisorSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorSchemasRequest.type = Types::DescribeFleetAdvisorSchemasRequest
    DescribeFleetAdvisorSchemasResponse.add_member(:fleet_advisor_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAdvisorSchemaList, name: "FleetAdvisorSchemas"))
    DescribeFleetAdvisorSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetAdvisorSchemasResponse.type = Types::DescribeFleetAdvisorSchemasResponse
    DescribeInstanceProfilesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeInstanceProfilesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeInstanceProfilesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeInstanceProfilesMessage.type = Types::DescribeInstanceProfilesMessage
    DescribeInstanceProfilesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeInstanceProfilesResponse.add_member(:instance_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileList, name: "InstanceProfiles"))
    DescribeInstanceProfilesResponse.type = Types::DescribeInstanceProfilesResponse
    DescribeMetadataModelAssessmentsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelAssessmentsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMetadataModelAssessmentsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelAssessmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelAssessmentsMessage.type = Types::DescribeMetadataModelAssessmentsMessage
    DescribeMetadataModelAssessmentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelAssessmentsResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeMetadataModelAssessmentsResponse.type = Types::DescribeMetadataModelAssessmentsResponse
    DescribeMetadataModelChildrenMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelChildrenMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelChildrenMessage.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginTypeValue, name: "Origin", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelChildrenMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelChildrenMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelChildrenMessage.type = Types::DescribeMetadataModelChildrenMessage
    DescribeMetadataModelChildrenResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelChildrenResponse.add_member(:metadata_model_children, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataModelReferenceList, name: "MetadataModelChildren"))
    DescribeMetadataModelChildrenResponse.type = Types::DescribeMetadataModelChildrenResponse
    DescribeMetadataModelConversionsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelConversionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMetadataModelConversionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelConversionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelConversionsMessage.type = Types::DescribeMetadataModelConversionsMessage
    DescribeMetadataModelConversionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelConversionsResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeMetadataModelConversionsResponse.type = Types::DescribeMetadataModelConversionsResponse
    DescribeMetadataModelCreationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMetadataModelCreationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelCreationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelCreationsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelCreationsMessage.type = Types::DescribeMetadataModelCreationsMessage
    DescribeMetadataModelCreationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelCreationsResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeMetadataModelCreationsResponse.type = Types::DescribeMetadataModelCreationsResponse
    DescribeMetadataModelExportsAsScriptMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelExportsAsScriptMessage.type = Types::DescribeMetadataModelExportsAsScriptMessage
    DescribeMetadataModelExportsAsScriptResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelExportsAsScriptResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeMetadataModelExportsAsScriptResponse.type = Types::DescribeMetadataModelExportsAsScriptResponse
    DescribeMetadataModelExportsToTargetMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelExportsToTargetMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelExportsToTargetMessage.type = Types::DescribeMetadataModelExportsToTargetMessage
    DescribeMetadataModelExportsToTargetResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelExportsToTargetResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeMetadataModelExportsToTargetResponse.type = Types::DescribeMetadataModelExportsToTargetResponse
    DescribeMetadataModelImportsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelImportsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMetadataModelImportsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelImportsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMetadataModelImportsMessage.type = Types::DescribeMetadataModelImportsMessage
    DescribeMetadataModelImportsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMetadataModelImportsResponse.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequestList, name: "Requests"))
    DescribeMetadataModelImportsResponse.type = Types::DescribeMetadataModelImportsResponse
    DescribeMetadataModelMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelMessage.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginTypeValue, name: "Origin", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelMessage.type = Types::DescribeMetadataModelMessage
    DescribeMetadataModelResponse.add_member(:metadata_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MetadataModelName"))
    DescribeMetadataModelResponse.add_member(:metadata_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MetadataModelType"))
    DescribeMetadataModelResponse.add_member(:target_metadata_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataModelReferenceList, name: "TargetMetadataModels"))
    DescribeMetadataModelResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Definition"))
    DescribeMetadataModelResponse.type = Types::DescribeMetadataModelResponse
    DescribeMigrationProjectsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeMigrationProjectsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeMigrationProjectsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMigrationProjectsMessage.type = Types::DescribeMigrationProjectsMessage
    DescribeMigrationProjectsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeMigrationProjectsResponse.add_member(:migration_projects, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectList, name: "MigrationProjects"))
    DescribeMigrationProjectsResponse.type = Types::DescribeMigrationProjectsResponse
    DescribeOrderableReplicationInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeOrderableReplicationInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOrderableReplicationInstancesMessage.type = Types::DescribeOrderableReplicationInstancesMessage
    DescribeOrderableReplicationInstancesResponse.add_member(:orderable_replication_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableReplicationInstanceList, name: "OrderableReplicationInstances"))
    DescribeOrderableReplicationInstancesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOrderableReplicationInstancesResponse.type = Types::DescribeOrderableReplicationInstancesResponse
    DescribePendingMaintenanceActionsMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.type = Types::DescribePendingMaintenanceActionsMessage
    DescribePendingMaintenanceActionsResponse.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActions, name: "PendingMaintenanceActions"))
    DescribePendingMaintenanceActionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribePendingMaintenanceActionsResponse.type = Types::DescribePendingMaintenanceActionsResponse
    DescribeRecommendationLimitationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeRecommendationLimitationsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeRecommendationLimitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRecommendationLimitationsRequest.type = Types::DescribeRecommendationLimitationsRequest
    DescribeRecommendationLimitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRecommendationLimitationsResponse.add_member(:limitations, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitationList, name: "Limitations"))
    DescribeRecommendationLimitationsResponse.type = Types::DescribeRecommendationLimitationsResponse
    DescribeRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeRecommendationsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRecommendationsRequest.type = Types::DescribeRecommendationsRequest
    DescribeRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, name: "Recommendations"))
    DescribeRecommendationsResponse.type = Types::DescribeRecommendationsResponse
    DescribeRefreshSchemasStatusMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeRefreshSchemasStatusMessage.type = Types::DescribeRefreshSchemasStatusMessage
    DescribeRefreshSchemasStatusResponse.add_member(:refresh_schemas_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchemasStatus, name: "RefreshSchemasStatus"))
    DescribeRefreshSchemasStatusResponse.type = Types::DescribeRefreshSchemasStatusResponse
    DescribeReplicationConfigsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationConfigsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationConfigsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationConfigsMessage.type = Types::DescribeReplicationConfigsMessage
    DescribeReplicationConfigsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationConfigsResponse.add_member(:replication_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigList, name: "ReplicationConfigs"))
    DescribeReplicationConfigsResponse.type = Types::DescribeReplicationConfigsResponse
    DescribeReplicationInstanceTaskLogsMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationInstanceTaskLogsMessage.type = Types::DescribeReplicationInstanceTaskLogsMessage
    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_task_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceTaskLogsList, name: "ReplicationInstanceTaskLogs"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationInstanceTaskLogsResponse.type = Types::DescribeReplicationInstanceTaskLogsResponse
    DescribeReplicationInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationInstancesMessage.type = Types::DescribeReplicationInstancesMessage
    DescribeReplicationInstancesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationInstancesResponse.add_member(:replication_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceList, name: "ReplicationInstances"))
    DescribeReplicationInstancesResponse.type = Types::DescribeReplicationInstancesResponse
    DescribeReplicationSubnetGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationSubnetGroupsMessage.type = Types::DescribeReplicationSubnetGroupsMessage
    DescribeReplicationSubnetGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationSubnetGroupsResponse.add_member(:replication_subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSubnetGroups, name: "ReplicationSubnetGroups"))
    DescribeReplicationSubnetGroupsResponse.type = Types::DescribeReplicationSubnetGroupsResponse
    DescribeReplicationTableStatisticsMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    DescribeReplicationTableStatisticsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationTableStatisticsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTableStatisticsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationTableStatisticsMessage.type = Types::DescribeReplicationTableStatisticsMessage
    DescribeReplicationTableStatisticsResponse.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn"))
    DescribeReplicationTableStatisticsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTableStatisticsResponse.add_member(:replication_table_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTableStatisticsList, name: "ReplicationTableStatistics"))
    DescribeReplicationTableStatisticsResponse.type = Types::DescribeReplicationTableStatisticsResponse
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTaskAssessmentResultsMessage.type = Types::DescribeReplicationTaskAssessmentResultsMessage
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:replication_task_assessment_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentResultList, name: "ReplicationTaskAssessmentResults"))
    DescribeReplicationTaskAssessmentResultsResponse.type = Types::DescribeReplicationTaskAssessmentResultsResponse
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTaskAssessmentRunsMessage.type = Types::DescribeReplicationTaskAssessmentRunsMessage
    DescribeReplicationTaskAssessmentRunsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTaskAssessmentRunsResponse.add_member(:replication_task_assessment_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRunList, name: "ReplicationTaskAssessmentRuns"))
    DescribeReplicationTaskAssessmentRunsResponse.type = Types::DescribeReplicationTaskAssessmentRunsResponse
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTaskIndividualAssessmentsMessage.type = Types::DescribeReplicationTaskIndividualAssessmentsMessage
    DescribeReplicationTaskIndividualAssessmentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTaskIndividualAssessmentsResponse.add_member(:replication_task_individual_assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskIndividualAssessmentList, name: "ReplicationTaskIndividualAssessments"))
    DescribeReplicationTaskIndividualAssessmentsResponse.type = Types::DescribeReplicationTaskIndividualAssessmentsResponse
    DescribeReplicationTasksMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationTasksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationTasksMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTasksMessage.add_member(:without_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "WithoutSettings"))
    DescribeReplicationTasksMessage.type = Types::DescribeReplicationTasksMessage
    DescribeReplicationTasksResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationTasksResponse.add_member(:replication_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskList, name: "ReplicationTasks"))
    DescribeReplicationTasksResponse.type = Types::DescribeReplicationTasksResponse
    DescribeReplicationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReplicationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationsMessage.type = Types::DescribeReplicationsMessage
    DescribeReplicationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationsResponse.add_member(:replications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationList, name: "Replications"))
    DescribeReplicationsResponse.type = Types::DescribeReplicationsResponse
    DescribeSchemasMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeSchemasMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeSchemasMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSchemasMessage.type = Types::DescribeSchemasMessage
    DescribeSchemasResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaList, name: "Schemas"))
    DescribeSchemasResponse.type = Types::DescribeSchemasResponse
    DescribeTableStatisticsMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    DescribeTableStatisticsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeTableStatisticsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeTableStatisticsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeTableStatisticsMessage.type = Types::DescribeTableStatisticsMessage
    DescribeTableStatisticsResponse.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    DescribeTableStatisticsResponse.add_member(:table_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatisticsList, name: "TableStatistics"))
    DescribeTableStatisticsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeTableStatisticsResponse.type = Types::DescribeTableStatisticsResponse
    DmsSslModeValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    DmsSslModeValue.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRE", traits: {"smithy.api#enumValue" => "require"}))
    DmsSslModeValue.add_member(:verify_ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFY_CA", traits: {"smithy.api#enumValue" => "verify-ca"}))
    DmsSslModeValue.add_member(:verify_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFY_FULL", traits: {"smithy.api#enumValue" => "verify-full"}))
    DmsTransferSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    DmsTransferSettings.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    DmsTransferSettings.type = Types::DmsTransferSettings
    DocDbDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    DocDbDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    DocDbDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    DocDbDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    DocDbDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    DocDbDataProviderSettings.type = Types::DocDbDataProviderSettings
    DocDbSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    DocDbSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    DocDbSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    DocDbSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    DocDbSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    DocDbSettings.add_member(:nesting_level, ::Smithy::Schema::Shapes::MemberShape.new(target: NestingLevelValue, name: "NestingLevel"))
    DocDbSettings.add_member(:extract_doc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ExtractDocId"))
    DocDbSettings.add_member(:docs_to_investigate, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DocsToInvestigate"))
    DocDbSettings.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DocDbSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    DocDbSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    DocDbSettings.add_member(:use_update_look_up, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseUpdateLookUp"))
    DocDbSettings.add_member(:replicate_shard_collections, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ReplicateShardCollections"))
    DocDbSettings.type = Types::DocDbSettings
    DynamoDbSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    DynamoDbSettings.type = Types::DynamoDbSettings
    ElasticsearchSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    ElasticsearchSettings.add_member(:endpoint_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointUri", traits: {"smithy.api#required" => {}}))
    ElasticsearchSettings.add_member(:full_load_error_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "FullLoadErrorPercentage"))
    ElasticsearchSettings.add_member(:error_retry_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ErrorRetryDuration"))
    ElasticsearchSettings.add_member(:use_new_mapping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseNewMappingType"))
    ElasticsearchSettings.type = Types::ElasticsearchSettings
    EncodingTypeValue.add_member(:plain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN", traits: {"smithy.api#enumValue" => "plain"}))
    EncodingTypeValue.add_member(:plain_dictionary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN_DICTIONARY", traits: {"smithy.api#enumValue" => "plain-dictionary"}))
    EncodingTypeValue.add_member(:rle_dictionary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RLE_DICTIONARY", traits: {"smithy.api#enumValue" => "rle-dictionary"}))
    EncryptionModeValue.add_member(:sse_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_S3", traits: {"smithy.api#enumValue" => "sse-s3"}))
    EncryptionModeValue.add_member(:sse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_KMS", traits: {"smithy.api#enumValue" => "sse-kms"}))
    Endpoint.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointIdentifier"))
    Endpoint.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationEndpointTypeValue, name: "EndpointType"))
    Endpoint.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    Endpoint.add_member(:engine_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineDisplayName"))
    Endpoint.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    Endpoint.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    Endpoint.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    Endpoint.add_member(:extra_connection_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExtraConnectionAttributes"))
    Endpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Endpoint.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    Endpoint.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn"))
    Endpoint.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    Endpoint.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    Endpoint.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    Endpoint.add_member(:external_table_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExternalTableDefinition"))
    Endpoint.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExternalId"))
    Endpoint.add_member(:is_read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IsReadOnly"))
    Endpoint.add_member(:dynamo_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamoDbSettings, name: "DynamoDbSettings"))
    Endpoint.add_member(:s3_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Settings, name: "S3Settings"))
    Endpoint.add_member(:dms_transfer_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsTransferSettings, name: "DmsTransferSettings"))
    Endpoint.add_member(:mongo_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MongoDbSettings, name: "MongoDbSettings"))
    Endpoint.add_member(:kinesis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisSettings, name: "KinesisSettings"))
    Endpoint.add_member(:kafka_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSettings, name: "KafkaSettings"))
    Endpoint.add_member(:elasticsearch_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchSettings, name: "ElasticsearchSettings"))
    Endpoint.add_member(:neptune_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NeptuneSettings, name: "NeptuneSettings"))
    Endpoint.add_member(:redshift_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftSettings, name: "RedshiftSettings"))
    Endpoint.add_member(:postgre_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: PostgreSQLSettings, name: "PostgreSQLSettings"))
    Endpoint.add_member(:my_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MySQLSettings, name: "MySQLSettings"))
    Endpoint.add_member(:oracle_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OracleSettings, name: "OracleSettings"))
    Endpoint.add_member(:sybase_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SybaseSettings, name: "SybaseSettings"))
    Endpoint.add_member(:microsoft_sql_server_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftSQLServerSettings, name: "MicrosoftSQLServerSettings"))
    Endpoint.add_member(:ibm_db2_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: IBMDb2Settings, name: "IBMDb2Settings"))
    Endpoint.add_member(:doc_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DocDbSettings, name: "DocDbSettings"))
    Endpoint.add_member(:redis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedisSettings, name: "RedisSettings"))
    Endpoint.add_member(:gcp_my_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GcpMySQLSettings, name: "GcpMySQLSettings"))
    Endpoint.add_member(:timestream_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestreamSettings, name: "TimestreamSettings"))
    Endpoint.add_member(:lakehouse_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LakehouseSettings, name: "LakehouseSettings"))
    Endpoint.type = Types::Endpoint
    EndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member", traits: {"smithy.api#xmlName" => "Endpoint"}))
    EndpointSetting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    EndpointSetting.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointSettingTypeValue, name: "Type"))
    EndpointSetting.add_member(:enum_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointSettingEnumValues, name: "EnumValues"))
    EndpointSetting.add_member(:sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Sensitive"))
    EndpointSetting.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Units"))
    EndpointSetting.add_member(:applicability, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Applicability"))
    EndpointSetting.add_member(:int_value_min, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "IntValueMin"))
    EndpointSetting.add_member(:int_value_max, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "IntValueMax"))
    EndpointSetting.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultValue"))
    EndpointSetting.type = Types::EndpointSetting
    EndpointSettingEnumValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    EndpointSettingTypeValue.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    EndpointSettingTypeValue.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "boolean"}))
    EndpointSettingTypeValue.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "integer"}))
    EndpointSettingTypeValue.add_member(:enum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENUM", traits: {"smithy.api#enumValue" => "enum"}))
    EndpointSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointSetting, name: "member"))
    EngineVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    EngineVersion.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Lifecycle"))
    EngineVersion.add_member(:release_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseStatusValues, name: "ReleaseStatus"))
    EngineVersion.add_member(:launch_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LaunchDate"))
    EngineVersion.add_member(:auto_upgrade_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AutoUpgradeDate"))
    EngineVersion.add_member(:deprecation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DeprecationDate"))
    EngineVersion.add_member(:force_upgrade_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ForceUpgradeDate"))
    EngineVersion.add_member(:available_upgrades, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableUpgradesList, name: "AvailableUpgrades"))
    EngineVersion.type = Types::EngineVersion
    EngineVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "member", traits: {"smithy.api#xmlName" => "EngineVersion"}))
    ErrorDetails.add_member(:default_error_details, Types::ErrorDetails::DefaultErrorDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultErrorDetails, name: "defaultErrorDetails"))
    ErrorDetails.add_member(:unknown, Types::ErrorDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ErrorDetails.type = Types::ErrorDetails
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Date"))
    Event.type = Types::Event
    EventCategoriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "EventCategory"}))
    EventCategoryGroup.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventCategoryGroup.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    EventCategoryGroup.type = Types::EventCategoryGroup
    EventCategoryGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoryGroup, name: "member", traits: {"smithy.api#xmlName" => "EventCategoryGroup"}))
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member", traits: {"smithy.api#xmlName" => "Event"}))
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => false}))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "member", traits: {"smithy.api#xmlName" => "EventSubscription"}))
    ExcludeTestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ExportMetadataModelAssessmentMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    ExportMetadataModelAssessmentMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    ExportMetadataModelAssessmentMessage.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FileName"))
    ExportMetadataModelAssessmentMessage.add_member(:assessment_report_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentReportTypesList, name: "AssessmentReportTypes"))
    ExportMetadataModelAssessmentMessage.type = Types::ExportMetadataModelAssessmentMessage
    ExportMetadataModelAssessmentResponse.add_member(:pdf_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMetadataModelAssessmentResultEntry, name: "PdfReport"))
    ExportMetadataModelAssessmentResponse.add_member(:csv_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMetadataModelAssessmentResultEntry, name: "CsvReport"))
    ExportMetadataModelAssessmentResponse.type = Types::ExportMetadataModelAssessmentResponse
    ExportMetadataModelAssessmentResultEntry.add_member(:s3_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3ObjectKey"))
    ExportMetadataModelAssessmentResultEntry.add_member(:object_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ObjectURL"))
    ExportMetadataModelAssessmentResultEntry.type = Types::ExportMetadataModelAssessmentResultEntry
    ExportSqlDetails.add_member(:s3_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3ObjectKey"))
    ExportSqlDetails.add_member(:object_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ObjectURL"))
    ExportSqlDetails.type = Types::ExportSqlDetails
    FailedDependencyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    FailedDependencyFault.type = Types::FailedDependencyFault
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member", traits: {"smithy.api#xmlName" => "Filter"}))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Value"}))
    FleetAdvisorLsaAnalysisResponse.add_member(:lsa_analysis_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LsaAnalysisId"))
    FleetAdvisorLsaAnalysisResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    FleetAdvisorLsaAnalysisResponse.type = Types::FleetAdvisorLsaAnalysisResponse
    FleetAdvisorLsaAnalysisResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAdvisorLsaAnalysisResponse, name: "member"))
    FleetAdvisorSchemaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaResponse, name: "member"))
    FleetAdvisorSchemaObjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAdvisorSchemaObjectResponse, name: "member"))
    FleetAdvisorSchemaObjectResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaId"))
    FleetAdvisorSchemaObjectResponse.add_member(:object_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ObjectType"))
    FleetAdvisorSchemaObjectResponse.add_member(:number_of_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "NumberOfObjects"))
    FleetAdvisorSchemaObjectResponse.add_member(:code_line_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "CodeLineCount"))
    FleetAdvisorSchemaObjectResponse.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "CodeSize"))
    FleetAdvisorSchemaObjectResponse.type = Types::FleetAdvisorSchemaObjectResponse
    GcpMySQLSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AfterConnectScript"))
    GcpMySQLSettings.add_member(:clean_source_metadata_on_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CleanSourceMetadataOnMismatch"))
    GcpMySQLSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    GcpMySQLSettings.add_member(:events_poll_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "EventsPollInterval"))
    GcpMySQLSettings.add_member(:target_db_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDbType, name: "TargetDbType"))
    GcpMySQLSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    GcpMySQLSettings.add_member(:parallel_load_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ParallelLoadThreads"))
    GcpMySQLSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    GcpMySQLSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    GcpMySQLSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    GcpMySQLSettings.add_member(:server_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerTimezone"))
    GcpMySQLSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    GcpMySQLSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    GcpMySQLSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    GcpMySQLSettings.type = Types::GcpMySQLSettings
    GetTargetSelectionRulesMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    GetTargetSelectionRulesMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    GetTargetSelectionRulesMessage.type = Types::GetTargetSelectionRulesMessage
    GetTargetSelectionRulesResponse.add_member(:target_selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetSelectionRules"))
    GetTargetSelectionRulesResponse.type = Types::GetTargetSelectionRulesResponse
    IBMDb2Settings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    IBMDb2Settings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    IBMDb2Settings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    IBMDb2Settings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    IBMDb2Settings.add_member(:set_data_capture_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SetDataCaptureChanges"))
    IBMDb2Settings.add_member(:current_lsn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentLsn"))
    IBMDb2Settings.add_member(:max_k_bytes_per_read, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxKBytesPerRead"))
    IBMDb2Settings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    IBMDb2Settings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    IBMDb2Settings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    IBMDb2Settings.add_member(:load_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "LoadTimeout"))
    IBMDb2Settings.add_member(:write_buffer_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "WriteBufferSize"))
    IBMDb2Settings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    IBMDb2Settings.add_member(:keep_csv_files, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "KeepCsvFiles"))
    IBMDb2Settings.type = Types::IBMDb2Settings
    IbmDb2LuwDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    IbmDb2LuwDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    IbmDb2LuwDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    IbmDb2LuwDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    IbmDb2LuwDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    IbmDb2LuwDataProviderSettings.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "EncryptionAlgorithm"))
    IbmDb2LuwDataProviderSettings.add_member(:security_mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecurityMechanism"))
    IbmDb2LuwDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    IbmDb2LuwDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    IbmDb2LuwDataProviderSettings.type = Types::IbmDb2LuwDataProviderSettings
    IbmDb2zOsDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    IbmDb2zOsDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    IbmDb2zOsDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    IbmDb2zOsDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    IbmDb2zOsDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    IbmDb2zOsDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    IbmDb2zOsDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    IbmDb2zOsDataProviderSettings.type = Types::IbmDb2zOsDataProviderSettings
    ImportCertificateMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier", traits: {"smithy.api#required" => {}}))
    ImportCertificateMessage.add_member(:certificate_pem, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "CertificatePem"))
    ImportCertificateMessage.add_member(:certificate_wallet, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateWallet, name: "CertificateWallet"))
    ImportCertificateMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ImportCertificateMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ImportCertificateMessage.type = Types::ImportCertificateMessage
    ImportCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "Certificate"))
    ImportCertificateResponse.type = Types::ImportCertificateResponse
    IncludeTestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    IndividualAssessmentNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    InstanceProfile.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileArn"))
    InstanceProfile.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    InstanceProfile.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn"))
    InstanceProfile.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    InstanceProfile.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    InstanceProfile.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileName"))
    InstanceProfile.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    InstanceProfile.add_member(:instance_profile_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "InstanceProfileCreationTime"))
    InstanceProfile.add_member(:subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupIdentifier"))
    InstanceProfile.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroups"))
    InstanceProfile.type = Types::InstanceProfile
    InstanceProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "member", traits: {"smithy.api#xmlName" => "InstanceProfile"}))
    InsufficientResourceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientResourceCapacityFault.type = Types::InsufficientResourceCapacityFault
    IntegerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "member"))
    InvalidCertificateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidCertificateFault.type = Types::InvalidCertificateFault
    InvalidOperationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidOperationFault.type = Types::InvalidOperationFault
    InvalidResourceStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidResourceStateFault.type = Types::InvalidResourceStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InventoryData.add_member(:number_of_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfDatabases"))
    InventoryData.add_member(:number_of_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfSchemas"))
    InventoryData.type = Types::InventoryData
    KMSAccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSAccessDeniedFault.type = Types::KMSAccessDeniedFault
    KMSDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSDisabledFault.type = Types::KMSDisabledFault
    KMSFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSFault.type = Types::KMSFault
    KMSInvalidStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSInvalidStateFault.type = Types::KMSInvalidStateFault
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KMSNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSNotFoundFault.type = Types::KMSNotFoundFault
    KMSThrottlingFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSThrottlingFault.type = Types::KMSThrottlingFault
    KafkaSaslMechanism.add_member(:scram_sha_512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRAM_SHA_512", traits: {"smithy.api#enumValue" => "scram-sha-512"}))
    KafkaSaslMechanism.add_member(:plain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN", traits: {"smithy.api#enumValue" => "plain"}))
    KafkaSecurityProtocol.add_member(:plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "plaintext"}))
    KafkaSecurityProtocol.add_member(:ssl_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSL_AUTHENTICATION", traits: {"smithy.api#enumValue" => "ssl-authentication"}))
    KafkaSecurityProtocol.add_member(:ssl_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSL_ENCRYPTION", traits: {"smithy.api#enumValue" => "ssl-encryption"}))
    KafkaSecurityProtocol.add_member(:sasl_ssl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SASL_SSL", traits: {"smithy.api#enumValue" => "sasl-ssl"}))
    KafkaSettings.add_member(:broker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Broker"))
    KafkaSettings.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Topic"))
    KafkaSettings.add_member(:message_format, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageFormatValue, name: "MessageFormat"))
    KafkaSettings.add_member(:include_transaction_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeTransactionDetails"))
    KafkaSettings.add_member(:include_partition_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludePartitionValue"))
    KafkaSettings.add_member(:partition_include_schema_table, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PartitionIncludeSchemaTable"))
    KafkaSettings.add_member(:include_table_alter_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeTableAlterOperations"))
    KafkaSettings.add_member(:include_control_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeControlDetails"))
    KafkaSettings.add_member(:message_max_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MessageMaxBytes"))
    KafkaSettings.add_member(:include_null_and_empty, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeNullAndEmpty"))
    KafkaSettings.add_member(:security_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSecurityProtocol, name: "SecurityProtocol"))
    KafkaSettings.add_member(:ssl_client_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SslClientCertificateArn"))
    KafkaSettings.add_member(:ssl_client_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SslClientKeyArn"))
    KafkaSettings.add_member(:ssl_client_key_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "SslClientKeyPassword"))
    KafkaSettings.add_member(:ssl_ca_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SslCaCertificateArn"))
    KafkaSettings.add_member(:sasl_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SaslUsername"))
    KafkaSettings.add_member(:sasl_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "SaslPassword"))
    KafkaSettings.add_member(:no_hex_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "NoHexPrefix"))
    KafkaSettings.add_member(:sasl_mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSaslMechanism, name: "SaslMechanism"))
    KafkaSettings.add_member(:ssl_endpoint_identification_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSslEndpointIdentificationAlgorithm, name: "SslEndpointIdentificationAlgorithm"))
    KafkaSettings.add_member(:use_large_integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseLargeIntegerValue"))
    KafkaSettings.type = Types::KafkaSettings
    KafkaSslEndpointIdentificationAlgorithm.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    KafkaSslEndpointIdentificationAlgorithm.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "https"}))
    KerberosAuthenticationSettings.add_member(:key_cache_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyCacheSecretId"))
    KerberosAuthenticationSettings.add_member(:key_cache_secret_iam_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyCacheSecretIamArn"))
    KerberosAuthenticationSettings.add_member(:krb5_file_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Krb5FileContents"))
    KerberosAuthenticationSettings.type = Types::KerberosAuthenticationSettings
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    KinesisSettings.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamArn"))
    KinesisSettings.add_member(:message_format, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageFormatValue, name: "MessageFormat"))
    KinesisSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    KinesisSettings.add_member(:include_transaction_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeTransactionDetails"))
    KinesisSettings.add_member(:include_partition_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludePartitionValue"))
    KinesisSettings.add_member(:partition_include_schema_table, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PartitionIncludeSchemaTable"))
    KinesisSettings.add_member(:include_table_alter_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeTableAlterOperations"))
    KinesisSettings.add_member(:include_control_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeControlDetails"))
    KinesisSettings.add_member(:include_null_and_empty, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeNullAndEmpty"))
    KinesisSettings.add_member(:no_hex_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "NoHexPrefix"))
    KinesisSettings.add_member(:use_large_integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseLargeIntegerValue"))
    KinesisSettings.type = Types::KinesisSettings
    LakehouseSettings.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    LakehouseSettings.type = Types::LakehouseSettings
    Limitation.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId"))
    Limitation.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    Limitation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Limitation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Limitation.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Impact"))
    Limitation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    Limitation.type = Types::Limitation
    LimitationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Limitation, name: "member"))
    ListTagsForResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    ListTagsForResourceMessage.add_member(:resource_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "ResourceArnList"))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    ListTagsForResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LongVarcharMappingType.add_member(:wstring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WSTRING", traits: {"smithy.api#enumValue" => "wstring"}))
    LongVarcharMappingType.add_member(:clob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOB", traits: {"smithy.api#enumValue" => "clob"}))
    LongVarcharMappingType.add_member(:nclob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NCLOB", traits: {"smithy.api#enumValue" => "nclob"}))
    MariaDbDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MariaDbDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MariaDbDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    MariaDbDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    MariaDbDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    MariaDbDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    MariaDbDataProviderSettings.type = Types::MariaDbDataProviderSettings
    MessageFormatValue.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    MessageFormatValue.add_member(:json_unformatted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_UNFORMATTED", traits: {"smithy.api#enumValue" => "json-unformatted"}))
    MetadataModelProperties.add_member(:statement_properties, Types::MetadataModelProperties::StatementProperties, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementProperties, name: "StatementProperties"))
    MetadataModelProperties.add_member(:unknown, Types::MetadataModelProperties::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MetadataModelProperties.type = Types::MetadataModelProperties
    MetadataModelReference.add_member(:metadata_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MetadataModelName"))
    MetadataModelReference.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules"))
    MetadataModelReference.type = Types::MetadataModelReference
    MetadataModelReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataModelReference, name: "member"))
    MicrosoftSQLServerSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MicrosoftSQLServerSettings.add_member(:bcp_packet_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BcpPacketSize"))
    MicrosoftSQLServerSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    MicrosoftSQLServerSettings.add_member(:control_tables_file_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ControlTablesFileGroup"))
    MicrosoftSQLServerSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    MicrosoftSQLServerSettings.add_member(:query_single_always_on_node, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "QuerySingleAlwaysOnNode"))
    MicrosoftSQLServerSettings.add_member(:read_backup_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ReadBackupOnly"))
    MicrosoftSQLServerSettings.add_member(:safeguard_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeguardPolicy, name: "SafeguardPolicy"))
    MicrosoftSQLServerSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MicrosoftSQLServerSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    MicrosoftSQLServerSettings.add_member(:use_bcp_full_load, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseBcpFullLoad"))
    MicrosoftSQLServerSettings.add_member(:use_third_party_backup_device, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseThirdPartyBackupDevice"))
    MicrosoftSQLServerSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    MicrosoftSQLServerSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    MicrosoftSQLServerSettings.add_member(:trim_space_in_char, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TrimSpaceInChar"))
    MicrosoftSQLServerSettings.add_member(:tlog_access_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TlogAccessMode, name: "TlogAccessMode"))
    MicrosoftSQLServerSettings.add_member(:force_lob_lookup, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ForceLobLookup"))
    MicrosoftSQLServerSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlServerAuthenticationMethod, name: "AuthenticationMethod"))
    MicrosoftSQLServerSettings.type = Types::MicrosoftSQLServerSettings
    MicrosoftSqlServerDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MicrosoftSqlServerDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MicrosoftSqlServerDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    MicrosoftSqlServerDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    MicrosoftSqlServerDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    MicrosoftSqlServerDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    MicrosoftSqlServerDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    MicrosoftSqlServerDataProviderSettings.type = Types::MicrosoftSqlServerDataProviderSettings
    MigrationProject.add_member(:migration_project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectName"))
    MigrationProject.add_member(:migration_project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectArn"))
    MigrationProject.add_member(:migration_project_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "MigrationProjectCreationTime"))
    MigrationProject.add_member(:source_data_provider_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorList, name: "SourceDataProviderDescriptors"))
    MigrationProject.add_member(:target_data_provider_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorList, name: "TargetDataProviderDescriptors"))
    MigrationProject.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileArn"))
    MigrationProject.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileName"))
    MigrationProject.add_member(:transformation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TransformationRules"))
    MigrationProject.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    MigrationProject.add_member(:schema_conversion_application_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SCApplicationAttributes, name: "SchemaConversionApplicationAttributes"))
    MigrationProject.type = Types::MigrationProject
    MigrationProjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProject, name: "member", traits: {"smithy.api#xmlName" => "MigrationProject"}))
    MigrationTypeValue.add_member(:full_load, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_LOAD", traits: {"smithy.api#enumValue" => "full-load"}))
    MigrationTypeValue.add_member(:cdc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CDC", traits: {"smithy.api#enumValue" => "cdc"}))
    MigrationTypeValue.add_member(:full_load_and_cdc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_LOAD_AND_CDC", traits: {"smithy.api#enumValue" => "full-load-and-cdc"}))
    ModifyConversionConfigurationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyConversionConfigurationMessage.add_member(:conversion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConversionConfiguration", traits: {"smithy.api#required" => {}}))
    ModifyConversionConfigurationMessage.type = Types::ModifyConversionConfigurationMessage
    ModifyConversionConfigurationResponse.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectIdentifier"))
    ModifyConversionConfigurationResponse.type = Types::ModifyConversionConfigurationResponse
    ModifyDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyDataMigrationMessage.add_member(:data_migration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationName"))
    ModifyDataMigrationMessage.add_member(:enable_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCloudwatchLogs"))
    ModifyDataMigrationMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    ModifyDataMigrationMessage.add_member(:data_migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "DataMigrationType"))
    ModifyDataMigrationMessage.add_member(:source_data_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDataSettings, name: "SourceDataSettings"))
    ModifyDataMigrationMessage.add_member(:target_data_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDataSettings, name: "TargetDataSettings"))
    ModifyDataMigrationMessage.add_member(:number_of_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfJobs"))
    ModifyDataMigrationMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "SelectionRules"))
    ModifyDataMigrationMessage.type = Types::ModifyDataMigrationMessage
    ModifyDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigration, name: "DataMigration"))
    ModifyDataMigrationResponse.type = Types::ModifyDataMigrationResponse
    ModifyDataProviderMessage.add_member(:data_provider_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyDataProviderMessage.add_member(:data_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataProviderName"))
    ModifyDataProviderMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ModifyDataProviderMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyDataProviderMessage.add_member(:virtual, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Virtual"))
    ModifyDataProviderMessage.add_member(:exact_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ExactSettings"))
    ModifyDataProviderMessage.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderSettings, name: "Settings"))
    ModifyDataProviderMessage.type = Types::ModifyDataProviderMessage
    ModifyDataProviderResponse.add_member(:data_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProvider, name: "DataProvider"))
    ModifyDataProviderResponse.type = Types::ModifyDataProviderResponse
    ModifyEndpointMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    ModifyEndpointMessage.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointIdentifier"))
    ModifyEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationEndpointTypeValue, name: "EndpointType"))
    ModifyEndpointMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    ModifyEndpointMessage.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    ModifyEndpointMessage.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    ModifyEndpointMessage.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    ModifyEndpointMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    ModifyEndpointMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    ModifyEndpointMessage.add_member(:extra_connection_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExtraConnectionAttributes"))
    ModifyEndpointMessage.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    ModifyEndpointMessage.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    ModifyEndpointMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    ModifyEndpointMessage.add_member(:external_table_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExternalTableDefinition"))
    ModifyEndpointMessage.add_member(:dynamo_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamoDbSettings, name: "DynamoDbSettings"))
    ModifyEndpointMessage.add_member(:s3_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Settings, name: "S3Settings"))
    ModifyEndpointMessage.add_member(:dms_transfer_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsTransferSettings, name: "DmsTransferSettings"))
    ModifyEndpointMessage.add_member(:mongo_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MongoDbSettings, name: "MongoDbSettings"))
    ModifyEndpointMessage.add_member(:kinesis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisSettings, name: "KinesisSettings"))
    ModifyEndpointMessage.add_member(:kafka_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSettings, name: "KafkaSettings"))
    ModifyEndpointMessage.add_member(:elasticsearch_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchSettings, name: "ElasticsearchSettings"))
    ModifyEndpointMessage.add_member(:neptune_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NeptuneSettings, name: "NeptuneSettings"))
    ModifyEndpointMessage.add_member(:redshift_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftSettings, name: "RedshiftSettings"))
    ModifyEndpointMessage.add_member(:postgre_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: PostgreSQLSettings, name: "PostgreSQLSettings"))
    ModifyEndpointMessage.add_member(:my_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MySQLSettings, name: "MySQLSettings"))
    ModifyEndpointMessage.add_member(:oracle_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OracleSettings, name: "OracleSettings"))
    ModifyEndpointMessage.add_member(:sybase_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SybaseSettings, name: "SybaseSettings"))
    ModifyEndpointMessage.add_member(:microsoft_sql_server_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftSQLServerSettings, name: "MicrosoftSQLServerSettings"))
    ModifyEndpointMessage.add_member(:ibm_db2_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: IBMDb2Settings, name: "IBMDb2Settings"))
    ModifyEndpointMessage.add_member(:doc_db_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DocDbSettings, name: "DocDbSettings"))
    ModifyEndpointMessage.add_member(:redis_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RedisSettings, name: "RedisSettings"))
    ModifyEndpointMessage.add_member(:exact_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ExactSettings"))
    ModifyEndpointMessage.add_member(:gcp_my_sql_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GcpMySQLSettings, name: "GcpMySQLSettings"))
    ModifyEndpointMessage.add_member(:timestream_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestreamSettings, name: "TimestreamSettings"))
    ModifyEndpointMessage.type = Types::ModifyEndpointMessage
    ModifyEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    ModifyEndpointResponse.type = Types::ModifyEndpointResponse
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResponse.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    ModifyEventSubscriptionResponse.type = Types::ModifyEventSubscriptionResponse
    ModifyInstanceProfileMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyInstanceProfileMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    ModifyInstanceProfileMessage.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn"))
    ModifyInstanceProfileMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    ModifyInstanceProfileMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ModifyInstanceProfileMessage.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileName"))
    ModifyInstanceProfileMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ModifyInstanceProfileMessage.add_member(:subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupIdentifier"))
    ModifyInstanceProfileMessage.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroups"))
    ModifyInstanceProfileMessage.type = Types::ModifyInstanceProfileMessage
    ModifyInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "InstanceProfile"))
    ModifyInstanceProfileResponse.type = Types::ModifyInstanceProfileResponse
    ModifyMigrationProjectMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyMigrationProjectMessage.add_member(:migration_project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectName"))
    ModifyMigrationProjectMessage.add_member(:source_data_provider_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorDefinitionList, name: "SourceDataProviderDescriptors"))
    ModifyMigrationProjectMessage.add_member(:target_data_provider_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProviderDescriptorDefinitionList, name: "TargetDataProviderDescriptors"))
    ModifyMigrationProjectMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceProfileIdentifier"))
    ModifyMigrationProjectMessage.add_member(:transformation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TransformationRules"))
    ModifyMigrationProjectMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ModifyMigrationProjectMessage.add_member(:schema_conversion_application_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SCApplicationAttributes, name: "SchemaConversionApplicationAttributes"))
    ModifyMigrationProjectMessage.type = Types::ModifyMigrationProjectMessage
    ModifyMigrationProjectResponse.add_member(:migration_project, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProject, name: "MigrationProject"))
    ModifyMigrationProjectResponse.type = Types::ModifyMigrationProjectResponse
    ModifyReplicationConfigMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    ModifyReplicationConfigMessage.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigIdentifier"))
    ModifyReplicationConfigMessage.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "ReplicationType"))
    ModifyReplicationConfigMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableMappings"))
    ModifyReplicationConfigMessage.add_member(:replication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSettings"))
    ModifyReplicationConfigMessage.add_member(:supplemental_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SupplementalSettings"))
    ModifyReplicationConfigMessage.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfig, name: "ComputeConfig"))
    ModifyReplicationConfigMessage.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEndpointArn"))
    ModifyReplicationConfigMessage.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEndpointArn"))
    ModifyReplicationConfigMessage.type = Types::ModifyReplicationConfigMessage
    ModifyReplicationConfigResponse.add_member(:replication_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfig, name: "ReplicationConfig"))
    ModifyReplicationConfigResponse.type = Types::ModifyReplicationConfigResponse
    ModifyReplicationInstanceMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    ModifyReplicationInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    ModifyReplicationInstanceMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#default" => false}))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceClass, name: "ReplicationInstanceClass"))
    ModifyReplicationInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    ModifyReplicationInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyReplicationInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    ModifyReplicationInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyReplicationInstanceMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowMajorVersionUpgrade", traits: {"smithy.api#default" => false}))
    ModifyReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceIdentifier"))
    ModifyReplicationInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ModifyReplicationInstanceMessage.add_member(:kerberos_authentication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosAuthenticationSettings, name: "KerberosAuthenticationSettings"))
    ModifyReplicationInstanceMessage.type = Types::ModifyReplicationInstanceMessage
    ModifyReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstance, name: "ReplicationInstance"))
    ModifyReplicationInstanceResponse.type = Types::ModifyReplicationInstanceResponse
    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupDescription"))
    ModifyReplicationSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    ModifyReplicationSubnetGroupMessage.type = Types::ModifyReplicationSubnetGroupMessage
    ModifyReplicationSubnetGroupResponse.add_member(:replication_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSubnetGroup, name: "ReplicationSubnetGroup"))
    ModifyReplicationSubnetGroupResponse.type = Types::ModifyReplicationSubnetGroupResponse
    ModifyReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    ModifyReplicationTaskMessage.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskIdentifier"))
    ModifyReplicationTaskMessage.add_member(:migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "MigrationType"))
    ModifyReplicationTaskMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableMappings"))
    ModifyReplicationTaskMessage.add_member(:replication_task_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskSettings"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CdcStartTime"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStartPosition"))
    ModifyReplicationTaskMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStopPosition"))
    ModifyReplicationTaskMessage.add_member(:task_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TaskData"))
    ModifyReplicationTaskMessage.type = Types::ModifyReplicationTaskMessage
    ModifyReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    ModifyReplicationTaskResponse.type = Types::ModifyReplicationTaskResponse
    MongoDbDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MongoDbDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MongoDbDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    MongoDbDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    MongoDbDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    MongoDbDataProviderSettings.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTypeValue, name: "AuthType"))
    MongoDbDataProviderSettings.add_member(:auth_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthSource"))
    MongoDbDataProviderSettings.add_member(:auth_mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMechanismValue, name: "AuthMechanism"))
    MongoDbDataProviderSettings.type = Types::MongoDbDataProviderSettings
    MongoDbSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    MongoDbSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    MongoDbSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MongoDbSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MongoDbSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    MongoDbSettings.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTypeValue, name: "AuthType"))
    MongoDbSettings.add_member(:auth_mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMechanismValue, name: "AuthMechanism"))
    MongoDbSettings.add_member(:nesting_level, ::Smithy::Schema::Shapes::MemberShape.new(target: NestingLevelValue, name: "NestingLevel"))
    MongoDbSettings.add_member(:extract_doc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExtractDocId"))
    MongoDbSettings.add_member(:docs_to_investigate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DocsToInvestigate"))
    MongoDbSettings.add_member(:auth_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthSource"))
    MongoDbSettings.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    MongoDbSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    MongoDbSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    MongoDbSettings.add_member(:use_update_look_up, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseUpdateLookUp"))
    MongoDbSettings.add_member(:replicate_shard_collections, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ReplicateShardCollections"))
    MongoDbSettings.type = Types::MongoDbSettings
    MoveReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    MoveReplicationTaskMessage.add_member(:target_replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    MoveReplicationTaskMessage.type = Types::MoveReplicationTaskMessage
    MoveReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    MoveReplicationTaskResponse.type = Types::MoveReplicationTaskResponse
    MySQLAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    MySQLAuthenticationMethod.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    MySQLSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AfterConnectScript"))
    MySQLSettings.add_member(:clean_source_metadata_on_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CleanSourceMetadataOnMismatch"))
    MySQLSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    MySQLSettings.add_member(:events_poll_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "EventsPollInterval"))
    MySQLSettings.add_member(:target_db_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDbType, name: "TargetDbType"))
    MySQLSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    MySQLSettings.add_member(:parallel_load_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ParallelLoadThreads"))
    MySQLSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    MySQLSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MySQLSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MySQLSettings.add_member(:server_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerTimezone"))
    MySQLSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    MySQLSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    MySQLSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    MySQLSettings.add_member(:execute_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ExecuteTimeout"))
    MySQLSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    MySQLSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: MySQLAuthenticationMethod, name: "AuthenticationMethod"))
    MySQLSettings.type = Types::MySQLSettings
    MySqlDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    MySqlDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    MySqlDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    MySqlDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    MySqlDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    MySqlDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    MySqlDataProviderSettings.type = Types::MySqlDataProviderSettings
    NeptuneSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    NeptuneSettings.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    NeptuneSettings.add_member(:s3_bucket_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketFolder", traits: {"smithy.api#required" => {}}))
    NeptuneSettings.add_member(:error_retry_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ErrorRetryDuration"))
    NeptuneSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    NeptuneSettings.add_member(:max_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRetryCount"))
    NeptuneSettings.add_member(:iam_auth_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IamAuthEnabled"))
    NeptuneSettings.type = Types::NeptuneSettings
    NestingLevelValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    NestingLevelValue.add_member(:one, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE", traits: {"smithy.api#enumValue" => "one"}))
    OracleAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    OracleAuthenticationMethod.add_member(:kerberos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kerberos", traits: {"smithy.api#enumValue" => "kerberos"}))
    OracleDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    OracleDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    OracleDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    OracleDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    OracleDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    OracleDataProviderSettings.add_member(:asm_server, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AsmServer"))
    OracleDataProviderSettings.add_member(:secrets_manager_oracle_asm_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerOracleAsmSecretId"))
    OracleDataProviderSettings.add_member(:secrets_manager_oracle_asm_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerOracleAsmAccessRoleArn"))
    OracleDataProviderSettings.add_member(:secrets_manager_security_db_encryption_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecurityDbEncryptionSecretId"))
    OracleDataProviderSettings.add_member(:secrets_manager_security_db_encryption_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecurityDbEncryptionAccessRoleArn"))
    OracleDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    OracleDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    OracleDataProviderSettings.type = Types::OracleDataProviderSettings
    OracleSettings.add_member(:add_supplemental_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AddSupplementalLogging"))
    OracleSettings.add_member(:archived_log_dest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ArchivedLogDestId"))
    OracleSettings.add_member(:additional_archived_log_dest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AdditionalArchivedLogDestId"))
    OracleSettings.add_member(:extra_archived_log_dest_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "ExtraArchivedLogDestIds"))
    OracleSettings.add_member(:allow_select_nested_tables, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowSelectNestedTables"))
    OracleSettings.add_member(:parallel_asm_read_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ParallelAsmReadThreads"))
    OracleSettings.add_member(:read_ahead_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ReadAheadBlocks"))
    OracleSettings.add_member(:access_alternate_directly, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AccessAlternateDirectly"))
    OracleSettings.add_member(:use_alternate_folder_for_online, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseAlternateFolderForOnline"))
    OracleSettings.add_member(:oracle_path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OraclePathPrefix"))
    OracleSettings.add_member(:use_path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsePathPrefix"))
    OracleSettings.add_member(:replace_path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ReplacePathPrefix"))
    OracleSettings.add_member(:enable_homogenous_tablespace, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableHomogenousTablespace"))
    OracleSettings.add_member(:direct_path_no_log, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DirectPathNoLog"))
    OracleSettings.add_member(:archived_logs_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ArchivedLogsOnly"))
    OracleSettings.add_member(:asm_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "AsmPassword"))
    OracleSettings.add_member(:asm_server, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AsmServer"))
    OracleSettings.add_member(:asm_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AsmUser"))
    OracleSettings.add_member(:char_length_semantics, ::Smithy::Schema::Shapes::MemberShape.new(target: CharLengthSemantics, name: "CharLengthSemantics"))
    OracleSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    OracleSettings.add_member(:direct_path_parallel_load, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DirectPathParallelLoad"))
    OracleSettings.add_member(:fail_tasks_on_lob_truncation, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "FailTasksOnLobTruncation"))
    OracleSettings.add_member(:number_datatype_scale, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberDatatypeScale"))
    OracleSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    OracleSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    OracleSettings.add_member(:read_table_space_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ReadTableSpaceName"))
    OracleSettings.add_member(:retry_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "RetryInterval"))
    OracleSettings.add_member(:security_db_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "SecurityDbEncryption"))
    OracleSettings.add_member(:security_db_encryption_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecurityDbEncryptionName"))
    OracleSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    OracleSettings.add_member(:spatial_data_option_to_geo_json_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SpatialDataOptionToGeoJsonFunctionName"))
    OracleSettings.add_member(:standby_delay_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StandbyDelayTime"))
    OracleSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    OracleSettings.add_member(:use_b_file, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseBFile"))
    OracleSettings.add_member(:use_direct_path_full_load, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseDirectPathFullLoad"))
    OracleSettings.add_member(:use_logminer_reader, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseLogminerReader"))
    OracleSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    OracleSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    OracleSettings.add_member(:secrets_manager_oracle_asm_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerOracleAsmAccessRoleArn"))
    OracleSettings.add_member(:secrets_manager_oracle_asm_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerOracleAsmSecretId"))
    OracleSettings.add_member(:trim_space_in_char, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TrimSpaceInChar"))
    OracleSettings.add_member(:convert_timestamp_with_zone_to_utc, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ConvertTimestampWithZoneToUTC"))
    OracleSettings.add_member(:open_transaction_window, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "OpenTransactionWindow"))
    OracleSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: OracleAuthenticationMethod, name: "AuthenticationMethod"))
    OracleSettings.type = Types::OracleSettings
    OrderableReplicationInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    OrderableReplicationInstance.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceClass, name: "ReplicationInstanceClass"))
    OrderableReplicationInstance.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    OrderableReplicationInstance.add_member(:min_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:default_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DefaultAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:included_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IncludedAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZonesList, name: "AvailabilityZones"))
    OrderableReplicationInstance.add_member(:release_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseStatusValues, name: "ReleaseStatus"))
    OrderableReplicationInstance.type = Types::OrderableReplicationInstance
    OrderableReplicationInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableReplicationInstance, name: "member", traits: {"smithy.api#xmlName" => "OrderableReplicationInstance"}))
    OriginTypeValue.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "SOURCE"}))
    OriginTypeValue.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET", traits: {"smithy.api#enumValue" => "TARGET"}))
    ParquetVersionValue.add_member(:parquet_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARQUET_1_0", traits: {"smithy.api#enumValue" => "parquet-1-0"}))
    ParquetVersionValue.add_member(:parquet_2_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARQUET_2_0", traits: {"smithy.api#enumValue" => "parquet-2-0"}))
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceAction, name: "member", traits: {"smithy.api#xmlName" => "PendingMaintenanceAction"}))
    PendingMaintenanceActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePendingMaintenanceActions, name: "member", traits: {"smithy.api#xmlName" => "ResourcePendingMaintenanceActions"}))
    PluginNameValue.add_member(:no_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PREFERENCE", traits: {"smithy.api#enumValue" => "no-preference"}))
    PluginNameValue.add_member(:test_decoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_DECODING", traits: {"smithy.api#enumValue" => "test-decoding"}))
    PluginNameValue.add_member(:pglogical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PGLOGICAL", traits: {"smithy.api#enumValue" => "pglogical"}))
    PostgreSQLAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    PostgreSQLAuthenticationMethod.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    PostgreSQLSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AfterConnectScript"))
    PostgreSQLSettings.add_member(:capture_ddls, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CaptureDdls"))
    PostgreSQLSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    PostgreSQLSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    PostgreSQLSettings.add_member(:ddl_artifacts_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DdlArtifactsSchema"))
    PostgreSQLSettings.add_member(:execute_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ExecuteTimeout"))
    PostgreSQLSettings.add_member(:fail_tasks_on_lob_truncation, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "FailTasksOnLobTruncation"))
    PostgreSQLSettings.add_member(:heartbeat_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "HeartbeatEnable"))
    PostgreSQLSettings.add_member(:heartbeat_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HeartbeatSchema"))
    PostgreSQLSettings.add_member(:heartbeat_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "HeartbeatFrequency"))
    PostgreSQLSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    PostgreSQLSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    PostgreSQLSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    PostgreSQLSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    PostgreSQLSettings.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SlotName"))
    PostgreSQLSettings.add_member(:plugin_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginNameValue, name: "PluginName"))
    PostgreSQLSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    PostgreSQLSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    PostgreSQLSettings.add_member(:trim_space_in_char, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TrimSpaceInChar"))
    PostgreSQLSettings.add_member(:map_boolean_as_boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MapBooleanAsBoolean"))
    PostgreSQLSettings.add_member(:map_jsonb_as_clob, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MapJsonbAsClob"))
    PostgreSQLSettings.add_member(:map_long_varchar_as, ::Smithy::Schema::Shapes::MemberShape.new(target: LongVarcharMappingType, name: "MapLongVarcharAs"))
    PostgreSQLSettings.add_member(:database_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseMode, name: "DatabaseMode"))
    PostgreSQLSettings.add_member(:babelfish_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BabelfishDatabaseName"))
    PostgreSQLSettings.add_member(:disable_unicode_source_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DisableUnicodeSourceFilter"))
    PostgreSQLSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    PostgreSQLSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: PostgreSQLAuthenticationMethod, name: "AuthenticationMethod"))
    PostgreSQLSettings.type = Types::PostgreSQLSettings
    PostgreSqlDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    PostgreSqlDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    PostgreSqlDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    PostgreSqlDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    PostgreSqlDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    PostgreSqlDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    PostgreSqlDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    PostgreSqlDataProviderSettings.type = Types::PostgreSqlDataProviderSettings
    PremigrationAssessmentStatus.add_member(:premigration_assessment_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PremigrationAssessmentRunArn"))
    PremigrationAssessmentStatus.add_member(:fail_on_assessment_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FailOnAssessmentFailure", traits: {"smithy.api#default" => false}))
    PremigrationAssessmentStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    PremigrationAssessmentStatus.add_member(:premigration_assessment_run_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "PremigrationAssessmentRunCreationDate"))
    PremigrationAssessmentStatus.add_member(:assessment_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRunProgress, name: "AssessmentProgress"))
    PremigrationAssessmentStatus.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    PremigrationAssessmentStatus.add_member(:result_location_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultLocationBucket"))
    PremigrationAssessmentStatus.add_member(:result_location_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultLocationFolder"))
    PremigrationAssessmentStatus.add_member(:result_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultEncryptionMode"))
    PremigrationAssessmentStatus.add_member(:result_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultKmsKeyArn"))
    PremigrationAssessmentStatus.add_member(:result_statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRunResultStatistic, name: "ResultStatistic"))
    PremigrationAssessmentStatus.type = Types::PremigrationAssessmentStatus
    PremigrationAssessmentStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PremigrationAssessmentStatus, name: "member"))
    ProcessedObject.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ProcessedObject.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ProcessedObject.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType"))
    ProcessedObject.type = Types::ProcessedObject
    Progress.add_member(:progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "ProgressPercent"))
    Progress.add_member(:total_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalObjects", traits: {"smithy.api#default" => 0}))
    Progress.add_member(:progress_step, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgressStep"))
    Progress.add_member(:processed_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedObject, name: "ProcessedObject"))
    Progress.type = Types::Progress
    ProvisionData.add_member(:provision_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProvisionState"))
    ProvisionData.add_member(:provisioned_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ProvisionedCapacityUnits", traits: {"smithy.api#default" => 0}))
    ProvisionData.add_member(:date_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DateProvisioned"))
    ProvisionData.add_member(:is_new_provisioning_available, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsNewProvisioningAvailable", traits: {"smithy.api#default" => false}))
    ProvisionData.add_member(:date_new_provisioning_data_available, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DateNewProvisioningDataAvailable"))
    ProvisionData.add_member(:reason_for_new_provisioning_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReasonForNewProvisioningData"))
    ProvisionData.type = Types::ProvisionData
    PublicIpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    RdsConfiguration.add_member(:engine_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineEdition"))
    RdsConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType"))
    RdsConfiguration.add_member(:instance_vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "InstanceVcpu"))
    RdsConfiguration.add_member(:instance_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "InstanceMemory"))
    RdsConfiguration.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RdsConfiguration.add_member(:storage_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageSize"))
    RdsConfiguration.add_member(:storage_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageIops"))
    RdsConfiguration.add_member(:deployment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentOption"))
    RdsConfiguration.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    RdsConfiguration.type = Types::RdsConfiguration
    RdsRecommendation.add_member(:requirements_to_target, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsRequirements, name: "RequirementsToTarget"))
    RdsRecommendation.add_member(:target_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsConfiguration, name: "TargetConfiguration"))
    RdsRecommendation.type = Types::RdsRecommendation
    RdsRequirements.add_member(:engine_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineEdition"))
    RdsRequirements.add_member(:instance_vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "InstanceVcpu"))
    RdsRequirements.add_member(:instance_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "InstanceMemory"))
    RdsRequirements.add_member(:storage_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageSize"))
    RdsRequirements.add_member(:storage_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageIops"))
    RdsRequirements.add_member(:deployment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeploymentOption"))
    RdsRequirements.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    RdsRequirements.type = Types::RdsRequirements
    RebootReplicationInstanceMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    RebootReplicationInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ForceFailover"))
    RebootReplicationInstanceMessage.add_member(:force_planned_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ForcePlannedFailover"))
    RebootReplicationInstanceMessage.type = Types::RebootReplicationInstanceMessage
    RebootReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstance, name: "ReplicationInstance"))
    RebootReplicationInstanceResponse.type = Types::RebootReplicationInstanceResponse
    Recommendation.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId"))
    Recommendation.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    Recommendation.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedDate"))
    Recommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Recommendation.add_member(:preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Preferred"))
    Recommendation.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSettings, name: "Settings"))
    Recommendation.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationData, name: "Data"))
    Recommendation.type = Types::Recommendation
    RecommendationData.add_member(:rds_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsRecommendation, name: "RdsEngine"))
    RecommendationData.type = Types::RecommendationData
    RecommendationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    RecommendationSettings.add_member(:instance_sizing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceSizingType", traits: {"smithy.api#required" => {}}))
    RecommendationSettings.add_member(:workload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WorkloadType", traits: {"smithy.api#required" => {}}))
    RecommendationSettings.type = Types::RecommendationSettings
    RedisAuthTypeValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    RedisAuthTypeValue.add_member(:auth_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTH_ROLE", traits: {"smithy.api#enumValue" => "auth-role"}))
    RedisAuthTypeValue.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTH_TOKEN", traits: {"smithy.api#enumValue" => "auth-token"}))
    RedisSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName", traits: {"smithy.api#required" => {}}))
    RedisSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RedisSettings.add_member(:ssl_security_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: SslSecurityProtocolValue, name: "SslSecurityProtocol"))
    RedisSettings.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RedisAuthTypeValue, name: "AuthType"))
    RedisSettings.add_member(:auth_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthUserName"))
    RedisSettings.add_member(:auth_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "AuthPassword"))
    RedisSettings.add_member(:ssl_ca_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SslCaCertificateArn"))
    RedisSettings.type = Types::RedisSettings
    RedshiftDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    RedshiftDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RedshiftDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    RedshiftDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Path"))
    RedshiftDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessRoleArn"))
    RedshiftDataProviderSettings.type = Types::RedshiftDataProviderSettings
    RedshiftSettings.add_member(:accept_any_date, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AcceptAnyDate"))
    RedshiftSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AfterConnectScript"))
    RedshiftSettings.add_member(:bucket_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketFolder"))
    RedshiftSettings.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    RedshiftSettings.add_member(:case_sensitive_names, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CaseSensitiveNames"))
    RedshiftSettings.add_member(:comp_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CompUpdate"))
    RedshiftSettings.add_member(:connection_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ConnectionTimeout"))
    RedshiftSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    RedshiftSettings.add_member(:date_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DateFormat"))
    RedshiftSettings.add_member(:empty_as_null, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EmptyAsNull"))
    RedshiftSettings.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionModeValue, name: "EncryptionMode"))
    RedshiftSettings.add_member(:explicit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ExplicitIds"))
    RedshiftSettings.add_member(:file_transfer_upload_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "FileTransferUploadStreams"))
    RedshiftSettings.add_member(:load_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "LoadTimeout"))
    RedshiftSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    RedshiftSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    RedshiftSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RedshiftSettings.add_member(:remove_quotes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RemoveQuotes"))
    RedshiftSettings.add_member(:replace_invalid_chars, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplaceInvalidChars"))
    RedshiftSettings.add_member(:replace_chars, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplaceChars"))
    RedshiftSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    RedshiftSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    RedshiftSettings.add_member(:server_side_encryption_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerSideEncryptionKmsKeyId"))
    RedshiftSettings.add_member(:time_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimeFormat"))
    RedshiftSettings.add_member(:trim_blanks, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TrimBlanks"))
    RedshiftSettings.add_member(:truncate_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TruncateColumns"))
    RedshiftSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    RedshiftSettings.add_member(:write_buffer_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "WriteBufferSize"))
    RedshiftSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    RedshiftSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    RedshiftSettings.add_member(:map_boolean_as_boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MapBooleanAsBoolean"))
    RedshiftSettings.type = Types::RedshiftSettings
    RefreshSchemasMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    RefreshSchemasMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    RefreshSchemasMessage.type = Types::RefreshSchemasMessage
    RefreshSchemasResponse.add_member(:refresh_schemas_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchemasStatus, name: "RefreshSchemasStatus"))
    RefreshSchemasResponse.type = Types::RefreshSchemasResponse
    RefreshSchemasStatus.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn"))
    RefreshSchemasStatus.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    RefreshSchemasStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchemasStatusTypeValue, name: "Status"))
    RefreshSchemasStatus.add_member(:last_refresh_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastRefreshDate"))
    RefreshSchemasStatus.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    RefreshSchemasStatus.type = Types::RefreshSchemasStatus
    RefreshSchemasStatusTypeValue.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "successful"}))
    RefreshSchemasStatusTypeValue.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    RefreshSchemasStatusTypeValue.add_member(:refreshing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESHING", traits: {"smithy.api#enumValue" => "refreshing"}))
    ReleaseStatusValues.add_member(:beta, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETA", traits: {"smithy.api#enumValue" => "beta"}))
    ReleaseStatusValues.add_member(:prod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROD", traits: {"smithy.api#enumValue" => "prod"}))
    ReloadOptionValue.add_member(:data_reload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_RELOAD", traits: {"smithy.api#enumValue" => "data-reload"}))
    ReloadOptionValue.add_member(:validate_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_ONLY", traits: {"smithy.api#enumValue" => "validate-only"}))
    ReloadReplicationTablesMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    ReloadReplicationTablesMessage.add_member(:tables_to_reload, ::Smithy::Schema::Shapes::MemberShape.new(target: TableListToReload, name: "TablesToReload", traits: {"smithy.api#required" => {}}))
    ReloadReplicationTablesMessage.add_member(:reload_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ReloadOptionValue, name: "ReloadOption"))
    ReloadReplicationTablesMessage.type = Types::ReloadReplicationTablesMessage
    ReloadReplicationTablesResponse.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn"))
    ReloadReplicationTablesResponse.type = Types::ReloadReplicationTablesResponse
    ReloadTablesMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    ReloadTablesMessage.add_member(:tables_to_reload, ::Smithy::Schema::Shapes::MemberShape.new(target: TableListToReload, name: "TablesToReload", traits: {"smithy.api#required" => {}}))
    ReloadTablesMessage.add_member(:reload_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ReloadOptionValue, name: "ReloadOption"))
    ReloadTablesMessage.type = Types::ReloadTablesMessage
    ReloadTablesResponse.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    ReloadTablesResponse.type = Types::ReloadTablesResponse
    RemoveTagsFromResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    RemoveTagsFromResourceResponse.type = Types::RemoveTagsFromResourceResponse
    Replication.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigIdentifier"))
    Replication.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn"))
    Replication.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEndpointArn"))
    Replication.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEndpointArn"))
    Replication.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "ReplicationType"))
    Replication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Replication.add_member(:provision_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionData, name: "ProvisionData"))
    Replication.add_member(:premigration_assessment_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: PremigrationAssessmentStatusList, name: "PremigrationAssessmentStatuses"))
    Replication.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StopReason"))
    Replication.add_member(:failure_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "FailureMessages"))
    Replication.add_member(:replication_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStats, name: "ReplicationStats"))
    Replication.add_member(:start_replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StartReplicationType"))
    Replication.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CdcStartTime"))
    Replication.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStartPosition"))
    Replication.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStopPosition"))
    Replication.add_member(:recovery_checkpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryCheckpoint"))
    Replication.add_member(:replication_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationCreateTime"))
    Replication.add_member(:replication_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationUpdateTime"))
    Replication.add_member(:replication_last_stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationLastStopTime"))
    Replication.add_member(:replication_deprovision_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationDeprovisionTime"))
    Replication.add_member(:is_read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IsReadOnly"))
    Replication.type = Types::Replication
    ReplicationConfig.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigIdentifier"))
    ReplicationConfig.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn"))
    ReplicationConfig.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEndpointArn"))
    ReplicationConfig.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEndpointArn"))
    ReplicationConfig.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "ReplicationType"))
    ReplicationConfig.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfig, name: "ComputeConfig"))
    ReplicationConfig.add_member(:replication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSettings"))
    ReplicationConfig.add_member(:supplemental_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SupplementalSettings"))
    ReplicationConfig.add_member(:table_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableMappings"))
    ReplicationConfig.add_member(:replication_config_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationConfigCreateTime"))
    ReplicationConfig.add_member(:replication_config_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationConfigUpdateTime"))
    ReplicationConfig.add_member(:is_read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IsReadOnly"))
    ReplicationConfig.type = Types::ReplicationConfig
    ReplicationConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfig, name: "member", traits: {"smithy.api#xmlName" => "ReplicationConfig"}))
    ReplicationEndpointTypeValue.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "source"}))
    ReplicationEndpointTypeValue.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET", traits: {"smithy.api#enumValue" => "target"}))
    ReplicationInstance.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceIdentifier"))
    ReplicationInstance.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceClass, name: "ReplicationInstanceClass"))
    ReplicationInstance.add_member(:replication_instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceStatus"))
    ReplicationInstance.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AllocatedStorage", traits: {"smithy.api#default" => 0}))
    ReplicationInstance.add_member(:instance_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "InstanceCreateTime"))
    ReplicationInstance.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    ReplicationInstance.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    ReplicationInstance.add_member(:replication_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSubnetGroup, name: "ReplicationSubnetGroup"))
    ReplicationInstance.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ReplicationInstance.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationPendingModifiedValues, name: "PendingModifiedValues"))
    ReplicationInstance.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MultiAZ", traits: {"smithy.api#default" => false}))
    ReplicationInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ReplicationInstance.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade", traits: {"smithy.api#default" => false}))
    ReplicationInstance.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ReplicationInstance.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    ReplicationInstance.add_member(:replication_instance_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstancePublicIpAddress", traits: {"smithy.api#deprecated" => {}}))
    ReplicationInstance.add_member(:replication_instance_private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstancePrivateIpAddress", traits: {"smithy.api#deprecated" => {}}))
    ReplicationInstance.add_member(:replication_instance_public_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstancePublicIpAddressList, name: "ReplicationInstancePublicIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_private_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstancePrivateIpAddressList, name: "ReplicationInstancePrivateIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceIpv6AddressList, name: "ReplicationInstanceIpv6Addresses"))
    ReplicationInstance.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PubliclyAccessible", traits: {"smithy.api#default" => false}))
    ReplicationInstance.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecondaryAvailabilityZone"))
    ReplicationInstance.add_member(:free_until, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FreeUntil"))
    ReplicationInstance.add_member(:dns_name_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DnsNameServers"))
    ReplicationInstance.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ReplicationInstance.add_member(:kerberos_authentication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosAuthenticationSettings, name: "KerberosAuthenticationSettings"))
    ReplicationInstance.type = Types::ReplicationInstance
    ReplicationInstanceIpv6AddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ReplicationInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstance, name: "member", traits: {"smithy.api#xmlName" => "ReplicationInstance"}))
    ReplicationInstancePrivateIpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ReplicationInstancePublicIpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ReplicationInstanceTaskLog.add_member(:replication_task_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskName"))
    ReplicationInstanceTaskLog.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    ReplicationInstanceTaskLog.add_member(:replication_instance_task_log_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ReplicationInstanceTaskLogSize", traits: {"smithy.api#default" => 0}))
    ReplicationInstanceTaskLog.type = Types::ReplicationInstanceTaskLog
    ReplicationInstanceTaskLogsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceTaskLog, name: "member"))
    ReplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Replication, name: "member", traits: {"smithy.api#xmlName" => "Replication"}))
    ReplicationPendingModifiedValues.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInstanceClass, name: "ReplicationInstanceClass"))
    ReplicationPendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    ReplicationPendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    ReplicationPendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ReplicationPendingModifiedValues.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ReplicationPendingModifiedValues.type = Types::ReplicationPendingModifiedValues
    ReplicationStats.add_member(:full_load_progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FullLoadProgressPercent", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:elapsed_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ElapsedTimeMillis", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_loaded, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesLoaded", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_loading, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesLoading", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_queued, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesQueued", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_errored, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesErrored", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:fresh_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FreshStartDate"))
    ReplicationStats.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartDate"))
    ReplicationStats.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StopDate"))
    ReplicationStats.add_member(:full_load_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FullLoadStartDate"))
    ReplicationStats.add_member(:full_load_finish_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FullLoadFinishDate"))
    ReplicationStats.type = Types::ReplicationStats
    ReplicationSubnetGroup.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupIdentifier"))
    ReplicationSubnetGroup.add_member(:replication_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSubnetGroupDescription"))
    ReplicationSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    ReplicationSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupStatus"))
    ReplicationSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "Subnets"))
    ReplicationSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SupportedNetworkTypes"))
    ReplicationSubnetGroup.add_member(:is_read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IsReadOnly"))
    ReplicationSubnetGroup.type = Types::ReplicationSubnetGroup
    ReplicationSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReplicationSubnetGroupDoesNotCoverEnoughAZs.type = Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs
    ReplicationSubnetGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSubnetGroup, name: "member", traits: {"smithy.api#xmlName" => "ReplicationSubnetGroup"}))
    ReplicationTableStatisticsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatistics, name: "member"))
    ReplicationTask.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskIdentifier"))
    ReplicationTask.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEndpointArn"))
    ReplicationTask.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEndpointArn"))
    ReplicationTask.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn"))
    ReplicationTask.add_member(:migration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationTypeValue, name: "MigrationType"))
    ReplicationTask.add_member(:table_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableMappings"))
    ReplicationTask.add_member(:replication_task_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskSettings"))
    ReplicationTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ReplicationTask.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    ReplicationTask.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StopReason"))
    ReplicationTask.add_member(:replication_task_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationTaskCreationDate"))
    ReplicationTask.add_member(:replication_task_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationTaskStartDate"))
    ReplicationTask.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStartPosition"))
    ReplicationTask.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStopPosition"))
    ReplicationTask.add_member(:recovery_checkpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryCheckpoint"))
    ReplicationTask.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    ReplicationTask.add_member(:replication_task_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskStats, name: "ReplicationTaskStats"))
    ReplicationTask.add_member(:task_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TaskData"))
    ReplicationTask.add_member(:target_replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReplicationInstanceArn"))
    ReplicationTask.type = Types::ReplicationTask
    ReplicationTaskAssessmentResult.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskIdentifier"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_last_assessment_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationTaskLastAssessmentDate"))
    ReplicationTaskAssessmentResult.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssessmentStatus"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results_file, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssessmentResultsFile"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssessmentResults"))
    ReplicationTaskAssessmentResult.add_member(:s3_object_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "S3ObjectUrl"))
    ReplicationTaskAssessmentResult.type = Types::ReplicationTaskAssessmentResult
    ReplicationTaskAssessmentResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentResult, name: "member", traits: {"smithy.api#xmlName" => "ReplicationTaskAssessmentResult"}))
    ReplicationTaskAssessmentRun.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskAssessmentRunArn"))
    ReplicationTaskAssessmentRun.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentRun.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ReplicationTaskAssessmentRun.add_member(:replication_task_assessment_run_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationTaskAssessmentRunCreationDate"))
    ReplicationTaskAssessmentRun.add_member(:assessment_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRunProgress, name: "AssessmentProgress"))
    ReplicationTaskAssessmentRun.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    ReplicationTaskAssessmentRun.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    ReplicationTaskAssessmentRun.add_member(:result_location_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultLocationBucket"))
    ReplicationTaskAssessmentRun.add_member(:result_location_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultLocationFolder"))
    ReplicationTaskAssessmentRun.add_member(:result_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultEncryptionMode"))
    ReplicationTaskAssessmentRun.add_member(:result_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultKmsKeyArn"))
    ReplicationTaskAssessmentRun.add_member(:assessment_run_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssessmentRunName"))
    ReplicationTaskAssessmentRun.add_member(:is_latest_task_assessment_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsLatestTaskAssessmentRun", traits: {"smithy.api#default" => false}))
    ReplicationTaskAssessmentRun.add_member(:result_statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRunResultStatistic, name: "ResultStatistic"))
    ReplicationTaskAssessmentRun.type = Types::ReplicationTaskAssessmentRun
    ReplicationTaskAssessmentRunList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRun, name: "member"))
    ReplicationTaskAssessmentRunProgress.add_member(:individual_assessment_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IndividualAssessmentCount", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunProgress.add_member(:individual_assessment_completed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IndividualAssessmentCompletedCount", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunProgress.type = Types::ReplicationTaskAssessmentRunProgress
    ReplicationTaskAssessmentRunResultStatistic.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Passed", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Failed", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Error", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Warning", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Cancelled", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Skipped", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.type = Types::ReplicationTaskAssessmentRunResultStatistic
    ReplicationTaskIndividualAssessment.add_member(:replication_task_individual_assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskIndividualAssessmentArn"))
    ReplicationTaskIndividualAssessment.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskAssessmentRunArn"))
    ReplicationTaskIndividualAssessment.add_member(:individual_assessment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndividualAssessmentName"))
    ReplicationTaskIndividualAssessment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ReplicationTaskIndividualAssessment.add_member(:replication_task_individual_assessment_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationTaskIndividualAssessmentStartDate"))
    ReplicationTaskIndividualAssessment.type = Types::ReplicationTaskIndividualAssessment
    ReplicationTaskIndividualAssessmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskIndividualAssessment, name: "member"))
    ReplicationTaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "member", traits: {"smithy.api#xmlName" => "ReplicationTask"}))
    ReplicationTaskStats.add_member(:full_load_progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FullLoadProgressPercent", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:elapsed_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ElapsedTimeMillis", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_loaded, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesLoaded", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_loading, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesLoading", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_queued, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesQueued", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_errored, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TablesErrored", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:fresh_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FreshStartDate"))
    ReplicationTaskStats.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartDate"))
    ReplicationTaskStats.add_member(:stop_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StopDate"))
    ReplicationTaskStats.add_member(:full_load_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FullLoadStartDate"))
    ReplicationTaskStats.add_member(:full_load_finish_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FullLoadFinishDate"))
    ReplicationTaskStats.type = Types::ReplicationTaskStats
    ResourceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceAlreadyExistsFault.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    ResourceAlreadyExistsFault.type = Types::ResourceAlreadyExistsFault
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePendingMaintenanceActions.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActionDetails, name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.type = Types::ResourcePendingMaintenanceActions
    ResourceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceQuotaExceededFault.type = Types::ResourceQuotaExceededFault
    RunFleetAdvisorLsaAnalysisResponse.add_member(:lsa_analysis_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LsaAnalysisId"))
    RunFleetAdvisorLsaAnalysisResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    RunFleetAdvisorLsaAnalysisResponse.type = Types::RunFleetAdvisorLsaAnalysisResponse
    S3AccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    S3AccessDeniedFault.type = Types::S3AccessDeniedFault
    S3ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    S3ResourceNotFoundFault.type = Types::S3ResourceNotFoundFault
    S3Settings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn"))
    S3Settings.add_member(:external_table_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExternalTableDefinition"))
    S3Settings.add_member(:csv_row_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CsvRowDelimiter"))
    S3Settings.add_member(:csv_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CsvDelimiter"))
    S3Settings.add_member(:bucket_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketFolder"))
    S3Settings.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    S3Settings.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionTypeValue, name: "CompressionType"))
    S3Settings.add_member(:encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionModeValue, name: "EncryptionMode"))
    S3Settings.add_member(:server_side_encryption_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerSideEncryptionKmsKeyId"))
    S3Settings.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormatValue, name: "DataFormat"))
    S3Settings.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingTypeValue, name: "EncodingType"))
    S3Settings.add_member(:dict_page_size_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DictPageSizeLimit"))
    S3Settings.add_member(:row_group_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "RowGroupLength"))
    S3Settings.add_member(:data_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DataPageSize"))
    S3Settings.add_member(:parquet_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetVersionValue, name: "ParquetVersion"))
    S3Settings.add_member(:enable_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableStatistics"))
    S3Settings.add_member(:include_op_for_full_load, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeOpForFullLoad"))
    S3Settings.add_member(:cdc_inserts_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CdcInsertsOnly"))
    S3Settings.add_member(:timestamp_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimestampColumnName"))
    S3Settings.add_member(:parquet_timestamp_in_millisecond, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ParquetTimestampInMillisecond"))
    S3Settings.add_member(:cdc_inserts_and_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CdcInsertsAndUpdates"))
    S3Settings.add_member(:date_partition_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DatePartitionEnabled"))
    S3Settings.add_member(:date_partition_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: DatePartitionSequenceValue, name: "DatePartitionSequence"))
    S3Settings.add_member(:date_partition_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: DatePartitionDelimiterValue, name: "DatePartitionDelimiter"))
    S3Settings.add_member(:use_csv_no_sup_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseCsvNoSupValue"))
    S3Settings.add_member(:csv_no_sup_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CsvNoSupValue"))
    S3Settings.add_member(:preserve_transactions, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PreserveTransactions"))
    S3Settings.add_member(:cdc_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcPath"))
    S3Settings.add_member(:use_task_start_time_for_full_load_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseTaskStartTimeForFullLoadTimestamp"))
    S3Settings.add_member(:canned_acl_for_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: CannedAclForObjectsValue, name: "CannedAclForObjects"))
    S3Settings.add_member(:add_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AddColumnName"))
    S3Settings.add_member(:cdc_max_batch_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "CdcMaxBatchInterval"))
    S3Settings.add_member(:cdc_min_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "CdcMinFileSize"))
    S3Settings.add_member(:csv_null_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CsvNullValue"))
    S3Settings.add_member(:ignore_header_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "IgnoreHeaderRows"))
    S3Settings.add_member(:max_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxFileSize"))
    S3Settings.add_member(:rfc4180, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Rfc4180"))
    S3Settings.add_member(:date_partition_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatePartitionTimezone"))
    S3Settings.add_member(:add_trailing_padding_character, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AddTrailingPaddingCharacter"))
    S3Settings.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExpectedBucketOwner"))
    S3Settings.add_member(:glue_catalog_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "GlueCatalogGeneration"))
    S3Settings.type = Types::S3Settings
    SCApplicationAttributes.add_member(:s3_bucket_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketPath"))
    SCApplicationAttributes.add_member(:s3_bucket_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketRoleArn"))
    SCApplicationAttributes.type = Types::SCApplicationAttributes
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SafeguardPolicy.add_member(:rely_on_sql_server_replication_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELY_ON_SQL_SERVER_REPLICATION_AGENT", traits: {"smithy.api#enumValue" => "rely-on-sql-server-replication-agent"}))
    SafeguardPolicy.add_member(:exclusive_automatic_truncation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE_AUTOMATIC_TRUNCATION", traits: {"smithy.api#enumValue" => "exclusive-automatic-truncation"}))
    SafeguardPolicy.add_member(:shared_automatic_truncation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED_AUTOMATIC_TRUNCATION", traits: {"smithy.api#enumValue" => "shared-automatic-truncation"}))
    SchemaConversionRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    SchemaConversionRequest.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    SchemaConversionRequest.add_member(:migration_project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MigrationProjectArn"))
    SchemaConversionRequest.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "Error"))
    SchemaConversionRequest.add_member(:export_sql_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSqlDetails, name: "ExportSqlDetails"))
    SchemaConversionRequest.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Progress, name: "Progress"))
    SchemaConversionRequest.type = Types::SchemaConversionRequest
    SchemaConversionRequestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConversionRequest, name: "member"))
    SchemaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SchemaResponse.add_member(:code_line_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "CodeLineCount"))
    SchemaResponse.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "CodeSize"))
    SchemaResponse.add_member(:complexity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Complexity"))
    SchemaResponse.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerShortInfoResponse, name: "Server"))
    SchemaResponse.add_member(:database_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseShortInfoResponse, name: "DatabaseInstance"))
    SchemaResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaId"))
    SchemaResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    SchemaResponse.add_member(:original_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaShortInfoResponse, name: "OriginalSchema"))
    SchemaResponse.add_member(:similarity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "Similarity"))
    SchemaResponse.type = Types::SchemaResponse
    SchemaShortInfoResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaId"))
    SchemaShortInfoResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    SchemaShortInfoResponse.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId"))
    SchemaShortInfoResponse.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    SchemaShortInfoResponse.add_member(:database_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseIpAddress"))
    SchemaShortInfoResponse.type = Types::SchemaShortInfoResponse
    ServerShortInfoResponse.add_member(:server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerId"))
    ServerShortInfoResponse.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddress"))
    ServerShortInfoResponse.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    ServerShortInfoResponse.type = Types::ServerShortInfoResponse
    SourceDataSetting.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CDCStartPosition"))
    SourceDataSetting.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CDCStartTime"))
    SourceDataSetting.add_member(:cdc_stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CDCStopTime"))
    SourceDataSetting.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SlotName"))
    SourceDataSetting.type = Types::SourceDataSetting
    SourceDataSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDataSetting, name: "member"))
    SourceIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SourceId"}))
    SourceType.add_member(:replication_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "replication_instance", traits: {"smithy.api#enumValue" => "replication-instance"}))
    SqlServerAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    SqlServerAuthenticationMethod.add_member(:kerberos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Kerberos", traits: {"smithy.api#enumValue" => "kerberos"}))
    SslSecurityProtocolValue.add_member(:plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "plaintext"}))
    SslSecurityProtocolValue.add_member(:ssl_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSL_ENCRYPTION", traits: {"smithy.api#enumValue" => "ssl-encryption"}))
    StartDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    StartDataMigrationMessage.add_member(:start_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StartReplicationMigrationTypeValue, name: "StartType", traits: {"smithy.api#required" => {}}))
    StartDataMigrationMessage.type = Types::StartDataMigrationMessage
    StartDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigration, name: "DataMigration"))
    StartDataMigrationResponse.type = Types::StartDataMigrationResponse
    StartExtensionPackAssociationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartExtensionPackAssociationMessage.type = Types::StartExtensionPackAssociationMessage
    StartExtensionPackAssociationResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartExtensionPackAssociationResponse.type = Types::StartExtensionPackAssociationResponse
    StartMetadataModelAssessmentMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelAssessmentMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelAssessmentMessage.type = Types::StartMetadataModelAssessmentMessage
    StartMetadataModelAssessmentResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartMetadataModelAssessmentResponse.type = Types::StartMetadataModelAssessmentResponse
    StartMetadataModelConversionMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelConversionMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelConversionMessage.type = Types::StartMetadataModelConversionMessage
    StartMetadataModelConversionResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartMetadataModelConversionResponse.type = Types::StartMetadataModelConversionResponse
    StartMetadataModelCreationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelCreationMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelCreationMessage.add_member(:metadata_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MetadataModelName", traits: {"smithy.api#required" => {}}))
    StartMetadataModelCreationMessage.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataModelProperties, name: "Properties", traits: {"smithy.api#required" => {}}))
    StartMetadataModelCreationMessage.type = Types::StartMetadataModelCreationMessage
    StartMetadataModelCreationResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartMetadataModelCreationResponse.type = Types::StartMetadataModelCreationResponse
    StartMetadataModelExportAsScriptMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportAsScriptMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportAsScriptMessage.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginTypeValue, name: "Origin", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportAsScriptMessage.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FileName"))
    StartMetadataModelExportAsScriptMessage.type = Types::StartMetadataModelExportAsScriptMessage
    StartMetadataModelExportAsScriptResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartMetadataModelExportAsScriptResponse.type = Types::StartMetadataModelExportAsScriptResponse
    StartMetadataModelExportToTargetMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportToTargetMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportToTargetMessage.add_member(:overwrite_extension_pack, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "OverwriteExtensionPack"))
    StartMetadataModelExportToTargetMessage.type = Types::StartMetadataModelExportToTargetMessage
    StartMetadataModelExportToTargetResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartMetadataModelExportToTargetResponse.type = Types::StartMetadataModelExportToTargetResponse
    StartMetadataModelImportMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationProjectIdentifier, name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelImportMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelImportMessage.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginTypeValue, name: "Origin", traits: {"smithy.api#required" => {}}))
    StartMetadataModelImportMessage.add_member(:refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Refresh", traits: {"smithy.api#default" => false}))
    StartMetadataModelImportMessage.type = Types::StartMetadataModelImportMessage
    StartMetadataModelImportResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestIdentifier"))
    StartMetadataModelImportResponse.type = Types::StartMetadataModelImportResponse
    StartRecommendationsRequest.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSettings, name: "Settings", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequest.type = Types::StartRecommendationsRequest
    StartRecommendationsRequestEntry.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseId", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequestEntry.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSettings, name: "Settings", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequestEntry.type = Types::StartRecommendationsRequestEntry
    StartRecommendationsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StartRecommendationsRequestEntry, name: "member"))
    StartReplicationMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    StartReplicationMessage.add_member(:start_replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StartReplicationType", traits: {"smithy.api#required" => {}}))
    StartReplicationMessage.add_member(:premigration_assessment_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PremigrationAssessmentSettings"))
    StartReplicationMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CdcStartTime"))
    StartReplicationMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStartPosition"))
    StartReplicationMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStopPosition"))
    StartReplicationMessage.type = Types::StartReplicationMessage
    StartReplicationMigrationTypeValue.add_member(:reload_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELOAD_TARGET", traits: {"smithy.api#enumValue" => "reload-target"}))
    StartReplicationMigrationTypeValue.add_member(:resume_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUME_PROCESSING", traits: {"smithy.api#enumValue" => "resume-processing"}))
    StartReplicationMigrationTypeValue.add_member(:start_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_REPLICATION", traits: {"smithy.api#enumValue" => "start-replication"}))
    StartReplicationResponse.add_member(:replication, ::Smithy::Schema::Shapes::MemberShape.new(target: Replication, name: "Replication"))
    StartReplicationResponse.type = Types::StartReplicationResponse
    StartReplicationTaskAssessmentMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentMessage.type = Types::StartReplicationTaskAssessmentMessage
    StartReplicationTaskAssessmentResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    StartReplicationTaskAssessmentResponse.type = Types::StartReplicationTaskAssessmentResponse
    StartReplicationTaskAssessmentRunMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_location_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultLocationBucket", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_location_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultLocationFolder"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultEncryptionMode"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultKmsKeyArn"))
    StartReplicationTaskAssessmentRunMessage.add_member(:assessment_run_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssessmentRunName", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:include_only, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeTestList, name: "IncludeOnly"))
    StartReplicationTaskAssessmentRunMessage.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeTestList, name: "Exclude"))
    StartReplicationTaskAssessmentRunMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartReplicationTaskAssessmentRunMessage.type = Types::StartReplicationTaskAssessmentRunMessage
    StartReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTaskAssessmentRun, name: "ReplicationTaskAssessmentRun"))
    StartReplicationTaskAssessmentRunResponse.type = Types::StartReplicationTaskAssessmentRunResponse
    StartReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskMessage.add_member(:start_replication_task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StartReplicationTaskTypeValue, name: "StartReplicationTaskType", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CdcStartTime"))
    StartReplicationTaskMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStartPosition"))
    StartReplicationTaskMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdcStopPosition"))
    StartReplicationTaskMessage.type = Types::StartReplicationTaskMessage
    StartReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    StartReplicationTaskResponse.type = Types::StartReplicationTaskResponse
    StartReplicationTaskTypeValue.add_member(:start_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_REPLICATION", traits: {"smithy.api#enumValue" => "start-replication"}))
    StartReplicationTaskTypeValue.add_member(:resume_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUME_PROCESSING", traits: {"smithy.api#enumValue" => "resume-processing"}))
    StartReplicationTaskTypeValue.add_member(:reload_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELOAD_TARGET", traits: {"smithy.api#enumValue" => "reload-target"}))
    StatementProperties.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Definition", traits: {"smithy.api#required" => {}}))
    StatementProperties.type = Types::StatementProperties
    StopDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    StopDataMigrationMessage.type = Types::StopDataMigrationMessage
    StopDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataMigration, name: "DataMigration"))
    StopDataMigrationResponse.type = Types::StopDataMigrationResponse
    StopReplicationMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    StopReplicationMessage.type = Types::StopReplicationMessage
    StopReplicationResponse.add_member(:replication, ::Smithy::Schema::Shapes::MemberShape.new(target: Replication, name: "Replication"))
    StopReplicationResponse.type = Types::StopReplicationResponse
    StopReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StopReplicationTaskMessage.type = Types::StopReplicationTaskMessage
    StopReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTask, name: "ReplicationTask"))
    StopReplicationTaskResponse.type = Types::StopReplicationTaskResponse
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetStatus"))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SubnetIdentifier"}))
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member", traits: {"smithy.api#xmlName" => "Subnet"}))
    SupportedEndpointType.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    SupportedEndpointType.add_member(:supports_cdc, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsCDC", traits: {"smithy.api#default" => false}))
    SupportedEndpointType.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationEndpointTypeValue, name: "EndpointType"))
    SupportedEndpointType.add_member(:replication_instance_engine_minimum_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceEngineMinimumVersion"))
    SupportedEndpointType.add_member(:engine_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineDisplayName"))
    SupportedEndpointType.type = Types::SupportedEndpointType
    SupportedEndpointTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedEndpointType, name: "member", traits: {"smithy.api#xmlName" => "SupportedEndpointType"}))
    SybaseAseDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    SybaseAseDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    SybaseAseDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    SybaseAseDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DmsSslModeValue, name: "SslMode"))
    SybaseAseDataProviderSettings.add_member(:encrypt_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EncryptPassword"))
    SybaseAseDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    SybaseAseDataProviderSettings.type = Types::SybaseAseDataProviderSettings
    SybaseSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    SybaseSettings.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretString, name: "Password"))
    SybaseSettings.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    SybaseSettings.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerName"))
    SybaseSettings.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    SybaseSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerAccessRoleArn"))
    SybaseSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsManagerSecretId"))
    SybaseSettings.type = Types::SybaseSettings
    TableListToReload.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableToReload, name: "member"))
    TablePreparationMode.add_member(:do_nothing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO_NOTHING", traits: {"smithy.api#enumValue" => "do-nothing"}))
    TablePreparationMode.add_member(:truncate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUNCATE", traits: {"smithy.api#enumValue" => "truncate"}))
    TablePreparationMode.add_member(:drop_tables_on_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP_TABLES_ON_TARGET", traits: {"smithy.api#enumValue" => "drop-tables-on-target"}))
    TableStatistics.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    TableStatistics.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableName"))
    TableStatistics.add_member(:inserts, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Inserts", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:deletes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Deletes", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Updates", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:ddls, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Ddls", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:applied_inserts, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "AppliedInserts"))
    TableStatistics.add_member(:applied_deletes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "AppliedDeletes"))
    TableStatistics.add_member(:applied_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "AppliedUpdates"))
    TableStatistics.add_member(:applied_ddls, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "AppliedDdls"))
    TableStatistics.add_member(:full_load_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FullLoadRows", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:full_load_condtnl_chk_failed_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FullLoadCondtnlChkFailedRows", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:full_load_error_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FullLoadErrorRows", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:full_load_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FullLoadStartTime"))
    TableStatistics.add_member(:full_load_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "FullLoadEndTime"))
    TableStatistics.add_member(:full_load_reloaded, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "FullLoadReloaded"))
    TableStatistics.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastUpdateTime"))
    TableStatistics.add_member(:table_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableState"))
    TableStatistics.add_member(:validation_pending_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ValidationPendingRecords", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:validation_failed_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ValidationFailedRecords", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:validation_suspended_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ValidationSuspendedRecords", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:validation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ValidationState"))
    TableStatistics.add_member(:validation_state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ValidationStateDetails"))
    TableStatistics.add_member(:resync_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResyncState"))
    TableStatistics.add_member(:resync_rows_attempted, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ResyncRowsAttempted"))
    TableStatistics.add_member(:resync_rows_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ResyncRowsSucceeded"))
    TableStatistics.add_member(:resync_rows_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ResyncRowsFailed"))
    TableStatistics.add_member(:resync_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "ResyncProgress"))
    TableStatistics.type = Types::TableStatistics
    TableStatisticsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatistics, name: "member"))
    TableToReload.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#required" => {}}))
    TableToReload.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableName", traits: {"smithy.api#required" => {}}))
    TableToReload.type = Types::TableToReload
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    TargetDataSetting.add_member(:table_preparation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TablePreparationMode, name: "TablePreparationMode"))
    TargetDataSetting.type = Types::TargetDataSetting
    TargetDataSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDataSetting, name: "member"))
    TargetDbType.add_member(:specific_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPECIFIC_DATABASE", traits: {"smithy.api#enumValue" => "specific-database"}))
    TargetDbType.add_member(:multiple_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLE_DATABASES", traits: {"smithy.api#enumValue" => "multiple-databases"}))
    TestConnectionMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    TestConnectionMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    TestConnectionMessage.type = Types::TestConnectionMessage
    TestConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection"))
    TestConnectionResponse.type = Types::TestConnectionResponse
    TimestreamSettings.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    TimestreamSettings.add_member(:memory_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MemoryDuration", traits: {"smithy.api#required" => {}}))
    TimestreamSettings.add_member(:magnetic_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MagneticDuration", traits: {"smithy.api#required" => {}}))
    TimestreamSettings.add_member(:cdc_inserts_and_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CdcInsertsAndUpdates"))
    TimestreamSettings.add_member(:enable_magnetic_store_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableMagneticStoreWrites"))
    TimestreamSettings.type = Types::TimestreamSettings
    TlogAccessMode.add_member(:backup_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BackupOnly", traits: {"smithy.api#enumValue" => "BackupOnly"}))
    TlogAccessMode.add_member(:prefer_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreferBackup", traits: {"smithy.api#enumValue" => "PreferBackup"}))
    TlogAccessMode.add_member(:prefer_tlog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreferTlog", traits: {"smithy.api#enumValue" => "PreferTlog"}))
    TlogAccessMode.add_member(:tlog_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TlogOnly", traits: {"smithy.api#enumValue" => "TlogOnly"}))
    UpdateSubscriptionsToEventBridgeMessage.add_member(:force_move, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ForceMove"))
    UpdateSubscriptionsToEventBridgeMessage.type = Types::UpdateSubscriptionsToEventBridgeMessage
    UpdateSubscriptionsToEventBridgeResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Result"))
    UpdateSubscriptionsToEventBridgeResponse.type = Types::UpdateSubscriptionsToEventBridgeResponse
    UpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UpgradeDependencyFailureFault.type = Types::UpgradeDependencyFailureFault
    VersionStatus.add_member(:up_to_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UP_TO_DATE", traits: {"smithy.api#enumValue" => "UP_TO_DATE"}))
    VersionStatus.add_member(:outdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTDATED", traits: {"smithy.api#enumValue" => "OUTDATED"}))
    VersionStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED", traits: {"smithy.api#enumValue" => "UNSUPPORTED"}))
    VpcSecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"}))
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"}))

    AmazonDMSv20160101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.databasemigrationservice#AmazonDMSv20160101"
      service.name = "AmazonDMSv20160101"
      service.version = "2016-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Database Migration Service", "arnNamespace" => "dms", "cloudFormationName" => "DMS", "cloudTrailEventSource" => "dms.amazonaws.com", "docId" => "dms-2016-01-01", "endpointPrefix" => "dms"}, "aws.auth#sigv4" => {"name" => "dms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Database Migration Service", "smithy.api#xmlNamespace" => {"uri" => "http://dms.amazonaws.com/doc/2016-01-01/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-b"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dms-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://dms.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dms.{Region}.c2s.ic.gov", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dms.{Region}.sc2s.sgov.gov", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dms-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://dms.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://dms.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 16, "nodes" => "/////wAAAAH/////AAAAAAAAAA8AAAADAAAAAQAAAAQF9eEOAAAAAgAAAAUF9eEOAAAAAwAAAAgAAAAGAAAABAAAAAcF9eENAAAABQX14QsF9eEMAAAABAAAAA0AAAAJAAAABgAAAAoF9eEKAAAABwX14QYAAAALAAAACAX14QcAAAAMAAAACQX14QgF9eEJAAAABQAAAA4F9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAQAAAABAX14QIF9eED"}}
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceMessage
        operation.output = AddTagsToResourceResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ApplyPendingMaintenanceActionMessage
        operation.output = ApplyPendingMaintenanceActionResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:batch_start_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#BatchStartRecommendations"
        operation.name = "BatchStartRecommendations"
        operation.input = BatchStartRecommendationsRequest
        operation.output = BatchStartRecommendationsResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:cancel_metadata_model_conversion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CancelMetadataModelConversion"
        operation.name = "CancelMetadataModelConversion"
        operation.input = CancelMetadataModelConversionMessage
        operation.output = CancelMetadataModelConversionResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:cancel_metadata_model_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CancelMetadataModelCreation"
        operation.name = "CancelMetadataModelCreation"
        operation.input = CancelMetadataModelCreationMessage
        operation.output = CancelMetadataModelCreationResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:cancel_replication_task_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CancelReplicationTaskAssessmentRun"
        operation.name = "CancelReplicationTaskAssessmentRun"
        operation.input = CancelReplicationTaskAssessmentRunMessage
        operation.output = CancelReplicationTaskAssessmentRunResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateDataMigration"
        operation.name = "CreateDataMigration"
        operation.input = CreateDataMigrationMessage
        operation.output = CreateDataMigrationResponse
        operation.errors << FailedDependencyFault
        operation.errors << InvalidOperationFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_data_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateDataProvider"
        operation.name = "CreateDataProvider"
        operation.input = CreateDataProviderMessage
        operation.output = CreateDataProviderResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = CreateEndpointMessage
        operation.output = CreateEndpointResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = CreateEventSubscriptionMessage
        operation.output = CreateEventSubscriptionResponse
        operation.errors << KMSAccessDeniedFault
        operation.errors << KMSDisabledFault
        operation.errors << KMSInvalidStateFault
        operation.errors << KMSNotFoundFault
        operation.errors << KMSThrottlingFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.traits = {}
      end)
      service.add_operation(:create_fleet_advisor_collector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateFleetAdvisorCollector"
        operation.name = "CreateFleetAdvisorCollector"
        operation.input = CreateFleetAdvisorCollectorRequest
        operation.output = CreateFleetAdvisorCollectorResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateInstanceProfile"
        operation.name = "CreateInstanceProfile"
        operation.input = CreateInstanceProfileMessage
        operation.output = CreateInstanceProfileResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_migration_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateMigrationProject"
        operation.name = "CreateMigrationProject"
        operation.input = CreateMigrationProjectMessage
        operation.output = CreateMigrationProjectResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_replication_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationConfig"
        operation.name = "CreateReplicationConfig"
        operation.input = CreateReplicationConfigMessage
        operation.output = CreateReplicationConfigResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << InvalidSubnet
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ReplicationSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationInstance"
        operation.name = "CreateReplicationInstance"
        operation.input = CreateReplicationInstanceMessage
        operation.output = CreateReplicationInstanceResponse
        operation.errors << AccessDeniedFault
        operation.errors << InsufficientResourceCapacityFault
        operation.errors << InvalidResourceStateFault
        operation.errors << InvalidSubnet
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ReplicationSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << StorageQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_replication_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationSubnetGroup"
        operation.name = "CreateReplicationSubnetGroup"
        operation.input = CreateReplicationSubnetGroupMessage
        operation.output = CreateReplicationSubnetGroupResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidSubnet
        operation.errors << ReplicationSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationTask"
        operation.name = "CreateReplicationTask"
        operation.input = CreateReplicationTaskMessage
        operation.output = CreateReplicationTaskResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = DeleteCertificateMessage
        operation.output = DeleteCertificateResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionMessage
        operation.output = DeleteConnectionResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteDataMigration"
        operation.name = "DeleteDataMigration"
        operation.input = DeleteDataMigrationMessage
        operation.output = DeleteDataMigrationResponse
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_data_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteDataProvider"
        operation.name = "DeleteDataProvider"
        operation.input = DeleteDataProviderMessage
        operation.output = DeleteDataProviderResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = DeleteEndpointMessage
        operation.output = DeleteEndpointResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = DeleteEventSubscriptionMessage
        operation.output = DeleteEventSubscriptionResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet_advisor_collector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteFleetAdvisorCollector"
        operation.name = "DeleteFleetAdvisorCollector"
        operation.input = DeleteCollectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedFault
        operation.errors << CollectorNotFoundFault
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet_advisor_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteFleetAdvisorDatabases"
        operation.name = "DeleteFleetAdvisorDatabases"
        operation.input = DeleteFleetAdvisorDatabasesRequest
        operation.output = DeleteFleetAdvisorDatabasesResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidOperationFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteInstanceProfile"
        operation.name = "DeleteInstanceProfile"
        operation.input = DeleteInstanceProfileMessage
        operation.output = DeleteInstanceProfileResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_migration_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteMigrationProject"
        operation.name = "DeleteMigrationProject"
        operation.input = DeleteMigrationProjectMessage
        operation.output = DeleteMigrationProjectResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationConfig"
        operation.name = "DeleteReplicationConfig"
        operation.input = DeleteReplicationConfigMessage
        operation.output = DeleteReplicationConfigResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationInstance"
        operation.name = "DeleteReplicationInstance"
        operation.input = DeleteReplicationInstanceMessage
        operation.output = DeleteReplicationInstanceResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationSubnetGroup"
        operation.name = "DeleteReplicationSubnetGroup"
        operation.input = DeleteReplicationSubnetGroupMessage
        operation.output = DeleteReplicationSubnetGroupResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationTask"
        operation.name = "DeleteReplicationTask"
        operation.input = DeleteReplicationTaskMessage
        operation.output = DeleteReplicationTaskResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_task_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationTaskAssessmentRun"
        operation.name = "DeleteReplicationTaskAssessmentRun"
        operation.input = DeleteReplicationTaskAssessmentRunMessage
        operation.output = DeleteReplicationTaskAssessmentRunResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = DescribeAccountAttributesMessage
        operation.output = DescribeAccountAttributesResponse
        operation.traits = {}
      end)
      service.add_operation(:describe_applicable_individual_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeApplicableIndividualAssessments"
        operation.name = "DescribeApplicableIndividualAssessments"
        operation.input = DescribeApplicableIndividualAssessmentsMessage
        operation.output = DescribeApplicableIndividualAssessmentsResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeApplicableIndividualAssessments.new
      end)
      service.add_operation(:describe_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeCertificates"
        operation.name = "DescribeCertificates"
        operation.input = DescribeCertificatesMessage
        operation.output = DescribeCertificatesResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCertificates.new
      end)
      service.add_operation(:describe_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeConnections"
        operation.name = "DescribeConnections"
        operation.input = DescribeConnectionsMessage
        operation.output = DescribeConnectionsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConnections.new
      end)
      service.add_operation(:describe_conversion_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeConversionConfiguration"
        operation.name = "DescribeConversionConfiguration"
        operation.input = DescribeConversionConfigurationMessage
        operation.output = DescribeConversionConfigurationResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_data_migrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeDataMigrations"
        operation.name = "DescribeDataMigrations"
        operation.input = DescribeDataMigrationsMessage
        operation.output = DescribeDataMigrationsResponse
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataMigrations.new
      end)
      service.add_operation(:describe_data_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeDataProviders"
        operation.name = "DescribeDataProviders"
        operation.input = DescribeDataProvidersMessage
        operation.output = DescribeDataProvidersResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataProviders.new
      end)
      service.add_operation(:describe_endpoint_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEndpointSettings"
        operation.name = "DescribeEndpointSettings"
        operation.input = DescribeEndpointSettingsMessage
        operation.output = DescribeEndpointSettingsResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointSettings.new
      end)
      service.add_operation(:describe_endpoint_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEndpointTypes"
        operation.name = "DescribeEndpointTypes"
        operation.input = DescribeEndpointTypesMessage
        operation.output = DescribeEndpointTypesResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointTypes.new
      end)
      service.add_operation(:describe_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = DescribeEndpointsMessage
        operation.output = DescribeEndpointsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeEndpointsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeEndpoints.new
      end)
      service.add_operation(:describe_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEngineVersions"
        operation.name = "DescribeEngineVersions"
        operation.input = DescribeEngineVersionsMessage
        operation.output = DescribeEngineVersionsResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineVersions.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = DescribeEventCategoriesMessage
        operation.output = DescribeEventCategoriesResponse
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = DescribeEventSubscriptionsMessage
        operation.output = DescribeEventSubscriptionsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsMessage
        operation.output = DescribeEventsResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_extension_pack_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeExtensionPackAssociations"
        operation.name = "DescribeExtensionPackAssociations"
        operation.input = DescribeExtensionPackAssociationsMessage
        operation.output = DescribeExtensionPackAssociationsResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeExtensionPackAssociations.new
      end)
      service.add_operation(:describe_fleet_advisor_collectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorCollectors"
        operation.name = "DescribeFleetAdvisorCollectors"
        operation.input = DescribeFleetAdvisorCollectorsRequest
        operation.output = DescribeFleetAdvisorCollectorsResponse
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorCollectors.new
      end)
      service.add_operation(:describe_fleet_advisor_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorDatabases"
        operation.name = "DescribeFleetAdvisorDatabases"
        operation.input = DescribeFleetAdvisorDatabasesRequest
        operation.output = DescribeFleetAdvisorDatabasesResponse
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorDatabases.new
      end)
      service.add_operation(:describe_fleet_advisor_lsa_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorLsaAnalysis"
        operation.name = "DescribeFleetAdvisorLsaAnalysis"
        operation.input = DescribeFleetAdvisorLsaAnalysisRequest
        operation.output = DescribeFleetAdvisorLsaAnalysisResponse
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorLsaAnalysis.new
      end)
      service.add_operation(:describe_fleet_advisor_schema_object_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemaObjectSummary"
        operation.name = "DescribeFleetAdvisorSchemaObjectSummary"
        operation.input = DescribeFleetAdvisorSchemaObjectSummaryRequest
        operation.output = DescribeFleetAdvisorSchemaObjectSummaryResponse
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorSchemaObjectSummary.new
      end)
      service.add_operation(:describe_fleet_advisor_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemas"
        operation.name = "DescribeFleetAdvisorSchemas"
        operation.input = DescribeFleetAdvisorSchemasRequest
        operation.output = DescribeFleetAdvisorSchemasResponse
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorSchemas.new
      end)
      service.add_operation(:describe_instance_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeInstanceProfiles"
        operation.name = "DescribeInstanceProfiles"
        operation.input = DescribeInstanceProfilesMessage
        operation.output = DescribeInstanceProfilesResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstanceProfiles.new
      end)
      service.add_operation(:describe_metadata_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModel"
        operation.name = "DescribeMetadataModel"
        operation.input = DescribeMetadataModelMessage
        operation.output = DescribeMetadataModelResponse
        operation.errors << AccessDeniedFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_metadata_model_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelAssessments"
        operation.name = "DescribeMetadataModelAssessments"
        operation.input = DescribeMetadataModelAssessmentsMessage
        operation.output = DescribeMetadataModelAssessmentsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelAssessments.new
      end)
      service.add_operation(:describe_metadata_model_children, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelChildren"
        operation.name = "DescribeMetadataModelChildren"
        operation.input = DescribeMetadataModelChildrenMessage
        operation.output = DescribeMetadataModelChildrenResponse
        operation.errors << AccessDeniedFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelChildren.new
      end)
      service.add_operation(:describe_metadata_model_conversions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelConversions"
        operation.name = "DescribeMetadataModelConversions"
        operation.input = DescribeMetadataModelConversionsMessage
        operation.output = DescribeMetadataModelConversionsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelConversions.new
      end)
      service.add_operation(:describe_metadata_model_creations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelCreations"
        operation.name = "DescribeMetadataModelCreations"
        operation.input = DescribeMetadataModelCreationsMessage
        operation.output = DescribeMetadataModelCreationsResponse
        operation.errors << AccessDeniedFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelCreations.new
      end)
      service.add_operation(:describe_metadata_model_exports_as_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsAsScript"
        operation.name = "DescribeMetadataModelExportsAsScript"
        operation.input = DescribeMetadataModelExportsAsScriptMessage
        operation.output = DescribeMetadataModelExportsAsScriptResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelExportsAsScript.new
      end)
      service.add_operation(:describe_metadata_model_exports_to_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsToTarget"
        operation.name = "DescribeMetadataModelExportsToTarget"
        operation.input = DescribeMetadataModelExportsToTargetMessage
        operation.output = DescribeMetadataModelExportsToTargetResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelExportsToTarget.new
      end)
      service.add_operation(:describe_metadata_model_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelImports"
        operation.name = "DescribeMetadataModelImports"
        operation.input = DescribeMetadataModelImportsMessage
        operation.output = DescribeMetadataModelImportsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelImports.new
      end)
      service.add_operation(:describe_migration_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMigrationProjects"
        operation.name = "DescribeMigrationProjects"
        operation.input = DescribeMigrationProjectsMessage
        operation.output = DescribeMigrationProjectsResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMigrationProjects.new
      end)
      service.add_operation(:describe_orderable_replication_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeOrderableReplicationInstances"
        operation.name = "DescribeOrderableReplicationInstances"
        operation.input = DescribeOrderableReplicationInstancesMessage
        operation.output = DescribeOrderableReplicationInstancesResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableReplicationInstances.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = DescribePendingMaintenanceActionsMessage
        operation.output = DescribePendingMaintenanceActionsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:describe_recommendation_limitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeRecommendationLimitations"
        operation.name = "DescribeRecommendationLimitations"
        operation.input = DescribeRecommendationLimitationsRequest
        operation.output = DescribeRecommendationLimitationsResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRecommendationLimitations.new
      end)
      service.add_operation(:describe_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeRecommendations"
        operation.name = "DescribeRecommendations"
        operation.input = DescribeRecommendationsRequest
        operation.output = DescribeRecommendationsResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRecommendations.new
      end)
      service.add_operation(:describe_refresh_schemas_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeRefreshSchemasStatus"
        operation.name = "DescribeRefreshSchemasStatus"
        operation.input = DescribeRefreshSchemasStatusMessage
        operation.output = DescribeRefreshSchemasStatusResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_replication_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationConfigs"
        operation.name = "DescribeReplicationConfigs"
        operation.input = DescribeReplicationConfigsMessage
        operation.output = DescribeReplicationConfigsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationConfigs.new
      end)
      service.add_operation(:describe_replication_instance_task_logs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationInstanceTaskLogs"
        operation.name = "DescribeReplicationInstanceTaskLogs"
        operation.input = DescribeReplicationInstanceTaskLogsMessage
        operation.output = DescribeReplicationInstanceTaskLogsResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationInstanceTaskLogs.new
      end)
      service.add_operation(:describe_replication_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationInstances"
        operation.name = "DescribeReplicationInstances"
        operation.input = DescribeReplicationInstancesMessage
        operation.output = DescribeReplicationInstancesResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationInstances.new
      end)
      service.add_operation(:describe_replication_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationSubnetGroups"
        operation.name = "DescribeReplicationSubnetGroups"
        operation.input = DescribeReplicationSubnetGroupsMessage
        operation.output = DescribeReplicationSubnetGroupsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationSubnetGroups.new
      end)
      service.add_operation(:describe_replication_table_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTableStatistics"
        operation.name = "DescribeReplicationTableStatistics"
        operation.input = DescribeReplicationTableStatisticsMessage
        operation.output = DescribeReplicationTableStatisticsResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTableStatistics.new
      end)
      service.add_operation(:describe_replication_task_assessment_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentResults"
        operation.name = "DescribeReplicationTaskAssessmentResults"
        operation.input = DescribeReplicationTaskAssessmentResultsMessage
        operation.output = DescribeReplicationTaskAssessmentResultsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTaskAssessmentResults.new
      end)
      service.add_operation(:describe_replication_task_assessment_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentRuns"
        operation.name = "DescribeReplicationTaskAssessmentRuns"
        operation.input = DescribeReplicationTaskAssessmentRunsMessage
        operation.output = DescribeReplicationTaskAssessmentRunsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTaskAssessmentRuns.new
      end)
      service.add_operation(:describe_replication_task_individual_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTaskIndividualAssessments"
        operation.name = "DescribeReplicationTaskIndividualAssessments"
        operation.input = DescribeReplicationTaskIndividualAssessmentsMessage
        operation.output = DescribeReplicationTaskIndividualAssessmentsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTaskIndividualAssessments.new
      end)
      service.add_operation(:describe_replication_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTasks"
        operation.name = "DescribeReplicationTasks"
        operation.input = DescribeReplicationTasksMessage
        operation.output = DescribeReplicationTasksResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTasks.new
      end)
      service.add_operation(:describe_replications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplications"
        operation.name = "DescribeReplications"
        operation.input = DescribeReplicationsMessage
        operation.output = DescribeReplicationsResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplications.new
      end)
      service.add_operation(:describe_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeSchemas"
        operation.name = "DescribeSchemas"
        operation.input = DescribeSchemasMessage
        operation.output = DescribeSchemasResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSchemas.new
      end)
      service.add_operation(:describe_table_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeTableStatistics"
        operation.name = "DescribeTableStatistics"
        operation.input = DescribeTableStatisticsMessage
        operation.output = DescribeTableStatisticsResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTableStatistics.new
      end)
      service.add_operation(:export_metadata_model_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ExportMetadataModelAssessment"
        operation.name = "ExportMetadataModelAssessment"
        operation.input = ExportMetadataModelAssessmentMessage
        operation.output = ExportMetadataModelAssessmentResponse
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:get_target_selection_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#GetTargetSelectionRules"
        operation.name = "GetTargetSelectionRules"
        operation.input = GetTargetSelectionRulesMessage
        operation.output = GetTargetSelectionRulesResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:import_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ImportCertificate"
        operation.name = "ImportCertificate"
        operation.input = ImportCertificateMessage
        operation.output = ImportCertificateResponse
        operation.errors << InvalidCertificateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceMessage
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_conversion_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyConversionConfiguration"
        operation.name = "ModifyConversionConfiguration"
        operation.input = ModifyConversionConfigurationMessage
        operation.output = ModifyConversionConfigurationResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyDataMigration"
        operation.name = "ModifyDataMigration"
        operation.input = ModifyDataMigrationMessage
        operation.output = ModifyDataMigrationResponse
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_data_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyDataProvider"
        operation.name = "ModifyDataProvider"
        operation.input = ModifyDataProviderMessage
        operation.output = ModifyDataProviderResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyEndpoint"
        operation.name = "ModifyEndpoint"
        operation.input = ModifyEndpointMessage
        operation.output = ModifyEndpointResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ModifyEventSubscriptionMessage
        operation.output = ModifyEventSubscriptionResponse
        operation.errors << AccessDeniedFault
        operation.errors << KMSAccessDeniedFault
        operation.errors << KMSDisabledFault
        operation.errors << KMSInvalidStateFault
        operation.errors << KMSNotFoundFault
        operation.errors << KMSThrottlingFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyInstanceProfile"
        operation.name = "ModifyInstanceProfile"
        operation.input = ModifyInstanceProfileMessage
        operation.output = ModifyInstanceProfileResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceNotFoundFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_migration_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyMigrationProject"
        operation.name = "ModifyMigrationProject"
        operation.input = ModifyMigrationProjectMessage
        operation.output = ModifyMigrationProjectResponse
        operation.errors << AccessDeniedFault
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationConfig"
        operation.name = "ModifyReplicationConfig"
        operation.input = ModifyReplicationConfigMessage
        operation.output = ModifyReplicationConfigResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << InvalidSubnet
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ReplicationSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationInstance"
        operation.name = "ModifyReplicationInstance"
        operation.input = ModifyReplicationInstanceMessage
        operation.output = ModifyReplicationInstanceResponse
        operation.errors << AccessDeniedFault
        operation.errors << InsufficientResourceCapacityFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << UpgradeDependencyFailureFault
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationSubnetGroup"
        operation.name = "ModifyReplicationSubnetGroup"
        operation.input = ModifyReplicationSubnetGroupMessage
        operation.output = ModifyReplicationSubnetGroupResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidSubnet
        operation.errors << ReplicationSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << SubnetAlreadyInUse
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationTask"
        operation.name = "ModifyReplicationTask"
        operation.input = ModifyReplicationTaskMessage
        operation.output = ModifyReplicationTaskResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:move_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#MoveReplicationTask"
        operation.name = "MoveReplicationTask"
        operation.input = MoveReplicationTaskMessage
        operation.output = MoveReplicationTaskResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RebootReplicationInstance"
        operation.name = "RebootReplicationInstance"
        operation.input = RebootReplicationInstanceMessage
        operation.output = RebootReplicationInstanceResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:refresh_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RefreshSchemas"
        operation.name = "RefreshSchemas"
        operation.input = RefreshSchemasMessage
        operation.output = RefreshSchemasResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:reload_replication_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ReloadReplicationTables"
        operation.name = "ReloadReplicationTables"
        operation.input = ReloadReplicationTablesMessage
        operation.output = ReloadReplicationTablesResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:reload_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ReloadTables"
        operation.name = "ReloadTables"
        operation.input = ReloadTablesMessage
        operation.output = ReloadTablesResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceMessage
        operation.output = RemoveTagsFromResourceResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:run_fleet_advisor_lsa_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RunFleetAdvisorLsaAnalysis"
        operation.name = "RunFleetAdvisorLsaAnalysis"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = RunFleetAdvisorLsaAnalysisResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartDataMigration"
        operation.name = "StartDataMigration"
        operation.input = StartDataMigrationMessage
        operation.output = StartDataMigrationResponse
        operation.errors << FailedDependencyFault
        operation.errors << InvalidOperationFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:start_extension_pack_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartExtensionPackAssociation"
        operation.name = "StartExtensionPackAssociation"
        operation.input = StartExtensionPackAssociationMessage
        operation.output = StartExtensionPackAssociationResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelAssessment"
        operation.name = "StartMetadataModelAssessment"
        operation.input = StartMetadataModelAssessmentMessage
        operation.output = StartMetadataModelAssessmentResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_conversion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelConversion"
        operation.name = "StartMetadataModelConversion"
        operation.input = StartMetadataModelConversionMessage
        operation.output = StartMetadataModelConversionResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelCreation"
        operation.name = "StartMetadataModelCreation"
        operation.input = StartMetadataModelCreationMessage
        operation.output = StartMetadataModelCreationResponse
        operation.errors << AccessDeniedFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_export_as_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelExportAsScript"
        operation.name = "StartMetadataModelExportAsScript"
        operation.input = StartMetadataModelExportAsScriptMessage
        operation.output = StartMetadataModelExportAsScriptResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_export_to_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelExportToTarget"
        operation.name = "StartMetadataModelExportToTarget"
        operation.input = StartMetadataModelExportToTargetMessage
        operation.output = StartMetadataModelExportToTargetResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelImport"
        operation.name = "StartMetadataModelImport"
        operation.input = StartMetadataModelImportMessage
        operation.output = StartMetadataModelImportResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartRecommendations"
        operation.name = "StartRecommendations"
        operation.input = StartRecommendationsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplication"
        operation.name = "StartReplication"
        operation.input = StartReplicationMessage
        operation.output = StartReplicationResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplicationTask"
        operation.name = "StartReplicationTask"
        operation.input = StartReplicationTaskMessage
        operation.output = StartReplicationTaskResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_replication_task_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessment"
        operation.name = "StartReplicationTaskAssessment"
        operation.input = StartReplicationTaskAssessmentMessage
        operation.output = StartReplicationTaskAssessmentResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_replication_task_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessmentRun"
        operation.name = "StartReplicationTaskAssessmentRun"
        operation.input = StartReplicationTaskAssessmentRunMessage
        operation.output = StartReplicationTaskAssessmentRunResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSAccessDeniedFault
        operation.errors << KMSDisabledFault
        operation.errors << KMSFault
        operation.errors << KMSInvalidStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << KMSNotFoundFault
        operation.errors << ResourceAlreadyExistsFault
        operation.errors << ResourceNotFoundFault
        operation.errors << S3AccessDeniedFault
        operation.errors << S3ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:stop_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StopDataMigration"
        operation.name = "StopDataMigration"
        operation.input = StopDataMigrationMessage
        operation.output = StopDataMigrationResponse
        operation.errors << FailedDependencyFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:stop_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StopReplication"
        operation.name = "StopReplication"
        operation.input = StopReplicationMessage
        operation.output = StopReplicationResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:stop_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StopReplicationTask"
        operation.name = "StopReplicationTask"
        operation.input = StopReplicationTaskMessage
        operation.output = StopReplicationTaskResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:test_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#TestConnection"
        operation.name = "TestConnection"
        operation.input = TestConnectionMessage
        operation.output = TestConnectionResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceNotFoundFault
        operation.errors << ResourceQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:update_subscriptions_to_event_bridge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#UpdateSubscriptionsToEventBridge"
        operation.name = "UpdateSubscriptionsToEventBridge"
        operation.input = UpdateSubscriptionsToEventBridgeMessage
        operation.output = UpdateSubscriptionsToEventBridgeResponse
        operation.errors << AccessDeniedFault
        operation.errors << InvalidResourceStateFault
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

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
    DescribeMetadataModelConversionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelConversionsMessage", name: "DescribeMetadataModelConversionsMessage")
    DescribeMetadataModelConversionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelConversionsResponse", name: "DescribeMetadataModelConversionsResponse")
    DescribeMetadataModelExportsAsScriptMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsAsScriptMessage", name: "DescribeMetadataModelExportsAsScriptMessage")
    DescribeMetadataModelExportsAsScriptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsAsScriptResponse", name: "DescribeMetadataModelExportsAsScriptResponse")
    DescribeMetadataModelExportsToTargetMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsToTargetMessage", name: "DescribeMetadataModelExportsToTargetMessage")
    DescribeMetadataModelExportsToTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsToTargetResponse", name: "DescribeMetadataModelExportsToTargetResponse")
    DescribeMetadataModelImportsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelImportsMessage", name: "DescribeMetadataModelImportsMessage")
    DescribeMetadataModelImportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.databasemigrationservice#DescribeMetadataModelImportsResponse", name: "DescribeMetadataModelImportsResponse")
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

    AccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedFault.type = Types::AccessDeniedFault
    AccountQuota.add_member(:account_quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AccountQuotaName"))
    AccountQuota.add_member(:used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Used", traits: {"smithy.api#default" => 0}))
    AccountQuota.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Max", traits: {"smithy.api#default" => 0}))
    AccountQuota.type = Types::AccountQuota
    AccountQuotaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountQuota, traits: {"smithy.api#xmlName" => "AccountQuota"})
    AddTagsToResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    AddTagsToResourceResponse.type = Types::AddTagsToResourceResponse
    ApplyPendingMaintenanceActionMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ApplyAction", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "OptInType", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.type = Types::ApplyPendingMaintenanceActionMessage
    ApplyPendingMaintenanceActionResponse.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResponse.type = Types::ApplyPendingMaintenanceActionResponse
    ArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AssessmentReportType.add_member(:pdf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PDF", traits: {"smithy.api#enumValue" => "pdf"}))
    AssessmentReportType.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "csv"}))
    AssessmentReportTypesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportType)
    AuthMechanismValue.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    AuthMechanismValue.add_member(:mongodb_cr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONGODB_CR", traits: {"smithy.api#enumValue" => "mongodb_cr"}))
    AuthMechanismValue.add_member(:scram_sha_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCRAM_SHA_1", traits: {"smithy.api#enumValue" => "scram_sha_1"}))
    AuthTypeValue.add_member(:no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO", traits: {"smithy.api#enumValue" => "no"}))
    AuthTypeValue.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZonesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AvailableUpgradesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    BatchStartRecommendationsErrorEntry.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    BatchStartRecommendationsErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchStartRecommendationsErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    BatchStartRecommendationsErrorEntry.type = Types::BatchStartRecommendationsErrorEntry
    BatchStartRecommendationsErrorEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartRecommendationsErrorEntry)
    BatchStartRecommendationsRequest.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommendationsRequestEntryList, location_name: "Data"))
    BatchStartRecommendationsRequest.type = Types::BatchStartRecommendationsRequest
    BatchStartRecommendationsResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartRecommendationsErrorEntryList, location_name: "ErrorEntries"))
    BatchStartRecommendationsResponse.type = Types::BatchStartRecommendationsResponse
    CancelReplicationTaskAssessmentRunMessage.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskAssessmentRunArn", traits: {"smithy.api#required" => {}}))
    CancelReplicationTaskAssessmentRunMessage.type = Types::CancelReplicationTaskAssessmentRunMessage
    CancelReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun, location_name: "ReplicationTaskAssessmentRun"))
    CancelReplicationTaskAssessmentRunResponse.type = Types::CancelReplicationTaskAssessmentRunResponse
    CannedAclForObjectsValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    CannedAclForObjectsValue.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "private"}))
    CannedAclForObjectsValue.add_member(:public_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "public-read"}))
    CannedAclForObjectsValue.add_member(:public_read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_READ_WRITE", traits: {"smithy.api#enumValue" => "public-read-write"}))
    CannedAclForObjectsValue.add_member(:authenticated_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATED_READ", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    CannedAclForObjectsValue.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_EXEC_READ", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    CannedAclForObjectsValue.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUCKET_OWNER_READ", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    CannedAclForObjectsValue.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUCKET_OWNER_FULL_CONTROL", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    Certificate.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CertificateCreationDate"))
    Certificate.add_member(:certificate_pem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificatePem"))
    Certificate.add_member(:certificate_wallet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateWallet, location_name: "CertificateWallet"))
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Certificate.add_member(:certificate_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateOwner"))
    Certificate.add_member(:valid_from_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidFromDate"))
    Certificate.add_member(:valid_to_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidToDate"))
    Certificate.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SigningAlgorithm"))
    Certificate.add_member(:key_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "KeyLength"))
    Certificate.type = Types::Certificate
    CertificateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, traits: {"smithy.api#xmlName" => "Certificate"})
    CharLengthSemantics.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    CharLengthSemantics.add_member(:char, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHAR", traits: {"smithy.api#enumValue" => "char"}))
    CharLengthSemantics.add_member(:byte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTE", traits: {"smithy.api#enumValue" => "byte"}))
    CollectorHealthCheck.add_member(:collector_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorStatus, location_name: "CollectorStatus"))
    CollectorHealthCheck.add_member(:local_collector_s3_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "LocalCollectorS3Access"))
    CollectorHealthCheck.add_member(:web_collector_s3_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WebCollectorS3Access"))
    CollectorHealthCheck.add_member(:web_collector_granted_role_based_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WebCollectorGrantedRoleBasedAccess"))
    CollectorHealthCheck.type = Types::CollectorHealthCheck
    CollectorNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    CollectorNotFoundFault.type = Types::CollectorNotFoundFault
    CollectorResponse.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId"))
    CollectorResponse.add_member(:collector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorName"))
    CollectorResponse.add_member(:collector_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorVersion"))
    CollectorResponse.add_member(:version_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: "VersionStatus"))
    CollectorResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CollectorResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    CollectorResponse.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CollectorResponse.add_member(:collector_health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorHealthCheck, location_name: "CollectorHealthCheck"))
    CollectorResponse.add_member(:last_data_received, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastDataReceived"))
    CollectorResponse.add_member(:registered_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RegisteredDate"))
    CollectorResponse.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CreatedDate"))
    CollectorResponse.add_member(:modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ModifiedDate"))
    CollectorResponse.add_member(:inventory_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryData, location_name: "InventoryData"))
    CollectorResponse.type = Types::CollectorResponse
    CollectorResponses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorResponse)
    CollectorShortInfoResponse.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId"))
    CollectorShortInfoResponse.add_member(:collector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorName"))
    CollectorShortInfoResponse.type = Types::CollectorShortInfoResponse
    CollectorStatus.add_member(:unregistered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNREGISTERED", traits: {"smithy.api#enumValue" => "UNREGISTERED"}))
    CollectorStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CollectorsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorShortInfoResponse)
    CompressionTypeValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    CompressionTypeValue.add_member(:gzip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GZIP", traits: {"smithy.api#enumValue" => "gzip"}))
    ComputeConfig.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ComputeConfig.add_member(:dns_name_servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DnsNameServers"))
    ComputeConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ComputeConfig.add_member(:max_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxCapacityUnits"))
    ComputeConfig.add_member(:min_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinCapacityUnits"))
    ComputeConfig.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ComputeConfig.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ComputeConfig.add_member(:replication_subnet_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupId"))
    ComputeConfig.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    ComputeConfig.type = Types::ComputeConfig
    Connection.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    Connection.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    Connection.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Connection.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    Connection.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    Connection.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    Connection.type = Types::Connection
    ConnectionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, traits: {"smithy.api#xmlName" => "Connection"})
    CreateDataMigrationMessage.add_member(:data_migration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationName"))
    CreateDataMigrationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    CreateDataMigrationMessage.add_member(:data_migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "DataMigrationType", traits: {"smithy.api#required" => {}}))
    CreateDataMigrationMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateDataMigrationMessage.add_member(:enable_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCloudwatchLogs"))
    CreateDataMigrationMessage.add_member(:source_data_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDataSettings, location_name: "SourceDataSettings"))
    CreateDataMigrationMessage.add_member(:target_data_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDataSettings, location_name: "TargetDataSettings"))
    CreateDataMigrationMessage.add_member(:number_of_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfJobs"))
    CreateDataMigrationMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataMigrationMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "SelectionRules"))
    CreateDataMigrationMessage.type = Types::CreateDataMigrationMessage
    CreateDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    CreateDataMigrationResponse.type = Types::CreateDataMigrationResponse
    CreateDataProviderMessage.add_member(:data_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    CreateDataProviderMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateDataProviderMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Engine", traits: {"smithy.api#required" => {}}))
    CreateDataProviderMessage.add_member(:virtual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Virtual"))
    CreateDataProviderMessage.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderSettings, location_name: "Settings", traits: {"smithy.api#required" => {}}))
    CreateDataProviderMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataProviderMessage.type = Types::CreateDataProviderMessage
    CreateDataProviderResponse.add_member(:data_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProvider, location_name: "DataProvider"))
    CreateDataProviderResponse.type = Types::CreateDataProviderResponse
    CreateEndpointMessage.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier", traits: {"smithy.api#required" => {}}))
    CreateEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType", traits: {"smithy.api#required" => {}}))
    CreateEndpointMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName", traits: {"smithy.api#required" => {}}))
    CreateEndpointMessage.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    CreateEndpointMessage.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    CreateEndpointMessage.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    CreateEndpointMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateEndpointMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateEndpointMessage.add_member(:extra_connection_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    CreateEndpointMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateEndpointMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointMessage.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    CreateEndpointMessage.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    CreateEndpointMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CreateEndpointMessage.add_member(:external_table_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    CreateEndpointMessage.add_member(:dynamo_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    CreateEndpointMessage.add_member(:s3_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    CreateEndpointMessage.add_member(:dms_transfer_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    CreateEndpointMessage.add_member(:mongo_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    CreateEndpointMessage.add_member(:kinesis_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisSettings, location_name: "KinesisSettings"))
    CreateEndpointMessage.add_member(:kafka_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaSettings, location_name: "KafkaSettings"))
    CreateEndpointMessage.add_member(:elasticsearch_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchSettings, location_name: "ElasticsearchSettings"))
    CreateEndpointMessage.add_member(:neptune_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneSettings, location_name: "NeptuneSettings"))
    CreateEndpointMessage.add_member(:redshift_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSettings, location_name: "RedshiftSettings"))
    CreateEndpointMessage.add_member(:postgre_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostgreSQLSettings, location_name: "PostgreSQLSettings"))
    CreateEndpointMessage.add_member(:my_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MySQLSettings, location_name: "MySQLSettings"))
    CreateEndpointMessage.add_member(:oracle_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OracleSettings, location_name: "OracleSettings"))
    CreateEndpointMessage.add_member(:sybase_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SybaseSettings, location_name: "SybaseSettings"))
    CreateEndpointMessage.add_member(:microsoft_sql_server_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftSQLServerSettings, location_name: "MicrosoftSQLServerSettings"))
    CreateEndpointMessage.add_member(:ibm_db2_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IBMDb2Settings, location_name: "IBMDb2Settings"))
    CreateEndpointMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateEndpointMessage.add_member(:doc_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocDbSettings, location_name: "DocDbSettings"))
    CreateEndpointMessage.add_member(:redis_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedisSettings, location_name: "RedisSettings"))
    CreateEndpointMessage.add_member(:gcp_my_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GcpMySQLSettings, location_name: "GcpMySQLSettings"))
    CreateEndpointMessage.add_member(:timestream_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamSettings, location_name: "TimestreamSettings"))
    CreateEndpointMessage.type = Types::CreateEndpointMessage
    CreateEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    CreateEndpointResponse.type = Types::CreateEndpointResponse
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName", traits: {"smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn", traits: {"smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResponse.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    CreateEventSubscriptionResponse.type = Types::CreateEventSubscriptionResponse
    CreateFleetAdvisorCollectorRequest.add_member(:collector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorName", traits: {"smithy.api#required" => {}}))
    CreateFleetAdvisorCollectorRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateFleetAdvisorCollectorRequest.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateFleetAdvisorCollectorRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    CreateFleetAdvisorCollectorRequest.type = Types::CreateFleetAdvisorCollectorRequest
    CreateFleetAdvisorCollectorResponse.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId"))
    CreateFleetAdvisorCollectorResponse.add_member(:collector_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorName"))
    CreateFleetAdvisorCollectorResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateFleetAdvisorCollectorResponse.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CreateFleetAdvisorCollectorResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    CreateFleetAdvisorCollectorResponse.type = Types::CreateFleetAdvisorCollectorResponse
    CreateInstanceProfileMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateInstanceProfileMessage.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    CreateInstanceProfileMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateInstanceProfileMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateInstanceProfileMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateInstanceProfileMessage.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    CreateInstanceProfileMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateInstanceProfileMessage.add_member(:subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupIdentifier"))
    CreateInstanceProfileMessage.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroups"))
    CreateInstanceProfileMessage.type = Types::CreateInstanceProfileMessage
    CreateInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: "InstanceProfile"))
    CreateInstanceProfileResponse.type = Types::CreateInstanceProfileResponse
    CreateMigrationProjectMessage.add_member(:migration_project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectName"))
    CreateMigrationProjectMessage.add_member(:source_data_provider_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, location_name: "SourceDataProviderDescriptors", traits: {"smithy.api#required" => {}}))
    CreateMigrationProjectMessage.add_member(:target_data_provider_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, location_name: "TargetDataProviderDescriptors", traits: {"smithy.api#required" => {}}))
    CreateMigrationProjectMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileIdentifier", traits: {"smithy.api#required" => {}}))
    CreateMigrationProjectMessage.add_member(:transformation_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TransformationRules"))
    CreateMigrationProjectMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateMigrationProjectMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMigrationProjectMessage.add_member(:schema_conversion_application_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SCApplicationAttributes, location_name: "SchemaConversionApplicationAttributes"))
    CreateMigrationProjectMessage.type = Types::CreateMigrationProjectMessage
    CreateMigrationProjectResponse.add_member(:migration_project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProject, location_name: "MigrationProject"))
    CreateMigrationProjectResponse.type = Types::CreateMigrationProjectResponse
    CreateReplicationConfigMessage.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfig, location_name: "ComputeConfig", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:replication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableMappings", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigMessage.add_member(:replication_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSettings"))
    CreateReplicationConfigMessage.add_member(:supplemental_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SupplementalSettings"))
    CreateReplicationConfigMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateReplicationConfigMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationConfigMessage.type = Types::CreateReplicationConfigMessage
    CreateReplicationConfigResponse.add_member(:replication_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    CreateReplicationConfigResponse.type = Types::CreateReplicationConfigResponse
    CreateReplicationInstanceMessage.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateReplicationInstanceMessage.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass", traits: {"smithy.api#required" => {}}))
    CreateReplicationInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateReplicationInstanceMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateReplicationInstanceMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier"))
    CreateReplicationInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateReplicationInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateReplicationInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateReplicationInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationInstanceMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateReplicationInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateReplicationInstanceMessage.add_member(:dns_name_servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DnsNameServers"))
    CreateReplicationInstanceMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateReplicationInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateReplicationInstanceMessage.add_member(:kerberos_authentication_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosAuthenticationSettings, location_name: "KerberosAuthenticationSettings"))
    CreateReplicationInstanceMessage.type = Types::CreateReplicationInstanceMessage
    CreateReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    CreateReplicationInstanceResponse.type = Types::CreateReplicationInstanceResponse
    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription", traits: {"smithy.api#required" => {}}))
    CreateReplicationSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    CreateReplicationSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationSubnetGroupMessage.type = Types::CreateReplicationSubnetGroupMessage
    CreateReplicationSubnetGroupResponse.add_member(:replication_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    CreateReplicationSubnetGroupResponse.type = Types::CreateReplicationSubnetGroupResponse
    CreateReplicationTaskMessage.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableMappings", traits: {"smithy.api#required" => {}}))
    CreateReplicationTaskMessage.add_member(:replication_task_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    CreateReplicationTaskMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    CreateReplicationTaskMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    CreateReplicationTaskMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    CreateReplicationTaskMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationTaskMessage.add_member(:task_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TaskData"))
    CreateReplicationTaskMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    CreateReplicationTaskMessage.type = Types::CreateReplicationTaskMessage
    CreateReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    CreateReplicationTaskResponse.type = Types::CreateReplicationTaskResponse
    DataFormatValue.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "csv"}))
    DataFormatValue.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "parquet"}))
    DataMigration.add_member(:data_migration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationName"))
    DataMigration.add_member(:data_migration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationArn"))
    DataMigration.add_member(:data_migration_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataMigrationCreateTime"))
    DataMigration.add_member(:data_migration_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataMigrationStartTime"))
    DataMigration.add_member(:data_migration_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataMigrationEndTime"))
    DataMigration.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    DataMigration.add_member(:migration_project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectArn"))
    DataMigration.add_member(:data_migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "DataMigrationType"))
    DataMigration.add_member(:data_migration_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigrationSettings, location_name: "DataMigrationSettings"))
    DataMigration.add_member(:source_data_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDataSettings, location_name: "SourceDataSettings"))
    DataMigration.add_member(:target_data_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDataSettings, location_name: "TargetDataSettings"))
    DataMigration.add_member(:data_migration_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigrationStatistics, location_name: "DataMigrationStatistics"))
    DataMigration.add_member(:data_migration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationStatus"))
    DataMigration.add_member(:public_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicIpAddressList, location_name: "PublicIpAddresses"))
    DataMigration.add_member(:data_migration_cidr_blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigrationCidrBlock, location_name: "DataMigrationCidrBlocks"))
    DataMigration.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    DataMigration.add_member(:stop_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    DataMigration.type = Types::DataMigration
    DataMigrationCidrBlock.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataMigrationSettings.add_member(:number_of_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfJobs"))
    DataMigrationSettings.add_member(:cloudwatch_logs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CloudwatchLogsEnabled"))
    DataMigrationSettings.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "SelectionRules"))
    DataMigrationSettings.type = Types::DataMigrationSettings
    DataMigrationStatistics.add_member(:tables_loaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:elapsed_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:tables_loading, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:full_load_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadPercentage", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:cdc_latency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "CDCLatency", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:tables_queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:tables_errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored", traits: {"smithy.api#default" => 0}))
    DataMigrationStatistics.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartTime"))
    DataMigrationStatistics.add_member(:stop_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StopTime"))
    DataMigrationStatistics.type = Types::DataMigrationStatistics
    DataMigrations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigration)
    DataProvider.add_member(:data_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    DataProvider.add_member(:data_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderArn"))
    DataProvider.add_member(:data_provider_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "DataProviderCreationTime"))
    DataProvider.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DataProvider.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DataProvider.add_member(:virtual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Virtual"))
    DataProvider.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderSettings, location_name: "Settings"))
    DataProvider.type = Types::DataProvider
    DataProviderDescriptor.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    DataProviderDescriptor.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    DataProviderDescriptor.add_member(:data_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    DataProviderDescriptor.add_member(:data_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderArn"))
    DataProviderDescriptor.type = Types::DataProviderDescriptor
    DataProviderDescriptorDefinition.add_member(:data_provider_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderIdentifier", traits: {"smithy.api#required" => {}}))
    DataProviderDescriptorDefinition.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    DataProviderDescriptorDefinition.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    DataProviderDescriptorDefinition.type = Types::DataProviderDescriptorDefinition
    DataProviderDescriptorDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinition)
    DataProviderDescriptorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptor)
    DataProviderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProvider, traits: {"smithy.api#xmlName" => "DataProvider"})
    DataProviderSettings.add_member(:redshift_settings, Types::DataProviderSettings::RedshiftSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataProviderSettings, location_name: "RedshiftSettings"))
    DataProviderSettings.add_member(:postgre_sql_settings, Types::DataProviderSettings::PostgreSqlSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostgreSqlDataProviderSettings, location_name: "PostgreSqlSettings"))
    DataProviderSettings.add_member(:my_sql_settings, Types::DataProviderSettings::MySqlSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MySqlDataProviderSettings, location_name: "MySqlSettings"))
    DataProviderSettings.add_member(:oracle_settings, Types::DataProviderSettings::OracleSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OracleDataProviderSettings, location_name: "OracleSettings"))
    DataProviderSettings.add_member(:microsoft_sql_server_settings, Types::DataProviderSettings::MicrosoftSqlServerSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftSqlServerDataProviderSettings, location_name: "MicrosoftSqlServerSettings"))
    DataProviderSettings.add_member(:doc_db_settings, Types::DataProviderSettings::DocDbSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocDbDataProviderSettings, location_name: "DocDbSettings"))
    DataProviderSettings.add_member(:maria_db_settings, Types::DataProviderSettings::MariaDbSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MariaDbDataProviderSettings, location_name: "MariaDbSettings"))
    DataProviderSettings.add_member(:ibm_db2_luw_settings, Types::DataProviderSettings::IbmDb2LuwSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IbmDb2LuwDataProviderSettings, location_name: "IbmDb2LuwSettings"))
    DataProviderSettings.add_member(:ibm_db2z_os_settings, Types::DataProviderSettings::IbmDb2zOsSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IbmDb2zOsDataProviderSettings, location_name: "IbmDb2zOsSettings"))
    DataProviderSettings.add_member(:mongo_db_settings, Types::DataProviderSettings::MongoDbSettings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbDataProviderSettings, location_name: "MongoDbSettings"))
    DataProviderSettings.add_member(:unknown, Types::DataProviderSettings::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataProviderSettings.type = Types::DataProviderSettings
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:engine_edition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineEdition"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:service_pack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServicePack"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:support_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SupportLevel"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:os_architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "OsArchitecture"))
    DatabaseInstanceSoftwareDetailsResponse.add_member(:tooltip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Tooltip"))
    DatabaseInstanceSoftwareDetailsResponse.type = Types::DatabaseInstanceSoftwareDetailsResponse
    DatabaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseResponse)
    DatabaseMode.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    DatabaseMode.add_member(:babelfish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BABELFISH", traits: {"smithy.api#enumValue" => "babelfish"}))
    DatabaseResponse.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    DatabaseResponse.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DatabaseResponse.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    DatabaseResponse.add_member(:number_of_schemas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "NumberOfSchemas"))
    DatabaseResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerShortInfoResponse, location_name: "Server"))
    DatabaseResponse.add_member(:software_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInstanceSoftwareDetailsResponse, location_name: "SoftwareDetails"))
    DatabaseResponse.add_member(:collectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorsList, location_name: "Collectors"))
    DatabaseResponse.type = Types::DatabaseResponse
    DatabaseShortInfoResponse.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    DatabaseShortInfoResponse.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DatabaseShortInfoResponse.add_member(:database_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseIpAddress"))
    DatabaseShortInfoResponse.add_member(:database_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseEngine"))
    DatabaseShortInfoResponse.type = Types::DatabaseShortInfoResponse
    DatePartitionDelimiterValue.add_member(:slash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SLASH", traits: {"smithy.api#enumValue" => "SLASH"}))
    DatePartitionDelimiterValue.add_member(:underscore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNDERSCORE", traits: {"smithy.api#enumValue" => "UNDERSCORE"}))
    DatePartitionDelimiterValue.add_member(:dash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DASH", traits: {"smithy.api#enumValue" => "DASH"}))
    DatePartitionDelimiterValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DatePartitionSequenceValue.add_member(:yyyymmdd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YYYYMMDD", traits: {"smithy.api#enumValue" => "YYYYMMDD"}))
    DatePartitionSequenceValue.add_member(:yyyymmddhh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YYYYMMDDHH", traits: {"smithy.api#enumValue" => "YYYYMMDDHH"}))
    DatePartitionSequenceValue.add_member(:yyyymm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YYYYMM", traits: {"smithy.api#enumValue" => "YYYYMM"}))
    DatePartitionSequenceValue.add_member(:mmyyyydd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MMYYYYDD", traits: {"smithy.api#enumValue" => "MMYYYYDD"}))
    DatePartitionSequenceValue.add_member(:ddmmyyyy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DDMMYYYY", traits: {"smithy.api#enumValue" => "DDMMYYYY"}))
    DefaultErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DefaultErrorDetails.type = Types::DefaultErrorDetails
    DeleteCertificateMessage.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    DeleteCertificateMessage.type = Types::DeleteCertificateMessage
    DeleteCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    DeleteCertificateResponse.type = Types::DeleteCertificateResponse
    DeleteCollectorRequest.add_member(:collector_referenced_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CollectorReferencedId", traits: {"smithy.api#required" => {}}))
    DeleteCollectorRequest.type = Types::DeleteCollectorRequest
    DeleteConnectionMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionMessage.type = Types::DeleteConnectionMessage
    DeleteConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    DeleteConnectionResponse.type = Types::DeleteConnectionResponse
    DeleteDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteDataMigrationMessage.type = Types::DeleteDataMigrationMessage
    DeleteDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    DeleteDataMigrationResponse.type = Types::DeleteDataMigrationResponse
    DeleteDataProviderMessage.add_member(:data_provider_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteDataProviderMessage.type = Types::DeleteDataProviderMessage
    DeleteDataProviderResponse.add_member(:data_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProvider, location_name: "DataProvider"))
    DeleteDataProviderResponse.type = Types::DeleteDataProviderResponse
    DeleteEndpointMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteEndpointMessage.type = Types::DeleteEndpointMessage
    DeleteEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    DeleteEndpointResponse.type = Types::DeleteEndpointResponse
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName", traits: {"smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteEventSubscriptionResponse.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    DeleteEventSubscriptionResponse.type = Types::DeleteEventSubscriptionResponse
    DeleteFleetAdvisorDatabasesRequest.add_member(:database_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "DatabaseIds", traits: {"smithy.api#required" => {}}))
    DeleteFleetAdvisorDatabasesRequest.type = Types::DeleteFleetAdvisorDatabasesRequest
    DeleteFleetAdvisorDatabasesResponse.add_member(:database_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "DatabaseIds"))
    DeleteFleetAdvisorDatabasesResponse.type = Types::DeleteFleetAdvisorDatabasesResponse
    DeleteInstanceProfileMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteInstanceProfileMessage.type = Types::DeleteInstanceProfileMessage
    DeleteInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: "InstanceProfile"))
    DeleteInstanceProfileResponse.type = Types::DeleteInstanceProfileResponse
    DeleteMigrationProjectMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteMigrationProjectMessage.type = Types::DeleteMigrationProjectMessage
    DeleteMigrationProjectResponse.add_member(:migration_project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProject, location_name: "MigrationProject"))
    DeleteMigrationProjectResponse.type = Types::DeleteMigrationProjectResponse
    DeleteReplicationConfigMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationConfigMessage.type = Types::DeleteReplicationConfigMessage
    DeleteReplicationConfigResponse.add_member(:replication_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    DeleteReplicationConfigResponse.type = Types::DeleteReplicationConfigResponse
    DeleteReplicationInstanceMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationInstanceMessage.type = Types::DeleteReplicationInstanceMessage
    DeleteReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    DeleteReplicationInstanceResponse.type = Types::DeleteReplicationInstanceResponse
    DeleteReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteReplicationSubnetGroupMessage.type = Types::DeleteReplicationSubnetGroupMessage
    DeleteReplicationSubnetGroupResponse.type = Types::DeleteReplicationSubnetGroupResponse
    DeleteReplicationTaskAssessmentRunMessage.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskAssessmentRunArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationTaskAssessmentRunMessage.type = Types::DeleteReplicationTaskAssessmentRunMessage
    DeleteReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun, location_name: "ReplicationTaskAssessmentRun"))
    DeleteReplicationTaskAssessmentRunResponse.type = Types::DeleteReplicationTaskAssessmentRunResponse
    DeleteReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    DeleteReplicationTaskMessage.type = Types::DeleteReplicationTaskMessage
    DeleteReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    DeleteReplicationTaskResponse.type = Types::DeleteReplicationTaskResponse
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeAccountAttributesResponse.add_member(:account_quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountQuotaList, location_name: "AccountQuotas"))
    DescribeAccountAttributesResponse.add_member(:unique_account_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "UniqueAccountIdentifier"))
    DescribeAccountAttributesResponse.type = Types::DescribeAccountAttributesResponse
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:source_engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEngineName"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:target_engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEngineName"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeApplicableIndividualAssessmentsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeApplicableIndividualAssessmentsMessage.type = Types::DescribeApplicableIndividualAssessmentsMessage
    DescribeApplicableIndividualAssessmentsResponse.add_member(:individual_assessment_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndividualAssessmentNameList, location_name: "IndividualAssessmentNames"))
    DescribeApplicableIndividualAssessmentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeApplicableIndividualAssessmentsResponse.type = Types::DescribeApplicableIndividualAssessmentsResponse
    DescribeCertificatesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesMessage.type = Types::DescribeCertificatesMessage
    DescribeCertificatesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesResponse.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    DescribeCertificatesResponse.type = Types::DescribeCertificatesResponse
    DescribeConnectionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeConnectionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeConnectionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeConnectionsMessage.type = Types::DescribeConnectionsMessage
    DescribeConnectionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeConnectionsResponse.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    DescribeConnectionsResponse.type = Types::DescribeConnectionsResponse
    DescribeConversionConfigurationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeConversionConfigurationMessage.type = Types::DescribeConversionConfigurationMessage
    DescribeConversionConfigurationResponse.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier"))
    DescribeConversionConfigurationResponse.add_member(:conversion_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConversionConfiguration"))
    DescribeConversionConfigurationResponse.type = Types::DescribeConversionConfigurationResponse
    DescribeDataMigrationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDataMigrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataMigrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeDataMigrationsMessage.add_member(:without_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WithoutSettings"))
    DescribeDataMigrationsMessage.add_member(:without_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WithoutStatistics"))
    DescribeDataMigrationsMessage.type = Types::DescribeDataMigrationsMessage
    DescribeDataMigrationsResponse.add_member(:data_migrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigrations, location_name: "DataMigrations"))
    DescribeDataMigrationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeDataMigrationsResponse.type = Types::DescribeDataMigrationsResponse
    DescribeDataProvidersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDataProvidersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataProvidersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataProvidersMessage.type = Types::DescribeDataProvidersMessage
    DescribeDataProvidersResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataProvidersResponse.add_member(:data_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderList, location_name: "DataProviders"))
    DescribeDataProvidersResponse.type = Types::DescribeDataProvidersResponse
    DescribeEndpointSettingsMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName", traits: {"smithy.api#required" => {}}))
    DescribeEndpointSettingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointSettingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointSettingsMessage.type = Types::DescribeEndpointSettingsMessage
    DescribeEndpointSettingsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointSettingsResponse.add_member(:endpoint_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointSettingsList, location_name: "EndpointSettings"))
    DescribeEndpointSettingsResponse.type = Types::DescribeEndpointSettingsResponse
    DescribeEndpointTypesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEndpointTypesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointTypesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointTypesMessage.type = Types::DescribeEndpointTypesMessage
    DescribeEndpointTypesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointTypesResponse.add_member(:supported_endpoint_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEndpointTypeList, location_name: "SupportedEndpointTypes"))
    DescribeEndpointTypesResponse.type = Types::DescribeEndpointTypesResponse
    DescribeEndpointsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEndpointsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointsMessage.type = Types::DescribeEndpointsMessage
    DescribeEndpointsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointList, location_name: "Endpoints"))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineVersionsMessage.type = Types::DescribeEngineVersionsMessage
    DescribeEngineVersionsResponse.add_member(:engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionList, location_name: "EngineVersions"))
    DescribeEngineVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineVersionsResponse.type = Types::DescribeEngineVersionsResponse
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventCategoriesResponse.add_member(:event_category_group_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoryGroupList, location_name: "EventCategoryGroupList"))
    DescribeEventCategoriesResponse.type = Types::DescribeEventCategoriesResponse
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventSubscriptionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsResponse.add_member(:event_subscriptions_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    DescribeEventSubscriptionsResponse.type = Types::DescribeEventSubscriptionsResponse
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeEventsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeExtensionPackAssociationsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeExtensionPackAssociationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeExtensionPackAssociationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeExtensionPackAssociationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeExtensionPackAssociationsMessage.type = Types::DescribeExtensionPackAssociationsMessage
    DescribeExtensionPackAssociationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeExtensionPackAssociationsResponse.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeExtensionPackAssociationsResponse.type = Types::DescribeExtensionPackAssociationsResponse
    DescribeFleetAdvisorCollectorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorCollectorsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorCollectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorCollectorsRequest.type = Types::DescribeFleetAdvisorCollectorsRequest
    DescribeFleetAdvisorCollectorsResponse.add_member(:collectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorResponses, location_name: "Collectors"))
    DescribeFleetAdvisorCollectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorCollectorsResponse.type = Types::DescribeFleetAdvisorCollectorsResponse
    DescribeFleetAdvisorDatabasesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorDatabasesRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorDatabasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorDatabasesRequest.type = Types::DescribeFleetAdvisorDatabasesRequest
    DescribeFleetAdvisorDatabasesResponse.add_member(:databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseList, location_name: "Databases"))
    DescribeFleetAdvisorDatabasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorDatabasesResponse.type = Types::DescribeFleetAdvisorDatabasesResponse
    DescribeFleetAdvisorLsaAnalysisRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorLsaAnalysisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorLsaAnalysisRequest.type = Types::DescribeFleetAdvisorLsaAnalysisRequest
    DescribeFleetAdvisorLsaAnalysisResponse.add_member(:analysis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAdvisorLsaAnalysisResponseList, location_name: "Analysis"))
    DescribeFleetAdvisorLsaAnalysisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorLsaAnalysisResponse.type = Types::DescribeFleetAdvisorLsaAnalysisResponse
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemaObjectSummaryRequest.type = Types::DescribeFleetAdvisorSchemaObjectSummaryRequest
    DescribeFleetAdvisorSchemaObjectSummaryResponse.add_member(:fleet_advisor_schema_objects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAdvisorSchemaObjectList, location_name: "FleetAdvisorSchemaObjects"))
    DescribeFleetAdvisorSchemaObjectSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemaObjectSummaryResponse.type = Types::DescribeFleetAdvisorSchemaObjectSummaryResponse
    DescribeFleetAdvisorSchemasRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeFleetAdvisorSchemasRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeFleetAdvisorSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemasRequest.type = Types::DescribeFleetAdvisorSchemasRequest
    DescribeFleetAdvisorSchemasResponse.add_member(:fleet_advisor_schemas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAdvisorSchemaList, location_name: "FleetAdvisorSchemas"))
    DescribeFleetAdvisorSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetAdvisorSchemasResponse.type = Types::DescribeFleetAdvisorSchemasResponse
    DescribeInstanceProfilesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeInstanceProfilesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeInstanceProfilesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeInstanceProfilesMessage.type = Types::DescribeInstanceProfilesMessage
    DescribeInstanceProfilesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeInstanceProfilesResponse.add_member(:instance_profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileList, location_name: "InstanceProfiles"))
    DescribeInstanceProfilesResponse.type = Types::DescribeInstanceProfilesResponse
    DescribeMetadataModelAssessmentsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelAssessmentsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelAssessmentsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelAssessmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelAssessmentsMessage.type = Types::DescribeMetadataModelAssessmentsMessage
    DescribeMetadataModelAssessmentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelAssessmentsResponse.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelAssessmentsResponse.type = Types::DescribeMetadataModelAssessmentsResponse
    DescribeMetadataModelConversionsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelConversionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelConversionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelConversionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelConversionsMessage.type = Types::DescribeMetadataModelConversionsMessage
    DescribeMetadataModelConversionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelConversionsResponse.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelConversionsResponse.type = Types::DescribeMetadataModelConversionsResponse
    DescribeMetadataModelExportsAsScriptMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsAsScriptMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelExportsAsScriptMessage.type = Types::DescribeMetadataModelExportsAsScriptMessage
    DescribeMetadataModelExportsAsScriptResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsAsScriptResponse.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelExportsAsScriptResponse.type = Types::DescribeMetadataModelExportsAsScriptResponse
    DescribeMetadataModelExportsToTargetMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelExportsToTargetMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsToTargetMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelExportsToTargetMessage.type = Types::DescribeMetadataModelExportsToTargetMessage
    DescribeMetadataModelExportsToTargetResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelExportsToTargetResponse.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelExportsToTargetResponse.type = Types::DescribeMetadataModelExportsToTargetResponse
    DescribeMetadataModelImportsMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    DescribeMetadataModelImportsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMetadataModelImportsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelImportsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMetadataModelImportsMessage.type = Types::DescribeMetadataModelImportsMessage
    DescribeMetadataModelImportsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMetadataModelImportsResponse.add_member(:requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequestList, location_name: "Requests"))
    DescribeMetadataModelImportsResponse.type = Types::DescribeMetadataModelImportsResponse
    DescribeMigrationProjectsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeMigrationProjectsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeMigrationProjectsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMigrationProjectsMessage.type = Types::DescribeMigrationProjectsMessage
    DescribeMigrationProjectsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeMigrationProjectsResponse.add_member(:migration_projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectList, location_name: "MigrationProjects"))
    DescribeMigrationProjectsResponse.type = Types::DescribeMigrationProjectsResponse
    DescribeOrderableReplicationInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableReplicationInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableReplicationInstancesMessage.type = Types::DescribeOrderableReplicationInstancesMessage
    DescribeOrderableReplicationInstancesResponse.add_member(:orderable_replication_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableReplicationInstanceList, location_name: "OrderableReplicationInstances"))
    DescribeOrderableReplicationInstancesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableReplicationInstancesResponse.type = Types::DescribeOrderableReplicationInstancesResponse
    DescribePendingMaintenanceActionsMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.type = Types::DescribePendingMaintenanceActionsMessage
    DescribePendingMaintenanceActionsResponse.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: "PendingMaintenanceActions"))
    DescribePendingMaintenanceActionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsResponse.type = Types::DescribePendingMaintenanceActionsResponse
    DescribeRecommendationLimitationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeRecommendationLimitationsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeRecommendationLimitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationLimitationsRequest.type = Types::DescribeRecommendationLimitationsRequest
    DescribeRecommendationLimitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationLimitationsResponse.add_member(:limitations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitationList, location_name: "Limitations"))
    DescribeRecommendationLimitationsResponse.type = Types::DescribeRecommendationLimitationsResponse
    DescribeRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeRecommendationsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationsRequest.type = Types::DescribeRecommendationsRequest
    DescribeRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationList, location_name: "Recommendations"))
    DescribeRecommendationsResponse.type = Types::DescribeRecommendationsResponse
    DescribeRefreshSchemasStatusMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeRefreshSchemasStatusMessage.type = Types::DescribeRefreshSchemasStatusMessage
    DescribeRefreshSchemasStatusResponse.add_member(:refresh_schemas_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchemasStatus, location_name: "RefreshSchemasStatus"))
    DescribeRefreshSchemasStatusResponse.type = Types::DescribeRefreshSchemasStatusResponse
    DescribeReplicationConfigsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationConfigsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationConfigsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationConfigsMessage.type = Types::DescribeReplicationConfigsMessage
    DescribeReplicationConfigsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationConfigsResponse.add_member(:replication_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigList, location_name: "ReplicationConfigs"))
    DescribeReplicationConfigsResponse.type = Types::DescribeReplicationConfigsResponse
    DescribeReplicationInstanceTaskLogsMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstanceTaskLogsMessage.type = Types::DescribeReplicationInstanceTaskLogsMessage
    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_task_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceTaskLogsList, location_name: "ReplicationInstanceTaskLogs"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstanceTaskLogsResponse.type = Types::DescribeReplicationInstanceTaskLogsResponse
    DescribeReplicationInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstancesMessage.type = Types::DescribeReplicationInstancesMessage
    DescribeReplicationInstancesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstancesResponse.add_member(:replication_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceList, location_name: "ReplicationInstances"))
    DescribeReplicationInstancesResponse.type = Types::DescribeReplicationInstancesResponse
    DescribeReplicationSubnetGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationSubnetGroupsMessage.type = Types::DescribeReplicationSubnetGroupsMessage
    DescribeReplicationSubnetGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationSubnetGroupsResponse.add_member(:replication_subnet_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroups, location_name: "ReplicationSubnetGroups"))
    DescribeReplicationSubnetGroupsResponse.type = Types::DescribeReplicationSubnetGroupsResponse
    DescribeReplicationTableStatisticsMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    DescribeReplicationTableStatisticsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTableStatisticsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTableStatisticsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTableStatisticsMessage.type = Types::DescribeReplicationTableStatisticsMessage
    DescribeReplicationTableStatisticsResponse.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    DescribeReplicationTableStatisticsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTableStatisticsResponse.add_member(:replication_table_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTableStatisticsList, location_name: "ReplicationTableStatistics"))
    DescribeReplicationTableStatisticsResponse.type = Types::DescribeReplicationTableStatisticsResponse
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentResultsMessage.type = Types::DescribeReplicationTaskAssessmentResultsMessage
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:replication_task_assessment_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentResultList, location_name: "ReplicationTaskAssessmentResults"))
    DescribeReplicationTaskAssessmentResultsResponse.type = Types::DescribeReplicationTaskAssessmentResultsResponse
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskAssessmentRunsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentRunsMessage.type = Types::DescribeReplicationTaskAssessmentRunsMessage
    DescribeReplicationTaskAssessmentRunsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentRunsResponse.add_member(:replication_task_assessment_runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunList, location_name: "ReplicationTaskAssessmentRuns"))
    DescribeReplicationTaskAssessmentRunsResponse.type = Types::DescribeReplicationTaskAssessmentRunsResponse
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskIndividualAssessmentsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskIndividualAssessmentsMessage.type = Types::DescribeReplicationTaskIndividualAssessmentsMessage
    DescribeReplicationTaskIndividualAssessmentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskIndividualAssessmentsResponse.add_member(:replication_task_individual_assessments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskIndividualAssessmentList, location_name: "ReplicationTaskIndividualAssessments"))
    DescribeReplicationTaskIndividualAssessmentsResponse.type = Types::DescribeReplicationTaskIndividualAssessmentsResponse
    DescribeReplicationTasksMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTasksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTasksMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTasksMessage.add_member(:without_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "WithoutSettings"))
    DescribeReplicationTasksMessage.type = Types::DescribeReplicationTasksMessage
    DescribeReplicationTasksResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTasksResponse.add_member(:replication_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskList, location_name: "ReplicationTasks"))
    DescribeReplicationTasksResponse.type = Types::DescribeReplicationTasksResponse
    DescribeReplicationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationsMessage.type = Types::DescribeReplicationsMessage
    DescribeReplicationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationsResponse.add_member(:replications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationList, location_name: "Replications"))
    DescribeReplicationsResponse.type = Types::DescribeReplicationsResponse
    DescribeSchemasMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeSchemasMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSchemasMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSchemasMessage.type = Types::DescribeSchemasMessage
    DescribeSchemasResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaList, location_name: "Schemas"))
    DescribeSchemasResponse.type = Types::DescribeSchemasResponse
    DescribeTableStatisticsMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    DescribeTableStatisticsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeTableStatisticsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableStatisticsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeTableStatisticsMessage.type = Types::DescribeTableStatisticsMessage
    DescribeTableStatisticsResponse.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeTableStatisticsResponse.add_member(:table_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatisticsList, location_name: "TableStatistics"))
    DescribeTableStatisticsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableStatisticsResponse.type = Types::DescribeTableStatisticsResponse
    DmsSslModeValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    DmsSslModeValue.add_member(:require, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRE", traits: {"smithy.api#enumValue" => "require"}))
    DmsSslModeValue.add_member(:verify_ca, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERIFY_CA", traits: {"smithy.api#enumValue" => "verify-ca"}))
    DmsSslModeValue.add_member(:verify_full, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERIFY_FULL", traits: {"smithy.api#enumValue" => "verify-full"}))
    DmsTransferSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    DmsTransferSettings.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    DmsTransferSettings.type = Types::DmsTransferSettings
    DocDbDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    DocDbDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DocDbDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DocDbDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    DocDbDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    DocDbDataProviderSettings.type = Types::DocDbDataProviderSettings
    DocDbSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    DocDbSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    DocDbSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    DocDbSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DocDbSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DocDbSettings.add_member(:nesting_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NestingLevelValue, location_name: "NestingLevel"))
    DocDbSettings.add_member(:extract_doc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExtractDocId"))
    DocDbSettings.add_member(:docs_to_investigate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DocsToInvestigate"))
    DocDbSettings.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DocDbSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    DocDbSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    DocDbSettings.add_member(:use_update_look_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseUpdateLookUp"))
    DocDbSettings.add_member(:replicate_shard_collections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReplicateShardCollections"))
    DocDbSettings.type = Types::DocDbSettings
    DynamoDbSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    DynamoDbSettings.type = Types::DynamoDbSettings
    ElasticsearchSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    ElasticsearchSettings.add_member(:endpoint_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointUri", traits: {"smithy.api#required" => {}}))
    ElasticsearchSettings.add_member(:full_load_error_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "FullLoadErrorPercentage"))
    ElasticsearchSettings.add_member(:error_retry_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ErrorRetryDuration"))
    ElasticsearchSettings.add_member(:use_new_mapping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseNewMappingType"))
    ElasticsearchSettings.type = Types::ElasticsearchSettings
    EncodingTypeValue.add_member(:plain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN", traits: {"smithy.api#enumValue" => "plain"}))
    EncodingTypeValue.add_member(:plain_dictionary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN_DICTIONARY", traits: {"smithy.api#enumValue" => "plain-dictionary"}))
    EncodingTypeValue.add_member(:rle_dictionary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RLE_DICTIONARY", traits: {"smithy.api#enumValue" => "rle-dictionary"}))
    EncryptionModeValue.add_member(:sse_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSE_S3", traits: {"smithy.api#enumValue" => "sse-s3"}))
    EncryptionModeValue.add_member(:sse_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSE_KMS", traits: {"smithy.api#enumValue" => "sse-kms"}))
    Endpoint.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    Endpoint.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    Endpoint.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Endpoint.add_member(:engine_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineDisplayName"))
    Endpoint.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    Endpoint.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    Endpoint.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    Endpoint.add_member(:extra_connection_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    Endpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Endpoint.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Endpoint.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    Endpoint.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Endpoint.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    Endpoint.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    Endpoint.add_member(:external_table_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    Endpoint.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExternalId"))
    Endpoint.add_member(:dynamo_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    Endpoint.add_member(:s3_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    Endpoint.add_member(:dms_transfer_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    Endpoint.add_member(:mongo_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    Endpoint.add_member(:kinesis_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisSettings, location_name: "KinesisSettings"))
    Endpoint.add_member(:kafka_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaSettings, location_name: "KafkaSettings"))
    Endpoint.add_member(:elasticsearch_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchSettings, location_name: "ElasticsearchSettings"))
    Endpoint.add_member(:neptune_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneSettings, location_name: "NeptuneSettings"))
    Endpoint.add_member(:redshift_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSettings, location_name: "RedshiftSettings"))
    Endpoint.add_member(:postgre_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostgreSQLSettings, location_name: "PostgreSQLSettings"))
    Endpoint.add_member(:my_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MySQLSettings, location_name: "MySQLSettings"))
    Endpoint.add_member(:oracle_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OracleSettings, location_name: "OracleSettings"))
    Endpoint.add_member(:sybase_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SybaseSettings, location_name: "SybaseSettings"))
    Endpoint.add_member(:microsoft_sql_server_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftSQLServerSettings, location_name: "MicrosoftSQLServerSettings"))
    Endpoint.add_member(:ibm_db2_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IBMDb2Settings, location_name: "IBMDb2Settings"))
    Endpoint.add_member(:doc_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocDbSettings, location_name: "DocDbSettings"))
    Endpoint.add_member(:redis_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedisSettings, location_name: "RedisSettings"))
    Endpoint.add_member(:gcp_my_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GcpMySQLSettings, location_name: "GcpMySQLSettings"))
    Endpoint.add_member(:timestream_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamSettings, location_name: "TimestreamSettings"))
    Endpoint.type = Types::Endpoint
    EndpointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, traits: {"smithy.api#xmlName" => "Endpoint"})
    EndpointSetting.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EndpointSetting.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointSettingTypeValue, location_name: "Type"))
    EndpointSetting.add_member(:enum_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointSettingEnumValues, location_name: "EnumValues"))
    EndpointSetting.add_member(:sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Sensitive"))
    EndpointSetting.add_member(:units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Units"))
    EndpointSetting.add_member(:applicability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Applicability"))
    EndpointSetting.add_member(:int_value_min, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IntValueMin"))
    EndpointSetting.add_member(:int_value_max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IntValueMax"))
    EndpointSetting.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DefaultValue"))
    EndpointSetting.type = Types::EndpointSetting
    EndpointSettingEnumValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EndpointSettingTypeValue.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    EndpointSettingTypeValue.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "boolean"}))
    EndpointSettingTypeValue.add_member(:integer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEGER", traits: {"smithy.api#enumValue" => "integer"}))
    EndpointSettingTypeValue.add_member(:enum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENUM", traits: {"smithy.api#enumValue" => "enum"}))
    EndpointSettingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointSetting)
    EngineVersion.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    EngineVersion.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Lifecycle"))
    EngineVersion.add_member(:release_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseStatusValues, location_name: "ReleaseStatus"))
    EngineVersion.add_member(:launch_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "LaunchDate"))
    EngineVersion.add_member(:auto_upgrade_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoUpgradeDate"))
    EngineVersion.add_member(:deprecation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "DeprecationDate"))
    EngineVersion.add_member(:force_upgrade_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ForceUpgradeDate"))
    EngineVersion.add_member(:available_upgrades, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableUpgradesList, location_name: "AvailableUpgrades"))
    EngineVersion.type = Types::EngineVersion
    EngineVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, traits: {"smithy.api#xmlName" => "EngineVersion"})
    ErrorDetails.add_member(:default_error_details, Types::ErrorDetails::DefaultErrorDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultErrorDetails, location_name: "defaultErrorDetails"))
    ErrorDetails.add_member(:unknown, Types::ErrorDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ErrorDetails.type = Types::ErrorDetails
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.type = Types::Event
    EventCategoriesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "EventCategory"})
    EventCategoryGroup.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoryGroup.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventCategoryGroup.type = Types::EventCategoryGroup
    EventCategoryGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoryGroup, traits: {"smithy.api#xmlName" => "EventCategoryGroup"})
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, traits: {"smithy.api#xmlName" => "EventSubscription"})
    ExcludeTestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ExportMetadataModelAssessmentMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    ExportMetadataModelAssessmentMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    ExportMetadataModelAssessmentMessage.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FileName"))
    ExportMetadataModelAssessmentMessage.add_member(:assessment_report_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportTypesList, location_name: "AssessmentReportTypes"))
    ExportMetadataModelAssessmentMessage.type = Types::ExportMetadataModelAssessmentMessage
    ExportMetadataModelAssessmentResponse.add_member(:pdf_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentResultEntry, location_name: "PdfReport"))
    ExportMetadataModelAssessmentResponse.add_member(:csv_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentResultEntry, location_name: "CsvReport"))
    ExportMetadataModelAssessmentResponse.type = Types::ExportMetadataModelAssessmentResponse
    ExportMetadataModelAssessmentResultEntry.add_member(:s3_object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3ObjectKey"))
    ExportMetadataModelAssessmentResultEntry.add_member(:object_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ObjectURL"))
    ExportMetadataModelAssessmentResultEntry.type = Types::ExportMetadataModelAssessmentResultEntry
    ExportSqlDetails.add_member(:s3_object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3ObjectKey"))
    ExportSqlDetails.add_member(:object_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ObjectURL"))
    ExportSqlDetails.type = Types::ExportSqlDetails
    FailedDependencyFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    FailedDependencyFault.type = Types::FailedDependencyFault
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: "Values", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, traits: {"smithy.api#xmlName" => "Filter"})
    FilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    FleetAdvisorLsaAnalysisResponse.add_member(:lsa_analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LsaAnalysisId"))
    FleetAdvisorLsaAnalysisResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    FleetAdvisorLsaAnalysisResponse.type = Types::FleetAdvisorLsaAnalysisResponse
    FleetAdvisorLsaAnalysisResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAdvisorLsaAnalysisResponse)
    FleetAdvisorSchemaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaResponse)
    FleetAdvisorSchemaObjectList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAdvisorSchemaObjectResponse)
    FleetAdvisorSchemaObjectResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaId"))
    FleetAdvisorSchemaObjectResponse.add_member(:object_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ObjectType"))
    FleetAdvisorSchemaObjectResponse.add_member(:number_of_objects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "NumberOfObjects"))
    FleetAdvisorSchemaObjectResponse.add_member(:code_line_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeLineCount"))
    FleetAdvisorSchemaObjectResponse.add_member(:code_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeSize"))
    FleetAdvisorSchemaObjectResponse.type = Types::FleetAdvisorSchemaObjectResponse
    GcpMySQLSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    GcpMySQLSettings.add_member(:clean_source_metadata_on_mismatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CleanSourceMetadataOnMismatch"))
    GcpMySQLSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    GcpMySQLSettings.add_member(:events_poll_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "EventsPollInterval"))
    GcpMySQLSettings.add_member(:target_db_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDbType, location_name: "TargetDbType"))
    GcpMySQLSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    GcpMySQLSettings.add_member(:parallel_load_threads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ParallelLoadThreads"))
    GcpMySQLSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    GcpMySQLSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    GcpMySQLSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    GcpMySQLSettings.add_member(:server_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerTimezone"))
    GcpMySQLSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    GcpMySQLSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    GcpMySQLSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    GcpMySQLSettings.type = Types::GcpMySQLSettings
    IBMDb2Settings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    IBMDb2Settings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    IBMDb2Settings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    IBMDb2Settings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    IBMDb2Settings.add_member(:set_data_capture_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SetDataCaptureChanges"))
    IBMDb2Settings.add_member(:current_lsn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CurrentLsn"))
    IBMDb2Settings.add_member(:max_k_bytes_per_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxKBytesPerRead"))
    IBMDb2Settings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    IBMDb2Settings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    IBMDb2Settings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    IBMDb2Settings.add_member(:load_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "LoadTimeout"))
    IBMDb2Settings.add_member(:write_buffer_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "WriteBufferSize"))
    IBMDb2Settings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    IBMDb2Settings.add_member(:keep_csv_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "KeepCsvFiles"))
    IBMDb2Settings.type = Types::IBMDb2Settings
    IbmDb2LuwDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    IbmDb2LuwDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    IbmDb2LuwDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    IbmDb2LuwDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    IbmDb2LuwDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    IbmDb2LuwDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    IbmDb2LuwDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    IbmDb2LuwDataProviderSettings.type = Types::IbmDb2LuwDataProviderSettings
    IbmDb2zOsDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    IbmDb2zOsDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    IbmDb2zOsDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    IbmDb2zOsDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    IbmDb2zOsDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    IbmDb2zOsDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    IbmDb2zOsDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    IbmDb2zOsDataProviderSettings.type = Types::IbmDb2zOsDataProviderSettings
    ImportCertificateMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier", traits: {"smithy.api#required" => {}}))
    ImportCertificateMessage.add_member(:certificate_pem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "CertificatePem"))
    ImportCertificateMessage.add_member(:certificate_wallet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateWallet, location_name: "CertificateWallet"))
    ImportCertificateMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportCertificateMessage.type = Types::ImportCertificateMessage
    ImportCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    ImportCertificateResponse.type = Types::ImportCertificateResponse
    IncludeTestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    IndividualAssessmentNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InstanceProfile.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    InstanceProfile.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    InstanceProfile.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    InstanceProfile.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    InstanceProfile.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    InstanceProfile.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    InstanceProfile.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    InstanceProfile.add_member(:instance_profile_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "InstanceProfileCreationTime"))
    InstanceProfile.add_member(:subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupIdentifier"))
    InstanceProfile.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroups"))
    InstanceProfile.type = Types::InstanceProfile
    InstanceProfileList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, traits: {"smithy.api#xmlName" => "InstanceProfile"})
    InsufficientResourceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InsufficientResourceCapacityFault.type = Types::InsufficientResourceCapacityFault
    IntegerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    InvalidCertificateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidCertificateFault.type = Types::InvalidCertificateFault
    InvalidOperationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidOperationFault.type = Types::InvalidOperationFault
    InvalidResourceStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidResourceStateFault.type = Types::InvalidResourceStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InventoryData.add_member(:number_of_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfDatabases"))
    InventoryData.add_member(:number_of_schemas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfSchemas"))
    InventoryData.type = Types::InventoryData
    KMSAccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSAccessDeniedFault.type = Types::KMSAccessDeniedFault
    KMSDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSDisabledFault.type = Types::KMSDisabledFault
    KMSFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSFault.type = Types::KMSFault
    KMSInvalidStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSInvalidStateFault.type = Types::KMSInvalidStateFault
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KMSNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSNotFoundFault.type = Types::KMSNotFoundFault
    KMSThrottlingFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KMSThrottlingFault.type = Types::KMSThrottlingFault
    KafkaSaslMechanism.add_member(:scram_sha_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCRAM_SHA_512", traits: {"smithy.api#enumValue" => "scram-sha-512"}))
    KafkaSaslMechanism.add_member(:plain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN", traits: {"smithy.api#enumValue" => "plain"}))
    KafkaSecurityProtocol.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "plaintext"}))
    KafkaSecurityProtocol.add_member(:ssl_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSL_AUTHENTICATION", traits: {"smithy.api#enumValue" => "ssl-authentication"}))
    KafkaSecurityProtocol.add_member(:ssl_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSL_ENCRYPTION", traits: {"smithy.api#enumValue" => "ssl-encryption"}))
    KafkaSecurityProtocol.add_member(:sasl_ssl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SASL_SSL", traits: {"smithy.api#enumValue" => "sasl-ssl"}))
    KafkaSettings.add_member(:broker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Broker"))
    KafkaSettings.add_member(:topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Topic"))
    KafkaSettings.add_member(:message_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFormatValue, location_name: "MessageFormat"))
    KafkaSettings.add_member(:include_transaction_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTransactionDetails"))
    KafkaSettings.add_member(:include_partition_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludePartitionValue"))
    KafkaSettings.add_member(:partition_include_schema_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PartitionIncludeSchemaTable"))
    KafkaSettings.add_member(:include_table_alter_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTableAlterOperations"))
    KafkaSettings.add_member(:include_control_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeControlDetails"))
    KafkaSettings.add_member(:message_max_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MessageMaxBytes"))
    KafkaSettings.add_member(:include_null_and_empty, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeNullAndEmpty"))
    KafkaSettings.add_member(:security_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaSecurityProtocol, location_name: "SecurityProtocol"))
    KafkaSettings.add_member(:ssl_client_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SslClientCertificateArn"))
    KafkaSettings.add_member(:ssl_client_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SslClientKeyArn"))
    KafkaSettings.add_member(:ssl_client_key_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "SslClientKeyPassword"))
    KafkaSettings.add_member(:ssl_ca_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SslCaCertificateArn"))
    KafkaSettings.add_member(:sasl_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SaslUsername"))
    KafkaSettings.add_member(:sasl_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "SaslPassword"))
    KafkaSettings.add_member(:no_hex_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "NoHexPrefix"))
    KafkaSettings.add_member(:sasl_mechanism, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaSaslMechanism, location_name: "SaslMechanism"))
    KafkaSettings.add_member(:ssl_endpoint_identification_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaSslEndpointIdentificationAlgorithm, location_name: "SslEndpointIdentificationAlgorithm"))
    KafkaSettings.add_member(:use_large_integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseLargeIntegerValue"))
    KafkaSettings.type = Types::KafkaSettings
    KafkaSslEndpointIdentificationAlgorithm.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    KafkaSslEndpointIdentificationAlgorithm.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPS", traits: {"smithy.api#enumValue" => "https"}))
    KerberosAuthenticationSettings.add_member(:key_cache_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KeyCacheSecretId"))
    KerberosAuthenticationSettings.add_member(:key_cache_secret_iam_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KeyCacheSecretIamArn"))
    KerberosAuthenticationSettings.add_member(:krb5_file_contents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Krb5FileContents"))
    KerberosAuthenticationSettings.type = Types::KerberosAuthenticationSettings
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    KinesisSettings.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StreamArn"))
    KinesisSettings.add_member(:message_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFormatValue, location_name: "MessageFormat"))
    KinesisSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    KinesisSettings.add_member(:include_transaction_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTransactionDetails"))
    KinesisSettings.add_member(:include_partition_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludePartitionValue"))
    KinesisSettings.add_member(:partition_include_schema_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PartitionIncludeSchemaTable"))
    KinesisSettings.add_member(:include_table_alter_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeTableAlterOperations"))
    KinesisSettings.add_member(:include_control_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeControlDetails"))
    KinesisSettings.add_member(:include_null_and_empty, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeNullAndEmpty"))
    KinesisSettings.add_member(:no_hex_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "NoHexPrefix"))
    KinesisSettings.add_member(:use_large_integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseLargeIntegerValue"))
    KinesisSettings.type = Types::KinesisSettings
    Limitation.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    Limitation.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Limitation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Limitation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Limitation.add_member(:impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Impact"))
    Limitation.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Limitation.type = Types::Limitation
    LimitationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Limitation)
    ListTagsForResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    ListTagsForResourceMessage.add_member(:resource_arn_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: "ResourceArnList"))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    ListTagsForResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LongVarcharMappingType.add_member(:wstring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WSTRING", traits: {"smithy.api#enumValue" => "wstring"}))
    LongVarcharMappingType.add_member(:clob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOB", traits: {"smithy.api#enumValue" => "clob"}))
    LongVarcharMappingType.add_member(:nclob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NCLOB", traits: {"smithy.api#enumValue" => "nclob"}))
    MariaDbDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MariaDbDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MariaDbDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MariaDbDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MariaDbDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    MariaDbDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    MariaDbDataProviderSettings.type = Types::MariaDbDataProviderSettings
    MessageFormatValue.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    MessageFormatValue.add_member(:json_unformatted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON_UNFORMATTED", traits: {"smithy.api#enumValue" => "json-unformatted"}))
    MicrosoftSQLServerSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MicrosoftSQLServerSettings.add_member(:bcp_packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BcpPacketSize"))
    MicrosoftSQLServerSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MicrosoftSQLServerSettings.add_member(:control_tables_file_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ControlTablesFileGroup"))
    MicrosoftSQLServerSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MicrosoftSQLServerSettings.add_member(:query_single_always_on_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "QuerySingleAlwaysOnNode"))
    MicrosoftSQLServerSettings.add_member(:read_backup_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReadBackupOnly"))
    MicrosoftSQLServerSettings.add_member(:safeguard_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeguardPolicy, location_name: "SafeguardPolicy"))
    MicrosoftSQLServerSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MicrosoftSQLServerSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MicrosoftSQLServerSettings.add_member(:use_bcp_full_load, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseBcpFullLoad"))
    MicrosoftSQLServerSettings.add_member(:use_third_party_backup_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseThirdPartyBackupDevice"))
    MicrosoftSQLServerSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    MicrosoftSQLServerSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    MicrosoftSQLServerSettings.add_member(:trim_space_in_char, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimSpaceInChar"))
    MicrosoftSQLServerSettings.add_member(:tlog_access_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TlogAccessMode, location_name: "TlogAccessMode"))
    MicrosoftSQLServerSettings.add_member(:force_lob_lookup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceLobLookup"))
    MicrosoftSQLServerSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqlServerAuthenticationMethod, location_name: "AuthenticationMethod"))
    MicrosoftSQLServerSettings.type = Types::MicrosoftSQLServerSettings
    MicrosoftSqlServerDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MicrosoftSqlServerDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MicrosoftSqlServerDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MicrosoftSqlServerDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MicrosoftSqlServerDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MicrosoftSqlServerDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    MicrosoftSqlServerDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    MicrosoftSqlServerDataProviderSettings.type = Types::MicrosoftSqlServerDataProviderSettings
    MigrationProject.add_member(:migration_project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectName"))
    MigrationProject.add_member(:migration_project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectArn"))
    MigrationProject.add_member(:migration_project_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "MigrationProjectCreationTime"))
    MigrationProject.add_member(:source_data_provider_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorList, location_name: "SourceDataProviderDescriptors"))
    MigrationProject.add_member(:target_data_provider_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorList, location_name: "TargetDataProviderDescriptors"))
    MigrationProject.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    MigrationProject.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    MigrationProject.add_member(:transformation_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TransformationRules"))
    MigrationProject.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    MigrationProject.add_member(:schema_conversion_application_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SCApplicationAttributes, location_name: "SchemaConversionApplicationAttributes"))
    MigrationProject.type = Types::MigrationProject
    MigrationProjectList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProject, traits: {"smithy.api#xmlName" => "MigrationProject"})
    MigrationTypeValue.add_member(:full_load, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_LOAD", traits: {"smithy.api#enumValue" => "full-load"}))
    MigrationTypeValue.add_member(:cdc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CDC", traits: {"smithy.api#enumValue" => "cdc"}))
    MigrationTypeValue.add_member(:full_load_and_cdc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_LOAD_AND_CDC", traits: {"smithy.api#enumValue" => "full-load-and-cdc"}))
    ModifyConversionConfigurationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyConversionConfigurationMessage.add_member(:conversion_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConversionConfiguration", traits: {"smithy.api#required" => {}}))
    ModifyConversionConfigurationMessage.type = Types::ModifyConversionConfigurationMessage
    ModifyConversionConfigurationResponse.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier"))
    ModifyConversionConfigurationResponse.type = Types::ModifyConversionConfigurationResponse
    ModifyDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyDataMigrationMessage.add_member(:data_migration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationName"))
    ModifyDataMigrationMessage.add_member(:enable_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCloudwatchLogs"))
    ModifyDataMigrationMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ModifyDataMigrationMessage.add_member(:data_migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "DataMigrationType"))
    ModifyDataMigrationMessage.add_member(:source_data_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDataSettings, location_name: "SourceDataSettings"))
    ModifyDataMigrationMessage.add_member(:target_data_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDataSettings, location_name: "TargetDataSettings"))
    ModifyDataMigrationMessage.add_member(:number_of_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfJobs"))
    ModifyDataMigrationMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "SelectionRules"))
    ModifyDataMigrationMessage.type = Types::ModifyDataMigrationMessage
    ModifyDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    ModifyDataMigrationResponse.type = Types::ModifyDataMigrationResponse
    ModifyDataProviderMessage.add_member(:data_provider_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyDataProviderMessage.add_member(:data_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataProviderName"))
    ModifyDataProviderMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyDataProviderMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    ModifyDataProviderMessage.add_member(:virtual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Virtual"))
    ModifyDataProviderMessage.add_member(:exact_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExactSettings"))
    ModifyDataProviderMessage.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderSettings, location_name: "Settings"))
    ModifyDataProviderMessage.type = Types::ModifyDataProviderMessage
    ModifyDataProviderResponse.add_member(:data_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProvider, location_name: "DataProvider"))
    ModifyDataProviderResponse.type = Types::ModifyDataProviderResponse
    ModifyEndpointMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    ModifyEndpointMessage.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    ModifyEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    ModifyEndpointMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    ModifyEndpointMessage.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    ModifyEndpointMessage.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    ModifyEndpointMessage.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    ModifyEndpointMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyEndpointMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    ModifyEndpointMessage.add_member(:extra_connection_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    ModifyEndpointMessage.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    ModifyEndpointMessage.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    ModifyEndpointMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ModifyEndpointMessage.add_member(:external_table_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    ModifyEndpointMessage.add_member(:dynamo_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    ModifyEndpointMessage.add_member(:s3_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    ModifyEndpointMessage.add_member(:dms_transfer_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    ModifyEndpointMessage.add_member(:mongo_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    ModifyEndpointMessage.add_member(:kinesis_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisSettings, location_name: "KinesisSettings"))
    ModifyEndpointMessage.add_member(:kafka_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaSettings, location_name: "KafkaSettings"))
    ModifyEndpointMessage.add_member(:elasticsearch_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticsearchSettings, location_name: "ElasticsearchSettings"))
    ModifyEndpointMessage.add_member(:neptune_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneSettings, location_name: "NeptuneSettings"))
    ModifyEndpointMessage.add_member(:redshift_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftSettings, location_name: "RedshiftSettings"))
    ModifyEndpointMessage.add_member(:postgre_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostgreSQLSettings, location_name: "PostgreSQLSettings"))
    ModifyEndpointMessage.add_member(:my_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MySQLSettings, location_name: "MySQLSettings"))
    ModifyEndpointMessage.add_member(:oracle_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OracleSettings, location_name: "OracleSettings"))
    ModifyEndpointMessage.add_member(:sybase_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SybaseSettings, location_name: "SybaseSettings"))
    ModifyEndpointMessage.add_member(:microsoft_sql_server_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftSQLServerSettings, location_name: "MicrosoftSQLServerSettings"))
    ModifyEndpointMessage.add_member(:ibm_db2_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IBMDb2Settings, location_name: "IBMDb2Settings"))
    ModifyEndpointMessage.add_member(:doc_db_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocDbSettings, location_name: "DocDbSettings"))
    ModifyEndpointMessage.add_member(:redis_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedisSettings, location_name: "RedisSettings"))
    ModifyEndpointMessage.add_member(:exact_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExactSettings"))
    ModifyEndpointMessage.add_member(:gcp_my_sql_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GcpMySQLSettings, location_name: "GcpMySQLSettings"))
    ModifyEndpointMessage.add_member(:timestream_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamSettings, location_name: "TimestreamSettings"))
    ModifyEndpointMessage.type = Types::ModifyEndpointMessage
    ModifyEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    ModifyEndpointResponse.type = Types::ModifyEndpointResponse
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName", traits: {"smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResponse.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    ModifyEventSubscriptionResponse.type = Types::ModifyEventSubscriptionResponse
    ModifyInstanceProfileMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyInstanceProfileMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ModifyInstanceProfileMessage.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    ModifyInstanceProfileMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    ModifyInstanceProfileMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ModifyInstanceProfileMessage.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileName"))
    ModifyInstanceProfileMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyInstanceProfileMessage.add_member(:subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupIdentifier"))
    ModifyInstanceProfileMessage.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroups"))
    ModifyInstanceProfileMessage.type = Types::ModifyInstanceProfileMessage
    ModifyInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: "InstanceProfile"))
    ModifyInstanceProfileResponse.type = Types::ModifyInstanceProfileResponse
    ModifyMigrationProjectMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyMigrationProjectMessage.add_member(:migration_project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectName"))
    ModifyMigrationProjectMessage.add_member(:source_data_provider_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, location_name: "SourceDataProviderDescriptors"))
    ModifyMigrationProjectMessage.add_member(:target_data_provider_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProviderDescriptorDefinitionList, location_name: "TargetDataProviderDescriptors"))
    ModifyMigrationProjectMessage.add_member(:instance_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileIdentifier"))
    ModifyMigrationProjectMessage.add_member(:transformation_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TransformationRules"))
    ModifyMigrationProjectMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyMigrationProjectMessage.add_member(:schema_conversion_application_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SCApplicationAttributes, location_name: "SchemaConversionApplicationAttributes"))
    ModifyMigrationProjectMessage.type = Types::ModifyMigrationProjectMessage
    ModifyMigrationProjectResponse.add_member(:migration_project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProject, location_name: "MigrationProject"))
    ModifyMigrationProjectResponse.type = Types::ModifyMigrationProjectResponse
    ModifyReplicationConfigMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    ModifyReplicationConfigMessage.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier"))
    ModifyReplicationConfigMessage.add_member(:replication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType"))
    ModifyReplicationConfigMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ModifyReplicationConfigMessage.add_member(:replication_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSettings"))
    ModifyReplicationConfigMessage.add_member(:supplemental_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SupplementalSettings"))
    ModifyReplicationConfigMessage.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfig, location_name: "ComputeConfig"))
    ModifyReplicationConfigMessage.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ModifyReplicationConfigMessage.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ModifyReplicationConfigMessage.type = Types::ModifyReplicationConfigMessage
    ModifyReplicationConfigResponse.add_member(:replication_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    ModifyReplicationConfigResponse.type = Types::ModifyReplicationConfigResponse
    ModifyReplicationInstanceMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    ModifyReplicationInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyReplicationInstanceMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately", traits: {"smithy.api#default" => false}))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    ModifyReplicationInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyReplicationInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyReplicationInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ModifyReplicationInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyReplicationInstanceMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade", traits: {"smithy.api#default" => false}))
    ModifyReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    ModifyReplicationInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ModifyReplicationInstanceMessage.add_member(:kerberos_authentication_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosAuthenticationSettings, location_name: "KerberosAuthenticationSettings"))
    ModifyReplicationInstanceMessage.type = Types::ModifyReplicationInstanceMessage
    ModifyReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    ModifyReplicationInstanceResponse.type = Types::ModifyReplicationInstanceResponse
    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription"))
    ModifyReplicationSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    ModifyReplicationSubnetGroupMessage.type = Types::ModifyReplicationSubnetGroupMessage
    ModifyReplicationSubnetGroupResponse.add_member(:replication_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    ModifyReplicationSubnetGroupResponse.type = Types::ModifyReplicationSubnetGroupResponse
    ModifyReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    ModifyReplicationTaskMessage.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ModifyReplicationTaskMessage.add_member(:migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    ModifyReplicationTaskMessage.add_member(:table_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ModifyReplicationTaskMessage.add_member(:replication_task_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    ModifyReplicationTaskMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    ModifyReplicationTaskMessage.add_member(:task_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TaskData"))
    ModifyReplicationTaskMessage.type = Types::ModifyReplicationTaskMessage
    ModifyReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    ModifyReplicationTaskResponse.type = Types::ModifyReplicationTaskResponse
    MongoDbDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MongoDbDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MongoDbDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MongoDbDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MongoDbDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MongoDbDataProviderSettings.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthTypeValue, location_name: "AuthType"))
    MongoDbDataProviderSettings.add_member(:auth_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AuthSource"))
    MongoDbDataProviderSettings.add_member(:auth_mechanism, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMechanismValue, location_name: "AuthMechanism"))
    MongoDbDataProviderSettings.type = Types::MongoDbDataProviderSettings
    MongoDbSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MongoDbSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MongoDbSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MongoDbSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MongoDbSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MongoDbSettings.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthTypeValue, location_name: "AuthType"))
    MongoDbSettings.add_member(:auth_mechanism, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMechanismValue, location_name: "AuthMechanism"))
    MongoDbSettings.add_member(:nesting_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NestingLevelValue, location_name: "NestingLevel"))
    MongoDbSettings.add_member(:extract_doc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExtractDocId"))
    MongoDbSettings.add_member(:docs_to_investigate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DocsToInvestigate"))
    MongoDbSettings.add_member(:auth_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AuthSource"))
    MongoDbSettings.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    MongoDbSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    MongoDbSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    MongoDbSettings.add_member(:use_update_look_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseUpdateLookUp"))
    MongoDbSettings.add_member(:replicate_shard_collections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReplicateShardCollections"))
    MongoDbSettings.type = Types::MongoDbSettings
    MoveReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    MoveReplicationTaskMessage.add_member(:target_replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    MoveReplicationTaskMessage.type = Types::MoveReplicationTaskMessage
    MoveReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    MoveReplicationTaskResponse.type = Types::MoveReplicationTaskResponse
    MySQLAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    MySQLAuthenticationMethod.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    MySQLSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    MySQLSettings.add_member(:clean_source_metadata_on_mismatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CleanSourceMetadataOnMismatch"))
    MySQLSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MySQLSettings.add_member(:events_poll_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "EventsPollInterval"))
    MySQLSettings.add_member(:target_db_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDbType, location_name: "TargetDbType"))
    MySQLSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    MySQLSettings.add_member(:parallel_load_threads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ParallelLoadThreads"))
    MySQLSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MySQLSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MySQLSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MySQLSettings.add_member(:server_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerTimezone"))
    MySQLSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MySQLSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    MySQLSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    MySQLSettings.add_member(:execute_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ExecuteTimeout"))
    MySQLSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    MySQLSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MySQLAuthenticationMethod, location_name: "AuthenticationMethod"))
    MySQLSettings.type = Types::MySQLSettings
    MySqlDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MySqlDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MySqlDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    MySqlDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    MySqlDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    MySqlDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    MySqlDataProviderSettings.type = Types::MySqlDataProviderSettings
    NeptuneSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    NeptuneSettings.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    NeptuneSettings.add_member(:s3_bucket_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketFolder", traits: {"smithy.api#required" => {}}))
    NeptuneSettings.add_member(:error_retry_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ErrorRetryDuration"))
    NeptuneSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    NeptuneSettings.add_member(:max_retry_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRetryCount"))
    NeptuneSettings.add_member(:iam_auth_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IamAuthEnabled"))
    NeptuneSettings.type = Types::NeptuneSettings
    NestingLevelValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    NestingLevelValue.add_member(:one, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE", traits: {"smithy.api#enumValue" => "one"}))
    OracleAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    OracleAuthenticationMethod.add_member(:kerberos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kerberos", traits: {"smithy.api#enumValue" => "kerberos"}))
    OracleDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    OracleDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    OracleDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    OracleDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    OracleDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    OracleDataProviderSettings.add_member(:asm_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AsmServer"))
    OracleDataProviderSettings.add_member(:secrets_manager_oracle_asm_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmSecretId"))
    OracleDataProviderSettings.add_member(:secrets_manager_oracle_asm_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmAccessRoleArn"))
    OracleDataProviderSettings.add_member(:secrets_manager_security_db_encryption_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecurityDbEncryptionSecretId"))
    OracleDataProviderSettings.add_member(:secrets_manager_security_db_encryption_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecurityDbEncryptionAccessRoleArn"))
    OracleDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    OracleDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    OracleDataProviderSettings.type = Types::OracleDataProviderSettings
    OracleSettings.add_member(:add_supplemental_logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AddSupplementalLogging"))
    OracleSettings.add_member(:archived_log_dest_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ArchivedLogDestId"))
    OracleSettings.add_member(:additional_archived_log_dest_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AdditionalArchivedLogDestId"))
    OracleSettings.add_member(:extra_archived_log_dest_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerList, location_name: "ExtraArchivedLogDestIds"))
    OracleSettings.add_member(:allow_select_nested_tables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowSelectNestedTables"))
    OracleSettings.add_member(:parallel_asm_read_threads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ParallelAsmReadThreads"))
    OracleSettings.add_member(:read_ahead_blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ReadAheadBlocks"))
    OracleSettings.add_member(:access_alternate_directly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AccessAlternateDirectly"))
    OracleSettings.add_member(:use_alternate_folder_for_online, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseAlternateFolderForOnline"))
    OracleSettings.add_member(:oracle_path_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "OraclePathPrefix"))
    OracleSettings.add_member(:use_path_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "UsePathPrefix"))
    OracleSettings.add_member(:replace_path_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReplacePathPrefix"))
    OracleSettings.add_member(:enable_homogenous_tablespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableHomogenousTablespace"))
    OracleSettings.add_member(:direct_path_no_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DirectPathNoLog"))
    OracleSettings.add_member(:archived_logs_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ArchivedLogsOnly"))
    OracleSettings.add_member(:asm_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "AsmPassword"))
    OracleSettings.add_member(:asm_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AsmServer"))
    OracleSettings.add_member(:asm_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AsmUser"))
    OracleSettings.add_member(:char_length_semantics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharLengthSemantics, location_name: "CharLengthSemantics"))
    OracleSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    OracleSettings.add_member(:direct_path_parallel_load, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DirectPathParallelLoad"))
    OracleSettings.add_member(:fail_tasks_on_lob_truncation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "FailTasksOnLobTruncation"))
    OracleSettings.add_member(:number_datatype_scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberDatatypeScale"))
    OracleSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    OracleSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    OracleSettings.add_member(:read_table_space_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ReadTableSpaceName"))
    OracleSettings.add_member(:retry_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "RetryInterval"))
    OracleSettings.add_member(:security_db_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "SecurityDbEncryption"))
    OracleSettings.add_member(:security_db_encryption_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecurityDbEncryptionName"))
    OracleSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    OracleSettings.add_member(:spatial_data_option_to_geo_json_function_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SpatialDataOptionToGeoJsonFunctionName"))
    OracleSettings.add_member(:standby_delay_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StandbyDelayTime"))
    OracleSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    OracleSettings.add_member(:use_b_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseBFile"))
    OracleSettings.add_member(:use_direct_path_full_load, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDirectPathFullLoad"))
    OracleSettings.add_member(:use_logminer_reader, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseLogminerReader"))
    OracleSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    OracleSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    OracleSettings.add_member(:secrets_manager_oracle_asm_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmAccessRoleArn"))
    OracleSettings.add_member(:secrets_manager_oracle_asm_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerOracleAsmSecretId"))
    OracleSettings.add_member(:trim_space_in_char, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimSpaceInChar"))
    OracleSettings.add_member(:convert_timestamp_with_zone_to_utc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ConvertTimestampWithZoneToUTC"))
    OracleSettings.add_member(:open_transaction_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "OpenTransactionWindow"))
    OracleSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OracleAuthenticationMethod, location_name: "AuthenticationMethod"))
    OracleSettings.type = Types::OracleSettings
    OrderableReplicationInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    OrderableReplicationInstance.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    OrderableReplicationInstance.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    OrderableReplicationInstance.add_member(:min_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "MinAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:default_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "DefaultAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:included_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "IncludedAllocatedStorage", traits: {"smithy.api#default" => 0}))
    OrderableReplicationInstance.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: "AvailabilityZones"))
    OrderableReplicationInstance.add_member(:release_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseStatusValues, location_name: "ReleaseStatus"))
    OrderableReplicationInstance.type = Types::OrderableReplicationInstance
    OrderableReplicationInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableReplicationInstance, traits: {"smithy.api#xmlName" => "OrderableReplicationInstance"})
    OriginTypeValue.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOURCE", traits: {"smithy.api#enumValue" => "SOURCE"}))
    OriginTypeValue.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TARGET", traits: {"smithy.api#enumValue" => "TARGET"}))
    ParquetVersionValue.add_member(:parquet_1_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET_1_0", traits: {"smithy.api#enumValue" => "parquet-1-0"}))
    ParquetVersionValue.add_member(:parquet_2_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET_2_0", traits: {"smithy.api#enumValue" => "parquet-2-0"}))
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceAction, traits: {"smithy.api#xmlName" => "PendingMaintenanceAction"})
    PendingMaintenanceActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, traits: {"smithy.api#xmlName" => "ResourcePendingMaintenanceActions"})
    PluginNameValue.add_member(:no_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_PREFERENCE", traits: {"smithy.api#enumValue" => "no-preference"}))
    PluginNameValue.add_member(:test_decoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST_DECODING", traits: {"smithy.api#enumValue" => "test-decoding"}))
    PluginNameValue.add_member(:pglogical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PGLOGICAL", traits: {"smithy.api#enumValue" => "pglogical"}))
    PostgreSQLAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    PostgreSQLAuthenticationMethod.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    PostgreSQLSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    PostgreSQLSettings.add_member(:capture_ddls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CaptureDdls"))
    PostgreSQLSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    PostgreSQLSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    PostgreSQLSettings.add_member(:ddl_artifacts_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DdlArtifactsSchema"))
    PostgreSQLSettings.add_member(:execute_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ExecuteTimeout"))
    PostgreSQLSettings.add_member(:fail_tasks_on_lob_truncation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "FailTasksOnLobTruncation"))
    PostgreSQLSettings.add_member(:heartbeat_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "HeartbeatEnable"))
    PostgreSQLSettings.add_member(:heartbeat_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "HeartbeatSchema"))
    PostgreSQLSettings.add_member(:heartbeat_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "HeartbeatFrequency"))
    PostgreSQLSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    PostgreSQLSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PostgreSQLSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    PostgreSQLSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    PostgreSQLSettings.add_member(:slot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SlotName"))
    PostgreSQLSettings.add_member(:plugin_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginNameValue, location_name: "PluginName"))
    PostgreSQLSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    PostgreSQLSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    PostgreSQLSettings.add_member(:trim_space_in_char, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimSpaceInChar"))
    PostgreSQLSettings.add_member(:map_boolean_as_boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MapBooleanAsBoolean"))
    PostgreSQLSettings.add_member(:map_jsonb_as_clob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MapJsonbAsClob"))
    PostgreSQLSettings.add_member(:map_long_varchar_as, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongVarcharMappingType, location_name: "MapLongVarcharAs"))
    PostgreSQLSettings.add_member(:database_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseMode, location_name: "DatabaseMode"))
    PostgreSQLSettings.add_member(:babelfish_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BabelfishDatabaseName"))
    PostgreSQLSettings.add_member(:disable_unicode_source_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DisableUnicodeSourceFilter"))
    PostgreSQLSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    PostgreSQLSettings.add_member(:authentication_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostgreSQLAuthenticationMethod, location_name: "AuthenticationMethod"))
    PostgreSQLSettings.type = Types::PostgreSQLSettings
    PostgreSqlDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    PostgreSqlDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PostgreSqlDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    PostgreSqlDataProviderSettings.add_member(:ssl_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    PostgreSqlDataProviderSettings.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    PostgreSqlDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    PostgreSqlDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    PostgreSqlDataProviderSettings.type = Types::PostgreSqlDataProviderSettings
    PremigrationAssessmentStatus.add_member(:premigration_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PremigrationAssessmentRunArn"))
    PremigrationAssessmentStatus.add_member(:fail_on_assessment_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "FailOnAssessmentFailure", traits: {"smithy.api#default" => false}))
    PremigrationAssessmentStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    PremigrationAssessmentStatus.add_member(:premigration_assessment_run_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "PremigrationAssessmentRunCreationDate"))
    PremigrationAssessmentStatus.add_member(:assessment_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunProgress, location_name: "AssessmentProgress"))
    PremigrationAssessmentStatus.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    PremigrationAssessmentStatus.add_member(:result_location_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationBucket"))
    PremigrationAssessmentStatus.add_member(:result_location_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationFolder"))
    PremigrationAssessmentStatus.add_member(:result_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultEncryptionMode"))
    PremigrationAssessmentStatus.add_member(:result_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultKmsKeyArn"))
    PremigrationAssessmentStatus.add_member(:result_statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunResultStatistic, location_name: "ResultStatistic"))
    PremigrationAssessmentStatus.type = Types::PremigrationAssessmentStatus
    PremigrationAssessmentStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PremigrationAssessmentStatus)
    ProvisionData.add_member(:provision_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ProvisionState"))
    ProvisionData.add_member(:provisioned_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "ProvisionedCapacityUnits", traits: {"smithy.api#default" => 0}))
    ProvisionData.add_member(:date_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "DateProvisioned"))
    ProvisionData.add_member(:is_new_provisioning_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "IsNewProvisioningAvailable", traits: {"smithy.api#default" => false}))
    ProvisionData.add_member(:date_new_provisioning_data_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "DateNewProvisioningDataAvailable"))
    ProvisionData.add_member(:reason_for_new_provisioning_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReasonForNewProvisioningData"))
    ProvisionData.type = Types::ProvisionData
    PublicIpAddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    RdsConfiguration.add_member(:engine_edition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineEdition"))
    RdsConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    RdsConfiguration.add_member(:instance_vcpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceVcpu"))
    RdsConfiguration.add_member(:instance_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceMemory"))
    RdsConfiguration.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RdsConfiguration.add_member(:storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageSize"))
    RdsConfiguration.add_member(:storage_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageIops"))
    RdsConfiguration.add_member(:deployment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DeploymentOption"))
    RdsConfiguration.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RdsConfiguration.type = Types::RdsConfiguration
    RdsRecommendation.add_member(:requirements_to_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsRequirements, location_name: "RequirementsToTarget"))
    RdsRecommendation.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsConfiguration, location_name: "TargetConfiguration"))
    RdsRecommendation.type = Types::RdsRecommendation
    RdsRequirements.add_member(:engine_edition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineEdition"))
    RdsRequirements.add_member(:instance_vcpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceVcpu"))
    RdsRequirements.add_member(:instance_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "InstanceMemory"))
    RdsRequirements.add_member(:storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageSize"))
    RdsRequirements.add_member(:storage_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageIops"))
    RdsRequirements.add_member(:deployment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DeploymentOption"))
    RdsRequirements.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RdsRequirements.type = Types::RdsRequirements
    RebootReplicationInstanceMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    RebootReplicationInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootReplicationInstanceMessage.add_member(:force_planned_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForcePlannedFailover"))
    RebootReplicationInstanceMessage.type = Types::RebootReplicationInstanceMessage
    RebootReplicationInstanceResponse.add_member(:replication_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    RebootReplicationInstanceResponse.type = Types::RebootReplicationInstanceResponse
    Recommendation.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    Recommendation.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Recommendation.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CreatedDate"))
    Recommendation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Recommendation.add_member(:preferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Preferred"))
    Recommendation.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSettings, location_name: "Settings"))
    Recommendation.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationData, location_name: "Data"))
    Recommendation.type = Types::Recommendation
    RecommendationData.add_member(:rds_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsRecommendation, location_name: "RdsEngine"))
    RecommendationData.type = Types::RecommendationData
    RecommendationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation)
    RecommendationSettings.add_member(:instance_sizing_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "InstanceSizingType", traits: {"smithy.api#required" => {}}))
    RecommendationSettings.add_member(:workload_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "WorkloadType", traits: {"smithy.api#required" => {}}))
    RecommendationSettings.type = Types::RecommendationSettings
    RedisAuthTypeValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    RedisAuthTypeValue.add_member(:auth_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTH_ROLE", traits: {"smithy.api#enumValue" => "auth-role"}))
    RedisAuthTypeValue.add_member(:auth_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTH_TOKEN", traits: {"smithy.api#enumValue" => "auth-token"}))
    RedisSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName", traits: {"smithy.api#required" => {}}))
    RedisSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Port", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RedisSettings.add_member(:ssl_security_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SslSecurityProtocolValue, location_name: "SslSecurityProtocol"))
    RedisSettings.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedisAuthTypeValue, location_name: "AuthType"))
    RedisSettings.add_member(:auth_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AuthUserName"))
    RedisSettings.add_member(:auth_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "AuthPassword"))
    RedisSettings.add_member(:ssl_ca_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SslCaCertificateArn"))
    RedisSettings.type = Types::RedisSettings
    RedshiftDataProviderSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    RedshiftDataProviderSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RedshiftDataProviderSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RedshiftDataProviderSettings.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3Path"))
    RedshiftDataProviderSettings.add_member(:s3_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3AccessRoleArn"))
    RedshiftDataProviderSettings.type = Types::RedshiftDataProviderSettings
    RedshiftSettings.add_member(:accept_any_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AcceptAnyDate"))
    RedshiftSettings.add_member(:after_connect_script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AfterConnectScript"))
    RedshiftSettings.add_member(:bucket_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BucketFolder"))
    RedshiftSettings.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    RedshiftSettings.add_member(:case_sensitive_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CaseSensitiveNames"))
    RedshiftSettings.add_member(:comp_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CompUpdate"))
    RedshiftSettings.add_member(:connection_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ConnectionTimeout"))
    RedshiftSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RedshiftSettings.add_member(:date_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DateFormat"))
    RedshiftSettings.add_member(:empty_as_null, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EmptyAsNull"))
    RedshiftSettings.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionModeValue, location_name: "EncryptionMode"))
    RedshiftSettings.add_member(:explicit_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ExplicitIds"))
    RedshiftSettings.add_member(:file_transfer_upload_streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "FileTransferUploadStreams"))
    RedshiftSettings.add_member(:load_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "LoadTimeout"))
    RedshiftSettings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    RedshiftSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    RedshiftSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RedshiftSettings.add_member(:remove_quotes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RemoveQuotes"))
    RedshiftSettings.add_member(:replace_invalid_chars, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplaceInvalidChars"))
    RedshiftSettings.add_member(:replace_chars, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplaceChars"))
    RedshiftSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    RedshiftSettings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    RedshiftSettings.add_member(:server_side_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerSideEncryptionKmsKeyId"))
    RedshiftSettings.add_member(:time_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TimeFormat"))
    RedshiftSettings.add_member(:trim_blanks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TrimBlanks"))
    RedshiftSettings.add_member(:truncate_columns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TruncateColumns"))
    RedshiftSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    RedshiftSettings.add_member(:write_buffer_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "WriteBufferSize"))
    RedshiftSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    RedshiftSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    RedshiftSettings.add_member(:map_boolean_as_boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MapBooleanAsBoolean"))
    RedshiftSettings.type = Types::RedshiftSettings
    RefreshSchemasMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    RefreshSchemasMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    RefreshSchemasMessage.type = Types::RefreshSchemasMessage
    RefreshSchemasResponse.add_member(:refresh_schemas_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchemasStatus, location_name: "RefreshSchemasStatus"))
    RefreshSchemasResponse.type = Types::RefreshSchemasResponse
    RefreshSchemasStatus.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    RefreshSchemasStatus.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    RefreshSchemasStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchemasStatusTypeValue, location_name: "Status"))
    RefreshSchemasStatus.add_member(:last_refresh_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "LastRefreshDate"))
    RefreshSchemasStatus.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    RefreshSchemasStatus.type = Types::RefreshSchemasStatus
    RefreshSchemasStatusTypeValue.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "successful"}))
    RefreshSchemasStatusTypeValue.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    RefreshSchemasStatusTypeValue.add_member(:refreshing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REFRESHING", traits: {"smithy.api#enumValue" => "refreshing"}))
    ReleaseStatusValues.add_member(:beta, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETA", traits: {"smithy.api#enumValue" => "beta"}))
    ReleaseStatusValues.add_member(:prod, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROD", traits: {"smithy.api#enumValue" => "prod"}))
    ReloadOptionValue.add_member(:data_reload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_RELOAD", traits: {"smithy.api#enumValue" => "data-reload"}))
    ReloadOptionValue.add_member(:validate_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_ONLY", traits: {"smithy.api#enumValue" => "validate-only"}))
    ReloadReplicationTablesMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    ReloadReplicationTablesMessage.add_member(:tables_to_reload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableListToReload, location_name: "TablesToReload", traits: {"smithy.api#required" => {}}))
    ReloadReplicationTablesMessage.add_member(:reload_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReloadOptionValue, location_name: "ReloadOption"))
    ReloadReplicationTablesMessage.type = Types::ReloadReplicationTablesMessage
    ReloadReplicationTablesResponse.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    ReloadReplicationTablesResponse.type = Types::ReloadReplicationTablesResponse
    ReloadTablesMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    ReloadTablesMessage.add_member(:tables_to_reload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableListToReload, location_name: "TablesToReload", traits: {"smithy.api#required" => {}}))
    ReloadTablesMessage.add_member(:reload_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReloadOptionValue, location_name: "ReloadOption"))
    ReloadTablesMessage.type = Types::ReloadTablesMessage
    ReloadTablesResponse.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReloadTablesResponse.type = Types::ReloadTablesResponse
    RemoveTagsFromResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    RemoveTagsFromResourceResponse.type = Types::RemoveTagsFromResourceResponse
    Replication.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier"))
    Replication.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    Replication.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    Replication.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    Replication.add_member(:replication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType"))
    Replication.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Replication.add_member(:provision_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionData, location_name: "ProvisionData"))
    Replication.add_member(:premigration_assessment_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PremigrationAssessmentStatusList, location_name: "PremigrationAssessmentStatuses"))
    Replication.add_member(:stop_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    Replication.add_member(:failure_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "FailureMessages"))
    Replication.add_member(:replication_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStats, location_name: "ReplicationStats"))
    Replication.add_member(:start_replication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StartReplicationType"))
    Replication.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    Replication.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    Replication.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    Replication.add_member(:recovery_checkpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RecoveryCheckpoint"))
    Replication.add_member(:replication_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationCreateTime"))
    Replication.add_member(:replication_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationUpdateTime"))
    Replication.add_member(:replication_last_stop_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationLastStopTime"))
    Replication.add_member(:replication_deprovision_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationDeprovisionTime"))
    Replication.type = Types::Replication
    ReplicationConfig.add_member(:replication_config_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigIdentifier"))
    ReplicationConfig.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn"))
    ReplicationConfig.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ReplicationConfig.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ReplicationConfig.add_member(:replication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "ReplicationType"))
    ReplicationConfig.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfig, location_name: "ComputeConfig"))
    ReplicationConfig.add_member(:replication_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSettings"))
    ReplicationConfig.add_member(:supplemental_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SupplementalSettings"))
    ReplicationConfig.add_member(:table_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ReplicationConfig.add_member(:replication_config_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationConfigCreateTime"))
    ReplicationConfig.add_member(:replication_config_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationConfigUpdateTime"))
    ReplicationConfig.type = Types::ReplicationConfig
    ReplicationConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfig, traits: {"smithy.api#xmlName" => "ReplicationConfig"})
    ReplicationEndpointTypeValue.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOURCE", traits: {"smithy.api#enumValue" => "source"}))
    ReplicationEndpointTypeValue.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TARGET", traits: {"smithy.api#enumValue" => "target"}))
    ReplicationInstance.add_member(:replication_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    ReplicationInstance.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    ReplicationInstance.add_member(:replication_instance_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceStatus"))
    ReplicationInstance.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage", traits: {"smithy.api#default" => 0}))
    ReplicationInstance.add_member(:instance_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    ReplicationInstance.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    ReplicationInstance.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ReplicationInstance.add_member(:replication_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    ReplicationInstance.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ReplicationInstance.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationPendingModifiedValues, location_name: "PendingModifiedValues"))
    ReplicationInstance.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ", traits: {"smithy.api#default" => false}))
    ReplicationInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ReplicationInstance.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade", traits: {"smithy.api#default" => false}))
    ReplicationInstance.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ReplicationInstance.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    ReplicationInstance.add_member(:replication_instance_public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstancePublicIpAddress", traits: {"smithy.api#deprecated" => {}}))
    ReplicationInstance.add_member(:replication_instance_private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstancePrivateIpAddress", traits: {"smithy.api#deprecated" => {}}))
    ReplicationInstance.add_member(:replication_instance_public_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstancePublicIpAddressList, location_name: "ReplicationInstancePublicIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_private_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstancePrivateIpAddressList, location_name: "ReplicationInstancePrivateIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_ipv6_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceIpv6AddressList, location_name: "ReplicationInstanceIpv6Addresses"))
    ReplicationInstance.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible", traits: {"smithy.api#default" => false}))
    ReplicationInstance.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecondaryAvailabilityZone"))
    ReplicationInstance.add_member(:free_until, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FreeUntil"))
    ReplicationInstance.add_member(:dns_name_servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DnsNameServers"))
    ReplicationInstance.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ReplicationInstance.add_member(:kerberos_authentication_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosAuthenticationSettings, location_name: "KerberosAuthenticationSettings"))
    ReplicationInstance.type = Types::ReplicationInstance
    ReplicationInstanceIpv6AddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ReplicationInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstance, traits: {"smithy.api#xmlName" => "ReplicationInstance"})
    ReplicationInstancePrivateIpAddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ReplicationInstancePublicIpAddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ReplicationInstanceTaskLog.add_member(:replication_task_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskName"))
    ReplicationInstanceTaskLog.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationInstanceTaskLog.add_member(:replication_instance_task_log_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ReplicationInstanceTaskLogSize", traits: {"smithy.api#default" => 0}))
    ReplicationInstanceTaskLog.type = Types::ReplicationInstanceTaskLog
    ReplicationInstanceTaskLogsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceTaskLog)
    ReplicationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Replication, traits: {"smithy.api#xmlName" => "Replication"})
    ReplicationPendingModifiedValues.add_member(:replication_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInstanceClass, location_name: "ReplicationInstanceClass"))
    ReplicationPendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ReplicationPendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ReplicationPendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ReplicationPendingModifiedValues.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ReplicationPendingModifiedValues.type = Types::ReplicationPendingModifiedValues
    ReplicationStats.add_member(:full_load_progress_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadProgressPercent", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:elapsed_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_loaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_loading, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:tables_errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored", traits: {"smithy.api#default" => 0}))
    ReplicationStats.add_member(:fresh_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FreshStartDate"))
    ReplicationStats.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "StartDate"))
    ReplicationStats.add_member(:stop_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "StopDate"))
    ReplicationStats.add_member(:full_load_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadStartDate"))
    ReplicationStats.add_member(:full_load_finish_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadFinishDate"))
    ReplicationStats.type = Types::ReplicationStats
    ReplicationSubnetGroup.add_member(:replication_subnet_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier"))
    ReplicationSubnetGroup.add_member(:replication_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription"))
    ReplicationSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ReplicationSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    ReplicationSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    ReplicationSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "SupportedNetworkTypes"))
    ReplicationSubnetGroup.type = Types::ReplicationSubnetGroup
    ReplicationSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReplicationSubnetGroupDoesNotCoverEnoughAZs.type = Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs
    ReplicationSubnetGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, traits: {"smithy.api#xmlName" => "ReplicationSubnetGroup"})
    ReplicationTableStatisticsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatistics)
    ReplicationTask.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ReplicationTask.add_member(:source_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ReplicationTask.add_member(:target_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ReplicationTask.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    ReplicationTask.add_member(:migration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    ReplicationTask.add_member(:table_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ReplicationTask.add_member(:replication_task_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    ReplicationTask.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTask.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    ReplicationTask.add_member(:stop_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    ReplicationTask.add_member(:replication_task_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskCreationDate"))
    ReplicationTask.add_member(:replication_task_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskStartDate"))
    ReplicationTask.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    ReplicationTask.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    ReplicationTask.add_member(:recovery_checkpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RecoveryCheckpoint"))
    ReplicationTask.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTask.add_member(:replication_task_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskStats, location_name: "ReplicationTaskStats"))
    ReplicationTask.add_member(:task_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TaskData"))
    ReplicationTask.add_member(:target_replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TargetReplicationInstanceArn"))
    ReplicationTask.type = Types::ReplicationTask
    ReplicationTaskAssessmentResult.add_member(:replication_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_last_assessment_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskLastAssessmentDate"))
    ReplicationTaskAssessmentResult.add_member(:assessment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AssessmentStatus"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AssessmentResultsFile"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AssessmentResults"))
    ReplicationTaskAssessmentResult.add_member(:s3_object_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "S3ObjectUrl"))
    ReplicationTaskAssessmentResult.type = Types::ReplicationTaskAssessmentResult
    ReplicationTaskAssessmentResultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentResult, traits: {"smithy.api#xmlName" => "ReplicationTaskAssessmentResult"})
    ReplicationTaskAssessmentRun.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskAssessmentRunArn"))
    ReplicationTaskAssessmentRun.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentRun.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTaskAssessmentRun.add_member(:replication_task_assessment_run_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskAssessmentRunCreationDate"))
    ReplicationTaskAssessmentRun.add_member(:assessment_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunProgress, location_name: "AssessmentProgress"))
    ReplicationTaskAssessmentRun.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    ReplicationTaskAssessmentRun.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ReplicationTaskAssessmentRun.add_member(:result_location_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationBucket"))
    ReplicationTaskAssessmentRun.add_member(:result_location_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationFolder"))
    ReplicationTaskAssessmentRun.add_member(:result_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultEncryptionMode"))
    ReplicationTaskAssessmentRun.add_member(:result_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultKmsKeyArn"))
    ReplicationTaskAssessmentRun.add_member(:assessment_run_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AssessmentRunName"))
    ReplicationTaskAssessmentRun.add_member(:is_latest_task_assessment_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLatestTaskAssessmentRun", traits: {"smithy.api#default" => false}))
    ReplicationTaskAssessmentRun.add_member(:result_statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRunResultStatistic, location_name: "ResultStatistic"))
    ReplicationTaskAssessmentRun.type = Types::ReplicationTaskAssessmentRun
    ReplicationTaskAssessmentRunList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun)
    ReplicationTaskAssessmentRunProgress.add_member(:individual_assessment_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "IndividualAssessmentCount", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunProgress.add_member(:individual_assessment_completed_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "IndividualAssessmentCompletedCount", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunProgress.type = Types::ReplicationTaskAssessmentRunProgress
    ReplicationTaskAssessmentRunResultStatistic.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Passed", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Failed", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Error", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Warning", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Cancelled", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Skipped", traits: {"smithy.api#default" => 0}))
    ReplicationTaskAssessmentRunResultStatistic.type = Types::ReplicationTaskAssessmentRunResultStatistic
    ReplicationTaskIndividualAssessment.add_member(:replication_task_individual_assessment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIndividualAssessmentArn"))
    ReplicationTaskIndividualAssessment.add_member(:replication_task_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskAssessmentRunArn"))
    ReplicationTaskIndividualAssessment.add_member(:individual_assessment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IndividualAssessmentName"))
    ReplicationTaskIndividualAssessment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTaskIndividualAssessment.add_member(:replication_task_individual_assessment_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskIndividualAssessmentStartDate"))
    ReplicationTaskIndividualAssessment.type = Types::ReplicationTaskIndividualAssessment
    ReplicationTaskIndividualAssessmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskIndividualAssessment)
    ReplicationTaskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, traits: {"smithy.api#xmlName" => "ReplicationTask"})
    ReplicationTaskStats.add_member(:full_load_progress_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadProgressPercent", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:elapsed_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_loaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_loading, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:tables_errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored", traits: {"smithy.api#default" => 0}))
    ReplicationTaskStats.add_member(:fresh_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FreshStartDate"))
    ReplicationTaskStats.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "StartDate"))
    ReplicationTaskStats.add_member(:stop_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "StopDate"))
    ReplicationTaskStats.add_member(:full_load_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadStartDate"))
    ReplicationTaskStats.add_member(:full_load_finish_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadFinishDate"))
    ReplicationTaskStats.type = Types::ReplicationTaskStats
    ResourceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceAlreadyExistsFault.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    ResourceAlreadyExistsFault.type = Types::ResourceAlreadyExistsFault
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePendingMaintenanceActions.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.type = Types::ResourcePendingMaintenanceActions
    ResourceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceQuotaExceededFault.type = Types::ResourceQuotaExceededFault
    RunFleetAdvisorLsaAnalysisResponse.add_member(:lsa_analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LsaAnalysisId"))
    RunFleetAdvisorLsaAnalysisResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    RunFleetAdvisorLsaAnalysisResponse.type = Types::RunFleetAdvisorLsaAnalysisResponse
    S3AccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    S3AccessDeniedFault.type = Types::S3AccessDeniedFault
    S3ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    S3ResourceNotFoundFault.type = Types::S3ResourceNotFoundFault
    S3Settings.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    S3Settings.add_member(:external_table_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    S3Settings.add_member(:csv_row_delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CsvRowDelimiter"))
    S3Settings.add_member(:csv_delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CsvDelimiter"))
    S3Settings.add_member(:bucket_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BucketFolder"))
    S3Settings.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    S3Settings.add_member(:compression_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompressionTypeValue, location_name: "CompressionType"))
    S3Settings.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionModeValue, location_name: "EncryptionMode"))
    S3Settings.add_member(:server_side_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerSideEncryptionKmsKeyId"))
    S3Settings.add_member(:data_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFormatValue, location_name: "DataFormat"))
    S3Settings.add_member(:encoding_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncodingTypeValue, location_name: "EncodingType"))
    S3Settings.add_member(:dict_page_size_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DictPageSizeLimit"))
    S3Settings.add_member(:row_group_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "RowGroupLength"))
    S3Settings.add_member(:data_page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DataPageSize"))
    S3Settings.add_member(:parquet_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetVersionValue, location_name: "ParquetVersion"))
    S3Settings.add_member(:enable_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableStatistics"))
    S3Settings.add_member(:include_op_for_full_load, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeOpForFullLoad"))
    S3Settings.add_member(:cdc_inserts_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CdcInsertsOnly"))
    S3Settings.add_member(:timestamp_column_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TimestampColumnName"))
    S3Settings.add_member(:parquet_timestamp_in_millisecond, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ParquetTimestampInMillisecond"))
    S3Settings.add_member(:cdc_inserts_and_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CdcInsertsAndUpdates"))
    S3Settings.add_member(:date_partition_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DatePartitionEnabled"))
    S3Settings.add_member(:date_partition_sequence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatePartitionSequenceValue, location_name: "DatePartitionSequence"))
    S3Settings.add_member(:date_partition_delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatePartitionDelimiterValue, location_name: "DatePartitionDelimiter"))
    S3Settings.add_member(:use_csv_no_sup_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseCsvNoSupValue"))
    S3Settings.add_member(:csv_no_sup_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CsvNoSupValue"))
    S3Settings.add_member(:preserve_transactions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PreserveTransactions"))
    S3Settings.add_member(:cdc_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcPath"))
    S3Settings.add_member(:use_task_start_time_for_full_load_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseTaskStartTimeForFullLoadTimestamp"))
    S3Settings.add_member(:canned_acl_for_objects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CannedAclForObjectsValue, location_name: "CannedAclForObjects"))
    S3Settings.add_member(:add_column_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AddColumnName"))
    S3Settings.add_member(:cdc_max_batch_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "CdcMaxBatchInterval"))
    S3Settings.add_member(:cdc_min_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "CdcMinFileSize"))
    S3Settings.add_member(:csv_null_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CsvNullValue"))
    S3Settings.add_member(:ignore_header_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IgnoreHeaderRows"))
    S3Settings.add_member(:max_file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxFileSize"))
    S3Settings.add_member(:rfc4180, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Rfc4180"))
    S3Settings.add_member(:date_partition_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatePartitionTimezone"))
    S3Settings.add_member(:add_trailing_padding_character, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AddTrailingPaddingCharacter"))
    S3Settings.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ExpectedBucketOwner"))
    S3Settings.add_member(:glue_catalog_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "GlueCatalogGeneration"))
    S3Settings.type = Types::S3Settings
    SCApplicationAttributes.add_member(:s3_bucket_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketPath"))
    SCApplicationAttributes.add_member(:s3_bucket_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "S3BucketRoleArn"))
    SCApplicationAttributes.type = Types::SCApplicationAttributes
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SafeguardPolicy.add_member(:rely_on_sql_server_replication_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELY_ON_SQL_SERVER_REPLICATION_AGENT", traits: {"smithy.api#enumValue" => "rely-on-sql-server-replication-agent"}))
    SafeguardPolicy.add_member(:exclusive_automatic_truncation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCLUSIVE_AUTOMATIC_TRUNCATION", traits: {"smithy.api#enumValue" => "exclusive-automatic-truncation"}))
    SafeguardPolicy.add_member(:shared_automatic_truncation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED_AUTOMATIC_TRUNCATION", traits: {"smithy.api#enumValue" => "shared-automatic-truncation"}))
    SchemaConversionRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SchemaConversionRequest.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    SchemaConversionRequest.add_member(:migration_project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MigrationProjectArn"))
    SchemaConversionRequest.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "Error"))
    SchemaConversionRequest.add_member(:export_sql_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSqlDetails, location_name: "ExportSqlDetails"))
    SchemaConversionRequest.type = Types::SchemaConversionRequest
    SchemaConversionRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConversionRequest)
    SchemaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SchemaResponse.add_member(:code_line_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeLineCount"))
    SchemaResponse.add_member(:code_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "CodeSize"))
    SchemaResponse.add_member(:complexity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Complexity"))
    SchemaResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerShortInfoResponse, location_name: "Server"))
    SchemaResponse.add_member(:database_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseShortInfoResponse, location_name: "DatabaseInstance"))
    SchemaResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaId"))
    SchemaResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    SchemaResponse.add_member(:original_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaShortInfoResponse, location_name: "OriginalSchema"))
    SchemaResponse.add_member(:similarity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "Similarity"))
    SchemaResponse.type = Types::SchemaResponse
    SchemaShortInfoResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaId"))
    SchemaShortInfoResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    SchemaShortInfoResponse.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId"))
    SchemaShortInfoResponse.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    SchemaShortInfoResponse.add_member(:database_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseIpAddress"))
    SchemaShortInfoResponse.type = Types::SchemaShortInfoResponse
    ServerShortInfoResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerId"))
    ServerShortInfoResponse.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    ServerShortInfoResponse.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    ServerShortInfoResponse.type = Types::ServerShortInfoResponse
    SourceDataSetting.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CDCStartPosition"))
    SourceDataSetting.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CDCStartTime"))
    SourceDataSetting.add_member(:cdc_stop_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CDCStopTime"))
    SourceDataSetting.add_member(:slot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SlotName"))
    SourceDataSetting.type = Types::SourceDataSetting
    SourceDataSettings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDataSetting)
    SourceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SourceId"})
    SourceType.add_member(:replication_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "replication_instance", traits: {"smithy.api#enumValue" => "replication-instance"}))
    SqlServerAuthenticationMethod.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Password", traits: {"smithy.api#enumValue" => "password"}))
    SqlServerAuthenticationMethod.add_member(:kerberos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kerberos", traits: {"smithy.api#enumValue" => "kerberos"}))
    SslSecurityProtocolValue.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "plaintext"}))
    SslSecurityProtocolValue.add_member(:ssl_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSL_ENCRYPTION", traits: {"smithy.api#enumValue" => "ssl-encryption"}))
    StartDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    StartDataMigrationMessage.add_member(:start_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationMigrationTypeValue, location_name: "StartType", traits: {"smithy.api#required" => {}}))
    StartDataMigrationMessage.type = Types::StartDataMigrationMessage
    StartDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    StartDataMigrationResponse.type = Types::StartDataMigrationResponse
    StartExtensionPackAssociationMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartExtensionPackAssociationMessage.type = Types::StartExtensionPackAssociationMessage
    StartExtensionPackAssociationResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartExtensionPackAssociationResponse.type = Types::StartExtensionPackAssociationResponse
    StartMetadataModelAssessmentMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelAssessmentMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelAssessmentMessage.type = Types::StartMetadataModelAssessmentMessage
    StartMetadataModelAssessmentResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelAssessmentResponse.type = Types::StartMetadataModelAssessmentResponse
    StartMetadataModelConversionMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelConversionMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelConversionMessage.type = Types::StartMetadataModelConversionMessage
    StartMetadataModelConversionResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelConversionResponse.type = Types::StartMetadataModelConversionResponse
    StartMetadataModelExportAsScriptMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportAsScriptMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportAsScriptMessage.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginTypeValue, location_name: "Origin", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportAsScriptMessage.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FileName"))
    StartMetadataModelExportAsScriptMessage.type = Types::StartMetadataModelExportAsScriptMessage
    StartMetadataModelExportAsScriptResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelExportAsScriptResponse.type = Types::StartMetadataModelExportAsScriptResponse
    StartMetadataModelExportToTargetMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportToTargetMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelExportToTargetMessage.add_member(:overwrite_extension_pack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "OverwriteExtensionPack"))
    StartMetadataModelExportToTargetMessage.type = Types::StartMetadataModelExportToTargetMessage
    StartMetadataModelExportToTargetResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelExportToTargetResponse.type = Types::StartMetadataModelExportToTargetResponse
    StartMetadataModelImportMessage.add_member(:migration_project_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationProjectIdentifier, location_name: "MigrationProjectIdentifier", traits: {"smithy.api#required" => {}}))
    StartMetadataModelImportMessage.add_member(:selection_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SelectionRules", traits: {"smithy.api#required" => {}}))
    StartMetadataModelImportMessage.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginTypeValue, location_name: "Origin", traits: {"smithy.api#required" => {}}))
    StartMetadataModelImportMessage.add_member(:refresh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Refresh", traits: {"smithy.api#default" => false}))
    StartMetadataModelImportMessage.type = Types::StartMetadataModelImportMessage
    StartMetadataModelImportResponse.add_member(:request_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "RequestIdentifier"))
    StartMetadataModelImportResponse.type = Types::StartMetadataModelImportResponse
    StartRecommendationsRequest.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSettings, location_name: "Settings", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequest.type = Types::StartRecommendationsRequest
    StartRecommendationsRequestEntry.add_member(:database_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseId", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequestEntry.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSettings, location_name: "Settings", traits: {"smithy.api#required" => {}}))
    StartRecommendationsRequestEntry.type = Types::StartRecommendationsRequestEntry
    StartRecommendationsRequestEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommendationsRequestEntry)
    StartReplicationMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    StartReplicationMessage.add_member(:start_replication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "StartReplicationType", traits: {"smithy.api#required" => {}}))
    StartReplicationMessage.add_member(:premigration_assessment_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PremigrationAssessmentSettings"))
    StartReplicationMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    StartReplicationMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    StartReplicationMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    StartReplicationMessage.type = Types::StartReplicationMessage
    StartReplicationMigrationTypeValue.add_member(:reload_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELOAD_TARGET", traits: {"smithy.api#enumValue" => "reload-target"}))
    StartReplicationMigrationTypeValue.add_member(:resume_processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESUME_PROCESSING", traits: {"smithy.api#enumValue" => "resume-processing"}))
    StartReplicationMigrationTypeValue.add_member(:start_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_REPLICATION", traits: {"smithy.api#enumValue" => "start-replication"}))
    StartReplicationResponse.add_member(:replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Replication, location_name: "Replication"))
    StartReplicationResponse.type = Types::StartReplicationResponse
    StartReplicationTaskAssessmentMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentMessage.type = Types::StartReplicationTaskAssessmentMessage
    StartReplicationTaskAssessmentResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StartReplicationTaskAssessmentResponse.type = Types::StartReplicationTaskAssessmentResponse
    StartReplicationTaskAssessmentRunMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:service_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_location_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationBucket", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_location_folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultLocationFolder"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultEncryptionMode"))
    StartReplicationTaskAssessmentRunMessage.add_member(:result_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResultKmsKeyArn"))
    StartReplicationTaskAssessmentRunMessage.add_member(:assessment_run_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AssessmentRunName", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskAssessmentRunMessage.add_member(:include_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTestList, location_name: "IncludeOnly"))
    StartReplicationTaskAssessmentRunMessage.add_member(:exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeTestList, location_name: "Exclude"))
    StartReplicationTaskAssessmentRunMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartReplicationTaskAssessmentRunMessage.type = Types::StartReplicationTaskAssessmentRunMessage
    StartReplicationTaskAssessmentRunResponse.add_member(:replication_task_assessment_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentRun, location_name: "ReplicationTaskAssessmentRun"))
    StartReplicationTaskAssessmentRunResponse.type = Types::StartReplicationTaskAssessmentRunResponse
    StartReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskMessage.add_member(:start_replication_task_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskTypeValue, location_name: "StartReplicationTaskType", traits: {"smithy.api#required" => {}}))
    StartReplicationTaskMessage.add_member(:cdc_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    StartReplicationTaskMessage.add_member(:cdc_start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    StartReplicationTaskMessage.add_member(:cdc_stop_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    StartReplicationTaskMessage.type = Types::StartReplicationTaskMessage
    StartReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StartReplicationTaskResponse.type = Types::StartReplicationTaskResponse
    StartReplicationTaskTypeValue.add_member(:start_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_REPLICATION", traits: {"smithy.api#enumValue" => "start-replication"}))
    StartReplicationTaskTypeValue.add_member(:resume_processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESUME_PROCESSING", traits: {"smithy.api#enumValue" => "resume-processing"}))
    StartReplicationTaskTypeValue.add_member(:reload_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELOAD_TARGET", traits: {"smithy.api#enumValue" => "reload-target"}))
    StopDataMigrationMessage.add_member(:data_migration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DataMigrationIdentifier", traits: {"smithy.api#required" => {}}))
    StopDataMigrationMessage.type = Types::StopDataMigrationMessage
    StopDataMigrationResponse.add_member(:data_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataMigration, location_name: "DataMigration"))
    StopDataMigrationResponse.type = Types::StopDataMigrationResponse
    StopReplicationMessage.add_member(:replication_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationConfigArn", traits: {"smithy.api#required" => {}}))
    StopReplicationMessage.type = Types::StopReplicationMessage
    StopReplicationResponse.add_member(:replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Replication, location_name: "Replication"))
    StopReplicationResponse.type = Types::StopReplicationResponse
    StopReplicationTaskMessage.add_member(:replication_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn", traits: {"smithy.api#required" => {}}))
    StopReplicationTaskMessage.type = Types::StopReplicationTaskMessage
    StopReplicationTaskResponse.add_member(:replication_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StopReplicationTaskResponse.type = Types::StopReplicationTaskResponse
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SupportedEndpointType.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    SupportedEndpointType.add_member(:supports_cdc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsCDC", traits: {"smithy.api#default" => false}))
    SupportedEndpointType.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    SupportedEndpointType.add_member(:replication_instance_engine_minimum_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceEngineMinimumVersion"))
    SupportedEndpointType.add_member(:engine_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EngineDisplayName"))
    SupportedEndpointType.type = Types::SupportedEndpointType
    SupportedEndpointTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEndpointType, traits: {"smithy.api#xmlName" => "SupportedEndpointType"})
    SybaseSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    SybaseSettings.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    SybaseSettings.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    SybaseSettings.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    SybaseSettings.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    SybaseSettings.add_member(:secrets_manager_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerAccessRoleArn"))
    SybaseSettings.add_member(:secrets_manager_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SecretsManagerSecretId"))
    SybaseSettings.type = Types::SybaseSettings
    TableListToReload.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableToReload)
    TablePreparationMode.add_member(:do_nothing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO_NOTHING", traits: {"smithy.api#enumValue" => "do-nothing"}))
    TablePreparationMode.add_member(:truncate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRUNCATE", traits: {"smithy.api#enumValue" => "truncate"}))
    TablePreparationMode.add_member(:drop_tables_on_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DROP_TABLES_ON_TARGET", traits: {"smithy.api#enumValue" => "drop-tables-on-target"}))
    TableStatistics.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    TableStatistics.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    TableStatistics.add_member(:inserts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Inserts", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:deletes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Deletes", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Updates", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:ddls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Ddls", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:applied_inserts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedInserts"))
    TableStatistics.add_member(:applied_deletes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedDeletes"))
    TableStatistics.add_member(:applied_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedUpdates"))
    TableStatistics.add_member(:applied_ddls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "AppliedDdls"))
    TableStatistics.add_member(:full_load_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadRows", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:full_load_condtnl_chk_failed_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadCondtnlChkFailedRows", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:full_load_error_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadErrorRows", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:full_load_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadStartTime"))
    TableStatistics.add_member(:full_load_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "FullLoadEndTime"))
    TableStatistics.add_member(:full_load_reloaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "FullLoadReloaded"))
    TableStatistics.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: "LastUpdateTime"))
    TableStatistics.add_member(:table_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableState"))
    TableStatistics.add_member(:validation_pending_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ValidationPendingRecords", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:validation_failed_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ValidationFailedRecords", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:validation_suspended_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "ValidationSuspendedRecords", traits: {"smithy.api#default" => 0}))
    TableStatistics.add_member(:validation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ValidationState"))
    TableStatistics.add_member(:validation_state_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ValidationStateDetails"))
    TableStatistics.add_member(:resync_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResyncState"))
    TableStatistics.add_member(:resync_rows_attempted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "ResyncRowsAttempted"))
    TableStatistics.add_member(:resync_rows_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "ResyncRowsSucceeded"))
    TableStatistics.add_member(:resync_rows_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: "ResyncRowsFailed"))
    TableStatistics.add_member(:resync_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "ResyncProgress"))
    TableStatistics.type = Types::TableStatistics
    TableStatisticsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatistics)
    TableToReload.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SchemaName", traits: {"smithy.api#required" => {}}))
    TableToReload.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    TableToReload.type = Types::TableToReload
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TargetDataSetting.add_member(:table_preparation_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TablePreparationMode, location_name: "TablePreparationMode"))
    TargetDataSetting.type = Types::TargetDataSetting
    TargetDataSettings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDataSetting)
    TargetDbType.add_member(:specific_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPECIFIC_DATABASE", traits: {"smithy.api#enumValue" => "specific-database"}))
    TargetDbType.add_member(:multiple_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLE_DATABASES", traits: {"smithy.api#enumValue" => "multiple-databases"}))
    TestConnectionMessage.add_member(:replication_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn", traits: {"smithy.api#required" => {}}))
    TestConnectionMessage.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    TestConnectionMessage.type = Types::TestConnectionMessage
    TestConnectionResponse.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    TestConnectionResponse.type = Types::TestConnectionResponse
    TimestreamSettings.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    TimestreamSettings.add_member(:memory_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MemoryDuration", traits: {"smithy.api#required" => {}}))
    TimestreamSettings.add_member(:magnetic_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MagneticDuration", traits: {"smithy.api#required" => {}}))
    TimestreamSettings.add_member(:cdc_inserts_and_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CdcInsertsAndUpdates"))
    TimestreamSettings.add_member(:enable_magnetic_store_writes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableMagneticStoreWrites"))
    TimestreamSettings.type = Types::TimestreamSettings
    TlogAccessMode.add_member(:backup_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BackupOnly", traits: {"smithy.api#enumValue" => "BackupOnly"}))
    TlogAccessMode.add_member(:prefer_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PreferBackup", traits: {"smithy.api#enumValue" => "PreferBackup"}))
    TlogAccessMode.add_member(:prefer_tlog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PreferTlog", traits: {"smithy.api#enumValue" => "PreferTlog"}))
    TlogAccessMode.add_member(:tlog_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TlogOnly", traits: {"smithy.api#enumValue" => "TlogOnly"}))
    UpdateSubscriptionsToEventBridgeMessage.add_member(:force_move, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceMove"))
    UpdateSubscriptionsToEventBridgeMessage.type = Types::UpdateSubscriptionsToEventBridgeMessage
    UpdateSubscriptionsToEventBridgeResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Result"))
    UpdateSubscriptionsToEventBridgeResponse.type = Types::UpdateSubscriptionsToEventBridgeResponse
    UpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UpgradeDependencyFailureFault.type = Types::UpgradeDependencyFailureFault
    VersionStatus.add_member(:up_to_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UP_TO_DATE", traits: {"smithy.api#enumValue" => "UP_TO_DATE"}))
    VersionStatus.add_member(:outdated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTDATED", traits: {"smithy.api#enumValue" => "OUTDATED"}))
    VersionStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED", traits: {"smithy.api#enumValue" => "UNSUPPORTED"}))
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"})
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"})

    AmazonDMSv20160101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.databasemigrationservice#AmazonDMSv20160101"
      service.name = "AmazonDMSv20160101"
      service.version = "2016-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Database Migration Service", "arnNamespace" => "dms", "cloudFormationName" => "DMS", "cloudTrailEventSource" => "dms.amazonaws.com", "docId" => "dms-2016-01-01", "endpointPrefix" => "dms"}, "aws.auth#sigv4" => {"name" => "dms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Database Migration Service", "smithy.api#xmlNamespace" => {"uri" => "http://dms.amazonaws.com/doc/2016-01-01/"}}
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:batch_start_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#BatchStartRecommendations"
        operation.name = "BatchStartRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartRecommendationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartRecommendationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:cancel_replication_task_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CancelReplicationTaskAssessmentRun"
        operation.name = "CancelReplicationTaskAssessmentRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelReplicationTaskAssessmentRunMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelReplicationTaskAssessmentRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateDataMigration"
        operation.name = "CreateDataMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_data_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateDataProvider"
        operation.name = "CreateDataProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataProviderMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateEndpoint"
        operation.name = "CreateEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSDisabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_fleet_advisor_collector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateFleetAdvisorCollector"
        operation.name = "CreateFleetAdvisorCollector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetAdvisorCollectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetAdvisorCollectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateInstanceProfile"
        operation.name = "CreateInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceProfileMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_migration_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateMigrationProject"
        operation.name = "CreateMigrationProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMigrationProjectMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMigrationProjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationConfig"
        operation.name = "CreateReplicationConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationInstance"
        operation.name = "CreateReplicationInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientResourceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationSubnetGroup"
        operation.name = "CreateReplicationSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationSubnetGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#CreateReplicationTask"
        operation.name = "CreateReplicationTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteDataMigration"
        operation.name = "DeleteDataMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_data_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteDataProvider"
        operation.name = "DeleteDataProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataProviderMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet_advisor_collector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteFleetAdvisorCollector"
        operation.name = "DeleteFleetAdvisorCollector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet_advisor_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteFleetAdvisorDatabases"
        operation.name = "DeleteFleetAdvisorDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetAdvisorDatabasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetAdvisorDatabasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteInstanceProfile"
        operation.name = "DeleteInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceProfileMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_migration_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteMigrationProject"
        operation.name = "DeleteMigrationProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMigrationProjectMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMigrationProjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationConfig"
        operation.name = "DeleteReplicationConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationInstance"
        operation.name = "DeleteReplicationInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationSubnetGroup"
        operation.name = "DeleteReplicationSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationSubnetGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationTask"
        operation.name = "DeleteReplicationTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_task_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DeleteReplicationTaskAssessmentRun"
        operation.name = "DeleteReplicationTaskAssessmentRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationTaskAssessmentRunMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationTaskAssessmentRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_applicable_individual_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeApplicableIndividualAssessments"
        operation.name = "DescribeApplicableIndividualAssessments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicableIndividualAssessmentsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicableIndividualAssessmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeApplicableIndividualAssessments.new
      end)
      service.add_operation(:describe_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeCertificates"
        operation.name = "DescribeCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCertificates.new
      end)
      service.add_operation(:describe_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeConnections"
        operation.name = "DescribeConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConnections.new
      end)
      service.add_operation(:describe_conversion_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeConversionConfiguration"
        operation.name = "DescribeConversionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConversionConfigurationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConversionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_data_migrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeDataMigrations"
        operation.name = "DescribeDataMigrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataMigrationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataMigrationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataMigrations.new
      end)
      service.add_operation(:describe_data_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeDataProviders"
        operation.name = "DescribeDataProviders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataProvidersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataProvidersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataProviders.new
      end)
      service.add_operation(:describe_endpoint_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEndpointSettings"
        operation.name = "DescribeEndpointSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointSettingsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointSettingsResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointSettings.new
      end)
      service.add_operation(:describe_endpoint_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEndpointTypes"
        operation.name = "DescribeEndpointTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointTypesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointTypesResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointTypes.new
      end)
      service.add_operation(:describe_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeEndpointsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeEndpoints.new
      end)
      service.add_operation(:describe_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEngineVersions"
        operation.name = "DescribeEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineVersionsResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineVersions.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_extension_pack_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeExtensionPackAssociations"
        operation.name = "DescribeExtensionPackAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExtensionPackAssociationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExtensionPackAssociationsResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeExtensionPackAssociations.new
      end)
      service.add_operation(:describe_fleet_advisor_collectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorCollectors"
        operation.name = "DescribeFleetAdvisorCollectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorCollectorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorCollectorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorCollectors.new
      end)
      service.add_operation(:describe_fleet_advisor_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorDatabases"
        operation.name = "DescribeFleetAdvisorDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorDatabasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorDatabasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorDatabases.new
      end)
      service.add_operation(:describe_fleet_advisor_lsa_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorLsaAnalysis"
        operation.name = "DescribeFleetAdvisorLsaAnalysis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorLsaAnalysisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorLsaAnalysisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorLsaAnalysis.new
      end)
      service.add_operation(:describe_fleet_advisor_schema_object_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemaObjectSummary"
        operation.name = "DescribeFleetAdvisorSchemaObjectSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemaObjectSummaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemaObjectSummaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorSchemaObjectSummary.new
      end)
      service.add_operation(:describe_fleet_advisor_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeFleetAdvisorSchemas"
        operation.name = "DescribeFleetAdvisorSchemas"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetAdvisorSchemasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAdvisorSchemas.new
      end)
      service.add_operation(:describe_instance_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeInstanceProfiles"
        operation.name = "DescribeInstanceProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceProfilesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceProfilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstanceProfiles.new
      end)
      service.add_operation(:describe_metadata_model_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelAssessments"
        operation.name = "DescribeMetadataModelAssessments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelAssessmentsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelAssessmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelAssessments.new
      end)
      service.add_operation(:describe_metadata_model_conversions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelConversions"
        operation.name = "DescribeMetadataModelConversions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelConversionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelConversionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelConversions.new
      end)
      service.add_operation(:describe_metadata_model_exports_as_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsAsScript"
        operation.name = "DescribeMetadataModelExportsAsScript"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsAsScriptMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsAsScriptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelExportsAsScript.new
      end)
      service.add_operation(:describe_metadata_model_exports_to_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelExportsToTarget"
        operation.name = "DescribeMetadataModelExportsToTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsToTargetMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelExportsToTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelExportsToTarget.new
      end)
      service.add_operation(:describe_metadata_model_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMetadataModelImports"
        operation.name = "DescribeMetadataModelImports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelImportsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetadataModelImportsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetadataModelImports.new
      end)
      service.add_operation(:describe_migration_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeMigrationProjects"
        operation.name = "DescribeMigrationProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMigrationProjectsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMigrationProjectsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMigrationProjects.new
      end)
      service.add_operation(:describe_orderable_replication_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeOrderableReplicationInstances"
        operation.name = "DescribeOrderableReplicationInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableReplicationInstancesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableReplicationInstancesResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableReplicationInstances.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:describe_recommendation_limitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeRecommendationLimitations"
        operation.name = "DescribeRecommendationLimitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecommendationLimitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecommendationLimitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRecommendationLimitations.new
      end)
      service.add_operation(:describe_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeRecommendations"
        operation.name = "DescribeRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecommendationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecommendationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRecommendations.new
      end)
      service.add_operation(:describe_refresh_schemas_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeRefreshSchemasStatus"
        operation.name = "DescribeRefreshSchemasStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRefreshSchemasStatusMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRefreshSchemasStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_replication_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationConfigs"
        operation.name = "DescribeReplicationConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationConfigs.new
      end)
      service.add_operation(:describe_replication_instance_task_logs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationInstanceTaskLogs"
        operation.name = "DescribeReplicationInstanceTaskLogs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationInstanceTaskLogsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationInstanceTaskLogsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationInstanceTaskLogs.new
      end)
      service.add_operation(:describe_replication_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationInstances"
        operation.name = "DescribeReplicationInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationInstancesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationInstancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationInstances.new
      end)
      service.add_operation(:describe_replication_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationSubnetGroups"
        operation.name = "DescribeReplicationSubnetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationSubnetGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationSubnetGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationSubnetGroups.new
      end)
      service.add_operation(:describe_replication_table_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTableStatistics"
        operation.name = "DescribeReplicationTableStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTableStatisticsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTableStatisticsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTableStatistics.new
      end)
      service.add_operation(:describe_replication_task_assessment_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentResults"
        operation.name = "DescribeReplicationTaskAssessmentResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentResultsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTaskAssessmentResults.new
      end)
      service.add_operation(:describe_replication_task_assessment_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTaskAssessmentRuns"
        operation.name = "DescribeReplicationTaskAssessmentRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentRunsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTaskAssessmentRuns.new
      end)
      service.add_operation(:describe_replication_task_individual_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTaskIndividualAssessments"
        operation.name = "DescribeReplicationTaskIndividualAssessments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTaskIndividualAssessmentsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTaskIndividualAssessmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTaskIndividualAssessments.new
      end)
      service.add_operation(:describe_replication_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplicationTasks"
        operation.name = "DescribeReplicationTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTasksMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationTasksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationTasks.new
      end)
      service.add_operation(:describe_replications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeReplications"
        operation.name = "DescribeReplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplications.new
      end)
      service.add_operation(:describe_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeSchemas"
        operation.name = "DescribeSchemas"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSchemasMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSchemasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSchemas.new
      end)
      service.add_operation(:describe_table_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#DescribeTableStatistics"
        operation.name = "DescribeTableStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableStatisticsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableStatisticsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTableStatistics.new
      end)
      service.add_operation(:export_metadata_model_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ExportMetadataModelAssessment"
        operation.name = "ExportMetadataModelAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMetadataModelAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:import_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ImportCertificate"
        operation.name = "ImportCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCertificateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_conversion_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyConversionConfiguration"
        operation.name = "ModifyConversionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyConversionConfigurationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyConversionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyDataMigration"
        operation.name = "ModifyDataMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDataMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDataMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_data_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyDataProvider"
        operation.name = "ModifyDataProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDataProviderMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDataProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyEndpoint"
        operation.name = "ModifyEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSDisabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyInstanceProfile"
        operation.name = "ModifyInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyInstanceProfileMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyInstanceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_migration_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyMigrationProject"
        operation.name = "ModifyMigrationProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMigrationProjectMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMigrationProjectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationConfig"
        operation.name = "ModifyReplicationConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationConfigMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationInstance"
        operation.name = "ModifyReplicationInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientResourceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeDependencyFailureFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationSubnetGroup"
        operation.name = "ModifyReplicationSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationSubnetGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ModifyReplicationTask"
        operation.name = "ModifyReplicationTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:move_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#MoveReplicationTask"
        operation.name = "MoveReplicationTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MoveReplicationTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MoveReplicationTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_replication_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RebootReplicationInstance"
        operation.name = "RebootReplicationInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootReplicationInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootReplicationInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:refresh_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RefreshSchemas"
        operation.name = "RefreshSchemas"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchemasMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchemasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:reload_replication_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ReloadReplicationTables"
        operation.name = "ReloadReplicationTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReloadReplicationTablesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReloadReplicationTablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reload_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#ReloadTables"
        operation.name = "ReloadTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReloadTablesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReloadTablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:run_fleet_advisor_lsa_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#RunFleetAdvisorLsaAnalysis"
        operation.name = "RunFleetAdvisorLsaAnalysis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunFleetAdvisorLsaAnalysisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartDataMigration"
        operation.name = "StartDataMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:start_extension_pack_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartExtensionPackAssociation"
        operation.name = "StartExtensionPackAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExtensionPackAssociationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExtensionPackAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelAssessment"
        operation.name = "StartMetadataModelAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelAssessmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_conversion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelConversion"
        operation.name = "StartMetadataModelConversion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelConversionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelConversionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_export_as_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelExportAsScript"
        operation.name = "StartMetadataModelExportAsScript"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelExportAsScriptMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelExportAsScriptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_export_to_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelExportToTarget"
        operation.name = "StartMetadataModelExportToTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelExportToTargetMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelExportToTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_metadata_model_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartMetadataModelImport"
        operation.name = "StartMetadataModelImport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelImportMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMetadataModelImportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartRecommendations"
        operation.name = "StartRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommendationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplication"
        operation.name = "StartReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplicationTask"
        operation.name = "StartReplicationTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_replication_task_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessment"
        operation.name = "StartReplicationTaskAssessment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_replication_task_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StartReplicationTaskAssessmentRun"
        operation.name = "StartReplicationTaskAssessmentRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentRunMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSDisabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_data_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StopDataMigration"
        operation.name = "StopDataMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDataMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDataMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StopReplication"
        operation.name = "StopReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_replication_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#StopReplicationTask"
        operation.name = "StopReplicationTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:test_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#TestConnection"
        operation.name = "TestConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConnectionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:update_subscriptions_to_event_bridge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.databasemigrationservice#UpdateSubscriptionsToEventBridge"
        operation.name = "UpdateSubscriptionsToEventBridge"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionsToEventBridgeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionsToEventBridgeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
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

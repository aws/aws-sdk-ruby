# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchLogs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AccessPolicy", name: "AccessPolicy", traits: {"smithy.api#length" => {"min" => 1}})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#AccountIds", name: "AccountIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AccountPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#AccountPolicies", name: "AccountPolicies")
    AccountPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#AccountPolicy", name: "AccountPolicy")
    AccountPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AccountPolicyDocument", name: "AccountPolicyDocument")
    AddKeyEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#AddKeyEntries", name: "AddKeyEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AddKeyEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#AddKeyEntry", name: "AddKeyEntry")
    AddKeyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AddKeyValue", name: "AddKeyValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AddKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#AddKeys", name: "AddKeys")
    AllowedActionForAllowVendedLogsDeliveryForResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AllowedActionForAllowVendedLogsDeliveryForResource", name: "AllowedActionForAllowVendedLogsDeliveryForResource")
    AllowedFieldDelimiters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#AllowedFieldDelimiters", name: "AllowedFieldDelimiters")
    AllowedFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#AllowedFields", name: "AllowedFields")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[\\w+=/:,.@-]*$"})
    Anomalies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#Anomalies", name: "Anomalies")
    Anomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Anomaly", name: "Anomaly")
    AnomalyDetector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#AnomalyDetector", name: "AnomalyDetector")
    AnomalyDetectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AnomalyDetectorArn", name: "AnomalyDetectorArn", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\w#+=/:,.@-]*$"})
    AnomalyDetectorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#AnomalyDetectorStatus", name: "AnomalyDetectorStatus")
    AnomalyDetectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#AnomalyDetectors", name: "AnomalyDetectors")
    AnomalyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#AnomalyId", name: "AnomalyId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    AnomalyVisibilityTime = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#AnomalyVisibilityTime", name: "AnomalyVisibilityTime", traits: {"smithy.api#range" => {"min" => 7, "max" => 90}})
    ApplyOnTransformedLogs = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#ApplyOnTransformedLogs", name: "ApplyOnTransformedLogs", traits: {"smithy.api#default" => false})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Arn", name: "Arn")
    AssociateKmsKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#AssociateKmsKeyRequest", name: "AssociateKmsKeyRequest")
    Baseline = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Baseline", name: "Baseline")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Boolean", name: "Boolean")
    CSV = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CSV", name: "CSV")
    CancelExportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CancelExportTaskRequest", name: "CancelExportTaskRequest")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 36, "max" => 128}, "smithy.api#pattern" => "^\\S{36,128}$"})
    CollectionRetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#CollectionRetentionDays", name: "CollectionRetentionDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 30}})
    Column = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Column", name: "Column", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Columns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#Columns", name: "Columns", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConfigurationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ConfigurationTemplate", name: "ConfigurationTemplate")
    ConfigurationTemplateDeliveryConfigValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ConfigurationTemplateDeliveryConfigValues", name: "ConfigurationTemplateDeliveryConfigValues")
    ConfigurationTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#ConfigurationTemplates", name: "ConfigurationTemplates")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    CopyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CopyValue", name: "CopyValue")
    CopyValueEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#CopyValueEntries", name: "CopyValueEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CopyValueEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CopyValueEntry", name: "CopyValueEntry")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#Count", name: "Count", traits: {"smithy.api#default" => 0})
    CreateDeliveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateDeliveryRequest", name: "CreateDeliveryRequest")
    CreateDeliveryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateDeliveryResponse", name: "CreateDeliveryResponse")
    CreateExportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateExportTaskRequest", name: "CreateExportTaskRequest")
    CreateExportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateExportTaskResponse", name: "CreateExportTaskResponse")
    CreateLogAnomalyDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateLogAnomalyDetectorRequest", name: "CreateLogAnomalyDetectorRequest")
    CreateLogAnomalyDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateLogAnomalyDetectorResponse", name: "CreateLogAnomalyDetectorResponse")
    CreateLogGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateLogGroupRequest", name: "CreateLogGroupRequest")
    CreateLogStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#CreateLogStreamRequest", name: "CreateLogStreamRequest")
    DashboardViewerPrincipals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DashboardViewerPrincipals", name: "DashboardViewerPrincipals")
    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cloudwatchlogs#Data", name: "Data")
    DataAlreadyAcceptedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DataAlreadyAcceptedException", name: "DataAlreadyAcceptedException", traits: {"smithy.api#error" => "client"})
    DataProtectionPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DataProtectionPolicyDocument", name: "DataProtectionPolicyDocument")
    DataProtectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#DataProtectionStatus", name: "DataProtectionStatus")
    DateTimeConverter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DateTimeConverter", name: "DateTimeConverter")
    Days = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#Days", name: "Days")
    DefaultValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudwatchlogs#DefaultValue", name: "DefaultValue")
    DeleteAccountPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteAccountPolicyRequest", name: "DeleteAccountPolicyRequest")
    DeleteDataProtectionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteDataProtectionPolicyRequest", name: "DeleteDataProtectionPolicyRequest")
    DeleteDeliveryDestinationPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteDeliveryDestinationPolicyRequest", name: "DeleteDeliveryDestinationPolicyRequest")
    DeleteDeliveryDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteDeliveryDestinationRequest", name: "DeleteDeliveryDestinationRequest")
    DeleteDeliveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteDeliveryRequest", name: "DeleteDeliveryRequest")
    DeleteDeliverySourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteDeliverySourceRequest", name: "DeleteDeliverySourceRequest")
    DeleteDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteDestinationRequest", name: "DeleteDestinationRequest")
    DeleteIndexPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteIndexPolicyRequest", name: "DeleteIndexPolicyRequest")
    DeleteIndexPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteIndexPolicyResponse", name: "DeleteIndexPolicyResponse")
    DeleteIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteIntegrationRequest", name: "DeleteIntegrationRequest")
    DeleteIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteIntegrationResponse", name: "DeleteIntegrationResponse")
    DeleteKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteKeys", name: "DeleteKeys")
    DeleteLogAnomalyDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteLogAnomalyDetectorRequest", name: "DeleteLogAnomalyDetectorRequest")
    DeleteLogGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteLogGroupRequest", name: "DeleteLogGroupRequest")
    DeleteLogStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteLogStreamRequest", name: "DeleteLogStreamRequest")
    DeleteMetricFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteMetricFilterRequest", name: "DeleteMetricFilterRequest")
    DeleteQueryDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteQueryDefinitionRequest", name: "DeleteQueryDefinitionRequest")
    DeleteQueryDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteQueryDefinitionResponse", name: "DeleteQueryDefinitionResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteRetentionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteRetentionPolicyRequest", name: "DeleteRetentionPolicyRequest")
    DeleteSubscriptionFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteSubscriptionFilterRequest", name: "DeleteSubscriptionFilterRequest")
    DeleteTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteTransformerRequest", name: "DeleteTransformerRequest")
    DeleteWithKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DeleteWithKeys", name: "DeleteWithKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Delimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Delimiter", name: "Delimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Deliveries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#Deliveries", name: "Deliveries")
    Delivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Delivery", name: "Delivery")
    DeliveryDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestination", name: "DeliveryDestination")
    DeliveryDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestinationConfiguration", name: "DeliveryDestinationConfiguration")
    DeliveryDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestinationName", name: "DeliveryDestinationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[\\w-]*$"})
    DeliveryDestinationPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestinationPolicy", name: "DeliveryDestinationPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}})
    DeliveryDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestinationType", name: "DeliveryDestinationType")
    DeliveryDestinationTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestinationTypes", name: "DeliveryDestinationTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    DeliveryDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryDestinations", name: "DeliveryDestinations")
    DeliveryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DeliveryId", name: "DeliveryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z]+$"})
    DeliverySource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DeliverySource", name: "DeliverySource")
    DeliverySourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DeliverySourceName", name: "DeliverySourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[\\w-]*$"})
    DeliverySources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DeliverySources", name: "DeliverySources")
    DeliverySuffixPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DeliverySuffixPath", name: "DeliverySuffixPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Descending = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Descending", name: "Descending")
    DescribeAccountPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeAccountPoliciesRequest", name: "DescribeAccountPoliciesRequest")
    DescribeAccountPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeAccountPoliciesResponse", name: "DescribeAccountPoliciesResponse")
    DescribeConfigurationTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeConfigurationTemplatesRequest", name: "DescribeConfigurationTemplatesRequest")
    DescribeConfigurationTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeConfigurationTemplatesResponse", name: "DescribeConfigurationTemplatesResponse")
    DescribeDeliveriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDeliveriesRequest", name: "DescribeDeliveriesRequest")
    DescribeDeliveriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDeliveriesResponse", name: "DescribeDeliveriesResponse")
    DescribeDeliveryDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDeliveryDestinationsRequest", name: "DescribeDeliveryDestinationsRequest")
    DescribeDeliveryDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDeliveryDestinationsResponse", name: "DescribeDeliveryDestinationsResponse")
    DescribeDeliverySourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDeliverySourcesRequest", name: "DescribeDeliverySourcesRequest")
    DescribeDeliverySourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDeliverySourcesResponse", name: "DescribeDeliverySourcesResponse")
    DescribeDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDestinationsRequest", name: "DescribeDestinationsRequest")
    DescribeDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeDestinationsResponse", name: "DescribeDestinationsResponse")
    DescribeExportTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeExportTasksRequest", name: "DescribeExportTasksRequest")
    DescribeExportTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeExportTasksResponse", name: "DescribeExportTasksResponse")
    DescribeFieldIndexesLogGroupIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeFieldIndexesLogGroupIdentifiers", name: "DescribeFieldIndexesLogGroupIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DescribeFieldIndexesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeFieldIndexesRequest", name: "DescribeFieldIndexesRequest")
    DescribeFieldIndexesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeFieldIndexesResponse", name: "DescribeFieldIndexesResponse")
    DescribeIndexPoliciesLogGroupIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeIndexPoliciesLogGroupIdentifiers", name: "DescribeIndexPoliciesLogGroupIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DescribeIndexPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeIndexPoliciesRequest", name: "DescribeIndexPoliciesRequest")
    DescribeIndexPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeIndexPoliciesResponse", name: "DescribeIndexPoliciesResponse")
    DescribeLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeLimit", name: "DescribeLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    DescribeLogGroupsLogGroupIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeLogGroupsLogGroupIdentifiers", name: "DescribeLogGroupsLogGroupIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DescribeLogGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeLogGroupsRequest", name: "DescribeLogGroupsRequest")
    DescribeLogGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeLogGroupsResponse", name: "DescribeLogGroupsResponse")
    DescribeLogStreamsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeLogStreamsRequest", name: "DescribeLogStreamsRequest")
    DescribeLogStreamsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeLogStreamsResponse", name: "DescribeLogStreamsResponse")
    DescribeMetricFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeMetricFiltersRequest", name: "DescribeMetricFiltersRequest")
    DescribeMetricFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeMetricFiltersResponse", name: "DescribeMetricFiltersResponse")
    DescribeQueriesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeQueriesMaxResults", name: "DescribeQueriesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    DescribeQueriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeQueriesRequest", name: "DescribeQueriesRequest")
    DescribeQueriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeQueriesResponse", name: "DescribeQueriesResponse")
    DescribeQueryDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeQueryDefinitionsRequest", name: "DescribeQueryDefinitionsRequest")
    DescribeQueryDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeQueryDefinitionsResponse", name: "DescribeQueryDefinitionsResponse")
    DescribeResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeResourcePoliciesRequest", name: "DescribeResourcePoliciesRequest")
    DescribeResourcePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeResourcePoliciesResponse", name: "DescribeResourcePoliciesResponse")
    DescribeSubscriptionFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeSubscriptionFiltersRequest", name: "DescribeSubscriptionFiltersRequest")
    DescribeSubscriptionFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DescribeSubscriptionFiltersResponse", name: "DescribeSubscriptionFiltersResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1}})
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Destination", name: "Destination")
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DestinationArn", name: "DestinationArn", traits: {"smithy.api#length" => {"min" => 1}})
    DestinationField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DestinationField", name: "DestinationField", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DestinationName", name: "DestinationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    Destinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#Destinations", name: "Destinations")
    DetectorKmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DetectorKmsKeyArn", name: "DetectorKmsKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:[-a-z0-9]*:[0-9]*:key/[-a-z0-9]*$"})
    DetectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DetectorName", name: "DetectorName", traits: {"smithy.api#length" => {"min" => 1}})
    Dimensions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#Dimensions", name: "Dimensions")
    DimensionsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DimensionsKey", name: "DimensionsKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DimensionsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#DimensionsValue", name: "DimensionsValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DisassociateKmsKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#DisassociateKmsKeyRequest", name: "DisassociateKmsKeyRequest")
    Distribution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#Distribution", name: "Distribution")
    DynamicTokenPosition = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#DynamicTokenPosition", name: "DynamicTokenPosition", traits: {"smithy.api#default" => 0})
    EmitSystemFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#EmitSystemFields", name: "EmitSystemFields")
    EncryptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EncryptionKey", name: "EncryptionKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Entity", name: "Entity")
    EntityAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#EntityAttributes", name: "EntityAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EntityAttributesKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EntityAttributesKey", name: "EntityAttributesKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EntityAttributesValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EntityAttributesValue", name: "EntityAttributesValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    EntityKeyAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#EntityKeyAttributes", name: "EntityKeyAttributes", traits: {"smithy.api#length" => {"min" => 2, "max" => 4}})
    EntityKeyAttributesKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EntityKeyAttributesKey", name: "EntityKeyAttributesKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    EntityKeyAttributesValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EntityKeyAttributesValue", name: "EntityKeyAttributesValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    EntityRejectionErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#EntityRejectionErrorType", name: "EntityRejectionErrorType")
    Enumerations = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#Enumerations", name: "Enumerations")
    EpochMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#EpochMillis", name: "EpochMillis", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    EvaluationFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#EvaluationFrequency", name: "EvaluationFrequency")
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EventId", name: "EventId")
    EventMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#EventMessage", name: "EventMessage", traits: {"smithy.api#length" => {"min" => 1}})
    EventNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#EventNumber", name: "EventNumber", traits: {"smithy.api#default" => 0})
    EventSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#EventSource", name: "EventSource")
    EventsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#EventsLimit", name: "EventsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ExpectedRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ExpectedRevisionId", name: "ExpectedRevisionId", traits: {"smithy.api#length" => {"min" => 1}})
    ExportDestinationBucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ExportDestinationBucket", name: "ExportDestinationBucket", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ExportDestinationPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ExportDestinationPrefix", name: "ExportDestinationPrefix")
    ExportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTask", name: "ExportTask")
    ExportTaskExecutionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTaskExecutionInfo", name: "ExportTaskExecutionInfo")
    ExportTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTaskId", name: "ExportTaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ExportTaskName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTaskName", name: "ExportTaskName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ExportTaskStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTaskStatus", name: "ExportTaskStatus")
    ExportTaskStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTaskStatusCode", name: "ExportTaskStatusCode")
    ExportTaskStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTaskStatusMessage", name: "ExportTaskStatusMessage")
    ExportTasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#ExportTasks", name: "ExportTasks")
    ExtractedValues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#ExtractedValues", name: "ExtractedValues")
    Field = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Field", name: "Field")
    FieldDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FieldDelimiter", name: "FieldDelimiter", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    FieldHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FieldHeader", name: "FieldHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    FieldIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#FieldIndex", name: "FieldIndex")
    FieldIndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FieldIndexName", name: "FieldIndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    FieldIndexes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#FieldIndexes", name: "FieldIndexes")
    FieldSelectionCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FieldSelectionCriteria", name: "FieldSelectionCriteria", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    FieldsData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#FieldsData", name: "FieldsData")
    FilterCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#FilterCount", name: "FilterCount")
    FilterLogEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#FilterLogEventsRequest", name: "FilterLogEventsRequest")
    FilterLogEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#FilterLogEventsResponse", name: "FilterLogEventsResponse")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    FilterPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FilterPattern", name: "FilterPattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FilteredLogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#FilteredLogEvent", name: "FilteredLogEvent")
    FilteredLogEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#FilteredLogEvents", name: "FilteredLogEvents")
    Flatten = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Flatten", name: "Flatten", traits: {"smithy.api#default" => false})
    FlattenedElement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#FlattenedElement", name: "FlattenedElement")
    Force = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Force", name: "Force", traits: {"smithy.api#default" => false})
    ForceUpdate = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#ForceUpdate", name: "ForceUpdate")
    FromKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#FromKey", name: "FromKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GetDataProtectionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDataProtectionPolicyRequest", name: "GetDataProtectionPolicyRequest")
    GetDataProtectionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDataProtectionPolicyResponse", name: "GetDataProtectionPolicyResponse")
    GetDeliveryDestinationPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliveryDestinationPolicyRequest", name: "GetDeliveryDestinationPolicyRequest")
    GetDeliveryDestinationPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliveryDestinationPolicyResponse", name: "GetDeliveryDestinationPolicyResponse")
    GetDeliveryDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliveryDestinationRequest", name: "GetDeliveryDestinationRequest")
    GetDeliveryDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliveryDestinationResponse", name: "GetDeliveryDestinationResponse")
    GetDeliveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliveryRequest", name: "GetDeliveryRequest")
    GetDeliveryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliveryResponse", name: "GetDeliveryResponse")
    GetDeliverySourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliverySourceRequest", name: "GetDeliverySourceRequest")
    GetDeliverySourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetDeliverySourceResponse", name: "GetDeliverySourceResponse")
    GetIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetIntegrationRequest", name: "GetIntegrationRequest")
    GetIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetIntegrationResponse", name: "GetIntegrationResponse")
    GetLogAnomalyDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogAnomalyDetectorRequest", name: "GetLogAnomalyDetectorRequest")
    GetLogAnomalyDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogAnomalyDetectorResponse", name: "GetLogAnomalyDetectorResponse")
    GetLogEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogEventsRequest", name: "GetLogEventsRequest")
    GetLogEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogEventsResponse", name: "GetLogEventsResponse")
    GetLogGroupFieldsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogGroupFieldsRequest", name: "GetLogGroupFieldsRequest")
    GetLogGroupFieldsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogGroupFieldsResponse", name: "GetLogGroupFieldsResponse")
    GetLogObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogObjectRequest", name: "GetLogObjectRequest")
    GetLogObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogObjectResponse", name: "GetLogObjectResponse")
    GetLogObjectResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogObjectResponseStream", name: "GetLogObjectResponseStream", traits: {"smithy.api#streaming" => {}})
    GetLogRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogRecordRequest", name: "GetLogRecordRequest")
    GetLogRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetLogRecordResponse", name: "GetLogRecordResponse")
    GetQueryResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetQueryResultsRequest", name: "GetQueryResultsRequest")
    GetQueryResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetQueryResultsResponse", name: "GetQueryResultsResponse")
    GetTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetTransformerRequest", name: "GetTransformerRequest")
    GetTransformerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#GetTransformerResponse", name: "GetTransformerResponse")
    Grok = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Grok", name: "Grok")
    GrokMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#GrokMatch", name: "GrokMatch", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Histogram = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#Histogram", name: "Histogram")
    IncludeLinkedAccounts = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#IncludeLinkedAccounts", name: "IncludeLinkedAccounts")
    IndexPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#IndexPolicies", name: "IndexPolicies")
    IndexPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#IndexPolicy", name: "IndexPolicy")
    IndexSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#IndexSource", name: "IndexSource")
    InferredTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#InferredTokenName", name: "InferredTokenName", traits: {"smithy.api#length" => {"min" => 1}})
    InheritedProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#InheritedProperties", name: "InheritedProperties")
    InheritedProperty = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#InheritedProperty", name: "InheritedProperty")
    InputLogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#InputLogEvent", name: "InputLogEvent")
    InputLogEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#InputLogEvents", name: "InputLogEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    InputLogStreamNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#InputLogStreamNames", name: "InputLogStreamNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegrationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationDetails", name: "IntegrationDetails")
    IntegrationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationName", name: "IntegrationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    IntegrationNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationNamePrefix", name: "IntegrationNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationStatus", name: "IntegrationStatus")
    IntegrationStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationStatusMessage", name: "IntegrationStatusMessage", traits: {"smithy.api#length" => {"min" => 1}})
    IntegrationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationSummaries", name: "IntegrationSummaries")
    IntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationSummary", name: "IntegrationSummary")
    IntegrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#IntegrationType", name: "IntegrationType")
    Interleaved = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Interleaved", name: "Interleaved")
    InternalStreamingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#InternalStreamingException", name: "InternalStreamingException", traits: {"smithy.api#error" => "client"})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#InvalidOperationException", name: "InvalidOperationException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidSequenceTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#InvalidSequenceTokenException", name: "InvalidSequenceTokenException", traits: {"smithy.api#error" => "client"})
    IsSampled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#IsSampled", name: "IsSampled", traits: {"smithy.api#default" => false})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Key", name: "Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#KeyPrefix", name: "KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KeyValueDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#KeyValueDelimiter", name: "KeyValueDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAnomaliesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#ListAnomaliesLimit", name: "ListAnomaliesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListAnomaliesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListAnomaliesRequest", name: "ListAnomaliesRequest")
    ListAnomaliesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListAnomaliesResponse", name: "ListAnomaliesResponse")
    ListIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListIntegrationsRequest", name: "ListIntegrationsRequest")
    ListIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListIntegrationsResponse", name: "ListIntegrationsResponse")
    ListLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#ListLimit", name: "ListLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListLogAnomalyDetectorsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectorsLimit", name: "ListLogAnomalyDetectorsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListLogAnomalyDetectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectorsRequest", name: "ListLogAnomalyDetectorsRequest")
    ListLogAnomalyDetectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectorsResponse", name: "ListLogAnomalyDetectorsResponse")
    ListLogGroupsForQueryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogGroupsForQueryMaxResults", name: "ListLogGroupsForQueryMaxResults", traits: {"smithy.api#range" => {"min" => 50, "max" => 500}})
    ListLogGroupsForQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogGroupsForQueryRequest", name: "ListLogGroupsForQueryRequest")
    ListLogGroupsForQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogGroupsForQueryResponse", name: "ListLogGroupsForQueryResponse")
    ListLogGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogGroupsRequest", name: "ListLogGroupsRequest")
    ListLogGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListLogGroupsResponse", name: "ListLogGroupsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTagsLogGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListTagsLogGroupRequest", name: "ListTagsLogGroupRequest", traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model ListTagsForResourceRequest and ListTagsForResourceResponse"}})
    ListTagsLogGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListTagsLogGroupResponse", name: "ListTagsLogGroupResponse", traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model ListTagsForResourceRequest and ListTagsForResourceResponse"}})
    ListToMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ListToMap", name: "ListToMap")
    LiveTailSessionLogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LiveTailSessionLogEvent", name: "LiveTailSessionLogEvent")
    LiveTailSessionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LiveTailSessionMetadata", name: "LiveTailSessionMetadata")
    LiveTailSessionResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LiveTailSessionResults", name: "LiveTailSessionResults")
    LiveTailSessionStart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LiveTailSessionStart", name: "LiveTailSessionStart")
    LiveTailSessionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LiveTailSessionUpdate", name: "LiveTailSessionUpdate")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Locale", name: "Locale", traits: {"smithy.api#length" => {"min" => 1}})
    LogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LogEvent", name: "LogEvent")
    LogEventIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#LogEventIndex", name: "LogEventIndex")
    LogGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroup", name: "LogGroup")
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupArn", name: "LogGroupArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w#+=/:,.@-]*$"})
    LogGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupArnList", name: "LogGroupArnList")
    LogGroupClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupClass", name: "LogGroupClass")
    LogGroupField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupField", name: "LogGroupField")
    LogGroupFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupFieldList", name: "LogGroupFieldList")
    LogGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupIdentifier", name: "LogGroupIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w#+=/:,.@-]*$"})
    LogGroupIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupIdentifiers", name: "LogGroupIdentifiers")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LogGroupNamePattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupNamePattern", name: "LogGroupNamePattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]*$"})
    LogGroupNameRegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupNameRegexPattern", name: "LogGroupNameRegexPattern", traits: {"smithy.api#length" => {"min" => 3, "max" => 129}, "smithy.api#pattern" => "^(\\^?[\\.\\-_\\/#A-Za-z0-9]{3,24})(\\|\\^?[\\.\\-_\\/#A-Za-z0-9]{3,24}){0,4}$"})
    LogGroupNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupNames", name: "LogGroupNames")
    LogGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupSummaries", name: "LogGroupSummaries")
    LogGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroupSummary", name: "LogGroupSummary")
    LogGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogGroups", name: "LogGroups")
    LogObjectPointer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogObjectPointer", name: "LogObjectPointer", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogRecord = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#LogRecord", name: "LogRecord")
    LogRecordPointer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogRecordPointer", name: "LogRecordPointer")
    LogSamples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogSamples", name: "LogSamples")
    LogStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LogStream", name: "LogStream")
    LogStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogStreamName", name: "LogStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    LogStreamSearchedCompletely = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#LogStreamSearchedCompletely", name: "LogStreamSearchedCompletely")
    LogStreams = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogStreams", name: "LogStreams")
    LogType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#LogType", name: "LogType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w]*$"})
    LogTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LogTypes", name: "LogTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    LowerCaseString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#LowerCaseString", name: "LowerCaseString")
    LowerCaseStringWithKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#LowerCaseStringWithKeys", name: "LowerCaseStringWithKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MalformedQueryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#MalformedQueryException", name: "MalformedQueryException", traits: {"smithy.api#error" => "client"})
    MatchPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#MatchPattern", name: "MatchPattern", traits: {"smithy.api#length" => {"min" => 1}})
    MatchPatterns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#MatchPatterns", name: "MatchPatterns", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Message", name: "Message")
    MetricFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#MetricFilter", name: "MetricFilter")
    MetricFilterMatchRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#MetricFilterMatchRecord", name: "MetricFilterMatchRecord")
    MetricFilterMatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#MetricFilterMatches", name: "MetricFilterMatches")
    MetricFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#MetricFilters", name: "MetricFilters")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[^:*$]*$"})
    MetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#MetricNamespace", name: "MetricNamespace", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[^:*$]*$"})
    MetricTransformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#MetricTransformation", name: "MetricTransformation")
    MetricTransformations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#MetricTransformations", name: "MetricTransformations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MetricValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#MetricValue", name: "MetricValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MoveKeyEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#MoveKeyEntries", name: "MoveKeyEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MoveKeyEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#MoveKeyEntry", name: "MoveKeyEntry")
    MoveKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#MoveKeys", name: "MoveKeys")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1}})
    NonMatchValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#NonMatchValue", name: "NonMatchValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OCSFVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#OCSFVersion", name: "OCSFVersion")
    OpenSearchApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchApplication", name: "OpenSearchApplication")
    OpenSearchApplicationEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchApplicationEndpoint", name: "OpenSearchApplicationEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^https://[\\.\\-_/#:A-Za-z0-9]+\\.com$"})
    OpenSearchApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchApplicationId", name: "OpenSearchApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OpenSearchCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchCollection", name: "OpenSearchCollection")
    OpenSearchCollectionEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchCollectionEndpoint", name: "OpenSearchCollectionEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^https://[\\.\\-_/#:A-Za-z0-9]+\\.com$"})
    OpenSearchDataAccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchDataAccessPolicy", name: "OpenSearchDataAccessPolicy")
    OpenSearchDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchDataSource", name: "OpenSearchDataSource")
    OpenSearchDataSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchDataSourceName", name: "OpenSearchDataSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OpenSearchEncryptionPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchEncryptionPolicy", name: "OpenSearchEncryptionPolicy")
    OpenSearchIntegrationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchIntegrationDetails", name: "OpenSearchIntegrationDetails")
    OpenSearchLifecyclePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchLifecyclePolicy", name: "OpenSearchLifecyclePolicy")
    OpenSearchNetworkPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchNetworkPolicy", name: "OpenSearchNetworkPolicy")
    OpenSearchPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchPolicyName", name: "OpenSearchPolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OpenSearchResourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchResourceConfig", name: "OpenSearchResourceConfig")
    OpenSearchResourceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchResourceStatus", name: "OpenSearchResourceStatus")
    OpenSearchResourceStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchResourceStatusType", name: "OpenSearchResourceStatusType")
    OpenSearchWorkspace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchWorkspace", name: "OpenSearchWorkspace")
    OpenSearchWorkspaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#OpenSearchWorkspaceId", name: "OpenSearchWorkspaceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OperationAbortedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OperationAbortedException", name: "OperationAbortedException", traits: {"smithy.api#error" => "client"})
    OrderBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#OrderBy", name: "OrderBy")
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#OutputFormat", name: "OutputFormat")
    OutputFormats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#OutputFormats", name: "OutputFormats")
    OutputLogEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#OutputLogEvent", name: "OutputLogEvent")
    OutputLogEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#OutputLogEvents", name: "OutputLogEvents")
    OverwriteIfExists = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#OverwriteIfExists", name: "OverwriteIfExists", traits: {"smithy.api#default" => false})
    ParseCloudfront = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseCloudfront", name: "ParseCloudfront")
    ParseJSON = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseJSON", name: "ParseJSON")
    ParseKeyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseKeyValue", name: "ParseKeyValue")
    ParsePostgres = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParsePostgres", name: "ParsePostgres")
    ParseRoute53 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseRoute53", name: "ParseRoute53")
    ParseToOCSF = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseToOCSF", name: "ParseToOCSF")
    ParseVPC = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseVPC", name: "ParseVPC")
    ParseWAF = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ParseWAF", name: "ParseWAF")
    ParserFieldDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ParserFieldDelimiter", name: "ParserFieldDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PatternId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#PatternId", name: "PatternId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}})
    PatternRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#PatternRegex", name: "PatternRegex", traits: {"smithy.api#length" => {"min" => 1}})
    PatternString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#PatternString", name: "PatternString", traits: {"smithy.api#length" => {"min" => 1}})
    PatternToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PatternToken", name: "PatternToken")
    PatternTokens = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#PatternTokens", name: "PatternTokens")
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#Percentage", name: "Percentage", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Policy", name: "Policy")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#PolicyName", name: "PolicyName")
    PolicyScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#PolicyScope", name: "PolicyScope")
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#PolicyType", name: "PolicyType")
    Priority = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Priority", name: "Priority", traits: {"smithy.api#length" => {"min" => 1}})
    Processor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#Processor", name: "Processor")
    Processors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#Processors", name: "Processors", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PutAccountPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutAccountPolicyRequest", name: "PutAccountPolicyRequest")
    PutAccountPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutAccountPolicyResponse", name: "PutAccountPolicyResponse")
    PutDataProtectionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDataProtectionPolicyRequest", name: "PutDataProtectionPolicyRequest")
    PutDataProtectionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDataProtectionPolicyResponse", name: "PutDataProtectionPolicyResponse")
    PutDeliveryDestinationPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDeliveryDestinationPolicyRequest", name: "PutDeliveryDestinationPolicyRequest")
    PutDeliveryDestinationPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDeliveryDestinationPolicyResponse", name: "PutDeliveryDestinationPolicyResponse")
    PutDeliveryDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDeliveryDestinationRequest", name: "PutDeliveryDestinationRequest")
    PutDeliveryDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDeliveryDestinationResponse", name: "PutDeliveryDestinationResponse")
    PutDeliverySourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDeliverySourceRequest", name: "PutDeliverySourceRequest")
    PutDeliverySourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDeliverySourceResponse", name: "PutDeliverySourceResponse")
    PutDestinationPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDestinationPolicyRequest", name: "PutDestinationPolicyRequest")
    PutDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDestinationRequest", name: "PutDestinationRequest")
    PutDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutDestinationResponse", name: "PutDestinationResponse")
    PutIndexPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutIndexPolicyRequest", name: "PutIndexPolicyRequest")
    PutIndexPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutIndexPolicyResponse", name: "PutIndexPolicyResponse")
    PutIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutIntegrationRequest", name: "PutIntegrationRequest")
    PutIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutIntegrationResponse", name: "PutIntegrationResponse")
    PutLogEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutLogEventsRequest", name: "PutLogEventsRequest")
    PutLogEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutLogEventsResponse", name: "PutLogEventsResponse")
    PutMetricFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutMetricFilterRequest", name: "PutMetricFilterRequest")
    PutQueryDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutQueryDefinitionRequest", name: "PutQueryDefinitionRequest")
    PutQueryDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutQueryDefinitionResponse", name: "PutQueryDefinitionResponse")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    PutRetentionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutRetentionPolicyRequest", name: "PutRetentionPolicyRequest")
    PutSubscriptionFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutSubscriptionFilterRequest", name: "PutSubscriptionFilterRequest")
    PutTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#PutTransformerRequest", name: "PutTransformerRequest")
    QueryCharOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#QueryCharOffset", name: "QueryCharOffset")
    QueryCompileError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#QueryCompileError", name: "QueryCompileError")
    QueryCompileErrorLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#QueryCompileErrorLocation", name: "QueryCompileErrorLocation")
    QueryDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#QueryDefinition", name: "QueryDefinition")
    QueryDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#QueryDefinitionList", name: "QueryDefinitionList")
    QueryDefinitionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#QueryDefinitionName", name: "QueryDefinitionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QueryDefinitionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#QueryDefinitionString", name: "QueryDefinitionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    QueryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#QueryId", name: "QueryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    QueryInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#QueryInfo", name: "QueryInfo")
    QueryInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#QueryInfoList", name: "QueryInfoList")
    QueryLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#QueryLanguage", name: "QueryLanguage")
    QueryListMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#QueryListMaxResults", name: "QueryListMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    QueryResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#QueryResults", name: "QueryResults")
    QueryStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#QueryStatistics", name: "QueryStatistics")
    QueryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#QueryStatus", name: "QueryStatus")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    QuoteCharacter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#QuoteCharacter", name: "QuoteCharacter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RecordField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#RecordField", name: "RecordField")
    RecordFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#RecordFields", name: "RecordFields", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    RejectedEntityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#RejectedEntityInfo", name: "RejectedEntityInfo")
    RejectedLogEventsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#RejectedLogEventsInfo", name: "RejectedLogEventsInfo")
    RenameKeyEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#RenameKeyEntries", name: "RenameKeyEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RenameKeyEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#RenameKeyEntry", name: "RenameKeyEntry")
    RenameKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#RenameKeys", name: "RenameKeys")
    RenameTo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#RenameTo", name: "RenameTo", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceArns", name: "ResourceArns")
    ResourceConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceConfig", name: "ResourceConfig")
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w+=/:,.@\\-\\*]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourcePolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#ResourcePolicies", name: "ResourcePolicies")
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ResourcePolicy", name: "ResourcePolicy")
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w-_]*$"})
    ResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#ResourceTypes", name: "ResourceTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResultField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ResultField", name: "ResultField")
    ResultRows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#ResultRows", name: "ResultRows")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1}})
    S3DeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#S3DeliveryConfiguration", name: "S3DeliveryConfiguration")
    Scope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#Scope", name: "Scope")
    SearchedLogStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SearchedLogStream", name: "SearchedLogStream")
    SearchedLogStreams = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#SearchedLogStreams", name: "SearchedLogStreams")
    SelectionCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#SelectionCriteria", name: "SelectionCriteria")
    SequenceToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#SequenceToken", name: "SequenceToken", traits: {"smithy.api#length" => {"min" => 1}})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Service", name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w_-]*$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server"})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SessionStreamingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SessionStreamingException", name: "SessionStreamingException", traits: {"smithy.api#error" => "client"})
    SessionTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SessionTimeoutException", name: "SessionTimeoutException", traits: {"smithy.api#error" => "client"})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Source", name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SourceTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#SourceTimezone", name: "SourceTimezone", traits: {"smithy.api#length" => {"min" => 1}})
    SplitString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SplitString", name: "SplitString")
    SplitStringDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#SplitStringDelimiter", name: "SplitStringDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SplitStringEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#SplitStringEntries", name: "SplitStringEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SplitStringEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SplitStringEntry", name: "SplitStringEntry")
    StandardUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#StandardUnit", name: "StandardUnit")
    StartFromHead = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#StartFromHead", name: "StartFromHead")
    StartLiveTailLogGroupIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#StartLiveTailLogGroupIdentifiers", name: "StartLiveTailLogGroupIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StartLiveTailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#StartLiveTailRequest", name: "StartLiveTailRequest")
    StartLiveTailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#StartLiveTailResponse", name: "StartLiveTailResponse")
    StartLiveTailResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchlogs#StartLiveTailResponseStream", name: "StartLiveTailResponseStream", traits: {"smithy.api#streaming" => {}})
    StartQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#StartQueryRequest", name: "StartQueryRequest")
    StartQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#StartQueryResponse", name: "StartQueryResponse")
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#State", name: "State")
    StatsValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudwatchlogs#StatsValue", name: "StatsValue", traits: {"smithy.api#default" => 0})
    StopQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#StopQueryRequest", name: "StopQueryRequest")
    StopQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#StopQueryResponse", name: "StopQueryResponse")
    StoredBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#StoredBytes", name: "StoredBytes", traits: {"smithy.api#range" => {"min" => 0}})
    SubscriptionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SubscriptionFilter", name: "SubscriptionFilter")
    SubscriptionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#SubscriptionFilters", name: "SubscriptionFilters")
    SubstituteString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SubstituteString", name: "SubstituteString")
    SubstituteStringEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#SubstituteStringEntries", name: "SubstituteStringEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SubstituteStringEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SubstituteStringEntry", name: "SubstituteStringEntry")
    Success = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Success", name: "Success", traits: {"smithy.api#default" => false})
    SuppressionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#SuppressionPeriod", name: "SuppressionPeriod")
    SuppressionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#SuppressionState", name: "SuppressionState")
    SuppressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#SuppressionType", name: "SuppressionType")
    SuppressionUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#SuppressionUnit", name: "SuppressionUnit")
    SystemField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#SystemField", name: "SystemField")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1}})
    TagLogGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TagLogGroupRequest", name: "TagLogGroupRequest", traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model TagResourceRequest"}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchlogs#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Target", name: "Target", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TargetArn", name: "TargetArn", traits: {"smithy.api#length" => {"min" => 1}})
    TargetFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TargetFormat", name: "TargetFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TargetTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TargetTimezone", name: "TargetTimezone", traits: {"smithy.api#length" => {"min" => 1}})
    TestEventMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#TestEventMessages", name: "TestEventMessages", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TestMetricFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TestMetricFilterRequest", name: "TestMetricFilterRequest")
    TestMetricFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TestMetricFilterResponse", name: "TestMetricFilterResponse")
    TestTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TestTransformerRequest", name: "TestTransformerRequest")
    TestTransformerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TestTransformerResponse", name: "TestTransformerResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    Time = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Time", name: "Time", traits: {"smithy.api#length" => {"min" => 1}})
    Timestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#Timestamp", name: "Timestamp", traits: {"smithy.api#range" => {"min" => 0}})
    ToKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ToKey", name: "ToKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Token", name: "Token")
    TokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TokenString", name: "TokenString", traits: {"smithy.api#length" => {"min" => 1}})
    TokenValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudwatchlogs#TokenValue", name: "TokenValue", traits: {"smithy.api#default" => 0})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransformedEventMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#TransformedEventMessage", name: "TransformedEventMessage", traits: {"smithy.api#length" => {"min" => 1}})
    TransformedLogRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TransformedLogRecord", name: "TransformedLogRecord")
    TransformedLogs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#TransformedLogs", name: "TransformedLogs")
    TrimString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TrimString", name: "TrimString")
    TrimStringWithKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#TrimStringWithKeys", name: "TrimStringWithKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchlogs#Type", name: "Type")
    TypeConverter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TypeConverter", name: "TypeConverter")
    TypeConverterEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#TypeConverterEntries", name: "TypeConverterEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TypeConverterEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#TypeConverterEntry", name: "TypeConverterEntry")
    Unmask = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudwatchlogs#Unmask", name: "Unmask", traits: {"smithy.api#default" => false})
    UnrecognizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UnrecognizedClientException", name: "UnrecognizedClientException", traits: {"smithy.api#error" => "client"})
    UntagLogGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UntagLogGroupRequest", name: "UntagLogGroupRequest", traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model UntagResourceRequest"}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAnomalyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UpdateAnomalyRequest", name: "UpdateAnomalyRequest")
    UpdateDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UpdateDeliveryConfigurationRequest", name: "UpdateDeliveryConfigurationRequest")
    UpdateDeliveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UpdateDeliveryConfigurationResponse", name: "UpdateDeliveryConfigurationResponse")
    UpdateLogAnomalyDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UpdateLogAnomalyDetectorRequest", name: "UpdateLogAnomalyDetectorRequest")
    UpperCaseString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#UpperCaseString", name: "UpperCaseString")
    UpperCaseStringWithKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchlogs#UpperCaseStringWithKeys", name: "UpperCaseStringWithKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchlogs#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#Value", name: "Value")
    ValueKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#ValueKey", name: "ValueKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    WithKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchlogs#WithKey", name: "WithKey", traits: {"smithy.api#length" => {"min" => 1}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId)
    AccountPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPolicy)
    AccountPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName"))
    AccountPolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPolicyDocument, location_name: "policyDocument"))
    AccountPolicy.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdatedTime"))
    AccountPolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, location_name: "policyType"))
    AccountPolicy.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, location_name: "scope"))
    AccountPolicy.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionCriteria, location_name: "selectionCriteria"))
    AccountPolicy.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    AccountPolicy.type = Types::AccountPolicy
    AddKeyEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddKeyEntry)
    AddKeyEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    AddKeyEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AddKeyValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    AddKeyEntry.add_member(:overwrite_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteIfExists, location_name: "overwriteIfExists", traits: {"smithy.api#default" => false}))
    AddKeyEntry.type = Types::AddKeyEntry
    AddKeys.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: AddKeyEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    AddKeys.type = Types::AddKeys
    AllowedFieldDelimiters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter)
    AllowedFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecordField)
    Anomalies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Anomaly)
    Anomaly.add_member(:anomaly_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, location_name: "anomalyId", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternId, location_name: "patternId", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_string, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternString, location_name: "patternString", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternRegex, location_name: "patternRegex"))
    Anomaly.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, location_name: "priority"))
    Anomaly.add_member(:first_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "firstSeen", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Anomaly.add_member(:last_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "lastSeen", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Anomaly.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "active", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:histogram, ::Smithy::Schema::Shapes::MemberShape.new(target: Histogram, location_name: "histogram", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:log_samples, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSamples, location_name: "logSamples", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternTokens, location_name: "patternTokens", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:log_group_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArnList, location_name: "logGroupArnList", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:suppressed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "suppressed"))
    Anomaly.add_member(:suppressed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "suppressedDate", traits: {"smithy.api#default" => 0}))
    Anomaly.add_member(:suppressed_until, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "suppressedUntil", traits: {"smithy.api#default" => 0}))
    Anomaly.add_member(:is_pattern_level_suppression, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isPatternLevelSuppression"))
    Anomaly.type = Types::Anomaly
    AnomalyDetector.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn"))
    AnomalyDetector.add_member(:detector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorName, location_name: "detectorName"))
    AnomalyDetector.add_member(:log_group_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArnList, location_name: "logGroupArnList"))
    AnomalyDetector.add_member(:evaluation_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFrequency, location_name: "evaluationFrequency"))
    AnomalyDetector.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    AnomalyDetector.add_member(:anomaly_detector_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorStatus, location_name: "anomalyDetectorStatus"))
    AnomalyDetector.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId"))
    AnomalyDetector.add_member(:creation_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "creationTimeStamp", traits: {"smithy.api#default" => 0}))
    AnomalyDetector.add_member(:last_modified_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "lastModifiedTimeStamp", traits: {"smithy.api#default" => 0}))
    AnomalyDetector.add_member(:anomaly_visibility_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    AnomalyDetector.type = Types::AnomalyDetector
    AnomalyDetectorStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    AnomalyDetectorStatus.add_member(:training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRAINING", traits: {"smithy.api#enumValue" => "TRAINING"}))
    AnomalyDetectorStatus.add_member(:analyzing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANALYZING", traits: {"smithy.api#enumValue" => "ANALYZING"}))
    AnomalyDetectorStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AnomalyDetectorStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    AnomalyDetectorStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    AnomalyDetectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetector)
    AssociateKmsKeyRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    AssociateKmsKeyRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    AssociateKmsKeyRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, location_name: "resourceIdentifier"))
    AssociateKmsKeyRequest.type = Types::AssociateKmsKeyRequest
    CSV.add_member(:quote_character, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteCharacter, location_name: "quoteCharacter"))
    CSV.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, location_name: "delimiter"))
    CSV.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: Columns, location_name: "columns"))
    CSV.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    CSV.type = Types::CSV
    CancelExportTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskId, location_name: "taskId", traits: {"smithy.api#required" => {}}))
    CancelExportTaskRequest.type = Types::CancelExportTaskRequest
    Columns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Column)
    ConfigurationTemplate.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "service"))
    ConfigurationTemplate.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, location_name: "logType"))
    ConfigurationTemplate.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ConfigurationTemplate.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    ConfigurationTemplate.add_member(:default_delivery_config_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationTemplateDeliveryConfigValues, location_name: "defaultDeliveryConfigValues"))
    ConfigurationTemplate.add_member(:allowed_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedFields, location_name: "allowedFields"))
    ConfigurationTemplate.add_member(:allowed_output_formats, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormats, location_name: "allowedOutputFormats"))
    ConfigurationTemplate.add_member(:allowed_action_for_allow_vended_logs_delivery_for_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedActionForAllowVendedLogsDeliveryForResource, location_name: "allowedActionForAllowVendedLogsDeliveryForResource"))
    ConfigurationTemplate.add_member(:allowed_field_delimiters, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedFieldDelimiters, location_name: "allowedFieldDelimiters"))
    ConfigurationTemplate.add_member(:allowed_suffix_path_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFields, location_name: "allowedSuffixPathFields"))
    ConfigurationTemplate.type = Types::ConfigurationTemplate
    ConfigurationTemplateDeliveryConfigValues.add_member(:record_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFields, location_name: "recordFields"))
    ConfigurationTemplateDeliveryConfigValues.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter, location_name: "fieldDelimiter"))
    ConfigurationTemplateDeliveryConfigValues.add_member(:s3_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    ConfigurationTemplateDeliveryConfigValues.type = Types::ConfigurationTemplateDeliveryConfigValues
    ConfigurationTemplates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationTemplate)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CopyValue.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyValueEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    CopyValue.type = Types::CopyValue
    CopyValueEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CopyValueEntry)
    CopyValueEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    CopyValueEntry.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "target", traits: {"smithy.api#required" => {}}))
    CopyValueEntry.add_member(:overwrite_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteIfExists, location_name: "overwriteIfExists", traits: {"smithy.api#default" => false}))
    CopyValueEntry.type = Types::CopyValueEntry
    CreateDeliveryRequest.add_member(:delivery_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySourceName, location_name: "deliverySourceName", traits: {"smithy.api#required" => {}}))
    CreateDeliveryRequest.add_member(:delivery_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "deliveryDestinationArn", traits: {"smithy.api#required" => {}}))
    CreateDeliveryRequest.add_member(:record_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFields, location_name: "recordFields"))
    CreateDeliveryRequest.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter, location_name: "fieldDelimiter"))
    CreateDeliveryRequest.add_member(:s3_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    CreateDeliveryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateDeliveryRequest.type = Types::CreateDeliveryRequest
    CreateDeliveryResponse.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: Delivery, location_name: "delivery"))
    CreateDeliveryResponse.type = Types::CreateDeliveryResponse
    CreateExportTaskRequest.add_member(:task_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskName, location_name: "taskName"))
    CreateExportTaskRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamNamePrefix"))
    CreateExportTaskRequest.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "from", traits: {"smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "to", traits: {"smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestinationBucket, location_name: "destination", traits: {"smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:destination_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestinationPrefix, location_name: "destinationPrefix"))
    CreateExportTaskRequest.type = Types::CreateExportTaskRequest
    CreateExportTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskId, location_name: "taskId"))
    CreateExportTaskResponse.type = Types::CreateExportTaskResponse
    CreateLogAnomalyDetectorRequest.add_member(:log_group_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArnList, location_name: "logGroupArnList", traits: {"smithy.api#required" => {}}))
    CreateLogAnomalyDetectorRequest.add_member(:detector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorName, location_name: "detectorName"))
    CreateLogAnomalyDetectorRequest.add_member(:evaluation_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFrequency, location_name: "evaluationFrequency"))
    CreateLogAnomalyDetectorRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    CreateLogAnomalyDetectorRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorKmsKeyArn, location_name: "kmsKeyId"))
    CreateLogAnomalyDetectorRequest.add_member(:anomaly_visibility_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    CreateLogAnomalyDetectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateLogAnomalyDetectorRequest.type = Types::CreateLogAnomalyDetectorRequest
    CreateLogAnomalyDetectorResponse.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn"))
    CreateLogAnomalyDetectorResponse.type = Types::CreateLogAnomalyDetectorResponse
    CreateLogGroupRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CreateLogGroupRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId"))
    CreateLogGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateLogGroupRequest.add_member(:log_group_class, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupClass, location_name: "logGroupClass"))
    CreateLogGroupRequest.type = Types::CreateLogGroupRequest
    CreateLogStreamRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CreateLogStreamRequest.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName", traits: {"smithy.api#required" => {}}))
    CreateLogStreamRequest.type = Types::CreateLogStreamRequest
    DashboardViewerPrincipals.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn)
    DataAlreadyAcceptedException.add_member(:expected_sequence_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceToken, location_name: "expectedSequenceToken"))
    DataAlreadyAcceptedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    DataAlreadyAcceptedException.type = Types::DataAlreadyAcceptedException
    DataProtectionStatus.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATED", traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    DataProtectionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DataProtectionStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    DataProtectionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DateTimeConverter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    DateTimeConverter.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "target", traits: {"smithy.api#required" => {}}))
    DateTimeConverter.add_member(:target_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFormat, location_name: "targetFormat"))
    DateTimeConverter.add_member(:match_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchPatterns, location_name: "matchPatterns", traits: {"smithy.api#required" => {}}))
    DateTimeConverter.add_member(:source_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceTimezone, location_name: "sourceTimezone"))
    DateTimeConverter.add_member(:target_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTimezone, location_name: "targetTimezone"))
    DateTimeConverter.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, location_name: "locale"))
    DateTimeConverter.type = Types::DateTimeConverter
    DeleteAccountPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName", traits: {"smithy.api#required" => {}}))
    DeleteAccountPolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, location_name: "policyType", traits: {"smithy.api#required" => {}}))
    DeleteAccountPolicyRequest.type = Types::DeleteAccountPolicyRequest
    DeleteDataProtectionPolicyRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteDataProtectionPolicyRequest.type = Types::DeleteDataProtectionPolicyRequest
    DeleteDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "deliveryDestinationName", traits: {"smithy.api#required" => {}}))
    DeleteDeliveryDestinationPolicyRequest.type = Types::DeleteDeliveryDestinationPolicyRequest
    DeleteDeliveryDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDeliveryDestinationRequest.type = Types::DeleteDeliveryDestinationRequest
    DeleteDeliveryRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryId, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeleteDeliveryRequest.type = Types::DeleteDeliveryRequest
    DeleteDeliverySourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDeliverySourceRequest.type = Types::DeleteDeliverySourceRequest
    DeleteDestinationRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    DeleteDestinationRequest.type = Types::DeleteDestinationRequest
    DeleteIndexPolicyRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteIndexPolicyRequest.type = Types::DeleteIndexPolicyRequest
    DeleteIndexPolicyResponse.type = Types::DeleteIndexPolicyResponse
    DeleteIntegrationRequest.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, location_name: "integrationName", traits: {"smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Force, location_name: "force", traits: {"smithy.api#default" => false}))
    DeleteIntegrationRequest.type = Types::DeleteIntegrationRequest
    DeleteIntegrationResponse.type = Types::DeleteIntegrationResponse
    DeleteKeys.add_member(:with_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteWithKeys, location_name: "withKeys", traits: {"smithy.api#required" => {}}))
    DeleteKeys.type = Types::DeleteKeys
    DeleteLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn", traits: {"smithy.api#required" => {}}))
    DeleteLogAnomalyDetectorRequest.type = Types::DeleteLogAnomalyDetectorRequest
    DeleteLogGroupRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    DeleteLogGroupRequest.type = Types::DeleteLogGroupRequest
    DeleteLogStreamRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    DeleteLogStreamRequest.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName", traits: {"smithy.api#required" => {}}))
    DeleteLogStreamRequest.type = Types::DeleteLogStreamRequest
    DeleteMetricFilterRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    DeleteMetricFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterName", traits: {"smithy.api#required" => {}}))
    DeleteMetricFilterRequest.type = Types::DeleteMetricFilterRequest
    DeleteQueryDefinitionRequest.add_member(:query_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryDefinitionId", traits: {"smithy.api#required" => {}}))
    DeleteQueryDefinitionRequest.type = Types::DeleteQueryDefinitionRequest
    DeleteQueryDefinitionResponse.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: Success, location_name: "success", traits: {"smithy.api#default" => false}))
    DeleteQueryDefinitionResponse.type = Types::DeleteQueryDefinitionResponse
    DeleteResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName"))
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn"))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRevisionId, location_name: "expectedRevisionId"))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteRetentionPolicyRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    DeleteRetentionPolicyRequest.type = Types::DeleteRetentionPolicyRequest
    DeleteSubscriptionFilterRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    DeleteSubscriptionFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterName", traits: {"smithy.api#required" => {}}))
    DeleteSubscriptionFilterRequest.type = Types::DeleteSubscriptionFilterRequest
    DeleteTransformerRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteTransformerRequest.type = Types::DeleteTransformerRequest
    DeleteWithKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WithKey)
    Deliveries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Delivery)
    Delivery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryId, location_name: "id"))
    Delivery.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    Delivery.add_member(:delivery_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySourceName, location_name: "deliverySourceName"))
    Delivery.add_member(:delivery_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "deliveryDestinationArn"))
    Delivery.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    Delivery.add_member(:record_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFields, location_name: "recordFields"))
    Delivery.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter, location_name: "fieldDelimiter"))
    Delivery.add_member(:s3_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    Delivery.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    Delivery.type = Types::Delivery
    DeliveryDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "name"))
    DeliveryDestination.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    DeliveryDestination.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    DeliveryDestination.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, location_name: "outputFormat"))
    DeliveryDestination.add_member(:delivery_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationConfiguration, location_name: "deliveryDestinationConfiguration"))
    DeliveryDestination.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    DeliveryDestination.type = Types::DeliveryDestination
    DeliveryDestinationConfiguration.add_member(:destination_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "destinationResourceArn", traits: {"smithy.api#required" => {}}))
    DeliveryDestinationConfiguration.type = Types::DeliveryDestinationConfiguration
    DeliveryDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    DeliveryDestinationType.add_member(:cwl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CWL", traits: {"smithy.api#enumValue" => "CWL"}))
    DeliveryDestinationType.add_member(:fh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FH", traits: {"smithy.api#enumValue" => "FH"}))
    DeliveryDestinationType.add_member(:xray, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XRAY", traits: {"smithy.api#enumValue" => "XRAY"}))
    DeliveryDestinationTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType)
    DeliveryDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestination)
    DeliverySource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySourceName, location_name: "name"))
    DeliverySource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    DeliverySource.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, location_name: "resourceArns"))
    DeliverySource.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "service"))
    DeliverySource.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, location_name: "logType"))
    DeliverySource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    DeliverySource.type = Types::DeliverySource
    DeliverySources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySource)
    DescribeAccountPoliciesRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, location_name: "policyType", traits: {"smithy.api#required" => {}}))
    DescribeAccountPoliciesRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName"))
    DescribeAccountPoliciesRequest.add_member(:account_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, location_name: "accountIdentifiers"))
    DescribeAccountPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeAccountPoliciesRequest.type = Types::DescribeAccountPoliciesRequest
    DescribeAccountPoliciesResponse.add_member(:account_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPolicies, location_name: "accountPolicies"))
    DescribeAccountPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeAccountPoliciesResponse.type = Types::DescribeAccountPoliciesResponse
    DescribeConfigurationTemplatesRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, location_name: "service"))
    DescribeConfigurationTemplatesRequest.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypes, location_name: "logTypes"))
    DescribeConfigurationTemplatesRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, location_name: "resourceTypes"))
    DescribeConfigurationTemplatesRequest.add_member(:delivery_destination_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationTypes, location_name: "deliveryDestinationTypes"))
    DescribeConfigurationTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeConfigurationTemplatesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeConfigurationTemplatesRequest.type = Types::DescribeConfigurationTemplatesRequest
    DescribeConfigurationTemplatesResponse.add_member(:configuration_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationTemplates, location_name: "configurationTemplates"))
    DescribeConfigurationTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeConfigurationTemplatesResponse.type = Types::DescribeConfigurationTemplatesResponse
    DescribeDeliveriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDeliveriesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeDeliveriesRequest.type = Types::DescribeDeliveriesRequest
    DescribeDeliveriesResponse.add_member(:deliveries, ::Smithy::Schema::Shapes::MemberShape.new(target: Deliveries, location_name: "deliveries"))
    DescribeDeliveriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDeliveriesResponse.type = Types::DescribeDeliveriesResponse
    DescribeDeliveryDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDeliveryDestinationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeDeliveryDestinationsRequest.type = Types::DescribeDeliveryDestinationsRequest
    DescribeDeliveryDestinationsResponse.add_member(:delivery_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinations, location_name: "deliveryDestinations"))
    DescribeDeliveryDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDeliveryDestinationsResponse.type = Types::DescribeDeliveryDestinationsResponse
    DescribeDeliverySourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDeliverySourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeDeliverySourcesRequest.type = Types::DescribeDeliverySourcesRequest
    DescribeDeliverySourcesResponse.add_member(:delivery_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySources, location_name: "deliverySources"))
    DescribeDeliverySourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDeliverySourcesResponse.type = Types::DescribeDeliverySourcesResponse
    DescribeDestinationsRequest.add_member(:destination_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "DestinationNamePrefix"))
    DescribeDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDestinationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeDestinationsRequest.type = Types::DescribeDestinationsRequest
    DescribeDestinationsResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, location_name: "destinations"))
    DescribeDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeDestinationsResponse.type = Types::DescribeDestinationsResponse
    DescribeExportTasksRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskId, location_name: "taskId"))
    DescribeExportTasksRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskStatusCode, location_name: "statusCode"))
    DescribeExportTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeExportTasksRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeExportTasksRequest.type = Types::DescribeExportTasksRequest
    DescribeExportTasksResponse.add_member(:export_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTasks, location_name: "exportTasks"))
    DescribeExportTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeExportTasksResponse.type = Types::DescribeExportTasksResponse
    DescribeFieldIndexesLogGroupIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier)
    DescribeFieldIndexesRequest.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeFieldIndexesLogGroupIdentifiers, location_name: "logGroupIdentifiers", traits: {"smithy.api#required" => {}}))
    DescribeFieldIndexesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeFieldIndexesRequest.type = Types::DescribeFieldIndexesRequest
    DescribeFieldIndexesResponse.add_member(:field_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIndexes, location_name: "fieldIndexes"))
    DescribeFieldIndexesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeFieldIndexesResponse.type = Types::DescribeFieldIndexesResponse
    DescribeIndexPoliciesLogGroupIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier)
    DescribeIndexPoliciesRequest.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeIndexPoliciesLogGroupIdentifiers, location_name: "logGroupIdentifiers", traits: {"smithy.api#required" => {}}))
    DescribeIndexPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeIndexPoliciesRequest.type = Types::DescribeIndexPoliciesRequest
    DescribeIndexPoliciesResponse.add_member(:index_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexPolicies, location_name: "indexPolicies"))
    DescribeIndexPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeIndexPoliciesResponse.type = Types::DescribeIndexPoliciesResponse
    DescribeLogGroupsLogGroupIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier)
    DescribeLogGroupsRequest.add_member(:account_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, location_name: "accountIdentifiers"))
    DescribeLogGroupsRequest.add_member(:log_group_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupNamePrefix"))
    DescribeLogGroupsRequest.add_member(:log_group_name_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNamePattern, location_name: "logGroupNamePattern"))
    DescribeLogGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeLogGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeLogGroupsRequest.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeLinkedAccounts, location_name: "includeLinkedAccounts"))
    DescribeLogGroupsRequest.add_member(:log_group_class, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupClass, location_name: "logGroupClass"))
    DescribeLogGroupsRequest.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLogGroupsLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    DescribeLogGroupsRequest.type = Types::DescribeLogGroupsRequest
    DescribeLogGroupsResponse.add_member(:log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroups, location_name: "logGroups"))
    DescribeLogGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeLogGroupsResponse.type = Types::DescribeLogGroupsResponse
    DescribeLogStreamsRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    DescribeLogStreamsRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    DescribeLogStreamsRequest.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamNamePrefix"))
    DescribeLogStreamsRequest.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, location_name: "orderBy"))
    DescribeLogStreamsRequest.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: Descending, location_name: "descending"))
    DescribeLogStreamsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeLogStreamsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeLogStreamsRequest.type = Types::DescribeLogStreamsRequest
    DescribeLogStreamsResponse.add_member(:log_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreams, location_name: "logStreams"))
    DescribeLogStreamsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeLogStreamsResponse.type = Types::DescribeLogStreamsResponse
    DescribeMetricFiltersRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    DescribeMetricFiltersRequest.add_member(:filter_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterNamePrefix"))
    DescribeMetricFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeMetricFiltersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeMetricFiltersRequest.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "metricName"))
    DescribeMetricFiltersRequest.add_member(:metric_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, location_name: "metricNamespace"))
    DescribeMetricFiltersRequest.type = Types::DescribeMetricFiltersRequest
    DescribeMetricFiltersResponse.add_member(:metric_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricFilters, location_name: "metricFilters"))
    DescribeMetricFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeMetricFiltersResponse.type = Types::DescribeMetricFiltersResponse
    DescribeQueriesRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    DescribeQueriesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "status"))
    DescribeQueriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeQueriesMaxResults, location_name: "maxResults"))
    DescribeQueriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeQueriesRequest.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    DescribeQueriesRequest.type = Types::DescribeQueriesRequest
    DescribeQueriesResponse.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInfoList, location_name: "queries"))
    DescribeQueriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeQueriesResponse.type = Types::DescribeQueriesResponse
    DescribeQueryDefinitionsRequest.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    DescribeQueryDefinitionsRequest.add_member(:query_definition_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinitionName, location_name: "queryDefinitionNamePrefix"))
    DescribeQueryDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryListMaxResults, location_name: "maxResults"))
    DescribeQueryDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeQueryDefinitionsRequest.type = Types::DescribeQueryDefinitionsRequest
    DescribeQueryDefinitionsResponse.add_member(:query_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinitionList, location_name: "queryDefinitions"))
    DescribeQueryDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeQueryDefinitionsResponse.type = Types::DescribeQueryDefinitionsResponse
    DescribeResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeResourcePoliciesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeResourcePoliciesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn"))
    DescribeResourcePoliciesRequest.add_member(:policy_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyScope, location_name: "policyScope"))
    DescribeResourcePoliciesRequest.type = Types::DescribeResourcePoliciesRequest
    DescribeResourcePoliciesResponse.add_member(:resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicies, location_name: "resourcePolicies"))
    DescribeResourcePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeResourcePoliciesResponse.type = Types::DescribeResourcePoliciesResponse
    DescribeSubscriptionFiltersRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    DescribeSubscriptionFiltersRequest.add_member(:filter_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterNamePrefix"))
    DescribeSubscriptionFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeSubscriptionFiltersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeLimit, location_name: "limit"))
    DescribeSubscriptionFiltersRequest.type = Types::DescribeSubscriptionFiltersRequest
    DescribeSubscriptionFiltersResponse.add_member(:subscription_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionFilters, location_name: "subscriptionFilters"))
    DescribeSubscriptionFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeSubscriptionFiltersResponse.type = Types::DescribeSubscriptionFiltersResponse
    Destination.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "destinationName"))
    Destination.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, location_name: "targetArn"))
    Destination.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    Destination.add_member(:access_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicy, location_name: "accessPolicy"))
    Destination.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    Destination.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    Destination.type = Types::Destination
    Destinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Destination)
    Dimensions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionsKey)
    Dimensions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionsValue)
    DisassociateKmsKeyRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    DisassociateKmsKeyRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, location_name: "resourceIdentifier"))
    DisassociateKmsKeyRequest.type = Types::DisassociateKmsKeyRequest
    Distribution.add_member(:random, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Random", traits: {"smithy.api#enumValue" => "Random"}))
    Distribution.add_member(:by_log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ByLogStream", traits: {"smithy.api#enumValue" => "ByLogStream"}))
    EmitSystemFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemField)
    Entity.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityKeyAttributes, location_name: "keyAttributes"))
    Entity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributes, location_name: "attributes"))
    Entity.type = Types::Entity
    EntityAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributesKey)
    EntityAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributesValue)
    EntityKeyAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityKeyAttributesKey)
    EntityKeyAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityKeyAttributesValue)
    EntityRejectionErrorType.add_member(:invalid_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_ENTITY", traits: {"smithy.api#enumValue" => "InvalidEntity"}))
    EntityRejectionErrorType.add_member(:invalid_type_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_TYPE_VALUE", traits: {"smithy.api#enumValue" => "InvalidTypeValue"}))
    EntityRejectionErrorType.add_member(:invalid_key_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_KEY_ATTRIBUTE", traits: {"smithy.api#enumValue" => "InvalidKeyAttributes"}))
    EntityRejectionErrorType.add_member(:invalid_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_ATTRIBUTES", traits: {"smithy.api#enumValue" => "InvalidAttributes"}))
    EntityRejectionErrorType.add_member(:entity_size_too_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTITY_SIZE_TOO_LARGE", traits: {"smithy.api#enumValue" => "EntitySizeTooLarge"}))
    EntityRejectionErrorType.add_member(:unsupported_log_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_LOG_GROUP_TYPE", traits: {"smithy.api#enumValue" => "UnsupportedLogGroupType"}))
    EntityRejectionErrorType.add_member(:missing_required_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MISSING_REQUIRED_FIELDS", traits: {"smithy.api#enumValue" => "MissingRequiredFields"}))
    Enumerations.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString)
    Enumerations.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValue)
    EvaluationFrequency.add_member(:one_min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_MIN", traits: {"smithy.api#enumValue" => "ONE_MIN"}))
    EvaluationFrequency.add_member(:five_min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIVE_MIN", traits: {"smithy.api#enumValue" => "FIVE_MIN"}))
    EvaluationFrequency.add_member(:ten_min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEN_MIN", traits: {"smithy.api#enumValue" => "TEN_MIN"}))
    EvaluationFrequency.add_member(:fifteen_min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIFTEEN_MIN", traits: {"smithy.api#enumValue" => "FIFTEEN_MIN"}))
    EvaluationFrequency.add_member(:thirty_min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THIRTY_MIN", traits: {"smithy.api#enumValue" => "THIRTY_MIN"}))
    EvaluationFrequency.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_HOUR", traits: {"smithy.api#enumValue" => "ONE_HOUR"}))
    EventSource.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CloudTrail"}))
    EventSource.add_member(:route53_resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUTE53_RESOLVER", traits: {"smithy.api#enumValue" => "Route53Resolver"}))
    EventSource.add_member(:vpc_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VPC_FLOW", traits: {"smithy.api#enumValue" => "VPCFlow"}))
    EventSource.add_member(:eks_audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EKS_AUDIT", traits: {"smithy.api#enumValue" => "EKSAudit"}))
    EventSource.add_member(:awswaf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWSWAF", traits: {"smithy.api#enumValue" => "AWSWAF"}))
    ExportTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskId, location_name: "taskId"))
    ExportTask.add_member(:task_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskName, location_name: "taskName"))
    ExportTask.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    ExportTask.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "from"))
    ExportTask.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "to"))
    ExportTask.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestinationBucket, location_name: "destination"))
    ExportTask.add_member(:destination_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestinationPrefix, location_name: "destinationPrefix"))
    ExportTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskStatus, location_name: "status"))
    ExportTask.add_member(:execution_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskExecutionInfo, location_name: "executionInfo"))
    ExportTask.type = Types::ExportTask
    ExportTaskExecutionInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    ExportTaskExecutionInfo.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "completionTime"))
    ExportTaskExecutionInfo.type = Types::ExportTaskExecutionInfo
    ExportTaskStatus.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskStatusCode, location_name: "code"))
    ExportTaskStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskStatusMessage, location_name: "message"))
    ExportTaskStatus.type = Types::ExportTaskStatus
    ExportTaskStatusCode.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ExportTaskStatusCode.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportTaskStatusCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportTaskStatusCode.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ExportTaskStatusCode.add_member(:pending_cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CANCEL", traits: {"smithy.api#enumValue" => "PENDING_CANCEL"}))
    ExportTaskStatusCode.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExportTasks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTask)
    ExtractedValues.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Token)
    ExtractedValues.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Value)
    FieldIndex.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    FieldIndex.add_member(:field_index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIndexName, location_name: "fieldIndexName"))
    FieldIndex.add_member(:last_scan_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastScanTime"))
    FieldIndex.add_member(:first_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "firstEventTime"))
    FieldIndex.add_member(:last_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastEventTime"))
    FieldIndex.type = Types::FieldIndex
    FieldIndexes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIndex)
    FieldsData.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, location_name: "data"))
    FieldsData.type = Types::FieldsData
    FilterLogEventsRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    FilterLogEventsRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    FilterLogEventsRequest.add_member(:log_stream_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogStreamNames, location_name: "logStreamNames"))
    FilterLogEventsRequest.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamNamePrefix"))
    FilterLogEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startTime"))
    FilterLogEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "endTime"))
    FilterLogEventsRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    FilterLogEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    FilterLogEventsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsLimit, location_name: "limit"))
    FilterLogEventsRequest.add_member(:interleaved, ::Smithy::Schema::Shapes::MemberShape.new(target: Interleaved, location_name: "interleaved", traits: {"smithy.api#deprecated" => {"message" => "Starting on June 17, 2019, this parameter will be ignored and the value will be assumed to be true. The response from this operation will always interleave events from multiple log streams within a log group."}}))
    FilterLogEventsRequest.add_member(:unmask, ::Smithy::Schema::Shapes::MemberShape.new(target: Unmask, location_name: "unmask", traits: {"smithy.api#default" => false}))
    FilterLogEventsRequest.type = Types::FilterLogEventsRequest
    FilterLogEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: FilteredLogEvents, location_name: "events"))
    FilterLogEventsResponse.add_member(:searched_log_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchedLogStreams, location_name: "searchedLogStreams"))
    FilterLogEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    FilterLogEventsResponse.type = Types::FilterLogEventsResponse
    FilteredLogEvent.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName"))
    FilteredLogEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "timestamp"))
    FilteredLogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "message"))
    FilteredLogEvent.add_member(:ingestion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ingestionTime"))
    FilteredLogEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    FilteredLogEvent.type = Types::FilteredLogEvent
    FilteredLogEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilteredLogEvent)
    FlattenedElement.add_member(:first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIRST", traits: {"smithy.api#enumValue" => "first"}))
    FlattenedElement.add_member(:last, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST", traits: {"smithy.api#enumValue" => "last"}))
    GetDataProtectionPolicyRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    GetDataProtectionPolicyRequest.type = Types::GetDataProtectionPolicyRequest
    GetDataProtectionPolicyResponse.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetDataProtectionPolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionPolicyDocument, location_name: "policyDocument"))
    GetDataProtectionPolicyResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdatedTime"))
    GetDataProtectionPolicyResponse.type = Types::GetDataProtectionPolicyResponse
    GetDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "deliveryDestinationName", traits: {"smithy.api#required" => {}}))
    GetDeliveryDestinationPolicyRequest.type = Types::GetDeliveryDestinationPolicyRequest
    GetDeliveryDestinationPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "policy"))
    GetDeliveryDestinationPolicyResponse.type = Types::GetDeliveryDestinationPolicyResponse
    GetDeliveryDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetDeliveryDestinationRequest.type = Types::GetDeliveryDestinationRequest
    GetDeliveryDestinationResponse.add_member(:delivery_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestination, location_name: "deliveryDestination"))
    GetDeliveryDestinationResponse.type = Types::GetDeliveryDestinationResponse
    GetDeliveryRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetDeliveryRequest.type = Types::GetDeliveryRequest
    GetDeliveryResponse.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: Delivery, location_name: "delivery"))
    GetDeliveryResponse.type = Types::GetDeliveryResponse
    GetDeliverySourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetDeliverySourceRequest.type = Types::GetDeliverySourceRequest
    GetDeliverySourceResponse.add_member(:delivery_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySource, location_name: "deliverySource"))
    GetDeliverySourceResponse.type = Types::GetDeliverySourceResponse
    GetIntegrationRequest.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, location_name: "integrationName", traits: {"smithy.api#required" => {}}))
    GetIntegrationRequest.type = Types::GetIntegrationRequest
    GetIntegrationResponse.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, location_name: "integrationName"))
    GetIntegrationResponse.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "integrationType"))
    GetIntegrationResponse.add_member(:integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, location_name: "integrationStatus"))
    GetIntegrationResponse.add_member(:integration_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDetails, location_name: "integrationDetails"))
    GetIntegrationResponse.type = Types::GetIntegrationResponse
    GetLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn", traits: {"smithy.api#required" => {}}))
    GetLogAnomalyDetectorRequest.type = Types::GetLogAnomalyDetectorRequest
    GetLogAnomalyDetectorResponse.add_member(:detector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorName, location_name: "detectorName"))
    GetLogAnomalyDetectorResponse.add_member(:log_group_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArnList, location_name: "logGroupArnList"))
    GetLogAnomalyDetectorResponse.add_member(:evaluation_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFrequency, location_name: "evaluationFrequency"))
    GetLogAnomalyDetectorResponse.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    GetLogAnomalyDetectorResponse.add_member(:anomaly_detector_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorStatus, location_name: "anomalyDetectorStatus"))
    GetLogAnomalyDetectorResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId"))
    GetLogAnomalyDetectorResponse.add_member(:creation_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "creationTimeStamp", traits: {"smithy.api#default" => 0}))
    GetLogAnomalyDetectorResponse.add_member(:last_modified_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "lastModifiedTimeStamp", traits: {"smithy.api#default" => 0}))
    GetLogAnomalyDetectorResponse.add_member(:anomaly_visibility_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    GetLogAnomalyDetectorResponse.type = Types::GetLogAnomalyDetectorResponse
    GetLogEventsRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    GetLogEventsRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetLogEventsRequest.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName", traits: {"smithy.api#required" => {}}))
    GetLogEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startTime"))
    GetLogEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "endTime"))
    GetLogEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    GetLogEventsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsLimit, location_name: "limit"))
    GetLogEventsRequest.add_member(:start_from_head, ::Smithy::Schema::Shapes::MemberShape.new(target: StartFromHead, location_name: "startFromHead"))
    GetLogEventsRequest.add_member(:unmask, ::Smithy::Schema::Shapes::MemberShape.new(target: Unmask, location_name: "unmask", traits: {"smithy.api#default" => false}))
    GetLogEventsRequest.type = Types::GetLogEventsRequest
    GetLogEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputLogEvents, location_name: "events"))
    GetLogEventsResponse.add_member(:next_forward_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextForwardToken"))
    GetLogEventsResponse.add_member(:next_backward_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextBackwardToken"))
    GetLogEventsResponse.type = Types::GetLogEventsResponse
    GetLogGroupFieldsRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    GetLogGroupFieldsRequest.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "time"))
    GetLogGroupFieldsRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetLogGroupFieldsRequest.type = Types::GetLogGroupFieldsRequest
    GetLogGroupFieldsResponse.add_member(:log_group_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupFieldList, location_name: "logGroupFields"))
    GetLogGroupFieldsResponse.type = Types::GetLogGroupFieldsResponse
    GetLogObjectRequest.add_member(:unmask, ::Smithy::Schema::Shapes::MemberShape.new(target: Unmask, location_name: "unmask", traits: {"smithy.api#default" => false}))
    GetLogObjectRequest.add_member(:log_object_pointer, ::Smithy::Schema::Shapes::MemberShape.new(target: LogObjectPointer, location_name: "logObjectPointer", traits: {"smithy.api#required" => {}}))
    GetLogObjectRequest.type = Types::GetLogObjectRequest
    GetLogObjectResponse.add_member(:field_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: GetLogObjectResponseStream, location_name: "fieldStream"))
    GetLogObjectResponse.type = Types::GetLogObjectResponse
    GetLogObjectResponseStream.add_member(:fields, Types::GetLogObjectResponseStream::Fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsData, location_name: "fields"))
    GetLogObjectResponseStream.add_member(:internal_streaming_exception, Types::GetLogObjectResponseStream::InternalStreamingException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalStreamingException, location_name: "InternalStreamingException"))
    GetLogObjectResponseStream.add_member(:unknown, Types::GetLogObjectResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GetLogObjectResponseStream.type = Types::GetLogObjectResponseStream
    GetLogRecordRequest.add_member(:log_record_pointer, ::Smithy::Schema::Shapes::MemberShape.new(target: LogRecordPointer, location_name: "logRecordPointer", traits: {"smithy.api#required" => {}}))
    GetLogRecordRequest.add_member(:unmask, ::Smithy::Schema::Shapes::MemberShape.new(target: Unmask, location_name: "unmask", traits: {"smithy.api#default" => false}))
    GetLogRecordRequest.type = Types::GetLogRecordRequest
    GetLogRecordResponse.add_member(:log_record, ::Smithy::Schema::Shapes::MemberShape.new(target: LogRecord, location_name: "logRecord"))
    GetLogRecordResponse.type = Types::GetLogRecordResponse
    GetQueryResultsRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryId", traits: {"smithy.api#required" => {}}))
    GetQueryResultsRequest.type = Types::GetQueryResultsRequest
    GetQueryResultsResponse.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    GetQueryResultsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResults, location_name: "results"))
    GetQueryResultsResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatistics, location_name: "statistics"))
    GetQueryResultsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "status"))
    GetQueryResultsResponse.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, location_name: "encryptionKey"))
    GetQueryResultsResponse.type = Types::GetQueryResultsResponse
    GetTransformerRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    GetTransformerRequest.type = Types::GetTransformerRequest
    GetTransformerResponse.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetTransformerResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    GetTransformerResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastModifiedTime"))
    GetTransformerResponse.add_member(:transformer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: Processors, location_name: "transformerConfig"))
    GetTransformerResponse.type = Types::GetTransformerResponse
    Grok.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    Grok.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: GrokMatch, location_name: "match", traits: {"smithy.api#required" => {}}))
    Grok.type = Types::Grok
    Histogram.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Time)
    Histogram.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Count)
    IndexPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IndexPolicy)
    IndexPolicy.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    IndexPolicy.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdateTime"))
    IndexPolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "policyDocument"))
    IndexPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName"))
    IndexPolicy.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexSource, location_name: "source"))
    IndexPolicy.type = Types::IndexPolicy
    IndexSource.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    IndexSource.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOG_GROUP", traits: {"smithy.api#enumValue" => "LOG_GROUP"}))
    InheritedProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InheritedProperty)
    InheritedProperty.add_member(:account_data_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_DATA_PROTECTION", traits: {"smithy.api#enumValue" => "ACCOUNT_DATA_PROTECTION"}))
    InputLogEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "timestamp", traits: {"smithy.api#required" => {}}))
    InputLogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InputLogEvent.type = Types::InputLogEvent
    InputLogEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogEvent)
    InputLogStreamNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName)
    IntegrationDetails.add_member(:open_search_integration_details, Types::IntegrationDetails::OpenSearchIntegrationDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchIntegrationDetails, location_name: "openSearchIntegrationDetails"))
    IntegrationDetails.add_member(:unknown, Types::IntegrationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationDetails.type = Types::IntegrationDetails
    IntegrationStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    IntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IntegrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IntegrationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummary)
    IntegrationSummary.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, location_name: "integrationName"))
    IntegrationSummary.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "integrationType"))
    IntegrationSummary.add_member(:integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, location_name: "integrationStatus"))
    IntegrationSummary.type = Types::IntegrationSummary
    IntegrationType.add_member(:opensearch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPENSEARCH", traits: {"smithy.api#enumValue" => "OPENSEARCH"}))
    InternalStreamingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    InternalStreamingException.type = Types::InternalStreamingException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidSequenceTokenException.add_member(:expected_sequence_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceToken, location_name: "expectedSequenceToken"))
    InvalidSequenceTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    InvalidSequenceTokenException.type = Types::InvalidSequenceTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAnomaliesRequest.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn"))
    ListAnomaliesRequest.add_member(:suppression_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionState, location_name: "suppressionState"))
    ListAnomaliesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnomaliesLimit, location_name: "limit"))
    ListAnomaliesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListAnomaliesRequest.type = Types::ListAnomaliesRequest
    ListAnomaliesResponse.add_member(:anomalies, ::Smithy::Schema::Shapes::MemberShape.new(target: Anomalies, location_name: "anomalies"))
    ListAnomaliesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListAnomaliesResponse.type = Types::ListAnomaliesResponse
    ListIntegrationsRequest.add_member(:integration_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationNamePrefix, location_name: "integrationNamePrefix"))
    ListIntegrationsRequest.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "integrationType"))
    ListIntegrationsRequest.add_member(:integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, location_name: "integrationStatus"))
    ListIntegrationsRequest.type = Types::ListIntegrationsRequest
    ListIntegrationsResponse.add_member(:integration_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummaries, location_name: "integrationSummaries"))
    ListIntegrationsResponse.type = Types::ListIntegrationsResponse
    ListLogAnomalyDetectorsRequest.add_member(:filter_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, location_name: "filterLogGroupArn"))
    ListLogAnomalyDetectorsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLogAnomalyDetectorsLimit, location_name: "limit"))
    ListLogAnomalyDetectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLogAnomalyDetectorsRequest.type = Types::ListLogAnomalyDetectorsRequest
    ListLogAnomalyDetectorsResponse.add_member(:anomaly_detectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectors, location_name: "anomalyDetectors"))
    ListLogAnomalyDetectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLogAnomalyDetectorsResponse.type = Types::ListLogAnomalyDetectorsResponse
    ListLogGroupsForQueryRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryId", traits: {"smithy.api#required" => {}}))
    ListLogGroupsForQueryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLogGroupsForQueryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLogGroupsForQueryMaxResults, location_name: "maxResults"))
    ListLogGroupsForQueryRequest.type = Types::ListLogGroupsForQueryRequest
    ListLogGroupsForQueryResponse.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    ListLogGroupsForQueryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLogGroupsForQueryResponse.type = Types::ListLogGroupsForQueryResponse
    ListLogGroupsRequest.add_member(:log_group_name_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNameRegexPattern, location_name: "logGroupNamePattern"))
    ListLogGroupsRequest.add_member(:log_group_class, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupClass, location_name: "logGroupClass"))
    ListLogGroupsRequest.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeLinkedAccounts, location_name: "includeLinkedAccounts"))
    ListLogGroupsRequest.add_member(:account_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, location_name: "accountIdentifiers"))
    ListLogGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLogGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLimit, location_name: "limit"))
    ListLogGroupsRequest.type = Types::ListLogGroupsRequest
    ListLogGroupsResponse.add_member(:log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupSummaries, location_name: "logGroups"))
    ListLogGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLogGroupsResponse.type = Types::ListLogGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTagsLogGroupRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    ListTagsLogGroupRequest.type = Types::ListTagsLogGroupRequest
    ListTagsLogGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ListTagsLogGroupResponse.type = Types::ListTagsLogGroupResponse
    ListToMap.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    ListToMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    ListToMap.add_member(:value_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueKey, location_name: "valueKey"))
    ListToMap.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "target"))
    ListToMap.add_member(:flatten, ::Smithy::Schema::Shapes::MemberShape.new(target: Flatten, location_name: "flatten", traits: {"smithy.api#default" => false}))
    ListToMap.add_member(:flattened_element, ::Smithy::Schema::Shapes::MemberShape.new(target: FlattenedElement, location_name: "flattenedElement"))
    ListToMap.type = Types::ListToMap
    LiveTailSessionLogEvent.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName"))
    LiveTailSessionLogEvent.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    LiveTailSessionLogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "message"))
    LiveTailSessionLogEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "timestamp"))
    LiveTailSessionLogEvent.add_member(:ingestion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ingestionTime"))
    LiveTailSessionLogEvent.type = Types::LiveTailSessionLogEvent
    LiveTailSessionMetadata.add_member(:sampled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSampled, location_name: "sampled", traits: {"smithy.api#default" => false}))
    LiveTailSessionMetadata.type = Types::LiveTailSessionMetadata
    LiveTailSessionResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LiveTailSessionLogEvent)
    LiveTailSessionStart.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, location_name: "requestId"))
    LiveTailSessionStart.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId"))
    LiveTailSessionStart.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StartLiveTailLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    LiveTailSessionStart.add_member(:log_stream_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogStreamNames, location_name: "logStreamNames"))
    LiveTailSessionStart.add_member(:log_stream_name_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogStreamNames, location_name: "logStreamNamePrefixes"))
    LiveTailSessionStart.add_member(:log_event_filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "logEventFilterPattern"))
    LiveTailSessionStart.type = Types::LiveTailSessionStart
    LiveTailSessionUpdate.add_member(:session_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveTailSessionMetadata, location_name: "sessionMetadata"))
    LiveTailSessionUpdate.add_member(:session_results, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveTailSessionResults, location_name: "sessionResults"))
    LiveTailSessionUpdate.type = Types::LiveTailSessionUpdate
    LogEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "timestamp"))
    LogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "message"))
    LogEvent.type = Types::LogEvent
    LogGroup.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    LogGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    LogGroup.add_member(:retention_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, location_name: "retentionInDays"))
    LogGroup.add_member(:metric_filter_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCount, location_name: "metricFilterCount"))
    LogGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    LogGroup.add_member(:stored_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: StoredBytes, location_name: "storedBytes"))
    LogGroup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId"))
    LogGroup.add_member(:data_protection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionStatus, location_name: "dataProtectionStatus"))
    LogGroup.add_member(:inherited_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: InheritedProperties, location_name: "inheritedProperties"))
    LogGroup.add_member(:log_group_class, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupClass, location_name: "logGroupClass"))
    LogGroup.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "logGroupArn"))
    LogGroup.type = Types::LogGroup
    LogGroupArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn)
    LogGroupClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    LogGroupClass.add_member(:infrequent_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFREQUENT_ACCESS", traits: {"smithy.api#enumValue" => "INFREQUENT_ACCESS"}))
    LogGroupClass.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    LogGroupField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, location_name: "name"))
    LogGroupField.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "percent", traits: {"smithy.api#default" => 0}))
    LogGroupField.type = Types::LogGroupField
    LogGroupFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupField)
    LogGroupIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier)
    LogGroupNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName)
    LogGroupSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupSummary)
    LogGroupSummary.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    LogGroupSummary.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "logGroupArn"))
    LogGroupSummary.add_member(:log_group_class, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupClass, location_name: "logGroupClass"))
    LogGroupSummary.type = Types::LogGroupSummary
    LogGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroup)
    LogRecord.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Field)
    LogRecord.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Value)
    LogSamples.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogEvent)
    LogStream.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName"))
    LogStream.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    LogStream.add_member(:first_event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "firstEventTimestamp"))
    LogStream.add_member(:last_event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastEventTimestamp"))
    LogStream.add_member(:last_ingestion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastIngestionTime"))
    LogStream.add_member(:upload_sequence_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceToken, location_name: "uploadSequenceToken"))
    LogStream.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    LogStream.add_member(:stored_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: StoredBytes, location_name: "storedBytes", traits: {"smithy.api#deprecated" => {"message" => "Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected."}}))
    LogStream.type = Types::LogStream
    LogStreams.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogStream)
    LogTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogType)
    LowerCaseString.add_member(:with_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: LowerCaseStringWithKeys, location_name: "withKeys", traits: {"smithy.api#required" => {}}))
    LowerCaseString.type = Types::LowerCaseString
    LowerCaseStringWithKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WithKey)
    MalformedQueryException.add_member(:query_compile_error, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryCompileError, location_name: "queryCompileError"))
    MalformedQueryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    MalformedQueryException.type = Types::MalformedQueryException
    MatchPatterns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchPattern)
    MetricFilter.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterName"))
    MetricFilter.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    MetricFilter.add_member(:metric_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricTransformations, location_name: "metricTransformations"))
    MetricFilter.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    MetricFilter.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    MetricFilter.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs", traits: {"smithy.api#default" => false}))
    MetricFilter.add_member(:field_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    MetricFilter.add_member(:emit_system_field_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: EmitSystemFields, location_name: "emitSystemFieldDimensions"))
    MetricFilter.type = Types::MetricFilter
    MetricFilterMatchRecord.add_member(:event_number, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNumber, location_name: "eventNumber", traits: {"smithy.api#default" => 0}))
    MetricFilterMatchRecord.add_member(:event_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "eventMessage"))
    MetricFilterMatchRecord.add_member(:extracted_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractedValues, location_name: "extractedValues"))
    MetricFilterMatchRecord.type = Types::MetricFilterMatchRecord
    MetricFilterMatches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricFilterMatchRecord)
    MetricFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricFilter)
    MetricTransformation.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    MetricTransformation.add_member(:metric_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, location_name: "metricNamespace", traits: {"smithy.api#required" => {}}))
    MetricTransformation.add_member(:metric_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, location_name: "metricValue", traits: {"smithy.api#required" => {}}))
    MetricTransformation.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultValue, location_name: "defaultValue"))
    MetricTransformation.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, location_name: "dimensions"))
    MetricTransformation.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardUnit, location_name: "unit"))
    MetricTransformation.type = Types::MetricTransformation
    MetricTransformations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricTransformation)
    MoveKeyEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MoveKeyEntry)
    MoveKeyEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    MoveKeyEntry.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "target", traits: {"smithy.api#required" => {}}))
    MoveKeyEntry.add_member(:overwrite_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteIfExists, location_name: "overwriteIfExists", traits: {"smithy.api#default" => false}))
    MoveKeyEntry.type = Types::MoveKeyEntry
    MoveKeys.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: MoveKeyEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    MoveKeys.type = Types::MoveKeys
    OCSFVersion.add_member(:v1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "V1_1", traits: {"smithy.api#enumValue" => "V1.1"}))
    OpenSearchApplication.add_member(:application_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchApplicationEndpoint, location_name: "applicationEndpoint"))
    OpenSearchApplication.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "applicationArn"))
    OpenSearchApplication.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchApplicationId, location_name: "applicationId"))
    OpenSearchApplication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchApplication.type = Types::OpenSearchApplication
    OpenSearchCollection.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchCollectionEndpoint, location_name: "collectionEndpoint"))
    OpenSearchCollection.add_member(:collection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "collectionArn"))
    OpenSearchCollection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchCollection.type = Types::OpenSearchCollection
    OpenSearchDataAccessPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchDataAccessPolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchDataAccessPolicy.type = Types::OpenSearchDataAccessPolicy
    OpenSearchDataSource.add_member(:data_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchDataSourceName, location_name: "dataSourceName"))
    OpenSearchDataSource.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchDataSource.type = Types::OpenSearchDataSource
    OpenSearchEncryptionPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchEncryptionPolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchEncryptionPolicy.type = Types::OpenSearchEncryptionPolicy
    OpenSearchIntegrationDetails.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchDataSource, location_name: "dataSource"))
    OpenSearchIntegrationDetails.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchApplication, location_name: "application"))
    OpenSearchIntegrationDetails.add_member(:collection, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchCollection, location_name: "collection"))
    OpenSearchIntegrationDetails.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchWorkspace, location_name: "workspace"))
    OpenSearchIntegrationDetails.add_member(:encryption_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchEncryptionPolicy, location_name: "encryptionPolicy"))
    OpenSearchIntegrationDetails.add_member(:network_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchNetworkPolicy, location_name: "networkPolicy"))
    OpenSearchIntegrationDetails.add_member(:access_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchDataAccessPolicy, location_name: "accessPolicy"))
    OpenSearchIntegrationDetails.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchLifecyclePolicy, location_name: "lifecyclePolicy"))
    OpenSearchIntegrationDetails.type = Types::OpenSearchIntegrationDetails
    OpenSearchLifecyclePolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchLifecyclePolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchLifecyclePolicy.type = Types::OpenSearchLifecyclePolicy
    OpenSearchNetworkPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchNetworkPolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchNetworkPolicy.type = Types::OpenSearchNetworkPolicy
    OpenSearchResourceConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "kmsKeyArn"))
    OpenSearchResourceConfig.add_member(:data_source_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "dataSourceRoleArn", traits: {"smithy.api#required" => {}}))
    OpenSearchResourceConfig.add_member(:dashboard_viewer_principals, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardViewerPrincipals, location_name: "dashboardViewerPrincipals", traits: {"smithy.api#required" => {}}))
    OpenSearchResourceConfig.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "applicationArn"))
    OpenSearchResourceConfig.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionRetentionDays, location_name: "retentionDays", traits: {"smithy.api#required" => {}}))
    OpenSearchResourceConfig.type = Types::OpenSearchResourceConfig
    OpenSearchResourceStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatusType, location_name: "status"))
    OpenSearchResourceStatus.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatusMessage, location_name: "statusMessage"))
    OpenSearchResourceStatus.type = Types::OpenSearchResourceStatus
    OpenSearchResourceStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OpenSearchResourceStatusType.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    OpenSearchResourceStatusType.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    OpenSearchWorkspace.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchWorkspaceId, location_name: "workspaceId"))
    OpenSearchWorkspace.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchWorkspace.type = Types::OpenSearchWorkspace
    OperationAbortedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    OperationAbortedException.type = Types::OperationAbortedException
    OrderBy.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LogStreamName", traits: {"smithy.api#enumValue" => "LogStreamName"}))
    OrderBy.add_member(:last_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LastEventTime", traits: {"smithy.api#enumValue" => "LastEventTime"}))
    OutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    OutputFormat.add_member(:plain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN", traits: {"smithy.api#enumValue" => "plain"}))
    OutputFormat.add_member(:w3_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "W3C", traits: {"smithy.api#enumValue" => "w3c"}))
    OutputFormat.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RAW", traits: {"smithy.api#enumValue" => "raw"}))
    OutputFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "parquet"}))
    OutputFormats.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat)
    OutputLogEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "timestamp"))
    OutputLogEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "message"))
    OutputLogEvent.add_member(:ingestion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ingestionTime"))
    OutputLogEvent.type = Types::OutputLogEvent
    OutputLogEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OutputLogEvent)
    ParseCloudfront.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseCloudfront.type = Types::ParseCloudfront
    ParseJSON.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseJSON.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationField, location_name: "destination"))
    ParseJSON.type = Types::ParseJSON
    ParseKeyValue.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseKeyValue.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationField, location_name: "destination"))
    ParseKeyValue.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: ParserFieldDelimiter, location_name: "fieldDelimiter"))
    ParseKeyValue.add_member(:key_value_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueDelimiter, location_name: "keyValueDelimiter"))
    ParseKeyValue.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPrefix, location_name: "keyPrefix"))
    ParseKeyValue.add_member(:non_match_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonMatchValue, location_name: "nonMatchValue"))
    ParseKeyValue.add_member(:overwrite_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteIfExists, location_name: "overwriteIfExists", traits: {"smithy.api#default" => false}))
    ParseKeyValue.type = Types::ParseKeyValue
    ParsePostgres.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParsePostgres.type = Types::ParsePostgres
    ParseRoute53.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseRoute53.type = Types::ParseRoute53
    ParseToOCSF.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseToOCSF.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, location_name: "eventSource", traits: {"smithy.api#required" => {}}))
    ParseToOCSF.add_member(:ocsf_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OCSFVersion, location_name: "ocsfVersion", traits: {"smithy.api#required" => {}}))
    ParseToOCSF.type = Types::ParseToOCSF
    ParseVPC.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseVPC.type = Types::ParseVPC
    ParseWAF.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source"))
    ParseWAF.type = Types::ParseWAF
    PatternToken.add_member(:dynamic_token_position, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicTokenPosition, location_name: "dynamicTokenPosition", traits: {"smithy.api#default" => 0}))
    PatternToken.add_member(:is_dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isDynamic"))
    PatternToken.add_member(:token_string, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, location_name: "tokenString"))
    PatternToken.add_member(:enumerations, ::Smithy::Schema::Shapes::MemberShape.new(target: Enumerations, location_name: "enumerations"))
    PatternToken.add_member(:inferred_token_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredTokenName, location_name: "inferredTokenName"))
    PatternToken.type = Types::PatternToken
    PatternTokens.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PatternToken)
    Policy.add_member(:delivery_destination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationPolicy, location_name: "deliveryDestinationPolicy"))
    Policy.type = Types::Policy
    PolicyScope.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    PolicyScope.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    PolicyType.add_member(:data_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_PROTECTION_POLICY", traits: {"smithy.api#enumValue" => "DATA_PROTECTION_POLICY"}))
    PolicyType.add_member(:subscription_filter_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBSCRIPTION_FILTER_POLICY", traits: {"smithy.api#enumValue" => "SUBSCRIPTION_FILTER_POLICY"}))
    PolicyType.add_member(:field_index_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_INDEX_POLICY", traits: {"smithy.api#enumValue" => "FIELD_INDEX_POLICY"}))
    PolicyType.add_member(:transformer_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFORMER_POLICY", traits: {"smithy.api#enumValue" => "TRANSFORMER_POLICY"}))
    PolicyType.add_member(:metric_extraction_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "METRIC_EXTRACTION_POLICY", traits: {"smithy.api#enumValue" => "METRIC_EXTRACTION_POLICY"}))
    Processor.add_member(:add_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AddKeys, location_name: "addKeys"))
    Processor.add_member(:copy_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyValue, location_name: "copyValue"))
    Processor.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CSV, location_name: "csv"))
    Processor.add_member(:date_time_converter, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeConverter, location_name: "dateTimeConverter"))
    Processor.add_member(:delete_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteKeys, location_name: "deleteKeys"))
    Processor.add_member(:grok, ::Smithy::Schema::Shapes::MemberShape.new(target: Grok, location_name: "grok"))
    Processor.add_member(:list_to_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ListToMap, location_name: "listToMap"))
    Processor.add_member(:lower_case_string, ::Smithy::Schema::Shapes::MemberShape.new(target: LowerCaseString, location_name: "lowerCaseString"))
    Processor.add_member(:move_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MoveKeys, location_name: "moveKeys"))
    Processor.add_member(:parse_cloudfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseCloudfront, location_name: "parseCloudfront"))
    Processor.add_member(:parse_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseJSON, location_name: "parseJSON"))
    Processor.add_member(:parse_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseKeyValue, location_name: "parseKeyValue"))
    Processor.add_member(:parse_route53, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseRoute53, location_name: "parseRoute53"))
    Processor.add_member(:parse_to_ocsf, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseToOCSF, location_name: "parseToOCSF"))
    Processor.add_member(:parse_postgres, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsePostgres, location_name: "parsePostgres"))
    Processor.add_member(:parse_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseVPC, location_name: "parseVPC"))
    Processor.add_member(:parse_waf, ::Smithy::Schema::Shapes::MemberShape.new(target: ParseWAF, location_name: "parseWAF"))
    Processor.add_member(:rename_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameKeys, location_name: "renameKeys"))
    Processor.add_member(:split_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitString, location_name: "splitString"))
    Processor.add_member(:substitute_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SubstituteString, location_name: "substituteString"))
    Processor.add_member(:trim_string, ::Smithy::Schema::Shapes::MemberShape.new(target: TrimString, location_name: "trimString"))
    Processor.add_member(:type_converter, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConverter, location_name: "typeConverter"))
    Processor.add_member(:upper_case_string, ::Smithy::Schema::Shapes::MemberShape.new(target: UpperCaseString, location_name: "upperCaseString"))
    Processor.type = Types::Processor
    Processors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Processor)
    PutAccountPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName", traits: {"smithy.api#required" => {}}))
    PutAccountPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPolicyDocument, location_name: "policyDocument", traits: {"smithy.api#required" => {}}))
    PutAccountPolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, location_name: "policyType", traits: {"smithy.api#required" => {}}))
    PutAccountPolicyRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, location_name: "scope"))
    PutAccountPolicyRequest.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionCriteria, location_name: "selectionCriteria"))
    PutAccountPolicyRequest.type = Types::PutAccountPolicyRequest
    PutAccountPolicyResponse.add_member(:account_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPolicy, location_name: "accountPolicy"))
    PutAccountPolicyResponse.type = Types::PutAccountPolicyResponse
    PutDataProtectionPolicyRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    PutDataProtectionPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionPolicyDocument, location_name: "policyDocument", traits: {"smithy.api#required" => {}}))
    PutDataProtectionPolicyRequest.type = Types::PutDataProtectionPolicyRequest
    PutDataProtectionPolicyResponse.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    PutDataProtectionPolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: DataProtectionPolicyDocument, location_name: "policyDocument"))
    PutDataProtectionPolicyResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdatedTime"))
    PutDataProtectionPolicyResponse.type = Types::PutDataProtectionPolicyResponse
    PutDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "deliveryDestinationName", traits: {"smithy.api#required" => {}}))
    PutDeliveryDestinationPolicyRequest.add_member(:delivery_destination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationPolicy, location_name: "deliveryDestinationPolicy", traits: {"smithy.api#required" => {}}))
    PutDeliveryDestinationPolicyRequest.type = Types::PutDeliveryDestinationPolicyRequest
    PutDeliveryDestinationPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "policy"))
    PutDeliveryDestinationPolicyResponse.type = Types::PutDeliveryDestinationPolicyResponse
    PutDeliveryDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutDeliveryDestinationRequest.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, location_name: "outputFormat"))
    PutDeliveryDestinationRequest.add_member(:delivery_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationConfiguration, location_name: "deliveryDestinationConfiguration"))
    PutDeliveryDestinationRequest.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    PutDeliveryDestinationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    PutDeliveryDestinationRequest.type = Types::PutDeliveryDestinationRequest
    PutDeliveryDestinationResponse.add_member(:delivery_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestination, location_name: "deliveryDestination"))
    PutDeliveryDestinationResponse.type = Types::PutDeliveryDestinationResponse
    PutDeliverySourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutDeliverySourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    PutDeliverySourceRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, location_name: "logType", traits: {"smithy.api#required" => {}}))
    PutDeliverySourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    PutDeliverySourceRequest.type = Types::PutDeliverySourceRequest
    PutDeliverySourceResponse.add_member(:delivery_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySource, location_name: "deliverySource"))
    PutDeliverySourceResponse.type = Types::PutDeliverySourceResponse
    PutDestinationPolicyRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    PutDestinationPolicyRequest.add_member(:access_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicy, location_name: "accessPolicy", traits: {"smithy.api#required" => {}}))
    PutDestinationPolicyRequest.add_member(:force_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceUpdate, location_name: "forceUpdate"))
    PutDestinationPolicyRequest.type = Types::PutDestinationPolicyRequest
    PutDestinationRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    PutDestinationRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, location_name: "targetArn", traits: {"smithy.api#required" => {}}))
    PutDestinationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    PutDestinationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    PutDestinationRequest.type = Types::PutDestinationRequest
    PutDestinationResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, location_name: "destination"))
    PutDestinationResponse.type = Types::PutDestinationResponse
    PutIndexPolicyRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    PutIndexPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "policyDocument", traits: {"smithy.api#required" => {}}))
    PutIndexPolicyRequest.type = Types::PutIndexPolicyRequest
    PutIndexPolicyResponse.add_member(:index_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexPolicy, location_name: "indexPolicy"))
    PutIndexPolicyResponse.type = Types::PutIndexPolicyResponse
    PutIntegrationRequest.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, location_name: "integrationName", traits: {"smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:resource_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfig, location_name: "resourceConfig", traits: {"smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, location_name: "integrationType", traits: {"smithy.api#required" => {}}))
    PutIntegrationRequest.type = Types::PutIntegrationRequest
    PutIntegrationResponse.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, location_name: "integrationName"))
    PutIntegrationResponse.add_member(:integration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, location_name: "integrationStatus"))
    PutIntegrationResponse.type = Types::PutIntegrationResponse
    PutLogEventsRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    PutLogEventsRequest.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName", traits: {"smithy.api#required" => {}}))
    PutLogEventsRequest.add_member(:log_events, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogEvents, location_name: "logEvents", traits: {"smithy.api#required" => {}}))
    PutLogEventsRequest.add_member(:sequence_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceToken, location_name: "sequenceToken"))
    PutLogEventsRequest.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, location_name: "entity"))
    PutLogEventsRequest.type = Types::PutLogEventsRequest
    PutLogEventsResponse.add_member(:next_sequence_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceToken, location_name: "nextSequenceToken"))
    PutLogEventsResponse.add_member(:rejected_log_events_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectedLogEventsInfo, location_name: "rejectedLogEventsInfo"))
    PutLogEventsResponse.add_member(:rejected_entity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectedEntityInfo, location_name: "rejectedEntityInfo"))
    PutLogEventsResponse.type = Types::PutLogEventsResponse
    PutMetricFilterRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterName", traits: {"smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern", traits: {"smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:metric_transformations, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricTransformations, location_name: "metricTransformations", traits: {"smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs", traits: {"smithy.api#default" => false}))
    PutMetricFilterRequest.add_member(:field_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    PutMetricFilterRequest.add_member(:emit_system_field_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: EmitSystemFields, location_name: "emitSystemFieldDimensions"))
    PutMetricFilterRequest.type = Types::PutMetricFilterRequest
    PutQueryDefinitionRequest.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    PutQueryDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinitionName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutQueryDefinitionRequest.add_member(:query_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryDefinitionId"))
    PutQueryDefinitionRequest.add_member(:log_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNames, location_name: "logGroupNames"))
    PutQueryDefinitionRequest.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinitionString, location_name: "queryString", traits: {"smithy.api#required" => {}}))
    PutQueryDefinitionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutQueryDefinitionRequest.type = Types::PutQueryDefinitionRequest
    PutQueryDefinitionResponse.add_member(:query_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryDefinitionId"))
    PutQueryDefinitionResponse.type = Types::PutQueryDefinitionResponse
    PutResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName"))
    PutResourcePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "policyDocument"))
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn"))
    PutResourcePolicyRequest.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRevisionId, location_name: "expectedRevisionId"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, location_name: "resourcePolicy"))
    PutResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRevisionId, location_name: "revisionId"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRetentionPolicyRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    PutRetentionPolicyRequest.add_member(:retention_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, location_name: "retentionInDays", traits: {"smithy.api#required" => {}}))
    PutRetentionPolicyRequest.type = Types::PutRetentionPolicyRequest
    PutSubscriptionFilterRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterName", traits: {"smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern", traits: {"smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, location_name: "destinationArn", traits: {"smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    PutSubscriptionFilterRequest.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, location_name: "distribution"))
    PutSubscriptionFilterRequest.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs", traits: {"smithy.api#default" => false}))
    PutSubscriptionFilterRequest.add_member(:field_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    PutSubscriptionFilterRequest.add_member(:emit_system_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: EmitSystemFields, location_name: "emitSystemFields"))
    PutSubscriptionFilterRequest.type = Types::PutSubscriptionFilterRequest
    PutTransformerRequest.add_member(:log_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier, location_name: "logGroupIdentifier", traits: {"smithy.api#required" => {}}))
    PutTransformerRequest.add_member(:transformer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: Processors, location_name: "transformerConfig", traits: {"smithy.api#required" => {}}))
    PutTransformerRequest.type = Types::PutTransformerRequest
    QueryCompileError.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryCompileErrorLocation, location_name: "location"))
    QueryCompileError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    QueryCompileError.type = Types::QueryCompileError
    QueryCompileErrorLocation.add_member(:start_char_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryCharOffset, location_name: "startCharOffset"))
    QueryCompileErrorLocation.add_member(:end_char_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryCharOffset, location_name: "endCharOffset"))
    QueryCompileErrorLocation.type = Types::QueryCompileErrorLocation
    QueryDefinition.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    QueryDefinition.add_member(:query_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryDefinitionId"))
    QueryDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinitionName, location_name: "name"))
    QueryDefinition.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinitionString, location_name: "queryString"))
    QueryDefinition.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastModified"))
    QueryDefinition.add_member(:log_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNames, location_name: "logGroupNames"))
    QueryDefinition.type = Types::QueryDefinition
    QueryDefinitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDefinition)
    QueryInfo.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    QueryInfo.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryId"))
    QueryInfo.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, location_name: "queryString"))
    QueryInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "status"))
    QueryInfo.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createTime"))
    QueryInfo.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    QueryInfo.type = Types::QueryInfo
    QueryInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInfo)
    QueryLanguage.add_member(:cwli, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CWLI", traits: {"smithy.api#enumValue" => "CWLI"}))
    QueryLanguage.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    QueryLanguage.add_member(:ppl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PPL", traits: {"smithy.api#enumValue" => "PPL"}))
    QueryResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResultRows)
    QueryStatistics.add_member(:records_matched, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsValue, location_name: "recordsMatched", traits: {"smithy.api#default" => 0}))
    QueryStatistics.add_member(:records_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsValue, location_name: "recordsScanned", traits: {"smithy.api#default" => 0}))
    QueryStatistics.add_member(:estimated_records_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsValue, location_name: "estimatedRecordsSkipped", traits: {"smithy.api#default" => 0}))
    QueryStatistics.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsValue, location_name: "bytesScanned", traits: {"smithy.api#default" => 0}))
    QueryStatistics.add_member(:estimated_bytes_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsValue, location_name: "estimatedBytesSkipped", traits: {"smithy.api#default" => 0}))
    QueryStatistics.add_member(:log_groups_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsValue, location_name: "logGroupsScanned", traits: {"smithy.api#default" => 0}))
    QueryStatistics.type = Types::QueryStatistics
    QueryStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Scheduled", traits: {"smithy.api#enumValue" => "Scheduled"}))
    QueryStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Running", traits: {"smithy.api#enumValue" => "Running"}))
    QueryStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Complete", traits: {"smithy.api#enumValue" => "Complete"}))
    QueryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    QueryStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    QueryStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Timeout", traits: {"smithy.api#enumValue" => "Timeout"}))
    QueryStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unknown", traits: {"smithy.api#enumValue" => "Unknown"}))
    RecordField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldHeader, location_name: "name"))
    RecordField.add_member(:mandatory, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "mandatory"))
    RecordField.type = Types::RecordField
    RecordFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldHeader)
    RejectedEntityInfo.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityRejectionErrorType, location_name: "errorType", traits: {"smithy.api#required" => {}}))
    RejectedEntityInfo.type = Types::RejectedEntityInfo
    RejectedLogEventsInfo.add_member(:too_new_log_event_start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: LogEventIndex, location_name: "tooNewLogEventStartIndex"))
    RejectedLogEventsInfo.add_member(:too_old_log_event_end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: LogEventIndex, location_name: "tooOldLogEventEndIndex"))
    RejectedLogEventsInfo.add_member(:expired_log_event_end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: LogEventIndex, location_name: "expiredLogEventEndIndex"))
    RejectedLogEventsInfo.type = Types::RejectedLogEventsInfo
    RenameKeyEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RenameKeyEntry)
    RenameKeyEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    RenameKeyEntry.add_member(:rename_to, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameTo, location_name: "renameTo", traits: {"smithy.api#required" => {}}))
    RenameKeyEntry.add_member(:overwrite_if_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteIfExists, location_name: "overwriteIfExists", traits: {"smithy.api#default" => false}))
    RenameKeyEntry.type = Types::RenameKeyEntry
    RenameKeys.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameKeyEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    RenameKeys.type = Types::RenameKeys
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn)
    ResourceConfig.add_member(:open_search_resource_config, Types::ResourceConfig::OpenSearchResourceConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchResourceConfig, location_name: "openSearchResourceConfig"))
    ResourceConfig.add_member(:unknown, Types::ResourceConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceConfig.type = Types::ResourceConfig
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy)
    ResourcePolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "policyName"))
    ResourcePolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "policyDocument"))
    ResourcePolicy.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdatedTime"))
    ResourcePolicy.add_member(:policy_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyScope, location_name: "policyScope"))
    ResourcePolicy.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn"))
    ResourcePolicy.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRevisionId, location_name: "revisionId"))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType)
    ResultField.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, location_name: "field"))
    ResultField.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, location_name: "value"))
    ResultField.type = Types::ResultField
    ResultRows.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResultField)
    S3DeliveryConfiguration.add_member(:suffix_path, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverySuffixPath, location_name: "suffixPath"))
    S3DeliveryConfiguration.add_member(:enable_hive_compatible_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableHiveCompatiblePath"))
    S3DeliveryConfiguration.type = Types::S3DeliveryConfiguration
    Scope.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    SearchedLogStream.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, location_name: "logStreamName"))
    SearchedLogStream.add_member(:searched_completely, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamSearchedCompletely, location_name: "searchedCompletely"))
    SearchedLogStream.type = Types::SearchedLogStream
    SearchedLogStreams.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchedLogStream)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SessionStreamingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    SessionStreamingException.type = Types::SessionStreamingException
    SessionTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    SessionTimeoutException.type = Types::SessionTimeoutException
    SplitString.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitStringEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    SplitString.type = Types::SplitString
    SplitStringEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SplitStringEntry)
    SplitStringEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    SplitStringEntry.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitStringDelimiter, location_name: "delimiter", traits: {"smithy.api#required" => {}}))
    SplitStringEntry.type = Types::SplitStringEntry
    StandardUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Seconds", traits: {"smithy.api#enumValue" => "Seconds"}))
    StandardUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Microseconds", traits: {"smithy.api#enumValue" => "Microseconds"}))
    StandardUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Milliseconds", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    StandardUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bytes", traits: {"smithy.api#enumValue" => "Bytes"}))
    StandardUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobytes", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    StandardUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabytes", traits: {"smithy.api#enumValue" => "Megabytes"}))
    StandardUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabytes", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    StandardUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabytes", traits: {"smithy.api#enumValue" => "Terabytes"}))
    StandardUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bits", traits: {"smithy.api#enumValue" => "Bits"}))
    StandardUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Kilobits", traits: {"smithy.api#enumValue" => "Kilobits"}))
    StandardUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Megabits", traits: {"smithy.api#enumValue" => "Megabits"}))
    StandardUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Gigabits", traits: {"smithy.api#enumValue" => "Gigabits"}))
    StandardUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Terabits", traits: {"smithy.api#enumValue" => "Terabits"}))
    StandardUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Percent", traits: {"smithy.api#enumValue" => "Percent"}))
    StandardUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Count", traits: {"smithy.api#enumValue" => "Count"}))
    StandardUnit.add_member(:bytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BytesSecond", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    StandardUnit.add_member(:kilobytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KilobytesSecond", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    StandardUnit.add_member(:megabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MegabytesSecond", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    StandardUnit.add_member(:gigabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GigabytesSecond", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    StandardUnit.add_member(:terabytes_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TerabytesSecond", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    StandardUnit.add_member(:bits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BitsSecond", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    StandardUnit.add_member(:kilobits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KilobitsSecond", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    StandardUnit.add_member(:megabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MegabitsSecond", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    StandardUnit.add_member(:gigabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GigabitsSecond", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    StandardUnit.add_member(:terabits_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TerabitsSecond", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    StandardUnit.add_member(:count_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CountSecond", traits: {"smithy.api#enumValue" => "Count/Second"}))
    StandardUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "None", traits: {"smithy.api#enumValue" => "None"}))
    StartLiveTailLogGroupIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifier)
    StartLiveTailRequest.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StartLiveTailLogGroupIdentifiers, location_name: "logGroupIdentifiers", traits: {"smithy.api#required" => {}}))
    StartLiveTailRequest.add_member(:log_stream_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogStreamNames, location_name: "logStreamNames"))
    StartLiveTailRequest.add_member(:log_stream_name_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLogStreamNames, location_name: "logStreamNamePrefixes"))
    StartLiveTailRequest.add_member(:log_event_filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "logEventFilterPattern"))
    StartLiveTailRequest.type = Types::StartLiveTailRequest
    StartLiveTailResponse.add_member(:response_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: StartLiveTailResponseStream, location_name: "responseStream"))
    StartLiveTailResponse.type = Types::StartLiveTailResponse
    StartLiveTailResponseStream.add_member(:session_start, Types::StartLiveTailResponseStream::SessionStart, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveTailSessionStart, location_name: "sessionStart"))
    StartLiveTailResponseStream.add_member(:session_update, Types::StartLiveTailResponseStream::SessionUpdate, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveTailSessionUpdate, location_name: "sessionUpdate"))
    StartLiveTailResponseStream.add_member(:session_timeout_exception, Types::StartLiveTailResponseStream::SessionTimeoutException, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTimeoutException, location_name: "SessionTimeoutException"))
    StartLiveTailResponseStream.add_member(:session_streaming_exception, Types::StartLiveTailResponseStream::SessionStreamingException, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStreamingException, location_name: "SessionStreamingException"))
    StartLiveTailResponseStream.add_member(:unknown, Types::StartLiveTailResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StartLiveTailResponseStream.type = Types::StartLiveTailResponseStream
    StartQueryRequest.add_member(:query_language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, location_name: "queryLanguage"))
    StartQueryRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    StartQueryRequest.add_member(:log_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNames, location_name: "logGroupNames"))
    StartQueryRequest.add_member(:log_group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    StartQueryRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    StartQueryRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    StartQueryRequest.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, location_name: "queryString", traits: {"smithy.api#required" => {}}))
    StartQueryRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsLimit, location_name: "limit"))
    StartQueryRequest.type = Types::StartQueryRequest
    StartQueryResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryId"))
    StartQueryResponse.type = Types::StartQueryResponse
    State.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    State.add_member(:suppressed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Suppressed", traits: {"smithy.api#enumValue" => "Suppressed"}))
    State.add_member(:baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Baseline", traits: {"smithy.api#enumValue" => "Baseline"}))
    StopQueryRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, location_name: "queryId", traits: {"smithy.api#required" => {}}))
    StopQueryRequest.type = Types::StopQueryRequest
    StopQueryResponse.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: Success, location_name: "success", traits: {"smithy.api#default" => false}))
    StopQueryResponse.type = Types::StopQueryResponse
    SubscriptionFilter.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "filterName"))
    SubscriptionFilter.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    SubscriptionFilter.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    SubscriptionFilter.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, location_name: "destinationArn"))
    SubscriptionFilter.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    SubscriptionFilter.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, location_name: "distribution"))
    SubscriptionFilter.add_member(:apply_on_transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs", traits: {"smithy.api#default" => false}))
    SubscriptionFilter.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "creationTime"))
    SubscriptionFilter.add_member(:field_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    SubscriptionFilter.add_member(:emit_system_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: EmitSystemFields, location_name: "emitSystemFields"))
    SubscriptionFilter.type = Types::SubscriptionFilter
    SubscriptionFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionFilter)
    SubstituteString.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: SubstituteStringEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    SubstituteString.type = Types::SubstituteString
    SubstituteStringEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubstituteStringEntry)
    SubstituteStringEntry.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    SubstituteStringEntry.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: FromKey, location_name: "from", traits: {"smithy.api#required" => {}}))
    SubstituteStringEntry.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ToKey, location_name: "to", traits: {"smithy.api#required" => {}}))
    SubstituteStringEntry.type = Types::SubstituteStringEntry
    SuppressionPeriod.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "value", traits: {"smithy.api#default" => 0}))
    SuppressionPeriod.add_member(:suppression_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionUnit, location_name: "suppressionUnit"))
    SuppressionPeriod.type = Types::SuppressionPeriod
    SuppressionState.add_member(:suppressed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUPPRESSED", traits: {"smithy.api#enumValue" => "SUPPRESSED"}))
    SuppressionState.add_member(:unsuppressed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPRESSED", traits: {"smithy.api#enumValue" => "UNSUPPRESSED"}))
    SuppressionType.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LIMITED", traits: {"smithy.api#enumValue" => "LIMITED"}))
    SuppressionType.add_member(:infinite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFINITE", traits: {"smithy.api#enumValue" => "INFINITE"}))
    SuppressionUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECONDS", traits: {"smithy.api#enumValue" => "SECONDS"}))
    SuppressionUnit.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MINUTES", traits: {"smithy.api#enumValue" => "MINUTES"}))
    SuppressionUnit.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagLogGroupRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    TagLogGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagLogGroupRequest.type = Types::TagLogGroupRequest
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TestEventMessages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage)
    TestMetricFilterRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern", traits: {"smithy.api#required" => {}}))
    TestMetricFilterRequest.add_member(:log_event_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: TestEventMessages, location_name: "logEventMessages", traits: {"smithy.api#required" => {}}))
    TestMetricFilterRequest.type = Types::TestMetricFilterRequest
    TestMetricFilterResponse.add_member(:matches, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricFilterMatches, location_name: "matches"))
    TestMetricFilterResponse.type = Types::TestMetricFilterResponse
    TestTransformerRequest.add_member(:transformer_config, ::Smithy::Schema::Shapes::MemberShape.new(target: Processors, location_name: "transformerConfig", traits: {"smithy.api#required" => {}}))
    TestTransformerRequest.add_member(:log_event_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: TestEventMessages, location_name: "logEventMessages", traits: {"smithy.api#required" => {}}))
    TestTransformerRequest.type = Types::TestTransformerRequest
    TestTransformerResponse.add_member(:transformed_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformedLogs, location_name: "transformedLogs"))
    TestTransformerResponse.type = Types::TestTransformerResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    TransformedLogRecord.add_member(:event_number, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNumber, location_name: "eventNumber", traits: {"smithy.api#default" => 0}))
    TransformedLogRecord.add_member(:event_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMessage, location_name: "eventMessage"))
    TransformedLogRecord.add_member(:transformed_event_message, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformedEventMessage, location_name: "transformedEventMessage"))
    TransformedLogRecord.type = Types::TransformedLogRecord
    TransformedLogs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TransformedLogRecord)
    TrimString.add_member(:with_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TrimStringWithKeys, location_name: "withKeys", traits: {"smithy.api#required" => {}}))
    TrimString.type = Types::TrimString
    TrimStringWithKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WithKey)
    Type.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "boolean"}))
    Type.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEGER", traits: {"smithy.api#enumValue" => "integer"}))
    Type.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOUBLE", traits: {"smithy.api#enumValue" => "double"}))
    Type.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    TypeConverter.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConverterEntries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    TypeConverter.type = Types::TypeConverter
    TypeConverterEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TypeConverterEntry)
    TypeConverterEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    TypeConverterEntry.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, location_name: "type", traits: {"smithy.api#required" => {}}))
    TypeConverterEntry.type = Types::TypeConverterEntry
    UnrecognizedClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    UnrecognizedClientException.type = Types::UnrecognizedClientException
    UntagLogGroupRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    UntagLogGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    UntagLogGroupRequest.type = Types::UntagLogGroupRequest
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAnomalyRequest.add_member(:anomaly_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyId, location_name: "anomalyId"))
    UpdateAnomalyRequest.add_member(:pattern_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternId, location_name: "patternId"))
    UpdateAnomalyRequest.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn", traits: {"smithy.api#required" => {}}))
    UpdateAnomalyRequest.add_member(:suppression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionType, location_name: "suppressionType"))
    UpdateAnomalyRequest.add_member(:suppression_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionPeriod, location_name: "suppressionPeriod"))
    UpdateAnomalyRequest.add_member(:baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: Baseline, location_name: "baseline"))
    UpdateAnomalyRequest.type = Types::UpdateAnomalyRequest
    UpdateDeliveryConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateDeliveryConfigurationRequest.add_member(:record_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFields, location_name: "recordFields"))
    UpdateDeliveryConfigurationRequest.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter, location_name: "fieldDelimiter"))
    UpdateDeliveryConfigurationRequest.add_member(:s3_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    UpdateDeliveryConfigurationRequest.type = Types::UpdateDeliveryConfigurationRequest
    UpdateDeliveryConfigurationResponse.type = Types::UpdateDeliveryConfigurationResponse
    UpdateLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetectorArn, location_name: "anomalyDetectorArn", traits: {"smithy.api#required" => {}}))
    UpdateLogAnomalyDetectorRequest.add_member(:evaluation_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationFrequency, location_name: "evaluationFrequency"))
    UpdateLogAnomalyDetectorRequest.add_member(:filter_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterPattern, location_name: "filterPattern"))
    UpdateLogAnomalyDetectorRequest.add_member(:anomaly_visibility_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    UpdateLogAnomalyDetectorRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enabled", traits: {"smithy.api#required" => {}}))
    UpdateLogAnomalyDetectorRequest.type = Types::UpdateLogAnomalyDetectorRequest
    UpperCaseString.add_member(:with_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: UpperCaseStringWithKeys, location_name: "withKeys", traits: {"smithy.api#required" => {}}))
    UpperCaseString.type = Types::UpperCaseString
    UpperCaseStringWithKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WithKey)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ValidationException.type = Types::ValidationException

    Logs20140328 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatchlogs#Logs_20140328"
      service.name = "Logs20140328"
      service.version = "2014-03-28"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatch Logs", "arnNamespace" => "logs", "cloudFormationName" => "Logs", "cloudTrailEventSource" => "logs.amazonaws.com", "docId" => "logs-2014-03-28", "endpointPrefix" => "logs"}, "aws.auth#sigv4" => {"name" => "logs"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudWatch Logs", "smithy.api#xmlNamespace" => {"uri" => "http://monitoring.amazonaws.com/doc/2014-03-28/"}}
      service.add_operation(:associate_kms_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#AssociateKmsKey"
        operation.name = "AssociateKmsKey"
        operation.input = AssociateKmsKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:cancel_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CancelExportTask"
        operation.name = "CancelExportTask"
        operation.input = CancelExportTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_delivery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateDelivery"
        operation.name = "CreateDelivery"
        operation.input = CreateDeliveryRequest
        operation.output = CreateDeliveryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateExportTask"
        operation.name = "CreateExportTask"
        operation.input = CreateExportTaskRequest
        operation.output = CreateExportTaskResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_log_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateLogAnomalyDetector"
        operation.name = "CreateLogAnomalyDetector"
        operation.input = CreateLogAnomalyDetectorRequest
        operation.output = CreateLogAnomalyDetectorResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_log_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateLogGroup"
        operation.name = "CreateLogGroup"
        operation.input = CreateLogGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_log_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateLogStream"
        operation.name = "CreateLogStream"
        operation.input = CreateLogStreamRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteAccountPolicy"
        operation.name = "DeleteAccountPolicy"
        operation.input = DeleteAccountPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_data_protection_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDataProtectionPolicy"
        operation.name = "DeleteDataProtectionPolicy"
        operation.input = DeleteDataProtectionPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDelivery"
        operation.name = "DeleteDelivery"
        operation.input = DeleteDeliveryRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDeliveryDestination"
        operation.name = "DeleteDeliveryDestination"
        operation.input = DeleteDeliveryDestinationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_destination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDeliveryDestinationPolicy"
        operation.name = "DeleteDeliveryDestinationPolicy"
        operation.input = DeleteDeliveryDestinationPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDeliverySource"
        operation.name = "DeleteDeliverySource"
        operation.input = DeleteDeliverySourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDestination"
        operation.name = "DeleteDestination"
        operation.input = DeleteDestinationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_index_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteIndexPolicy"
        operation.name = "DeleteIndexPolicy"
        operation.input = DeleteIndexPolicyRequest
        operation.output = DeleteIndexPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationRequest
        operation.output = DeleteIntegrationResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_log_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteLogAnomalyDetector"
        operation.name = "DeleteLogAnomalyDetector"
        operation.input = DeleteLogAnomalyDetectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_log_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteLogGroup"
        operation.name = "DeleteLogGroup"
        operation.input = DeleteLogGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_log_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteLogStream"
        operation.name = "DeleteLogStream"
        operation.input = DeleteLogStreamRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteMetricFilter"
        operation.name = "DeleteMetricFilter"
        operation.input = DeleteMetricFilterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_query_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteQueryDefinition"
        operation.name = "DeleteQueryDefinition"
        operation.input = DeleteQueryDefinitionRequest
        operation.output = DeleteQueryDefinitionResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_retention_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteRetentionPolicy"
        operation.name = "DeleteRetentionPolicy"
        operation.input = DeleteRetentionPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_subscription_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteSubscriptionFilter"
        operation.name = "DeleteSubscriptionFilter"
        operation.input = DeleteSubscriptionFilterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteTransformer"
        operation.name = "DeleteTransformer"
        operation.input = DeleteTransformerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeAccountPolicies"
        operation.name = "DescribeAccountPolicies"
        operation.input = DescribeAccountPoliciesRequest
        operation.output = DescribeAccountPoliciesResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeConfigurationTemplates"
        operation.name = "DescribeConfigurationTemplates"
        operation.input = DescribeConfigurationTemplatesRequest
        operation.output = DescribeConfigurationTemplatesResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigurationTemplates.new
      end)
      service.add_operation(:describe_deliveries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDeliveries"
        operation.name = "DescribeDeliveries"
        operation.input = DescribeDeliveriesRequest
        operation.output = DescribeDeliveriesResponse
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDeliveries.new
      end)
      service.add_operation(:describe_delivery_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDeliveryDestinations"
        operation.name = "DescribeDeliveryDestinations"
        operation.input = DescribeDeliveryDestinationsRequest
        operation.output = DescribeDeliveryDestinationsResponse
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDeliveryDestinations.new
      end)
      service.add_operation(:describe_delivery_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDeliverySources"
        operation.name = "DescribeDeliverySources"
        operation.input = DescribeDeliverySourcesRequest
        operation.output = DescribeDeliverySourcesResponse
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDeliverySources.new
      end)
      service.add_operation(:describe_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDestinations"
        operation.name = "DescribeDestinations"
        operation.input = DescribeDestinationsRequest
        operation.output = DescribeDestinationsResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDestinations.new
      end)
      service.add_operation(:describe_export_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeExportTasks"
        operation.name = "DescribeExportTasks"
        operation.input = DescribeExportTasksRequest
        operation.output = DescribeExportTasksResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_field_indexes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeFieldIndexes"
        operation.name = "DescribeFieldIndexes"
        operation.input = DescribeFieldIndexesRequest
        operation.output = DescribeFieldIndexesResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_index_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeIndexPolicies"
        operation.name = "DescribeIndexPolicies"
        operation.input = DescribeIndexPoliciesRequest
        operation.output = DescribeIndexPoliciesResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_log_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeLogGroups"
        operation.name = "DescribeLogGroups"
        operation.input = DescribeLogGroupsRequest
        operation.output = DescribeLogGroupsResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeLogGroupsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeLogGroups.new
      end)
      service.add_operation(:describe_log_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeLogStreams"
        operation.name = "DescribeLogStreams"
        operation.input = DescribeLogStreamsRequest
        operation.output = DescribeLogStreamsResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLogStreams.new
      end)
      service.add_operation(:describe_metric_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeMetricFilters"
        operation.name = "DescribeMetricFilters"
        operation.input = DescribeMetricFiltersRequest
        operation.output = DescribeMetricFiltersResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetricFilters.new
      end)
      service.add_operation(:describe_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeQueries"
        operation.name = "DescribeQueries"
        operation.input = DescribeQueriesRequest
        operation.output = DescribeQueriesResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_query_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeQueryDefinitions"
        operation.name = "DescribeQueryDefinitions"
        operation.input = DescribeQueryDefinitionsRequest
        operation.output = DescribeQueryDefinitionsResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeResourcePolicies"
        operation.name = "DescribeResourcePolicies"
        operation.input = DescribeResourcePoliciesRequest
        operation.output = DescribeResourcePoliciesResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:describe_subscription_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeSubscriptionFilters"
        operation.name = "DescribeSubscriptionFilters"
        operation.input = DescribeSubscriptionFiltersRequest
        operation.output = DescribeSubscriptionFiltersResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSubscriptionFilters.new
      end)
      service.add_operation(:disassociate_kms_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DisassociateKmsKey"
        operation.name = "DisassociateKmsKey"
        operation.input = DisassociateKmsKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:filter_log_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#FilterLogEvents"
        operation.name = "FilterLogEvents"
        operation.input = FilterLogEventsRequest
        operation.output = FilterLogEventsResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::FilterLogEvents.new
      end)
      service.add_operation(:get_data_protection_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDataProtectionPolicy"
        operation.name = "GetDataProtectionPolicy"
        operation.input = GetDataProtectionPolicyRequest
        operation.output = GetDataProtectionPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_delivery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDelivery"
        operation.name = "GetDelivery"
        operation.input = GetDeliveryRequest
        operation.output = GetDeliveryResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_delivery_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDeliveryDestination"
        operation.name = "GetDeliveryDestination"
        operation.input = GetDeliveryDestinationRequest
        operation.output = GetDeliveryDestinationResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_delivery_destination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDeliveryDestinationPolicy"
        operation.name = "GetDeliveryDestinationPolicy"
        operation.input = GetDeliveryDestinationPolicyRequest
        operation.output = GetDeliveryDestinationPolicyResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_delivery_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDeliverySource"
        operation.name = "GetDeliverySource"
        operation.input = GetDeliverySourceRequest
        operation.output = GetDeliverySourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = GetIntegrationRequest
        operation.output = GetIntegrationResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_log_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogAnomalyDetector"
        operation.name = "GetLogAnomalyDetector"
        operation.input = GetLogAnomalyDetectorRequest
        operation.output = GetLogAnomalyDetectorResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_log_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogEvents"
        operation.name = "GetLogEvents"
        operation.input = GetLogEventsRequest
        operation.output = GetLogEventsResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetLogEventsFailure", "params" => {"logGroupName" => "fakegroup", "logStreamName" => "fakestream"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::GetLogEvents.new
      end)
      service.add_operation(:get_log_group_fields, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogGroupFields"
        operation.name = "GetLogGroupFields"
        operation.input = GetLogGroupFieldsRequest
        operation.output = GetLogGroupFieldsResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_log_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogObject"
        operation.name = "GetLogObject"
        operation.input = GetLogObjectRequest
        operation.output = GetLogObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "streaming-"}}
      end)
      service.add_operation(:get_log_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogRecord"
        operation.name = "GetLogRecord"
        operation.input = GetLogRecordRequest
        operation.output = GetLogRecordResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_query_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = GetQueryResultsRequest
        operation.output = GetQueryResultsResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetTransformer"
        operation.name = "GetTransformer"
        operation.input = GetTransformerRequest
        operation.output = GetTransformerResponse
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:list_anomalies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListAnomalies"
        operation.name = "ListAnomalies"
        operation.input = ListAnomaliesRequest
        operation.output = ListAnomaliesResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAnomalies.new
      end)
      service.add_operation(:list_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListIntegrations"
        operation.name = "ListIntegrations"
        operation.input = ListIntegrationsRequest
        operation.output = ListIntegrationsResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:list_log_anomaly_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectors"
        operation.name = "ListLogAnomalyDetectors"
        operation.input = ListLogAnomalyDetectorsRequest
        operation.output = ListLogAnomalyDetectorsResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogAnomalyDetectors.new
      end)
      service.add_operation(:list_log_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListLogGroups"
        operation.name = "ListLogGroups"
        operation.input = ListLogGroupsRequest
        operation.output = ListLogGroupsResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:list_log_groups_for_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListLogGroupsForQuery"
        operation.name = "ListLogGroupsForQuery"
        operation.input = ListLogGroupsForQueryRequest
        operation.output = ListLogGroupsForQueryResponse
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogGroupsForQuery.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_log_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListTagsLogGroup"
        operation.name = "ListTagsLogGroup"
        operation.input = ListTagsLogGroupRequest
        operation.output = ListTagsLogGroupResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API ListTagsForResource"}}
      end)
      service.add_operation(:put_account_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutAccountPolicy"
        operation.name = "PutAccountPolicy"
        operation.input = PutAccountPolicyRequest
        operation.output = PutAccountPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_data_protection_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDataProtectionPolicy"
        operation.name = "PutDataProtectionPolicy"
        operation.input = PutDataProtectionPolicyRequest
        operation.output = PutDataProtectionPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDeliveryDestination"
        operation.name = "PutDeliveryDestination"
        operation.input = PutDeliveryDestinationRequest
        operation.output = PutDeliveryDestinationResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_destination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDeliveryDestinationPolicy"
        operation.name = "PutDeliveryDestinationPolicy"
        operation.input = PutDeliveryDestinationPolicyRequest
        operation.output = PutDeliveryDestinationPolicyResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDeliverySource"
        operation.name = "PutDeliverySource"
        operation.input = PutDeliverySourceRequest
        operation.output = PutDeliverySourceResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDestination"
        operation.name = "PutDestination"
        operation.input = PutDestinationRequest
        operation.output = PutDestinationResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_destination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDestinationPolicy"
        operation.name = "PutDestinationPolicy"
        operation.input = PutDestinationPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_index_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutIndexPolicy"
        operation.name = "PutIndexPolicy"
        operation.input = PutIndexPolicyRequest
        operation.output = PutIndexPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutIntegration"
        operation.name = "PutIntegration"
        operation.input = PutIntegrationRequest
        operation.output = PutIntegrationResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_log_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutLogEvents"
        operation.name = "PutLogEvents"
        operation.input = PutLogEventsRequest
        operation.output = PutLogEventsResponse
        operation.errors << DataAlreadyAcceptedException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSequenceTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnrecognizedClientException
        operation.traits = {}
      end)
      service.add_operation(:put_metric_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutMetricFilter"
        operation.name = "PutMetricFilter"
        operation.input = PutMetricFilterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_query_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutQueryDefinition"
        operation.name = "PutQueryDefinition"
        operation.input = PutQueryDefinitionRequest
        operation.output = PutQueryDefinitionResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_retention_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutRetentionPolicy"
        operation.name = "PutRetentionPolicy"
        operation.input = PutRetentionPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_subscription_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutSubscriptionFilter"
        operation.name = "PutSubscriptionFilter"
        operation.input = PutSubscriptionFilterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutTransformer"
        operation.name = "PutTransformer"
        operation.input = PutTransformerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:start_live_tail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#StartLiveTail"
        operation.name = "StartLiveTail"
        operation.input = StartLiveTailRequest
        operation.output = StartLiveTailResponse
        operation.errors << AccessDeniedException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "streaming-"}}
      end)
      service.add_operation(:start_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#StartQuery"
        operation.name = "StartQuery"
        operation.input = StartQueryRequest
        operation.output = StartQueryResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << MalformedQueryException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:stop_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#StopQuery"
        operation.name = "StopQuery"
        operation.input = StopQueryRequest
        operation.output = StopQueryResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:tag_log_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TagLogGroup"
        operation.name = "TagLogGroup"
        operation.input = TagLogGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API TagResource"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:test_metric_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TestMetricFilter"
        operation.name = "TestMetricFilter"
        operation.input = TestMetricFilterRequest
        operation.output = TestMetricFilterResponse
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:test_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TestTransformer"
        operation.name = "TestTransformer"
        operation.input = TestTransformerRequest
        operation.output = TestTransformerResponse
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:untag_log_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UntagLogGroup"
        operation.name = "UntagLogGroup"
        operation.input = UntagLogGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API UntagResource"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:update_anomaly, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UpdateAnomaly"
        operation.name = "UpdateAnomaly"
        operation.input = UpdateAnomalyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:update_delivery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UpdateDeliveryConfiguration"
        operation.name = "UpdateDeliveryConfiguration"
        operation.input = UpdateDeliveryConfigurationRequest
        operation.output = UpdateDeliveryConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_log_anomaly_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UpdateLogAnomalyDetector"
        operation.name = "UpdateLogAnomalyDetector"
        operation.input = UpdateLogAnomalyDetectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << OperationAbortedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
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

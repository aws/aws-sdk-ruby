# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchLogs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccessPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AccessPolicy', name: 'AccessPolicy', traits: {"smithy.api#length" => {"min" => 1}})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#AccountIds', name: 'AccountIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AccountPolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#AccountPolicies', name: 'AccountPolicies')
    AccountPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#AccountPolicy', name: 'AccountPolicy')
    AccountPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AccountPolicyDocument', name: 'AccountPolicyDocument')
    AddKeyEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#AddKeyEntries', name: 'AddKeyEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AddKeyEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#AddKeyEntry', name: 'AddKeyEntry')
    AddKeyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AddKeyValue', name: 'AddKeyValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AddKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#AddKeys', name: 'AddKeys')
    AllowedActionForAllowVendedLogsDeliveryForResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AllowedActionForAllowVendedLogsDeliveryForResource', name: 'AllowedActionForAllowVendedLogsDeliveryForResource')
    AllowedFieldDelimiters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#AllowedFieldDelimiters', name: 'AllowedFieldDelimiters')
    AllowedFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#AllowedFields', name: 'AllowedFields')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[\\w+=/:,.@-]*$"})
    Anomalies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#Anomalies', name: 'Anomalies')
    Anomaly = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Anomaly', name: 'Anomaly')
    AnomalyDetector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#AnomalyDetector', name: 'AnomalyDetector')
    AnomalyDetectorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AnomalyDetectorArn', name: 'AnomalyDetectorArn', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\w#+=/:,.@-]*$"})
    AnomalyDetectorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#AnomalyDetectorStatus', name: 'AnomalyDetectorStatus')
    AnomalyDetectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#AnomalyDetectors', name: 'AnomalyDetectors')
    AnomalyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#AnomalyId', name: 'AnomalyId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    AnomalyVisibilityTime = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#AnomalyVisibilityTime', name: 'AnomalyVisibilityTime', traits: {"smithy.api#range" => {"min" => 7, "max" => 90}})
    ApplyOnTransformedLogs = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#ApplyOnTransformedLogs', name: 'ApplyOnTransformedLogs', traits: {"smithy.api#default" => false})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Arn', name: 'Arn')
    AssociateKmsKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#AssociateKmsKeyRequest', name: 'AssociateKmsKeyRequest')
    Baseline = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Baseline', name: 'Baseline')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Boolean', name: 'Boolean')
    CSV = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CSV', name: 'CSV')
    CancelExportTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CancelExportTaskRequest', name: 'CancelExportTaskRequest')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 36, "max" => 128}, "smithy.api#pattern" => "^\\S{36,128}$"})
    CollectionRetentionDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#CollectionRetentionDays', name: 'CollectionRetentionDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 30}})
    Column = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Column', name: 'Column', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Columns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#Columns', name: 'Columns', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConfigurationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ConfigurationTemplate', name: 'ConfigurationTemplate')
    ConfigurationTemplateDeliveryConfigValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ConfigurationTemplateDeliveryConfigValues', name: 'ConfigurationTemplateDeliveryConfigValues')
    ConfigurationTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#ConfigurationTemplates', name: 'ConfigurationTemplates')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    CopyValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CopyValue', name: 'CopyValue')
    CopyValueEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#CopyValueEntries', name: 'CopyValueEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CopyValueEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CopyValueEntry', name: 'CopyValueEntry')
    Count = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#Count', name: 'Count', traits: {"smithy.api#default" => 0})
    CreateDeliveryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateDeliveryRequest', name: 'CreateDeliveryRequest')
    CreateDeliveryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateDeliveryResponse', name: 'CreateDeliveryResponse')
    CreateExportTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateExportTaskRequest', name: 'CreateExportTaskRequest')
    CreateExportTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateExportTaskResponse', name: 'CreateExportTaskResponse')
    CreateLogAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateLogAnomalyDetectorRequest', name: 'CreateLogAnomalyDetectorRequest')
    CreateLogAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateLogAnomalyDetectorResponse', name: 'CreateLogAnomalyDetectorResponse')
    CreateLogGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateLogGroupRequest', name: 'CreateLogGroupRequest')
    CreateLogStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#CreateLogStreamRequest', name: 'CreateLogStreamRequest')
    DashboardViewerPrincipals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DashboardViewerPrincipals', name: 'DashboardViewerPrincipals')
    Data = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cloudwatchlogs#Data', name: 'Data')
    DataAlreadyAcceptedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DataAlreadyAcceptedException', name: 'DataAlreadyAcceptedException', traits: {"smithy.api#error" => "client"})
    DataProtectionPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DataProtectionPolicyDocument', name: 'DataProtectionPolicyDocument')
    DataProtectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#DataProtectionStatus', name: 'DataProtectionStatus')
    DateTimeConverter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DateTimeConverter', name: 'DateTimeConverter')
    Days = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#Days', name: 'Days')
    DefaultValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudwatchlogs#DefaultValue', name: 'DefaultValue')
    DeleteAccountPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteAccountPolicyRequest', name: 'DeleteAccountPolicyRequest')
    DeleteDataProtectionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteDataProtectionPolicyRequest', name: 'DeleteDataProtectionPolicyRequest')
    DeleteDeliveryDestinationPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteDeliveryDestinationPolicyRequest', name: 'DeleteDeliveryDestinationPolicyRequest')
    DeleteDeliveryDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteDeliveryDestinationRequest', name: 'DeleteDeliveryDestinationRequest')
    DeleteDeliveryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteDeliveryRequest', name: 'DeleteDeliveryRequest')
    DeleteDeliverySourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteDeliverySourceRequest', name: 'DeleteDeliverySourceRequest')
    DeleteDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteDestinationRequest', name: 'DeleteDestinationRequest')
    DeleteIndexPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteIndexPolicyRequest', name: 'DeleteIndexPolicyRequest')
    DeleteIndexPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteIndexPolicyResponse', name: 'DeleteIndexPolicyResponse')
    DeleteIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteIntegrationRequest', name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteIntegrationResponse', name: 'DeleteIntegrationResponse')
    DeleteKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteKeys', name: 'DeleteKeys')
    DeleteLogAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteLogAnomalyDetectorRequest', name: 'DeleteLogAnomalyDetectorRequest')
    DeleteLogGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteLogGroupRequest', name: 'DeleteLogGroupRequest')
    DeleteLogStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteLogStreamRequest', name: 'DeleteLogStreamRequest')
    DeleteMetricFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteMetricFilterRequest', name: 'DeleteMetricFilterRequest')
    DeleteQueryDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteQueryDefinitionRequest', name: 'DeleteQueryDefinitionRequest')
    DeleteQueryDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteQueryDefinitionResponse', name: 'DeleteQueryDefinitionResponse')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteRetentionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteRetentionPolicyRequest', name: 'DeleteRetentionPolicyRequest')
    DeleteSubscriptionFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteSubscriptionFilterRequest', name: 'DeleteSubscriptionFilterRequest')
    DeleteTransformerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteTransformerRequest', name: 'DeleteTransformerRequest')
    DeleteWithKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DeleteWithKeys', name: 'DeleteWithKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Delimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Delimiter', name: 'Delimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Deliveries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#Deliveries', name: 'Deliveries')
    Delivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Delivery', name: 'Delivery')
    DeliveryDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestination', name: 'DeliveryDestination')
    DeliveryDestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestinationConfiguration', name: 'DeliveryDestinationConfiguration')
    DeliveryDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestinationName', name: 'DeliveryDestinationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[\\w-]*$"})
    DeliveryDestinationPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestinationPolicy', name: 'DeliveryDestinationPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}})
    DeliveryDestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestinationType', name: 'DeliveryDestinationType')
    DeliveryDestinationTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestinationTypes', name: 'DeliveryDestinationTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    DeliveryDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryDestinations', name: 'DeliveryDestinations')
    DeliveryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliveryId', name: 'DeliveryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z]+$"})
    DeliverySource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliverySource', name: 'DeliverySource')
    DeliverySourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliverySourceName', name: 'DeliverySourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[\\w-]*$"})
    DeliverySources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliverySources', name: 'DeliverySources')
    DeliverySuffixPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DeliverySuffixPath', name: 'DeliverySuffixPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Descending = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Descending', name: 'Descending')
    DescribeAccountPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeAccountPoliciesRequest', name: 'DescribeAccountPoliciesRequest')
    DescribeAccountPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeAccountPoliciesResponse', name: 'DescribeAccountPoliciesResponse')
    DescribeConfigurationTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeConfigurationTemplatesRequest', name: 'DescribeConfigurationTemplatesRequest')
    DescribeConfigurationTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeConfigurationTemplatesResponse', name: 'DescribeConfigurationTemplatesResponse')
    DescribeDeliveriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDeliveriesRequest', name: 'DescribeDeliveriesRequest')
    DescribeDeliveriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDeliveriesResponse', name: 'DescribeDeliveriesResponse')
    DescribeDeliveryDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDeliveryDestinationsRequest', name: 'DescribeDeliveryDestinationsRequest')
    DescribeDeliveryDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDeliveryDestinationsResponse', name: 'DescribeDeliveryDestinationsResponse')
    DescribeDeliverySourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDeliverySourcesRequest', name: 'DescribeDeliverySourcesRequest')
    DescribeDeliverySourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDeliverySourcesResponse', name: 'DescribeDeliverySourcesResponse')
    DescribeDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDestinationsRequest', name: 'DescribeDestinationsRequest')
    DescribeDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeDestinationsResponse', name: 'DescribeDestinationsResponse')
    DescribeExportTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeExportTasksRequest', name: 'DescribeExportTasksRequest')
    DescribeExportTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeExportTasksResponse', name: 'DescribeExportTasksResponse')
    DescribeFieldIndexesLogGroupIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeFieldIndexesLogGroupIdentifiers', name: 'DescribeFieldIndexesLogGroupIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DescribeFieldIndexesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeFieldIndexesRequest', name: 'DescribeFieldIndexesRequest')
    DescribeFieldIndexesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeFieldIndexesResponse', name: 'DescribeFieldIndexesResponse')
    DescribeIndexPoliciesLogGroupIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeIndexPoliciesLogGroupIdentifiers', name: 'DescribeIndexPoliciesLogGroupIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DescribeIndexPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeIndexPoliciesRequest', name: 'DescribeIndexPoliciesRequest')
    DescribeIndexPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeIndexPoliciesResponse', name: 'DescribeIndexPoliciesResponse')
    DescribeLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeLimit', name: 'DescribeLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    DescribeLogGroupsLogGroupIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeLogGroupsLogGroupIdentifiers', name: 'DescribeLogGroupsLogGroupIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DescribeLogGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeLogGroupsRequest', name: 'DescribeLogGroupsRequest')
    DescribeLogGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeLogGroupsResponse', name: 'DescribeLogGroupsResponse')
    DescribeLogStreamsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeLogStreamsRequest', name: 'DescribeLogStreamsRequest')
    DescribeLogStreamsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeLogStreamsResponse', name: 'DescribeLogStreamsResponse')
    DescribeMetricFiltersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeMetricFiltersRequest', name: 'DescribeMetricFiltersRequest')
    DescribeMetricFiltersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeMetricFiltersResponse', name: 'DescribeMetricFiltersResponse')
    DescribeQueriesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeQueriesMaxResults', name: 'DescribeQueriesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    DescribeQueriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeQueriesRequest', name: 'DescribeQueriesRequest')
    DescribeQueriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeQueriesResponse', name: 'DescribeQueriesResponse')
    DescribeQueryDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeQueryDefinitionsRequest', name: 'DescribeQueryDefinitionsRequest')
    DescribeQueryDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeQueryDefinitionsResponse', name: 'DescribeQueryDefinitionsResponse')
    DescribeResourcePoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeResourcePoliciesRequest', name: 'DescribeResourcePoliciesRequest')
    DescribeResourcePoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeResourcePoliciesResponse', name: 'DescribeResourcePoliciesResponse')
    DescribeSubscriptionFiltersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeSubscriptionFiltersRequest', name: 'DescribeSubscriptionFiltersRequest')
    DescribeSubscriptionFiltersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DescribeSubscriptionFiltersResponse', name: 'DescribeSubscriptionFiltersResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1}})
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Destination', name: 'Destination')
    DestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DestinationArn', name: 'DestinationArn', traits: {"smithy.api#length" => {"min" => 1}})
    DestinationField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DestinationField', name: 'DestinationField', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DestinationName', name: 'DestinationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    Destinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#Destinations', name: 'Destinations')
    DetectorKmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DetectorKmsKeyArn', name: 'DetectorKmsKeyArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:[-a-z0-9]*:[0-9]*:key/[-a-z0-9]*$"})
    DetectorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DetectorName', name: 'DetectorName', traits: {"smithy.api#length" => {"min" => 1}})
    Dimensions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#Dimensions', name: 'Dimensions')
    DimensionsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DimensionsKey', name: 'DimensionsKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DimensionsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#DimensionsValue', name: 'DimensionsValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DisassociateKmsKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#DisassociateKmsKeyRequest', name: 'DisassociateKmsKeyRequest')
    Distribution = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#Distribution', name: 'Distribution')
    DynamicTokenPosition = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#DynamicTokenPosition', name: 'DynamicTokenPosition', traits: {"smithy.api#default" => 0})
    EncryptionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EncryptionKey', name: 'EncryptionKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Entity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Entity', name: 'Entity')
    EntityAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityAttributes', name: 'EntityAttributes', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EntityAttributesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityAttributesKey', name: 'EntityAttributesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EntityAttributesValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityAttributesValue', name: 'EntityAttributesValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    EntityKeyAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityKeyAttributes', name: 'EntityKeyAttributes', traits: {"smithy.api#length" => {"min" => 2, "max" => 4}})
    EntityKeyAttributesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityKeyAttributesKey', name: 'EntityKeyAttributesKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    EntityKeyAttributesValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityKeyAttributesValue', name: 'EntityKeyAttributesValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    EntityRejectionErrorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#EntityRejectionErrorType', name: 'EntityRejectionErrorType')
    Enumerations = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#Enumerations', name: 'Enumerations')
    EpochMillis = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#EpochMillis', name: 'EpochMillis', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    EvaluationFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#EvaluationFrequency', name: 'EvaluationFrequency')
    EventId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EventId', name: 'EventId')
    EventMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#EventMessage', name: 'EventMessage', traits: {"smithy.api#length" => {"min" => 1}})
    EventNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#EventNumber', name: 'EventNumber', traits: {"smithy.api#default" => 0})
    EventSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#EventSource', name: 'EventSource')
    EventsLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#EventsLimit', name: 'EventsLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ExpectedRevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ExpectedRevisionId', name: 'ExpectedRevisionId', traits: {"smithy.api#length" => {"min" => 1}})
    ExportDestinationBucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportDestinationBucket', name: 'ExportDestinationBucket', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ExportDestinationPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportDestinationPrefix', name: 'ExportDestinationPrefix')
    ExportTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTask', name: 'ExportTask')
    ExportTaskExecutionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTaskExecutionInfo', name: 'ExportTaskExecutionInfo')
    ExportTaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTaskId', name: 'ExportTaskId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ExportTaskName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTaskName', name: 'ExportTaskName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ExportTaskStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTaskStatus', name: 'ExportTaskStatus')
    ExportTaskStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTaskStatusCode', name: 'ExportTaskStatusCode')
    ExportTaskStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTaskStatusMessage', name: 'ExportTaskStatusMessage')
    ExportTasks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#ExportTasks', name: 'ExportTasks')
    ExtractedValues = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#ExtractedValues', name: 'ExtractedValues')
    Field = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Field', name: 'Field')
    FieldDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#FieldDelimiter', name: 'FieldDelimiter', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    FieldHeader = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#FieldHeader', name: 'FieldHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    FieldIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#FieldIndex', name: 'FieldIndex')
    FieldIndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#FieldIndexName', name: 'FieldIndexName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    FieldIndexes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#FieldIndexes', name: 'FieldIndexes')
    FieldsData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#FieldsData', name: 'FieldsData')
    FilterCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#FilterCount', name: 'FilterCount')
    FilterLogEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#FilterLogEventsRequest', name: 'FilterLogEventsRequest')
    FilterLogEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#FilterLogEventsResponse', name: 'FilterLogEventsResponse')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    FilterPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#FilterPattern', name: 'FilterPattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FilteredLogEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#FilteredLogEvent', name: 'FilteredLogEvent')
    FilteredLogEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#FilteredLogEvents', name: 'FilteredLogEvents')
    Flatten = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Flatten', name: 'Flatten', traits: {"smithy.api#default" => false})
    FlattenedElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#FlattenedElement', name: 'FlattenedElement')
    Force = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Force', name: 'Force', traits: {"smithy.api#default" => false})
    ForceUpdate = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#ForceUpdate', name: 'ForceUpdate')
    FromKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#FromKey', name: 'FromKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GetDataProtectionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDataProtectionPolicyRequest', name: 'GetDataProtectionPolicyRequest')
    GetDataProtectionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDataProtectionPolicyResponse', name: 'GetDataProtectionPolicyResponse')
    GetDeliveryDestinationPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliveryDestinationPolicyRequest', name: 'GetDeliveryDestinationPolicyRequest')
    GetDeliveryDestinationPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliveryDestinationPolicyResponse', name: 'GetDeliveryDestinationPolicyResponse')
    GetDeliveryDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliveryDestinationRequest', name: 'GetDeliveryDestinationRequest')
    GetDeliveryDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliveryDestinationResponse', name: 'GetDeliveryDestinationResponse')
    GetDeliveryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliveryRequest', name: 'GetDeliveryRequest')
    GetDeliveryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliveryResponse', name: 'GetDeliveryResponse')
    GetDeliverySourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliverySourceRequest', name: 'GetDeliverySourceRequest')
    GetDeliverySourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetDeliverySourceResponse', name: 'GetDeliverySourceResponse')
    GetIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetIntegrationRequest', name: 'GetIntegrationRequest')
    GetIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetIntegrationResponse', name: 'GetIntegrationResponse')
    GetLogAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogAnomalyDetectorRequest', name: 'GetLogAnomalyDetectorRequest')
    GetLogAnomalyDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogAnomalyDetectorResponse', name: 'GetLogAnomalyDetectorResponse')
    GetLogEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogEventsRequest', name: 'GetLogEventsRequest')
    GetLogEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogEventsResponse', name: 'GetLogEventsResponse')
    GetLogGroupFieldsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogGroupFieldsRequest', name: 'GetLogGroupFieldsRequest')
    GetLogGroupFieldsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogGroupFieldsResponse', name: 'GetLogGroupFieldsResponse')
    GetLogObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogObjectRequest', name: 'GetLogObjectRequest')
    GetLogObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogObjectResponse', name: 'GetLogObjectResponse')
    GetLogObjectResponseStream = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogObjectResponseStream', name: 'GetLogObjectResponseStream', traits: {"smithy.api#streaming" => {}})
    GetLogRecordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogRecordRequest', name: 'GetLogRecordRequest')
    GetLogRecordResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetLogRecordResponse', name: 'GetLogRecordResponse')
    GetQueryResultsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetQueryResultsRequest', name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetQueryResultsResponse', name: 'GetQueryResultsResponse')
    GetTransformerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetTransformerRequest', name: 'GetTransformerRequest')
    GetTransformerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#GetTransformerResponse', name: 'GetTransformerResponse')
    Grok = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Grok', name: 'Grok')
    GrokMatch = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#GrokMatch', name: 'GrokMatch', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Histogram = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#Histogram', name: 'Histogram')
    IncludeLinkedAccounts = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#IncludeLinkedAccounts', name: 'IncludeLinkedAccounts')
    IndexPolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#IndexPolicies', name: 'IndexPolicies')
    IndexPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#IndexPolicy', name: 'IndexPolicy')
    IndexSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#IndexSource', name: 'IndexSource')
    InferredTokenName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#InferredTokenName', name: 'InferredTokenName', traits: {"smithy.api#length" => {"min" => 1}})
    InheritedProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#InheritedProperties', name: 'InheritedProperties')
    InheritedProperty = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#InheritedProperty', name: 'InheritedProperty')
    InputLogEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#InputLogEvent', name: 'InputLogEvent')
    InputLogEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#InputLogEvents', name: 'InputLogEvents', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    InputLogStreamNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#InputLogStreamNames', name: 'InputLogStreamNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    IntegrationDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationDetails', name: 'IntegrationDetails')
    IntegrationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationName', name: 'IntegrationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    IntegrationNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationNamePrefix', name: 'IntegrationNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    IntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationStatus', name: 'IntegrationStatus')
    IntegrationStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationStatusMessage', name: 'IntegrationStatusMessage', traits: {"smithy.api#length" => {"min" => 1}})
    IntegrationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationSummaries', name: 'IntegrationSummaries')
    IntegrationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationSummary', name: 'IntegrationSummary')
    IntegrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#IntegrationType', name: 'IntegrationType')
    Interleaved = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Interleaved', name: 'Interleaved')
    InternalStreamingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#InternalStreamingException', name: 'InternalStreamingException', traits: {"smithy.api#error" => "client"})
    InvalidOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidSequenceTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#InvalidSequenceTokenException', name: 'InvalidSequenceTokenException', traits: {"smithy.api#error" => "client"})
    IsSampled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#IsSampled', name: 'IsSampled', traits: {"smithy.api#default" => false})
    Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Key', name: 'Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#KeyPrefix', name: 'KeyPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KeyValueDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#KeyValueDelimiter', name: 'KeyValueDelimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAnomaliesLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#ListAnomaliesLimit', name: 'ListAnomaliesLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListAnomaliesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListAnomaliesRequest', name: 'ListAnomaliesRequest')
    ListAnomaliesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListAnomaliesResponse', name: 'ListAnomaliesResponse')
    ListIntegrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListIntegrationsRequest', name: 'ListIntegrationsRequest')
    ListIntegrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListIntegrationsResponse', name: 'ListIntegrationsResponse')
    ListLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLimit', name: 'ListLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListLogAnomalyDetectorsLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectorsLimit', name: 'ListLogAnomalyDetectorsLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListLogAnomalyDetectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectorsRequest', name: 'ListLogAnomalyDetectorsRequest')
    ListLogAnomalyDetectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectorsResponse', name: 'ListLogAnomalyDetectorsResponse')
    ListLogGroupsForQueryMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogGroupsForQueryMaxResults', name: 'ListLogGroupsForQueryMaxResults', traits: {"smithy.api#range" => {"min" => 50, "max" => 500}})
    ListLogGroupsForQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogGroupsForQueryRequest', name: 'ListLogGroupsForQueryRequest')
    ListLogGroupsForQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogGroupsForQueryResponse', name: 'ListLogGroupsForQueryResponse')
    ListLogGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogGroupsRequest', name: 'ListLogGroupsRequest')
    ListLogGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListLogGroupsResponse', name: 'ListLogGroupsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTagsLogGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListTagsLogGroupRequest', name: 'ListTagsLogGroupRequest', traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model ListTagsForResourceRequest and ListTagsForResourceResponse"}})
    ListTagsLogGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListTagsLogGroupResponse', name: 'ListTagsLogGroupResponse', traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model ListTagsForResourceRequest and ListTagsForResourceResponse"}})
    ListToMap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ListToMap', name: 'ListToMap')
    LiveTailSessionLogEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LiveTailSessionLogEvent', name: 'LiveTailSessionLogEvent')
    LiveTailSessionMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LiveTailSessionMetadata', name: 'LiveTailSessionMetadata')
    LiveTailSessionResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LiveTailSessionResults', name: 'LiveTailSessionResults')
    LiveTailSessionStart = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LiveTailSessionStart', name: 'LiveTailSessionStart')
    LiveTailSessionUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LiveTailSessionUpdate', name: 'LiveTailSessionUpdate')
    Locale = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Locale', name: 'Locale', traits: {"smithy.api#length" => {"min" => 1}})
    LogEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LogEvent', name: 'LogEvent')
    LogEventIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#LogEventIndex', name: 'LogEventIndex')
    LogGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroup', name: 'LogGroup')
    LogGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupArn', name: 'LogGroupArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w#+=/:,.@-]*$"})
    LogGroupArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupArnList', name: 'LogGroupArnList')
    LogGroupClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupClass', name: 'LogGroupClass')
    LogGroupField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupField', name: 'LogGroupField')
    LogGroupFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupFieldList', name: 'LogGroupFieldList')
    LogGroupIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupIdentifier', name: 'LogGroupIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w#+=/:,.@-]*$"})
    LogGroupIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupIdentifiers', name: 'LogGroupIdentifiers')
    LogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LogGroupNamePattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupNamePattern', name: 'LogGroupNamePattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]*$"})
    LogGroupNameRegexPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupNameRegexPattern', name: 'LogGroupNameRegexPattern', traits: {"smithy.api#length" => {"min" => 3, "max" => 129}, "smithy.api#pattern" => "^(\\^?[\\.\\-_\\/#A-Za-z0-9]{3,24})(\\|\\^?[\\.\\-_\\/#A-Za-z0-9]{3,24}){0,4}$"})
    LogGroupNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupNames', name: 'LogGroupNames')
    LogGroupSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupSummaries', name: 'LogGroupSummaries')
    LogGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroupSummary', name: 'LogGroupSummary')
    LogGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogGroups', name: 'LogGroups')
    LogObjectPointer = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogObjectPointer', name: 'LogObjectPointer', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogRecord = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#LogRecord', name: 'LogRecord')
    LogRecordPointer = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogRecordPointer', name: 'LogRecordPointer')
    LogSamples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogSamples', name: 'LogSamples')
    LogStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LogStream', name: 'LogStream')
    LogStreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogStreamName', name: 'LogStreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    LogStreamSearchedCompletely = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#LogStreamSearchedCompletely', name: 'LogStreamSearchedCompletely')
    LogStreams = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogStreams', name: 'LogStreams')
    LogType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#LogType', name: 'LogType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w]*$"})
    LogTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LogTypes', name: 'LogTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    LowerCaseString = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#LowerCaseString', name: 'LowerCaseString')
    LowerCaseStringWithKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#LowerCaseStringWithKeys', name: 'LowerCaseStringWithKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MalformedQueryException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#MalformedQueryException', name: 'MalformedQueryException', traits: {"smithy.api#error" => "client"})
    MatchPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#MatchPattern', name: 'MatchPattern', traits: {"smithy.api#length" => {"min" => 1}})
    MatchPatterns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#MatchPatterns', name: 'MatchPatterns', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Message', name: 'Message')
    MetricFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricFilter', name: 'MetricFilter')
    MetricFilterMatchRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricFilterMatchRecord', name: 'MetricFilterMatchRecord')
    MetricFilterMatches = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricFilterMatches', name: 'MetricFilterMatches')
    MetricFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricFilters', name: 'MetricFilters')
    MetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[^:*$]*$"})
    MetricNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricNamespace', name: 'MetricNamespace', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[^:*$]*$"})
    MetricTransformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricTransformation', name: 'MetricTransformation')
    MetricTransformations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricTransformations', name: 'MetricTransformations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MetricValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#MetricValue', name: 'MetricValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MoveKeyEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#MoveKeyEntries', name: 'MoveKeyEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MoveKeyEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#MoveKeyEntry', name: 'MoveKeyEntry')
    MoveKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#MoveKeys', name: 'MoveKeys')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1}})
    NonMatchValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#NonMatchValue', name: 'NonMatchValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OCSFVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#OCSFVersion', name: 'OCSFVersion')
    OpenSearchApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchApplication', name: 'OpenSearchApplication')
    OpenSearchApplicationEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchApplicationEndpoint', name: 'OpenSearchApplicationEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^https://[\\.\\-_/#:A-Za-z0-9]+\\.com$"})
    OpenSearchApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchApplicationId', name: 'OpenSearchApplicationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OpenSearchCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchCollection', name: 'OpenSearchCollection')
    OpenSearchCollectionEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchCollectionEndpoint', name: 'OpenSearchCollectionEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^https://[\\.\\-_/#:A-Za-z0-9]+\\.com$"})
    OpenSearchDataAccessPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchDataAccessPolicy', name: 'OpenSearchDataAccessPolicy')
    OpenSearchDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchDataSource', name: 'OpenSearchDataSource')
    OpenSearchDataSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchDataSourceName', name: 'OpenSearchDataSourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OpenSearchEncryptionPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchEncryptionPolicy', name: 'OpenSearchEncryptionPolicy')
    OpenSearchIntegrationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchIntegrationDetails', name: 'OpenSearchIntegrationDetails')
    OpenSearchLifecyclePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchLifecyclePolicy', name: 'OpenSearchLifecyclePolicy')
    OpenSearchNetworkPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchNetworkPolicy', name: 'OpenSearchNetworkPolicy')
    OpenSearchPolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchPolicyName', name: 'OpenSearchPolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OpenSearchResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchResourceConfig', name: 'OpenSearchResourceConfig')
    OpenSearchResourceStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchResourceStatus', name: 'OpenSearchResourceStatus')
    OpenSearchResourceStatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchResourceStatusType', name: 'OpenSearchResourceStatusType')
    OpenSearchWorkspace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchWorkspace', name: 'OpenSearchWorkspace')
    OpenSearchWorkspaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#OpenSearchWorkspaceId', name: 'OpenSearchWorkspaceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    OperationAbortedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OperationAbortedException', name: 'OperationAbortedException', traits: {"smithy.api#error" => "client"})
    OrderBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#OrderBy', name: 'OrderBy')
    OutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#OutputFormat', name: 'OutputFormat')
    OutputFormats = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#OutputFormats', name: 'OutputFormats')
    OutputLogEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#OutputLogEvent', name: 'OutputLogEvent')
    OutputLogEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#OutputLogEvents', name: 'OutputLogEvents')
    OverwriteIfExists = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#OverwriteIfExists', name: 'OverwriteIfExists', traits: {"smithy.api#default" => false})
    ParseCloudfront = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseCloudfront', name: 'ParseCloudfront')
    ParseJSON = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseJSON', name: 'ParseJSON')
    ParseKeyValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseKeyValue', name: 'ParseKeyValue')
    ParsePostgres = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParsePostgres', name: 'ParsePostgres')
    ParseRoute53 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseRoute53', name: 'ParseRoute53')
    ParseToOCSF = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseToOCSF', name: 'ParseToOCSF')
    ParseVPC = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseVPC', name: 'ParseVPC')
    ParseWAF = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ParseWAF', name: 'ParseWAF')
    ParserFieldDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ParserFieldDelimiter', name: 'ParserFieldDelimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PatternId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#PatternId', name: 'PatternId', traits: {"smithy.api#length" => {"min" => 32, "max" => 32}})
    PatternRegex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#PatternRegex', name: 'PatternRegex', traits: {"smithy.api#length" => {"min" => 1}})
    PatternString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#PatternString', name: 'PatternString', traits: {"smithy.api#length" => {"min" => 1}})
    PatternToken = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PatternToken', name: 'PatternToken')
    PatternTokens = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#PatternTokens', name: 'PatternTokens')
    Percentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#Percentage', name: 'Percentage', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Policy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Policy', name: 'Policy')
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}})
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#PolicyName', name: 'PolicyName')
    PolicyScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#PolicyScope', name: 'PolicyScope')
    PolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#PolicyType', name: 'PolicyType')
    Priority = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Priority', name: 'Priority', traits: {"smithy.api#length" => {"min" => 1}})
    Processor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#Processor', name: 'Processor')
    Processors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#Processors', name: 'Processors', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PutAccountPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutAccountPolicyRequest', name: 'PutAccountPolicyRequest')
    PutAccountPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutAccountPolicyResponse', name: 'PutAccountPolicyResponse')
    PutDataProtectionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDataProtectionPolicyRequest', name: 'PutDataProtectionPolicyRequest')
    PutDataProtectionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDataProtectionPolicyResponse', name: 'PutDataProtectionPolicyResponse')
    PutDeliveryDestinationPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDeliveryDestinationPolicyRequest', name: 'PutDeliveryDestinationPolicyRequest')
    PutDeliveryDestinationPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDeliveryDestinationPolicyResponse', name: 'PutDeliveryDestinationPolicyResponse')
    PutDeliveryDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDeliveryDestinationRequest', name: 'PutDeliveryDestinationRequest')
    PutDeliveryDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDeliveryDestinationResponse', name: 'PutDeliveryDestinationResponse')
    PutDeliverySourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDeliverySourceRequest', name: 'PutDeliverySourceRequest')
    PutDeliverySourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDeliverySourceResponse', name: 'PutDeliverySourceResponse')
    PutDestinationPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDestinationPolicyRequest', name: 'PutDestinationPolicyRequest')
    PutDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDestinationRequest', name: 'PutDestinationRequest')
    PutDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutDestinationResponse', name: 'PutDestinationResponse')
    PutIndexPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutIndexPolicyRequest', name: 'PutIndexPolicyRequest')
    PutIndexPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutIndexPolicyResponse', name: 'PutIndexPolicyResponse')
    PutIntegrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutIntegrationRequest', name: 'PutIntegrationRequest')
    PutIntegrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutIntegrationResponse', name: 'PutIntegrationResponse')
    PutLogEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutLogEventsRequest', name: 'PutLogEventsRequest')
    PutLogEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutLogEventsResponse', name: 'PutLogEventsResponse')
    PutMetricFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutMetricFilterRequest', name: 'PutMetricFilterRequest')
    PutQueryDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutQueryDefinitionRequest', name: 'PutQueryDefinitionRequest')
    PutQueryDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutQueryDefinitionResponse', name: 'PutQueryDefinitionResponse')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    PutRetentionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutRetentionPolicyRequest', name: 'PutRetentionPolicyRequest')
    PutSubscriptionFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutSubscriptionFilterRequest', name: 'PutSubscriptionFilterRequest')
    PutTransformerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#PutTransformerRequest', name: 'PutTransformerRequest')
    QueryCharOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryCharOffset', name: 'QueryCharOffset')
    QueryCompileError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryCompileError', name: 'QueryCompileError')
    QueryCompileErrorLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryCompileErrorLocation', name: 'QueryCompileErrorLocation')
    QueryDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryDefinition', name: 'QueryDefinition')
    QueryDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryDefinitionList', name: 'QueryDefinitionList')
    QueryDefinitionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryDefinitionName', name: 'QueryDefinitionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QueryDefinitionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryDefinitionString', name: 'QueryDefinitionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    QueryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryId', name: 'QueryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    QueryInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryInfo', name: 'QueryInfo')
    QueryInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryInfoList', name: 'QueryInfoList')
    QueryLanguage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryLanguage', name: 'QueryLanguage')
    QueryListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryListMaxResults', name: 'QueryListMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    QueryResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryResults', name: 'QueryResults')
    QueryStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryStatistics', name: 'QueryStatistics')
    QueryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryStatus', name: 'QueryStatus')
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    QuoteCharacter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#QuoteCharacter', name: 'QuoteCharacter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RecordField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#RecordField', name: 'RecordField')
    RecordFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#RecordFields', name: 'RecordFields', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    RejectedEntityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#RejectedEntityInfo', name: 'RejectedEntityInfo')
    RejectedLogEventsInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#RejectedLogEventsInfo', name: 'RejectedLogEventsInfo')
    RenameKeyEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#RenameKeyEntries', name: 'RenameKeyEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RenameKeyEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#RenameKeyEntry', name: 'RenameKeyEntry')
    RenameKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#RenameKeys', name: 'RenameKeys')
    RenameTo = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#RenameTo', name: 'RenameTo', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#RequestId', name: 'RequestId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceArns', name: 'ResourceArns')
    ResourceConfig = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceConfig', name: 'ResourceConfig')
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w+=/:,.@\\-\\*]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourcePolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourcePolicies', name: 'ResourcePolicies')
    ResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourcePolicy', name: 'ResourcePolicy')
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w-_]*$"})
    ResourceTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#ResourceTypes', name: 'ResourceTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResultField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ResultField', name: 'ResultField')
    ResultRows = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#ResultRows', name: 'ResultRows')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1}})
    S3DeliveryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#S3DeliveryConfiguration', name: 'S3DeliveryConfiguration')
    Scope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#Scope', name: 'Scope')
    SearchedLogStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SearchedLogStream', name: 'SearchedLogStream')
    SearchedLogStreams = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#SearchedLogStreams', name: 'SearchedLogStreams')
    SelectionCriteria = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#SelectionCriteria', name: 'SelectionCriteria')
    SequenceToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#SequenceToken', name: 'SequenceToken', traits: {"smithy.api#length" => {"min" => 1}})
    Service = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Service', name: 'Service', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w_-]*$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client"})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server"})
    SessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SessionStreamingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SessionStreamingException', name: 'SessionStreamingException', traits: {"smithy.api#error" => "client"})
    SessionTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SessionTimeoutException', name: 'SessionTimeoutException', traits: {"smithy.api#error" => "client"})
    Source = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Source', name: 'Source', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SourceTimezone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#SourceTimezone', name: 'SourceTimezone', traits: {"smithy.api#length" => {"min" => 1}})
    SplitString = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SplitString', name: 'SplitString')
    SplitStringDelimiter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#SplitStringDelimiter', name: 'SplitStringDelimiter', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SplitStringEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#SplitStringEntries', name: 'SplitStringEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SplitStringEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SplitStringEntry', name: 'SplitStringEntry')
    StandardUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#StandardUnit', name: 'StandardUnit')
    StartFromHead = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#StartFromHead', name: 'StartFromHead')
    StartLiveTailLogGroupIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#StartLiveTailLogGroupIdentifiers', name: 'StartLiveTailLogGroupIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StartLiveTailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#StartLiveTailRequest', name: 'StartLiveTailRequest')
    StartLiveTailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#StartLiveTailResponse', name: 'StartLiveTailResponse')
    StartLiveTailResponseStream = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cloudwatchlogs#StartLiveTailResponseStream', name: 'StartLiveTailResponseStream', traits: {"smithy.api#streaming" => {}})
    StartQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#StartQueryRequest', name: 'StartQueryRequest')
    StartQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#StartQueryResponse', name: 'StartQueryResponse')
    State = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#State', name: 'State')
    StatsValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudwatchlogs#StatsValue', name: 'StatsValue', traits: {"smithy.api#default" => 0})
    StopQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#StopQueryRequest', name: 'StopQueryRequest')
    StopQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#StopQueryResponse', name: 'StopQueryResponse')
    StoredBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#StoredBytes', name: 'StoredBytes', traits: {"smithy.api#range" => {"min" => 0}})
    SubscriptionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SubscriptionFilter', name: 'SubscriptionFilter')
    SubscriptionFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#SubscriptionFilters', name: 'SubscriptionFilters')
    SubstituteString = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SubstituteString', name: 'SubstituteString')
    SubstituteStringEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#SubstituteStringEntries', name: 'SubstituteStringEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SubstituteStringEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SubstituteStringEntry', name: 'SubstituteStringEntry')
    Success = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Success', name: 'Success', traits: {"smithy.api#default" => false})
    SuppressionPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#SuppressionPeriod', name: 'SuppressionPeriod')
    SuppressionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#SuppressionState', name: 'SuppressionState')
    SuppressionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#SuppressionType', name: 'SuppressionType')
    SuppressionUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#SuppressionUnit', name: 'SuppressionUnit')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1}})
    TagLogGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TagLogGroupRequest', name: 'TagLogGroupRequest', traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model TagResourceRequest"}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudwatchlogs#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Target = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Target', name: 'Target', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 1}})
    TargetFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TargetFormat', name: 'TargetFormat', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TargetTimezone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TargetTimezone', name: 'TargetTimezone', traits: {"smithy.api#length" => {"min" => 1}})
    TestEventMessages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#TestEventMessages', name: 'TestEventMessages', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TestMetricFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TestMetricFilterRequest', name: 'TestMetricFilterRequest')
    TestMetricFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TestMetricFilterResponse', name: 'TestMetricFilterResponse')
    TestTransformerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TestTransformerRequest', name: 'TestTransformerRequest')
    TestTransformerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TestTransformerResponse', name: 'TestTransformerResponse')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    Time = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Time', name: 'Time', traits: {"smithy.api#length" => {"min" => 1}})
    Timestamp = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#Timestamp', name: 'Timestamp', traits: {"smithy.api#range" => {"min" => 0}})
    ToKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ToKey', name: 'ToKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Token', name: 'Token')
    TokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TokenString', name: 'TokenString', traits: {"smithy.api#length" => {"min" => 1}})
    TokenValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudwatchlogs#TokenValue', name: 'TokenValue', traits: {"smithy.api#default" => 0})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransformedEventMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#TransformedEventMessage', name: 'TransformedEventMessage', traits: {"smithy.api#length" => {"min" => 1}})
    TransformedLogRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TransformedLogRecord', name: 'TransformedLogRecord')
    TransformedLogs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#TransformedLogs', name: 'TransformedLogs')
    TrimString = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TrimString', name: 'TrimString')
    TrimStringWithKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#TrimStringWithKeys', name: 'TrimStringWithKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Type = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudwatchlogs#Type', name: 'Type')
    TypeConverter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TypeConverter', name: 'TypeConverter')
    TypeConverterEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#TypeConverterEntries', name: 'TypeConverterEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TypeConverterEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#TypeConverterEntry', name: 'TypeConverterEntry')
    Unmask = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudwatchlogs#Unmask', name: 'Unmask', traits: {"smithy.api#default" => false})
    UnrecognizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UnrecognizedClientException', name: 'UnrecognizedClientException', traits: {"smithy.api#error" => "client"})
    UntagLogGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UntagLogGroupRequest', name: 'UntagLogGroupRequest', traits: {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API model UntagResourceRequest"}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAnomalyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UpdateAnomalyRequest', name: 'UpdateAnomalyRequest')
    UpdateDeliveryConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UpdateDeliveryConfigurationRequest', name: 'UpdateDeliveryConfigurationRequest')
    UpdateDeliveryConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UpdateDeliveryConfigurationResponse', name: 'UpdateDeliveryConfigurationResponse')
    UpdateLogAnomalyDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UpdateLogAnomalyDetectorRequest', name: 'UpdateLogAnomalyDetectorRequest')
    UpperCaseString = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#UpperCaseString', name: 'UpperCaseString')
    UpperCaseStringWithKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudwatchlogs#UpperCaseStringWithKeys', name: 'UpperCaseStringWithKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudwatchlogs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    Value = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#Value', name: 'Value')
    ValueKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#ValueKey', name: 'ValueKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    WithKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudwatchlogs#WithKey', name: 'WithKey', traits: {"smithy.api#length" => {"min" => 1}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountPolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPolicy)
    AccountPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the account policy.</p>"}))
    AccountPolicy.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The policy document for this account policy.</p>\n         <p>The JSON specified in <code>policyDocument</code> can be up to 30,720 characters.</p>"}))
    AccountPolicy.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that this policy was most recently updated.</p>"}))
    AccountPolicy.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>The type of policy for this account policy.</p>"}))
    AccountPolicy.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The scope of the account policy.</p>"}))
    AccountPolicy.add_member(:selection_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectionCriteria, location_name: 'selectionCriteria', traits: {"smithy.api#documentation" => "<p>The log group selection criteria that is used for this policy.</p>"}))
    AccountPolicy.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that the policy applies to.</p>"}))
    AccountPolicy.type = Types::AccountPolicy
    AddKeyEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AddKeyEntry)
    AddKeyEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the new entry to be added to the log event</p>", "smithy.api#required" => {}}))
    AddKeyEntry.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AddKeyValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the new entry to be added to the log event</p>", "smithy.api#required" => {}}))
    AddKeyEntry.add_member(:overwrite_if_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: 'overwriteIfExists', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to overwrite the value if the key already exists in the log event. If\n      you omit this, the default is <code>false</code>.</p>"}))
    AddKeyEntry.type = Types::AddKeyEntry
    AddKeys.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: AddKeyEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of objects, where each object contains the information about one key to add to\n      the log event. </p>", "smithy.api#required" => {}}))
    AddKeys.type = Types::AddKeys
    AllowedFieldDelimiters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDelimiter)
    AllowedFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordField)
    Anomalies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Anomaly)
    Anomaly.add_member(:anomaly_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'anomalyId', traits: {"smithy.api#documentation" => "<p>The unique ID that CloudWatch Logs assigned to this anomaly.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternId, location_name: 'patternId', traits: {"smithy.api#documentation" => "<p>The ID of the pattern used to help identify this anomaly.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector that identified this anomaly.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_string, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternString, location_name: 'patternString', traits: {"smithy.api#documentation" => "<p>The pattern used to help identify this anomaly, in string format.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_regex, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternRegex, location_name: 'patternRegex', traits: {"smithy.api#documentation" => "<p>The pattern used to help identify this anomaly, in regular expression format.</p>"}))
    Anomaly.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority level of this anomaly, as determined by CloudWatch Logs. Priority is\n      computed based on log severity labels such as <code>FATAL</code> and <code>ERROR</code> and\n      the amount of deviation from the baseline. Possible values are <code>HIGH</code>,\n        <code>MEDIUM</code>, and <code>LOW</code>.</p>"}))
    Anomaly.add_member(:first_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'firstSeen', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date and time when the anomaly detector first saw this anomaly. It is specified as\n      epoch time, which is the number of seconds since <code>January 1, 1970, 00:00:00\n      UTC</code>.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:last_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'lastSeen', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date and time when the anomaly detector most recently saw this anomaly. It is\n      specified as epoch time, which is the number of seconds since <code>January 1, 1970, 00:00:00\n        UTC</code>.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A human-readable description of the anomaly. This description is generated by CloudWatch Logs.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Specifies whether this anomaly is still ongoing.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Indicates the current state of this anomaly. If it is still being treated as an anomaly,\n      the value is <code>Active</code>. If you have suppressed this anomaly by using the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateAnomaly.html\">UpdateAnomaly</a> operation, the value is <code>Suppressed</code>. If this behavior is\n      now considered to be normal, the value is <code>Baseline</code>.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:histogram, Smithy::Schema::Shapes::ShapeRef.new(shape: Histogram, location_name: 'histogram', traits: {"smithy.api#documentation" => "<p>A map showing times when the anomaly detector ran, and the number of occurrences of this\n      anomaly that were detected at each of those runs. The times are specified in epoch time, which\n      is the number of seconds since <code>January 1, 1970, 00:00:00 UTC</code>.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:log_samples, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSamples, location_name: 'logSamples', traits: {"smithy.api#documentation" => "<p>An array of sample log event messages that are considered to be part of this\n      anomaly.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:pattern_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternTokens, location_name: 'patternTokens', traits: {"smithy.api#documentation" => "<p>An array of structures where each structure contains information about one token that\n      makes up the pattern.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:log_group_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArnList, location_name: 'logGroupArnList', traits: {"smithy.api#documentation" => "<p>An array of ARNS of the log groups that contained log events considered to be part of this\n      anomaly.</p>", "smithy.api#required" => {}}))
    Anomaly.add_member(:suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'suppressed', traits: {"smithy.api#documentation" => "<p>Indicates whether this anomaly is currently suppressed. To suppress an anomaly, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateAnomaly.html\">UpdateAnomaly</a>.</p>"}))
    Anomaly.add_member(:suppressed_date, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'suppressedDate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>If the anomaly is suppressed, this indicates when it was suppressed.</p>"}))
    Anomaly.add_member(:suppressed_until, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'suppressedUntil', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>If the anomaly is suppressed, this indicates when the suppression will end. If this value\n      is <code>0</code>, the anomaly was suppressed with no expiration, with the\n        <code>INFINITE</code> value.</p>"}))
    Anomaly.add_member(:is_pattern_level_suppression, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isPatternLevelSuppression', traits: {"smithy.api#documentation" => "<p>If this anomaly is suppressed, this field is <code>true</code> if the suppression is\n      because the pattern is suppressed. If <code>false</code>, then only this particular anomaly is\n      suppressed.</p>"}))
    Anomaly.type = Types::Anomaly
    AnomalyDetector.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector.</p>"}))
    AnomalyDetector.add_member(:detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorName, location_name: 'detectorName', traits: {"smithy.api#documentation" => "<p>The name of the anomaly detector.</p>"}))
    AnomalyDetector.add_member(:log_group_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArnList, location_name: 'logGroupArnList', traits: {"smithy.api#documentation" => "<p>A list of the ARNs of the log groups that this anomaly detector watches.</p>"}))
    AnomalyDetector.add_member(:evaluation_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: 'evaluationFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often the anomaly detector runs and look for anomalies.</p>"}))
    AnomalyDetector.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern'))
    AnomalyDetector.add_member(:anomaly_detector_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: 'anomalyDetectorStatus', traits: {"smithy.api#documentation" => "<p>Specifies the current status of the anomaly detector. To pause an anomaly detector, use\n      the <code>enabled</code> parameter in the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateLogAnomalyDetector.html\">UpdateLogAnomalyDetector</a> operation.</p>"}))
    AnomalyDetector.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key assigned to this anomaly detector, if any.</p>"}))
    AnomalyDetector.add_member(:creation_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'creationTimeStamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date and time when this anomaly detector was created.</p>"}))
    AnomalyDetector.add_member(:last_modified_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'lastModifiedTimeStamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date and time when this anomaly detector was most recently modified.</p>"}))
    AnomalyDetector.add_member(:anomaly_visibility_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: 'anomalyVisibilityTime', traits: {"smithy.api#documentation" => "<p>The number of days used as the life cycle of anomalies. After this time, anomalies are\n      automatically baselined and the anomaly detector model will treat new occurrences of similar\n      event as normal. </p>"}))
    AnomalyDetector.type = Types::AnomalyDetector
    AnomalyDetectorStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    AnomalyDetectorStatus.add_member(:training, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING', traits: {"smithy.api#enumValue" => "TRAINING"}))
    AnomalyDetectorStatus.add_member(:analyzing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYZING', traits: {"smithy.api#enumValue" => "ANALYZING"}))
    AnomalyDetectorStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AnomalyDetectorStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    AnomalyDetectorStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    AnomalyDetectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetector)
    AssociateKmsKeyRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>\n         <p>In your <code>AssociateKmsKey</code> operation, you must specify either the\n        <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you\n      can't specify both.</p>"}))
    AssociateKmsKeyRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to use when encrypting log\n      data. This must be a symmetric KMS key. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms\">Amazon Resource Names</a> and <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using Symmetric and Asymmetric\n        Keys</a>.</p>", "smithy.api#required" => {}}))
    AssociateKmsKeyRequest.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the target for this operation. You must specify one of the following:</p>\n         <ul>\n            <li>\n               <p>Specify the following ARN to have future <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html\">GetQueryResults</a> operations in this account encrypt the results with the\n          specified KMS key. Replace <i>REGION</i> and\n            <i>ACCOUNT_ID</i> with your Region and account ID.</p>\n               <p>\n                  <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:query-result:*</code>\n               </p>\n            </li>\n            <li>\n               <p>Specify the ARN of a log group to have CloudWatch Logs use the KMS key to encrypt log events that are ingested and stored by that log\n          group. The log group ARN must be in the following format. Replace\n            <i>REGION</i> and <i>ACCOUNT_ID</i> with your Region and\n          account ID.</p>\n               <p>\n                  <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:log-group:<i>LOG_GROUP_NAME</i>\n                  </code>\n               </p>\n            </li>\n         </ul>\n         <p>In your <code>AssociateKmsKey</code> operation, you must specify either the\n        <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you\n      can't specify both.</p>"}))
    AssociateKmsKeyRequest.type = Types::AssociateKmsKeyRequest
    CSV.add_member(:quote_character, Smithy::Schema::Shapes::ShapeRef.new(shape: QuoteCharacter, location_name: 'quoteCharacter', traits: {"smithy.api#documentation" => "<p>The character used used as a text qualifier for a single column of data. If you omit this,\n      the double quotation mark <code>\"</code> character is used.</p>"}))
    CSV.add_member(:delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: Delimiter, location_name: 'delimiter', traits: {"smithy.api#documentation" => "<p>The character used to separate each column in the original comma-separated value log\n      event. If you omit this, the processor looks for the comma <code>,</code> character as the\n      delimiter.</p>"}))
    CSV.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: Columns, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>An array of names to use for the columns in the transformed log event.</p>\n         <p>If you omit this, default column names (<code>[column_1, column_2 ...]</code>) are\n      used.</p>"}))
    CSV.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The path to the field in the log event that has the comma separated values to be parsed.\n      If you omit this value, the whole log message is processed.</p>"}))
    CSV.type = Types::CSV
    CancelExportTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the export task.</p>", "smithy.api#required" => {}}))
    CancelExportTaskRequest.type = Types::CancelExportTaskRequest
    Columns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Column)
    ConfigurationTemplate.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>A string specifying which service this configuration template applies to. For more\n      information about supported services see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html\">Enable logging from\n          Amazon Web Services services.</a>.</p>"}))
    ConfigurationTemplate.add_member(:log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#documentation" => "<p>A string specifying which log type this configuration template applies to.</p>"}))
    ConfigurationTemplate.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>A string specifying which resource type this configuration template applies to.</p>"}))
    ConfigurationTemplate.add_member(:delivery_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: 'deliveryDestinationType', traits: {"smithy.api#documentation" => "<p>A string specifying which destination type this configuration template applies to.</p>"}))
    ConfigurationTemplate.add_member(:default_delivery_config_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateDeliveryConfigValues, location_name: 'defaultDeliveryConfigValues', traits: {"smithy.api#documentation" => "<p>A mapping that displays the default value of each property within a delivery's\n      configuration, if it is not specified in the request.</p>"}))
    ConfigurationTemplate.add_member(:allowed_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedFields, location_name: 'allowedFields', traits: {"smithy.api#documentation" => "<p>The allowed fields that a caller can use in the <code>recordFields</code> parameter of a\n        <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html\">CreateDelivery</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html\">UpdateDeliveryConfiguration</a> operation.</p>"}))
    ConfigurationTemplate.add_member(:allowed_output_formats, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormats, location_name: 'allowedOutputFormats', traits: {"smithy.api#documentation" => "<p>The list of delivery destination output formats that are supported by this log\n      source.</p>"}))
    ConfigurationTemplate.add_member(:allowed_action_for_allow_vended_logs_delivery_for_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedActionForAllowVendedLogsDeliveryForResource, location_name: 'allowedActionForAllowVendedLogsDeliveryForResource', traits: {"smithy.api#documentation" => "<p>The action permissions that a caller needs to have to be able to successfully create a\n      delivery source on the desired resource type when calling <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html\">PutDeliverySource</a>.</p>"}))
    ConfigurationTemplate.add_member(:allowed_field_delimiters, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedFieldDelimiters, location_name: 'allowedFieldDelimiters', traits: {"smithy.api#documentation" => "<p>The valid values that a caller can use as field delimiters when calling <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html\">CreateDelivery</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html\">UpdateDeliveryConfiguration</a> on a delivery that delivers in <code>Plain</code>,\n        <code>W3C</code>, or <code>Raw</code> format.</p>"}))
    ConfigurationTemplate.add_member(:allowed_suffix_path_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFields, location_name: 'allowedSuffixPathFields', traits: {"smithy.api#documentation" => "<p>The list of variable fields that can be used in the suffix path of a delivery that\n      delivers to an S3 bucket.</p>"}))
    ConfigurationTemplate.type = Types::ConfigurationTemplate
    ConfigurationTemplateDeliveryConfigValues.add_member(:record_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFields, location_name: 'recordFields', traits: {"smithy.api#documentation" => "<p>The default record fields that will be delivered when a list of record fields is not\n      provided in a <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html\">CreateDelivery</a> operation.</p>"}))
    ConfigurationTemplateDeliveryConfigValues.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: 'fieldDelimiter', traits: {"smithy.api#documentation" => "<p>The default field delimiter that is used in a <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html\">CreateDelivery</a> operation when the field delimiter is not specified in that\n      operation. The field delimiter is used only when the final output delivery is in\n        <code>Plain</code>, <code>W3C</code>, or <code>Raw</code> format.</p>"}))
    ConfigurationTemplateDeliveryConfigValues.add_member(:s3_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: 's3DeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>The delivery parameters that are used when you create a delivery to a delivery destination\n      that is an S3 Bucket.</p>"}))
    ConfigurationTemplateDeliveryConfigValues.type = Types::ConfigurationTemplateDeliveryConfigValues
    ConfigurationTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplate)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CopyValue.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyValueEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of <code>CopyValueEntry</code> objects, where each object contains the\n      information about one field value to copy. </p>", "smithy.api#required" => {}}))
    CopyValue.type = Types::CopyValue
    CopyValueEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyValueEntry)
    CopyValueEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The key to copy.</p>", "smithy.api#required" => {}}))
    CopyValueEntry.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The key of the field to copy the value to.</p>", "smithy.api#required" => {}}))
    CopyValueEntry.add_member(:overwrite_if_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: 'overwriteIfExists', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to overwrite the value if the destination key already exists. If you\n      omit this, the default is <code>false</code>.</p>"}))
    CopyValueEntry.type = Types::CopyValueEntry
    CreateDeliveryRequest.add_member(:delivery_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: 'deliverySourceName', traits: {"smithy.api#documentation" => "<p>The name of the delivery source to use for this delivery.</p>", "smithy.api#required" => {}}))
    CreateDeliveryRequest.add_member(:delivery_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'deliveryDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the delivery destination to use for this delivery.</p>", "smithy.api#required" => {}}))
    CreateDeliveryRequest.add_member(:record_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFields, location_name: 'recordFields', traits: {"smithy.api#documentation" => "<p>The list of record fields to be delivered to the destination, in order. If the delivery's\n      log source has mandatory fields, they must be included in this list.</p>"}))
    CreateDeliveryRequest.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: 'fieldDelimiter', traits: {"smithy.api#documentation" => "<p>The field delimiter to use between record fields when the final output format of a\n      delivery is in <code>Plain</code>, <code>W3C</code>, or <code>Raw</code> format.</p>"}))
    CreateDeliveryRequest.add_member(:s3_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: 's3DeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>This structure contains parameters that are valid only when the delivery's delivery\n      destination is an S3 bucket.</p>"}))
    CreateDeliveryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of key-value pairs to associate with the resource.</p>\n         <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n         </p>"}))
    CreateDeliveryRequest.type = Types::CreateDeliveryRequest
    CreateDeliveryResponse.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Delivery, location_name: 'delivery', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the delivery that you just created.</p>"}))
    CreateDeliveryResponse.type = Types::CreateDeliveryResponse
    CreateExportTaskRequest.add_member(:task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskName, location_name: 'taskName', traits: {"smithy.api#documentation" => "<p>The name of the export task.</p>"}))
    CreateExportTaskRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:log_stream_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamNamePrefix', traits: {"smithy.api#documentation" => "<p>Export only log streams that match the provided prefix. If you don't specify a value,\n      no prefix filter is applied.</p>"}))
    CreateExportTaskRequest.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The start time of the range for the request, expressed as the number of milliseconds\n      after <code>Jan 1, 1970 00:00:00 UTC</code>. Events with a timestamp earlier than this time\n      are not exported.</p>", "smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'to', traits: {"smithy.api#documentation" => "<p>The end time of the range for the request, expressed as the number of milliseconds\n      after <code>Jan 1, 1970 00:00:00 UTC</code>. Events with a timestamp later than this time are\n      not exported.</p>\n         <p>You must specify a time that is not earlier than when this log group was created.</p>", "smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationBucket, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The name of S3 bucket for the exported log data. The bucket must be in the same Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateExportTaskRequest.add_member(:destination_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationPrefix, location_name: 'destinationPrefix', traits: {"smithy.api#documentation" => "<p>The prefix used as the start of the key for every object exported. If you don't specify\n      a value, the default is <code>exportedlogs</code>.</p>\n         <p>The length of this parameter must comply with the S3 object key name length limits. The\n      object key name is a sequence of Unicode characters with UTF-8 encoding, and can be up to\n      1,024 bytes.</p>"}))
    CreateExportTaskRequest.type = Types::CreateExportTaskRequest
    CreateExportTaskResponse.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the export task.</p>"}))
    CreateExportTaskResponse.type = Types::CreateExportTaskResponse
    CreateLogAnomalyDetectorRequest.add_member(:log_group_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArnList, location_name: 'logGroupArnList', traits: {"smithy.api#documentation" => "<p>An array containing the ARN of the log group that this anomaly detector will watch. You\n      can specify only one log group ARN.</p>", "smithy.api#required" => {}}))
    CreateLogAnomalyDetectorRequest.add_member(:detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorName, location_name: 'detectorName', traits: {"smithy.api#documentation" => "<p>A name for this anomaly detector.</p>"}))
    CreateLogAnomalyDetectorRequest.add_member(:evaluation_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: 'evaluationFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often the anomaly detector is to run and look for anomalies. Set this value\n      according to the frequency that the log group receives new logs. For example, if the log group\n      receives new log events every 10 minutes, then 15 minutes might be a good setting for\n        <code>evaluationFrequency</code> .</p>"}))
    CreateLogAnomalyDetectorRequest.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern', traits: {"smithy.api#documentation" => "<p>You can use this parameter to limit the anomaly detection model to examine only log events\n      that match the pattern you specify here. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html\">Filter and Pattern\n        Syntax</a>.</p>"}))
    CreateLogAnomalyDetectorRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorKmsKeyArn, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>Optionally assigns a KMS key to secure this anomaly detector and its\n      findings. If a key is assigned, the anomalies found and the model used by this detector are\n      encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have\n      permissions for both this key and for the anomaly detector to retrieve information about the\n      anomalies that it finds.</p>\n         <p> Make sure the value provided is a valid KMS key ARN. For more information\n      about using a KMS key and to see the required IAM policy, see\n        <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/LogsAnomalyDetection-KMS.html\">Use a KMS key with an anomaly detector</a>.</p>"}))
    CreateLogAnomalyDetectorRequest.add_member(:anomaly_visibility_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: 'anomalyVisibilityTime', traits: {"smithy.api#documentation" => "<p>The number of days to have visibility on an anomaly. After this time period has elapsed\n      for an anomaly, it will be automatically baselined and the anomaly detector will treat new\n      occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an\n      anomaly during the time period specified in <code>anomalyVisibilityTime</code>, it will be\n      considered normal going forward and will not be detected as an anomaly.</p>"}))
    CreateLogAnomalyDetectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of key-value pairs to associate with the resource.</p>\n         <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n         </p>"}))
    CreateLogAnomalyDetectorRequest.type = Types::CreateLogAnomalyDetectorRequest
    CreateLogAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the log anomaly detector that you just created.</p>"}))
    CreateLogAnomalyDetectorResponse.type = Types::CreateLogAnomalyDetectorResponse
    CreateLogGroupRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>A name for the log group.</p>", "smithy.api#required" => {}}))
    CreateLogGroupRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to use when encrypting log\n      data. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms\">Amazon Resource\n        Names</a>.</p>"}))
    CreateLogGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to use for the tags.</p>\n         <p>You can grant users access to certain log groups while preventing them from accessing\n      other log groups. To do so, tag your groups and use IAM policies that refer to\n      those tags. To assign tags when you create a log group, you must have either the\n        <code>logs:TagResource</code> or <code>logs:TagLogGroup</code> permission. For more\n      information about tagging, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>. For\n      more information about using tags to control access, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Controlling access to Amazon Web Services\n        resources using tags</a>.</p>"}))
    CreateLogGroupRequest.add_member(:log_group_class, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupClass, location_name: 'logGroupClass', traits: {"smithy.api#documentation" => "<p>Use this parameter to specify the log group class for this log group. There are three\n      classes:</p>\n         <ul>\n            <li>\n               <p>The <code>Standard</code> log class supports all CloudWatch Logs features.</p>\n            </li>\n            <li>\n               <p>The <code>Infrequent Access</code> log class supports a subset of CloudWatch Logs\n          features and incurs lower costs.</p>\n            </li>\n            <li>\n               <p>Use the <code>Delivery</code> log class only for delivering Lambda\n          logs to store in Amazon S3 or Amazon Data Firehose. Log events in log groups in\n          the Delivery class are kept in CloudWatch Logs for only one day. This log class doesn't\n          offer rich CloudWatch Logs capabilities such as CloudWatch Logs Insights\n          queries.</p>\n            </li>\n         </ul>\n         <p>If you omit this parameter, the default of <code>STANDARD</code> is used.</p>\n         <important>\n            <p>The value of <code>logGroupClass</code> can't be changed after a log group is\n        created.</p>\n         </important>\n         <p>For details about the features supported by each class, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html\">Log classes</a>\n         </p>"}))
    CreateLogGroupRequest.type = Types::CreateLogGroupRequest
    CreateLogStreamRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    CreateLogStreamRequest.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream.</p>", "smithy.api#required" => {}}))
    CreateLogStreamRequest.type = Types::CreateLogStreamRequest
    DashboardViewerPrincipals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    DataAlreadyAcceptedException.add_member(:expected_sequence_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceToken, location_name: 'expectedSequenceToken'))
    DataAlreadyAcceptedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    DataAlreadyAcceptedException.type = Types::DataAlreadyAcceptedException
    DataProtectionStatus.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATED', traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    DataProtectionStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    DataProtectionStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    DataProtectionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DateTimeConverter.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The key to apply the date conversion to.</p>", "smithy.api#required" => {}}))
    DateTimeConverter.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The JSON field to store the result in.</p>", "smithy.api#required" => {}}))
    DateTimeConverter.add_member(:target_format, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFormat, location_name: 'targetFormat', traits: {"smithy.api#documentation" => "<p>The datetime format to use for the converted data in the target field.</p>\n         <p>If you omit this, the default of <code> yyyy-MM-dd'T'HH:mm:ss.SSS'Z</code> is used.</p>"}))
    DateTimeConverter.add_member(:match_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchPatterns, location_name: 'matchPatterns', traits: {"smithy.api#documentation" => "<p>A list of patterns to match against the <code>source</code> field.</p>", "smithy.api#required" => {}}))
    DateTimeConverter.add_member(:source_timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceTimezone, location_name: 'sourceTimezone', traits: {"smithy.api#documentation" => "<p>The time zone of the source field. If you omit this, the default used is the UTC\n      zone.</p>"}))
    DateTimeConverter.add_member(:target_timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTimezone, location_name: 'targetTimezone', traits: {"smithy.api#documentation" => "<p>The time zone of the target field. If you omit this, the default used is the UTC\n      zone.</p>"}))
    DateTimeConverter.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale of the source field. If you omit this, the default of <code>locale.ROOT</code>\n      is used.</p>"}))
    DateTimeConverter.type = Types::DateTimeConverter
    DeleteAccountPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the policy to delete.</p>", "smithy.api#required" => {}}))
    DeleteAccountPolicyRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>The type of policy to delete.</p>", "smithy.api#required" => {}}))
    DeleteAccountPolicyRequest.type = Types::DeleteAccountPolicyRequest
    DeleteDataProtectionPolicyRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ARN of the log group that you want to delete the data protection policy\n      for.</p>", "smithy.api#required" => {}}))
    DeleteDataProtectionPolicyRequest.type = Types::DeleteDataProtectionPolicyRequest
    DeleteDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'deliveryDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the delivery destination that you want to delete the policy for.</p>", "smithy.api#required" => {}}))
    DeleteDeliveryDestinationPolicyRequest.type = Types::DeleteDeliveryDestinationPolicyRequest
    DeleteDeliveryDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the delivery destination that you want to delete. You can find a list of\n      delivery destination names by using the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveryDestinations.html\">DescribeDeliveryDestinations</a> operation.</p>", "smithy.api#required" => {}}))
    DeleteDeliveryDestinationRequest.type = Types::DeleteDeliveryDestinationRequest
    DeleteDeliveryRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the delivery to delete. You can find the ID of a delivery with the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html\">DescribeDeliveries</a> operation.</p>", "smithy.api#required" => {}}))
    DeleteDeliveryRequest.type = Types::DeleteDeliveryRequest
    DeleteDeliverySourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the delivery source that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteDeliverySourceRequest.type = Types::DeleteDeliverySourceRequest
    DeleteDestinationRequest.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The name of the destination.</p>", "smithy.api#required" => {}}))
    DeleteDestinationRequest.type = Types::DeleteDestinationRequest
    DeleteIndexPolicyRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The log group to delete the index policy for. You can specify either the name or the ARN\n      of the log group.</p>", "smithy.api#required" => {}}))
    DeleteIndexPolicyRequest.type = Types::DeleteIndexPolicyRequest
    DeleteIndexPolicyResponse.type = Types::DeleteIndexPolicyResponse
    DeleteIntegrationRequest.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'integrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration to delete. To find the name of your integration, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html\">ListIntegrations</a>.</p>", "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Force, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specify <code>true</code> to force the deletion of the integration even if vended logs\n      dashboards currently exist.</p>\n         <p>The default is <code>false</code>.</p>"}))
    DeleteIntegrationRequest.type = Types::DeleteIntegrationRequest
    DeleteIntegrationResponse.type = Types::DeleteIntegrationResponse
    DeleteKeys.add_member(:with_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWithKeys, location_name: 'withKeys', traits: {"smithy.api#documentation" => "<p>The list of keys to delete.</p>", "smithy.api#required" => {}}))
    DeleteKeys.type = Types::DeleteKeys
    DeleteLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector to delete. You can find the ARNs of log anomaly detectors\n      in your account by using the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html\">ListLogAnomalyDetectors</a> operation.</p>", "smithy.api#required" => {}}))
    DeleteLogAnomalyDetectorRequest.type = Types::DeleteLogAnomalyDetectorRequest
    DeleteLogGroupRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    DeleteLogGroupRequest.type = Types::DeleteLogGroupRequest
    DeleteLogStreamRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    DeleteLogStreamRequest.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream.</p>", "smithy.api#required" => {}}))
    DeleteLogStreamRequest.type = Types::DeleteLogStreamRequest
    DeleteMetricFilterRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    DeleteMetricFilterRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterName', traits: {"smithy.api#documentation" => "<p>The name of the metric filter.</p>", "smithy.api#required" => {}}))
    DeleteMetricFilterRequest.type = Types::DeleteMetricFilterRequest
    DeleteQueryDefinitionRequest.add_member(:query_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the query definition that you want to delete. You can use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html\">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query\n      definitions.</p>", "smithy.api#required" => {}}))
    DeleteQueryDefinitionRequest.type = Types::DeleteQueryDefinitionRequest
    DeleteQueryDefinitionResponse.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Success, location_name: 'success', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A value of TRUE indicates that the operation succeeded. FALSE indicates that the operation\n      failed.</p>"}))
    DeleteQueryDefinitionResponse.type = Types::DeleteQueryDefinitionResponse
    DeleteResourcePolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the policy to be revoked. This parameter is required.</p>"}))
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Logs resource for which the resource policy needs to be deleted</p>"}))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: 'expectedRevisionId', traits: {"smithy.api#documentation" => "<p>The expected revision ID of the resource policy. Required when deleting a resource-scoped policy to prevent concurrent modifications.</p>"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteRetentionPolicyRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    DeleteRetentionPolicyRequest.type = Types::DeleteRetentionPolicyRequest
    DeleteSubscriptionFilterRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    DeleteSubscriptionFilterRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterName', traits: {"smithy.api#documentation" => "<p>The name of the subscription filter.</p>", "smithy.api#required" => {}}))
    DeleteSubscriptionFilterRequest.type = Types::DeleteSubscriptionFilterRequest
    DeleteTransformerRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to delete the transformer for. If the log\n      group is in a source account and you are using a monitoring account, you must use the log\n      group ARN.</p>", "smithy.api#required" => {}}))
    DeleteTransformerRequest.type = Types::DeleteTransformerRequest
    DeleteWithKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WithKey)
    Deliveries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Delivery)
    Delivery.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID that identifies this delivery in your account.</p>"}))
    Delivery.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies this delivery.</p>"}))
    Delivery.add_member(:delivery_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: 'deliverySourceName', traits: {"smithy.api#documentation" => "<p>The name of the delivery source that is associated with this delivery.</p>"}))
    Delivery.add_member(:delivery_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'deliveryDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the delivery destination that is associated with this delivery.</p>"}))
    Delivery.add_member(:delivery_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: 'deliveryDestinationType', traits: {"smithy.api#documentation" => "<p>Displays whether the delivery destination associated with this delivery is CloudWatch Logs, Amazon S3, Firehose,  or X-Ray.</p>"}))
    Delivery.add_member(:record_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFields, location_name: 'recordFields', traits: {"smithy.api#documentation" => "<p>The record fields used in this delivery.</p>"}))
    Delivery.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: 'fieldDelimiter', traits: {"smithy.api#documentation" => "<p>The field delimiter that is used between record fields when the final output format of a\n      delivery is in <code>Plain</code>, <code>W3C</code>, or <code>Raw</code> format.</p>"}))
    Delivery.add_member(:s3_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: 's3DeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>This structure contains delivery configurations that apply only when the delivery\n      destination resource is an S3 bucket.</p>"}))
    Delivery.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that have been assigned to this delivery.</p>"}))
    Delivery.type = Types::Delivery
    DeliveryDestination.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this delivery destination.</p>"}))
    DeliveryDestination.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies this delivery destination.</p>"}))
    DeliveryDestination.add_member(:delivery_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: 'deliveryDestinationType', traits: {"smithy.api#documentation" => "<p>Displays whether this delivery destination is CloudWatch Logs, Amazon S3, Firehose, or X-Ray.</p>"}))
    DeliveryDestination.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'outputFormat', traits: {"smithy.api#documentation" => "<p>The format of the logs that are sent to this delivery destination. </p>"}))
    DeliveryDestination.add_member(:delivery_destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationConfiguration, location_name: 'deliveryDestinationConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains the ARN of the Amazon Web Services resource that will receive the\n      logs.</p>"}))
    DeliveryDestination.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that have been assigned to this delivery destination.</p>"}))
    DeliveryDestination.type = Types::DeliveryDestination
    DeliveryDestinationConfiguration.add_member(:destination_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'destinationResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Web Services destination that this delivery destination represents.\n      That Amazon Web Services destination can be a log group in CloudWatch Logs, an Amazon S3 bucket, or a delivery stream in Firehose.</p>", "smithy.api#required" => {}}))
    DeliveryDestinationConfiguration.type = Types::DeliveryDestinationConfiguration
    DeliveryDestinationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    DeliveryDestinationType.add_member(:cwl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CWL', traits: {"smithy.api#enumValue" => "CWL"}))
    DeliveryDestinationType.add_member(:fh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FH', traits: {"smithy.api#enumValue" => "FH"}))
    DeliveryDestinationType.add_member(:xray, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XRAY', traits: {"smithy.api#enumValue" => "XRAY"}))
    DeliveryDestinationTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationType)
    DeliveryDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestination)
    DeliverySource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The unique name of the delivery source.</p>"}))
    DeliverySource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies this delivery source.</p>"}))
    DeliverySource.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>This array contains the ARN of the Amazon Web Services resource that sends logs and is\n      represented by this delivery source. Currently, only one ARN can be in the array.</p>"}))
    DeliverySource.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service that is sending logs.</p>"}))
    DeliverySource.add_member(:log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#documentation" => "<p>The type of log that the source is sending. For valid values for this parameter, see the\n      documentation for the source service.</p>"}))
    DeliverySource.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that have been assigned to this delivery source.</p>"}))
    DeliverySource.type = Types::DeliverySource
    DeliverySources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySource)
    DescribeAccountPoliciesRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>Use this parameter to limit the returned policies to only the policies that match the\n      policy type that you specify.</p>", "smithy.api#required" => {}}))
    DescribeAccountPoliciesRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>Use this parameter to limit the returned policies to only the policy with the name that\n      you specify.</p>"}))
    DescribeAccountPoliciesRequest.add_member(:account_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIdentifiers', traits: {"smithy.api#documentation" => "<p>If you are using an account that is set up as a monitoring account for CloudWatch\n      unified cross-account observability, you can use this to specify the account ID of a source\n      account. If you do, the operation returns the account policy for the specified account.\n      Currently, you can specify only one account ID in this parameter.</p>\n         <p>If you omit this parameter, only the policy in the current account is returned.</p>"}))
    DescribeAccountPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeAccountPoliciesRequest.type = Types::DescribeAccountPoliciesRequest
    DescribeAccountPoliciesResponse.add_member(:account_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPolicies, location_name: 'accountPolicies', traits: {"smithy.api#documentation" => "<p>An array of structures that contain information about the CloudWatch Logs account\n      policies that match the specified filters.</p>"}))
    DescribeAccountPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of items. The token expires after 24\n      hours.</p>"}))
    DescribeAccountPoliciesResponse.type = Types::DescribeAccountPoliciesResponse
    DescribeConfigurationTemplatesRequest.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'service', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter the response to include only the configuration templates that\n      apply to the Amazon Web Services service that you specify here.</p>"}))
    DescribeConfigurationTemplatesRequest.add_member(:log_types, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypes, location_name: 'logTypes', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter the response to include only the configuration templates that\n      apply to the log types that you specify here.</p>"}))
    DescribeConfigurationTemplatesRequest.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypes, location_name: 'resourceTypes', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter the response to include only the configuration templates that\n      apply to the resource types that you specify here.</p>"}))
    DescribeConfigurationTemplatesRequest.add_member(:delivery_destination_types, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationTypes, location_name: 'deliveryDestinationTypes', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter the response to include only the configuration templates that\n      apply to the delivery destination types that you specify here.</p>"}))
    DescribeConfigurationTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeConfigurationTemplatesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>Use this parameter to limit the number of configuration templates that are returned in the\n      response.</p>"}))
    DescribeConfigurationTemplatesRequest.type = Types::DescribeConfigurationTemplatesRequest
    DescribeConfigurationTemplatesResponse.add_member(:configuration_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplates, location_name: 'configurationTemplates', traits: {"smithy.api#documentation" => "<p>An array of objects, where each object describes one configuration template that matches\n      the filters that you specified in the request.</p>"}))
    DescribeConfigurationTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeConfigurationTemplatesResponse.type = Types::DescribeConfigurationTemplatesResponse
    DescribeDeliveriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDeliveriesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>Optionally specify the maximum number of deliveries to return in the response.</p>"}))
    DescribeDeliveriesRequest.type = Types::DescribeDeliveriesRequest
    DescribeDeliveriesResponse.add_member(:deliveries, Smithy::Schema::Shapes::ShapeRef.new(shape: Deliveries, location_name: 'deliveries', traits: {"smithy.api#documentation" => "<p>An array of structures. Each structure contains information about one delivery in the\n      account.</p>"}))
    DescribeDeliveriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDeliveriesResponse.type = Types::DescribeDeliveriesResponse
    DescribeDeliveryDestinationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDeliveryDestinationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>Optionally specify the maximum number of delivery destinations to return in the\n      response.</p>"}))
    DescribeDeliveryDestinationsRequest.type = Types::DescribeDeliveryDestinationsRequest
    DescribeDeliveryDestinationsResponse.add_member(:delivery_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinations, location_name: 'deliveryDestinations', traits: {"smithy.api#documentation" => "<p>An array of structures. Each structure contains information about one delivery destination\n      in the account.</p>"}))
    DescribeDeliveryDestinationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDeliveryDestinationsResponse.type = Types::DescribeDeliveryDestinationsResponse
    DescribeDeliverySourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDeliverySourcesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>Optionally specify the maximum number of delivery sources to return in the\n      response.</p>"}))
    DescribeDeliverySourcesRequest.type = Types::DescribeDeliverySourcesRequest
    DescribeDeliverySourcesResponse.add_member(:delivery_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySources, location_name: 'deliverySources', traits: {"smithy.api#documentation" => "<p>An array of structures. Each structure contains information about one delivery source in\n      the account.</p>"}))
    DescribeDeliverySourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDeliverySourcesResponse.type = Types::DescribeDeliverySourcesResponse
    DescribeDestinationsRequest.add_member(:destination_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationName, location_name: 'DestinationNamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix to match. If you don't specify a value, no prefix filter is\n      applied.</p>"}))
    DescribeDestinationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeDestinationsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned. If you don't specify a value, the default maximum\n      value of 50 items is used.</p>"}))
    DescribeDestinationsRequest.type = Types::DescribeDestinationsRequest
    DescribeDestinationsResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>The destinations.</p>"}))
    DescribeDestinationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeDestinationsResponse.type = Types::DescribeDestinationsResponse
    DescribeExportTasksRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the export task. Specifying a task ID filters the results to one or zero\n      export tasks.</p>"}))
    DescribeExportTasksRequest.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code of the export task. Specifying a status code filters the results to\n      zero or more export tasks.</p>"}))
    DescribeExportTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeExportTasksRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned. If you don't specify a value, the default is up\n      to 50 items.</p>"}))
    DescribeExportTasksRequest.type = Types::DescribeExportTasksRequest
    DescribeExportTasksResponse.add_member(:export_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTasks, location_name: 'exportTasks', traits: {"smithy.api#documentation" => "<p>The export tasks.</p>"}))
    DescribeExportTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeExportTasksResponse.type = Types::DescribeExportTasksResponse
    DescribeFieldIndexesLogGroupIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier)
    DescribeFieldIndexesRequest.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFieldIndexesLogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>An array containing the names or ARNs of the log groups that you want to retrieve field\n      indexes for.</p>", "smithy.api#required" => {}}))
    DescribeFieldIndexesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeFieldIndexesRequest.type = Types::DescribeFieldIndexesRequest
    DescribeFieldIndexesResponse.add_member(:field_indexes, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIndexes, location_name: 'fieldIndexes', traits: {"smithy.api#documentation" => "<p>An array containing the field index information.</p>"}))
    DescribeFieldIndexesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeFieldIndexesResponse.type = Types::DescribeFieldIndexesResponse
    DescribeIndexPoliciesLogGroupIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier)
    DescribeIndexPoliciesRequest.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIndexPoliciesLogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>An array containing the name or ARN of the log group that you want to retrieve field index\n      policies for.</p>", "smithy.api#required" => {}}))
    DescribeIndexPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeIndexPoliciesRequest.type = Types::DescribeIndexPoliciesRequest
    DescribeIndexPoliciesResponse.add_member(:index_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexPolicies, location_name: 'indexPolicies', traits: {"smithy.api#documentation" => "<p>An array containing the field index policies.</p>"}))
    DescribeIndexPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeIndexPoliciesResponse.type = Types::DescribeIndexPoliciesResponse
    DescribeLogGroupsLogGroupIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier)
    DescribeLogGroupsRequest.add_member(:account_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIdentifiers', traits: {"smithy.api#documentation" => "<p>When <code>includeLinkedAccounts</code> is set to <code>true</code>, use this parameter to\n      specify the list of accounts to search. You can specify as many as 20 account IDs in the\n      array. </p>"}))
    DescribeLogGroupsRequest.add_member(:log_group_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupNamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix to match.</p>\n         <note>\n            <p>\n               <code>logGroupNamePrefix</code> and <code>logGroupNamePattern</code> are mutually exclusive.\n        Only one of these parameters can be passed. </p>\n         </note>"}))
    DescribeLogGroupsRequest.add_member(:log_group_name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupNamePattern, location_name: 'logGroupNamePattern', traits: {"smithy.api#documentation" => "<p>If you specify a string for this parameter, the operation returns only log groups that\n      have names that match the string based on a case-sensitive substring search. For example, if\n      you specify <code>DataLogs</code>, log groups named <code>DataLogs</code>,\n        <code>aws/DataLogs</code>, and <code>GroupDataLogs</code> would match, but\n        <code>datalogs</code>, <code>Data/log/s</code> and <code>Groupdata</code> would not\n      match.</p>\n         <p>If you specify <code>logGroupNamePattern</code> in your request, then only\n        <code>arn</code>, <code>creationTime</code>, and <code>logGroupName</code> are included in\n      the response. </p>\n         <note>\n            <p>\n               <code>logGroupNamePattern</code> and <code>logGroupNamePrefix</code> are mutually exclusive.\n        Only one of these parameters can be passed. </p>\n         </note>"}))
    DescribeLogGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeLogGroupsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned. If you don't specify a value, the default is up\n      to 50 items.</p>"}))
    DescribeLogGroupsRequest.add_member(:include_linked_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeLinkedAccounts, location_name: 'includeLinkedAccounts', traits: {"smithy.api#documentation" => "<p>If you are using a monitoring account, set this to <code>true</code> to have the operation\n      return log groups in the accounts listed in <code>accountIdentifiers</code>.</p>\n         <p>If this parameter is set to <code>true</code> and <code>accountIdentifiers</code> contains\n      a null value, the operation returns all log groups in the monitoring account and all log\n      groups in all source accounts that are linked to the monitoring account. </p>\n         <p>The default for this parameter is <code>false</code>.</p>"}))
    DescribeLogGroupsRequest.add_member(:log_group_class, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupClass, location_name: 'logGroupClass', traits: {"smithy.api#documentation" => "<p>Use this parameter to limit the results to only those log groups in the specified log\n      group class. If you omit this parameter, log groups of all classes can be returned.</p>\n         <p>Specifies the log group class for this log group. There are three classes:</p>\n         <ul>\n            <li>\n               <p>The <code>Standard</code> log class supports all CloudWatch Logs features.</p>\n            </li>\n            <li>\n               <p>The <code>Infrequent Access</code> log class supports a subset of CloudWatch Logs\n          features and incurs lower costs.</p>\n            </li>\n            <li>\n               <p>Use the <code>Delivery</code> log class only for delivering Lambda\n          logs to store in Amazon S3 or Amazon Data Firehose. Log events in log groups in\n          the Delivery class are kept in CloudWatch Logs for only one day. This log class doesn't\n          offer rich CloudWatch Logs capabilities such as CloudWatch Logs Insights\n          queries.</p>\n            </li>\n         </ul>\n         <p>For details about the features supported by each class, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html\">Log classes</a>\n         </p>"}))
    DescribeLogGroupsRequest.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogGroupsLogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>Use this array to filter the list of log groups returned. If you specify this parameter,\n      the only other filter that you can choose to specify is\n      <code>includeLinkedAccounts</code>.</p>\n         <p>If you are using this operation in a monitoring account, you can specify the ARNs of log\n      groups in source accounts and in the monitoring account itself. If you are using this\n      operation in an account that is not a cross-account monitoring account, you can specify only\n      log group names in the same account as the operation.</p>"}))
    DescribeLogGroupsRequest.type = Types::DescribeLogGroupsRequest
    DescribeLogGroupsResponse.add_member(:log_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroups, location_name: 'logGroups', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure contains the information about one log\n      group.</p>"}))
    DescribeLogGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeLogGroupsResponse.type = Types::DescribeLogGroupsResponse
    DescribeLogStreamsRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    DescribeLogStreamsRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to view. If the log group is in a source\n      account and you are using a monitoring account, you must use the log group ARN.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    DescribeLogStreamsRequest.add_member(:log_stream_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamNamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix to match.</p>\n         <p>If <code>orderBy</code> is <code>LastEventTime</code>, you cannot specify this\n      parameter.</p>"}))
    DescribeLogStreamsRequest.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name.\n      If the value is <code>LastEventTime</code>, the results are ordered by the event time. The\n      default value is <code>LogStreamName</code>.</p>\n         <p>If you order the results by event time, you cannot specify the\n        <code>logStreamNamePrefix</code> parameter.</p>\n         <p>\n            <code>lastEventTimestamp</code> represents the time of the most recent log event in the\n      log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>. <code>lastEventTimestamp</code> updates on an\n      eventual consistency basis. It typically updates in less than an hour from ingestion, but in\n      rare situations might take longer.</p>"}))
    DescribeLogStreamsRequest.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Descending, location_name: 'descending', traits: {"smithy.api#documentation" => "<p>If the value is true, results are returned in descending order. If the value is to\n      false, results are returned in ascending order. The default value is false.</p>"}))
    DescribeLogStreamsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeLogStreamsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned. If you don't specify a value, the default is up\n      to 50 items.</p>"}))
    DescribeLogStreamsRequest.type = Types::DescribeLogStreamsRequest
    DescribeLogStreamsResponse.add_member(:log_streams, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreams, location_name: 'logStreams', traits: {"smithy.api#documentation" => "<p>The log streams.</p>"}))
    DescribeLogStreamsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeLogStreamsResponse.type = Types::DescribeLogStreamsResponse
    DescribeMetricFiltersRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>"}))
    DescribeMetricFiltersRequest.add_member(:filter_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterNamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix to match. CloudWatch Logs uses the value that you set here only if you also\n      include the <code>logGroupName</code> parameter in your request.</p>"}))
    DescribeMetricFiltersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeMetricFiltersRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned. If you don't specify a value, the default is up\n      to 50 items.</p>"}))
    DescribeMetricFiltersRequest.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>Filters results to include only those with the specified metric name. If you include\n      this parameter in your request, you must also include the <code>metricNamespace</code>\n      parameter.</p>"}))
    DescribeMetricFiltersRequest.add_member(:metric_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'metricNamespace', traits: {"smithy.api#documentation" => "<p>Filters results to include only those in the specified namespace. If you include this\n      parameter in your request, you must also include the <code>metricName</code>\n      parameter.</p>"}))
    DescribeMetricFiltersRequest.type = Types::DescribeMetricFiltersRequest
    DescribeMetricFiltersResponse.add_member(:metric_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricFilters, location_name: 'metricFilters', traits: {"smithy.api#documentation" => "<p>The metric filters.</p>"}))
    DescribeMetricFiltersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeMetricFiltersResponse.type = Types::DescribeMetricFiltersResponse
    DescribeQueriesRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>Limits the returned queries to only those for the specified log group.</p>"}))
    DescribeQueriesRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Limits the returned queries to only those that have the specified status. Valid values are\n        <code>Cancelled</code>, <code>Complete</code>, <code>Failed</code>, <code>Running</code>,\n      and <code>Scheduled</code>.</p>"}))
    DescribeQueriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueriesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Limits the number of returned queries to the specified number.</p>"}))
    DescribeQueriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeQueriesRequest.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>Limits the returned queries to only the queries that use the specified query\n      language.</p>"}))
    DescribeQueriesRequest.type = Types::DescribeQueriesRequest
    DescribeQueriesResponse.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInfoList, location_name: 'queries', traits: {"smithy.api#documentation" => "<p>The list of queries that match the request.</p>"}))
    DescribeQueriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeQueriesResponse.type = Types::DescribeQueriesResponse
    DescribeQueryDefinitionsRequest.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>The query language used for this query. For more information about the query languages\n      that CloudWatch Logs supports, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html\">Supported query\n        languages</a>.</p>"}))
    DescribeQueryDefinitionsRequest.add_member(:query_definition_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: 'queryDefinitionNamePrefix', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter your results to only the query definitions that have names\n      that start with the prefix you specify.</p>"}))
    DescribeQueryDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Limits the number of returned query definitions to the specified number.</p>"}))
    DescribeQueryDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeQueryDefinitionsRequest.type = Types::DescribeQueryDefinitionsRequest
    DescribeQueryDefinitionsResponse.add_member(:query_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinitionList, location_name: 'queryDefinitions', traits: {"smithy.api#documentation" => "<p>The list of query definitions that match your request.</p>"}))
    DescribeQueryDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeQueryDefinitionsResponse.type = Types::DescribeQueryDefinitionsResponse
    DescribeResourcePoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeResourcePoliciesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of resource policies to be displayed with one call of this\n      API.</p>"}))
    DescribeResourcePoliciesRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Logs resource for which to query the resource policy.</p>"}))
    DescribeResourcePoliciesRequest.add_member(:policy_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyScope, location_name: 'policyScope', traits: {"smithy.api#documentation" => "<p>Specifies the scope of the resource policy. Valid values are <code>ACCOUNT</code> or <code>RESOURCE</code>. When not specified, defaults to <code>ACCOUNT</code>.</p>"}))
    DescribeResourcePoliciesRequest.type = Types::DescribeResourcePoliciesRequest
    DescribeResourcePoliciesResponse.add_member(:resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicies, location_name: 'resourcePolicies', traits: {"smithy.api#documentation" => "<p>The resource policies that exist in this account.</p>"}))
    DescribeResourcePoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeResourcePoliciesResponse.type = Types::DescribeResourcePoliciesResponse
    DescribeSubscriptionFiltersRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    DescribeSubscriptionFiltersRequest.add_member(:filter_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterNamePrefix', traits: {"smithy.api#documentation" => "<p>The prefix to match. If you don't specify a value, no prefix filter is\n      applied.</p>"}))
    DescribeSubscriptionFiltersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    DescribeSubscriptionFiltersRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned. If you don't specify a value, the default is up\n      to 50 items.</p>"}))
    DescribeSubscriptionFiltersRequest.type = Types::DescribeSubscriptionFiltersRequest
    DescribeSubscriptionFiltersResponse.add_member(:subscription_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionFilters, location_name: 'subscriptionFilters', traits: {"smithy.api#documentation" => "<p>The subscription filters.</p>"}))
    DescribeSubscriptionFiltersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeSubscriptionFiltersResponse.type = Types::DescribeSubscriptionFiltersResponse
    Destination.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The name of the destination.</p>"}))
    Destination.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the physical target where the log events are\n      delivered (for example, a Kinesis stream).</p>"}))
    Destination.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A role for impersonation, used when delivering log events to the target.</p>"}))
    Destination.add_member(:access_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicy, location_name: 'accessPolicy', traits: {"smithy.api#documentation" => "<p>An IAM policy document that governs which Amazon Web Services accounts can create\n      subscription filters against this destination.</p>"}))
    Destination.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of this destination.</p>"}))
    Destination.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the destination, expressed as the number of milliseconds after Jan\n      1, 1970 00:00:00 UTC.</p>"}))
    Destination.type = Types::Destination
    Destinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Destination)
    Dimensions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionsKey)
    Dimensions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionsValue)
    DisassociateKmsKeyRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>\n         <p>In your <code>DisassociateKmsKey</code> operation, you must specify either the\n        <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you\n      can't specify both.</p>"}))
    DisassociateKmsKeyRequest.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the target for this operation. You must specify one of the following:</p>\n         <ul>\n            <li>\n               <p>Specify the ARN of a log group to stop having CloudWatch Logs use the KMS key to encrypt log events that are ingested and stored by that log\n          group. After you run this operation, CloudWatch Logs encrypts ingested log events with\n          the default CloudWatch Logs method. The log group ARN must be in the following format.\n          Replace <i>REGION</i> and <i>ACCOUNT_ID</i> with your Region\n          and account ID.</p>\n               <p>\n                  <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:log-group:<i>LOG_GROUP_NAME</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>Specify the following ARN to stop using this key to encrypt the results of future\n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html\">StartQuery</a>\n          operations in this account. Replace <i>REGION</i> and\n            <i>ACCOUNT_ID</i> with your Region and account ID.</p>\n               <p>\n                  <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:query-result:*</code>\n               </p>\n            </li>\n         </ul>\n         <p>In your <code>DisssociateKmsKey</code> operation, you must specify either the\n        <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you\n      can't specify both.</p>"}))
    DisassociateKmsKeyRequest.type = Types::DisassociateKmsKeyRequest
    Distribution.add_member(:random, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Random', traits: {"smithy.api#enumValue" => "Random"}))
    Distribution.add_member(:by_log_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ByLogStream', traits: {"smithy.api#enumValue" => "ByLogStream"}))
    Entity.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityKeyAttributes, location_name: 'keyAttributes', traits: {"smithy.api#documentation" => "<p>The attributes of the entity which identify the specific entity, as a list of key-value\n      pairs. Entities with the same <code>keyAttributes</code> are considered to be the same\n      entity.</p>\n         <p>There are five allowed attributes (key names): <code>Type</code>,\n        <code>ResourceType</code>, <code>Identifier</code>\n            <code>Name</code>, and <code>Environment</code>.</p>\n         <p>For details about how to use the key attributes, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/adding-your-own-related-telemetry.html\">How to add\n        related information to telemetry</a> in the <i>CloudWatch User\n        Guide</i>.</p>"}))
    Entity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Additional attributes of the entity that are not used to specify the identity of the\n      entity. A list of key-value pairs.</p>\n         <p>For details about how to use the attributes, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/adding-your-own-related-telemetry.html\">How to add\n        related information to telemetry</a> in the <i>CloudWatch User\n        Guide</i>.</p>"}))
    Entity.type = Types::Entity
    EntityAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAttributesKey)
    EntityAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAttributesValue)
    EntityKeyAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityKeyAttributesKey)
    EntityKeyAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityKeyAttributesValue)
    EntityRejectionErrorType.add_member(:invalid_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ENTITY', traits: {"smithy.api#enumValue" => "InvalidEntity"}))
    EntityRejectionErrorType.add_member(:invalid_type_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TYPE_VALUE', traits: {"smithy.api#enumValue" => "InvalidTypeValue"}))
    EntityRejectionErrorType.add_member(:invalid_key_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_KEY_ATTRIBUTE', traits: {"smithy.api#enumValue" => "InvalidKeyAttributes"}))
    EntityRejectionErrorType.add_member(:invalid_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTES', traits: {"smithy.api#enumValue" => "InvalidAttributes"}))
    EntityRejectionErrorType.add_member(:entity_size_too_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTITY_SIZE_TOO_LARGE', traits: {"smithy.api#enumValue" => "EntitySizeTooLarge"}))
    EntityRejectionErrorType.add_member(:unsupported_log_group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_LOG_GROUP_TYPE', traits: {"smithy.api#enumValue" => "UnsupportedLogGroupType"}))
    EntityRejectionErrorType.add_member(:missing_required_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_REQUIRED_FIELDS', traits: {"smithy.api#enumValue" => "MissingRequiredFields"}))
    Enumerations.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString)
    Enumerations.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TokenValue)
    EvaluationFrequency.add_member(:one_min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_MIN', traits: {"smithy.api#enumValue" => "ONE_MIN"}))
    EvaluationFrequency.add_member(:five_min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE_MIN', traits: {"smithy.api#enumValue" => "FIVE_MIN"}))
    EvaluationFrequency.add_member(:ten_min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEN_MIN', traits: {"smithy.api#enumValue" => "TEN_MIN"}))
    EvaluationFrequency.add_member(:fifteen_min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIFTEEN_MIN', traits: {"smithy.api#enumValue" => "FIFTEEN_MIN"}))
    EvaluationFrequency.add_member(:thirty_min, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THIRTY_MIN', traits: {"smithy.api#enumValue" => "THIRTY_MIN"}))
    EvaluationFrequency.add_member(:one_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_HOUR', traits: {"smithy.api#enumValue" => "ONE_HOUR"}))
    EventSource.add_member(:cloud_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUD_TRAIL', traits: {"smithy.api#enumValue" => "CloudTrail"}))
    EventSource.add_member(:route53_resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE53_RESOLVER', traits: {"smithy.api#enumValue" => "Route53Resolver"}))
    EventSource.add_member(:vpc_flow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_FLOW', traits: {"smithy.api#enumValue" => "VPCFlow"}))
    EventSource.add_member(:eks_audit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_AUDIT', traits: {"smithy.api#enumValue" => "EKSAudit"}))
    EventSource.add_member(:awswaf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSWAF', traits: {"smithy.api#enumValue" => "AWSWAF"}))
    ExportTask.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the export task.</p>"}))
    ExportTask.add_member(:task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskName, location_name: 'taskName', traits: {"smithy.api#documentation" => "<p>The name of the export task.</p>"}))
    ExportTask.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group from which logs data was exported.</p>"}))
    ExportTask.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The start time, expressed as the number of milliseconds after <code>Jan 1, 1970\n        00:00:00 UTC</code>. Events with a timestamp before this time are not exported.</p>"}))
    ExportTask.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'to', traits: {"smithy.api#documentation" => "<p>The end time, expressed as the number of milliseconds after <code>Jan 1, 1970 00:00:00\n        UTC</code>. Events with a timestamp later than this time are not exported.</p>"}))
    ExportTask.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationBucket, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket to which the log data was exported.</p>"}))
    ExportTask.add_member(:destination_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationPrefix, location_name: 'destinationPrefix', traits: {"smithy.api#documentation" => "<p>The prefix that was used as the start of Amazon S3 key for every object\n      exported.</p>"}))
    ExportTask.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the export task.</p>"}))
    ExportTask.add_member(:execution_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskExecutionInfo, location_name: 'executionInfo', traits: {"smithy.api#documentation" => "<p>Execution information about the export task.</p>"}))
    ExportTask.type = Types::ExportTask
    ExportTaskExecutionInfo.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the export task, expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    ExportTaskExecutionInfo.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>The completion time of the export task, expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    ExportTaskExecutionInfo.type = Types::ExportTaskExecutionInfo
    ExportTaskStatus.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatusCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The status code of the export task.</p>"}))
    ExportTaskStatus.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatusMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The status message related to the status code.</p>"}))
    ExportTaskStatus.type = Types::ExportTaskStatus
    ExportTaskStatusCode.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ExportTaskStatusCode.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportTaskStatusCode.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportTaskStatusCode.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ExportTaskStatusCode.add_member(:pending_cancel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CANCEL', traits: {"smithy.api#enumValue" => "PENDING_CANCEL"}))
    ExportTaskStatusCode.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExportTasks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTask)
    ExtractedValues.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Token)
    ExtractedValues.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    FieldIndex.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>If this field index appears in an index policy that applies only to a single log group,\n      the ARN of that log group is displayed here.</p>"}))
    FieldIndex.add_member(:field_index_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIndexName, location_name: 'fieldIndexName', traits: {"smithy.api#documentation" => "<p>The string that this field index matches.</p>"}))
    FieldIndex.add_member(:last_scan_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastScanTime', traits: {"smithy.api#documentation" => "<p>The most recent time that CloudWatch Logs scanned ingested log events to search for\n      this field index to improve the speed of future CloudWatch Logs Insights queries that\n      search for this field index.</p>"}))
    FieldIndex.add_member(:first_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'firstEventTime', traits: {"smithy.api#documentation" => "<p>The time and date of the earliest log event that matches this field index, after the index\n      policy that contains it was created. </p>"}))
    FieldIndex.add_member(:last_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastEventTime', traits: {"smithy.api#documentation" => "<p>The time and date of the most recent log event that matches this field index. </p>"}))
    FieldIndex.type = Types::FieldIndex
    FieldIndexes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIndex)
    FieldsData.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Data, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The actual log data content returned in the streaming response. This contains the fields and values of the log event in a structured format that can be parsed and processed by the client.</p>"}))
    FieldsData.type = Types::FieldsData
    FilterLogEventsRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group to search.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    FilterLogEventsRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to view log events from. If the log group\n      is in a source account and you are using a monitoring account, you must use the log group\n      ARN.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    FilterLogEventsRequest.add_member(:log_stream_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: 'logStreamNames', traits: {"smithy.api#documentation" => "<p>Filters the results to only logs from the log streams in this list.</p>\n         <p>If you specify a value for both <code>logStreamNames</code> and\n        <code>logStreamNamePrefix</code>, the action returns an\n        <code>InvalidParameterException</code> error.</p>"}))
    FilterLogEventsRequest.add_member(:log_stream_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamNamePrefix', traits: {"smithy.api#documentation" => "<p>Filters the results to include only events from log streams that have names starting with\n      this prefix.</p>\n         <p>If you specify a value for both <code>logStreamNamePrefix</code> and\n        <code>logStreamNames</code>, the action returns an <code>InvalidParameterException</code>\n      error.</p>"}))
    FilterLogEventsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start of the time range, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>. Events with a timestamp before this time are not\n      returned.</p>"}))
    FilterLogEventsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end of the time range, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>. Events with a timestamp later than this time are not\n      returned.</p>"}))
    FilterLogEventsRequest.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern', traits: {"smithy.api#documentation" => "<p>The filter pattern to use. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html\">Filter and Pattern\n        Syntax</a>.</p>\n         <p>If not provided, all the events are matched.</p>"}))
    FilterLogEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of events to return. (You received this token from a\n      previous call.)</p>"}))
    FilterLogEventsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of events to return. The default is 10,000 events.</p>"}))
    FilterLogEventsRequest.add_member(:interleaved, Smithy::Schema::Shapes::ShapeRef.new(shape: Interleaved, location_name: 'interleaved', traits: {"smithy.api#deprecated" => {"message" => "Starting on June 17, 2019, this parameter will be ignored and the value will be assumed to be true. The response from this operation will always interleave events from multiple log streams within a log group."}, "smithy.api#documentation" => "<p>If the value is true, the operation attempts to provide responses that contain events\n      from multiple log streams within the log group, interleaved in a single response. If the value\n      is false, all the matched log events in the first log stream are searched first, then those in\n      the next log stream, and so on.</p>\n         <p>\n            <b>Important</b> As of June 17, 2019, this parameter is\n      ignored and the value is assumed to be true. The response from this operation always\n      interleaves events from multiple log streams within a log group.</p>"}))
    FilterLogEventsRequest.add_member(:unmask, Smithy::Schema::Shapes::ShapeRef.new(shape: Unmask, location_name: 'unmask', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specify <code>true</code> to display the log event fields with all sensitive data unmasked\n      and visible. The default is <code>false</code>.</p>\n         <p>To use this operation with this parameter, you must be signed into an account with the\n        <code>logs:Unmask</code> permission.</p>"}))
    FilterLogEventsRequest.type = Types::FilterLogEventsRequest
    FilterLogEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: FilteredLogEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The matched events.</p>"}))
    FilterLogEventsResponse.add_member(:searched_log_streams, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedLogStreams, location_name: 'searchedLogStreams', traits: {"smithy.api#documentation" => "<p>\n            <b>Important</b> As of May 15, 2020, this parameter is no longer\n      supported. This parameter returns an empty list.</p>\n         <p>Indicates which log streams have been searched and whether each has been searched\n      completely.</p>"}))
    FilterLogEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of items. The token expires after 24\n      hours.</p>\n         <p>If the results don't include a <code>nextToken</code>, then pagination is finished.\n    </p>"}))
    FilterLogEventsResponse.type = Types::FilterLogEventsResponse
    FilteredLogEvent.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream to which this event belongs.</p>"}))
    FilteredLogEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time the event occurred, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>.</p>"}))
    FilteredLogEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The data contained in the log event.</p>"}))
    FilteredLogEvent.add_member(:ingestion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ingestionTime', traits: {"smithy.api#documentation" => "<p>The time the event was ingested, expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    FilteredLogEvent.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>The ID of the event.</p>"}))
    FilteredLogEvent.type = Types::FilteredLogEvent
    FilteredLogEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilteredLogEvent)
    FlattenedElement.add_member(:first, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIRST', traits: {"smithy.api#enumValue" => "first"}))
    FlattenedElement.add_member(:last, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST', traits: {"smithy.api#enumValue" => "last"}))
    GetDataProtectionPolicyRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ARN of the log group that contains the data protection policy that you want to\n      see.</p>", "smithy.api#required" => {}}))
    GetDataProtectionPolicyRequest.type = Types::GetDataProtectionPolicyRequest
    GetDataProtectionPolicyResponse.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The log group name or ARN that you specified in your request.</p>"}))
    GetDataProtectionPolicyResponse.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The data protection policy document for this log group.</p>"}))
    GetDataProtectionPolicyResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that this policy was most recently updated.</p>"}))
    GetDataProtectionPolicyResponse.type = Types::GetDataProtectionPolicyResponse
    GetDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'deliveryDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the delivery destination that you want to retrieve the policy of.</p>", "smithy.api#required" => {}}))
    GetDeliveryDestinationPolicyRequest.type = Types::GetDeliveryDestinationPolicyRequest
    GetDeliveryDestinationPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The IAM policy for this delivery destination.</p>"}))
    GetDeliveryDestinationPolicyResponse.type = Types::GetDeliveryDestinationPolicyResponse
    GetDeliveryDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the delivery destination that you want to retrieve.</p>", "smithy.api#required" => {}}))
    GetDeliveryDestinationRequest.type = Types::GetDeliveryDestinationRequest
    GetDeliveryDestinationResponse.add_member(:delivery_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestination, location_name: 'deliveryDestination', traits: {"smithy.api#documentation" => "<p>A structure containing information about the delivery destination.</p>"}))
    GetDeliveryDestinationResponse.type = Types::GetDeliveryDestinationResponse
    GetDeliveryRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the delivery that you want to retrieve.</p>", "smithy.api#required" => {}}))
    GetDeliveryRequest.type = Types::GetDeliveryRequest
    GetDeliveryResponse.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Delivery, location_name: 'delivery', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the delivery.</p>"}))
    GetDeliveryResponse.type = Types::GetDeliveryResponse
    GetDeliverySourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the delivery source that you want to retrieve.</p>", "smithy.api#required" => {}}))
    GetDeliverySourceRequest.type = Types::GetDeliverySourceRequest
    GetDeliverySourceResponse.add_member(:delivery_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySource, location_name: 'deliverySource', traits: {"smithy.api#documentation" => "<p>A structure containing information about the delivery source.</p>"}))
    GetDeliverySourceResponse.type = Types::GetDeliverySourceResponse
    GetIntegrationRequest.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'integrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration that you want to find information about. To find the name of\n      your integration, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html\">ListIntegrations</a>\n         </p>", "smithy.api#required" => {}}))
    GetIntegrationRequest.type = Types::GetIntegrationRequest
    GetIntegrationResponse.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'integrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration.</p>"}))
    GetIntegrationResponse.add_member(:integration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'integrationType', traits: {"smithy.api#documentation" => "<p>The type of integration. Integrations with OpenSearch Service have the type\n        <code>OPENSEARCH</code>.</p>"}))
    GetIntegrationResponse.add_member(:integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'integrationStatus', traits: {"smithy.api#documentation" => "<p>The current status of this integration.</p>"}))
    GetIntegrationResponse.add_member(:integration_details, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDetails, location_name: 'integrationDetails', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the integration configuration. For an\n      integration with OpenSearch Service, this includes information about OpenSearch Service\n      resources such as the collection, the workspace, and policies.</p>"}))
    GetIntegrationResponse.type = Types::GetIntegrationResponse
    GetLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector to retrieve information about. You can find the ARNs of\n      log anomaly detectors in your account by using the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html\">ListLogAnomalyDetectors</a> operation.</p>", "smithy.api#required" => {}}))
    GetLogAnomalyDetectorRequest.type = Types::GetLogAnomalyDetectorRequest
    GetLogAnomalyDetectorResponse.add_member(:detector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorName, location_name: 'detectorName', traits: {"smithy.api#documentation" => "<p>The name of the log anomaly detector</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:log_group_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArnList, location_name: 'logGroupArnList', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure contains the ARN of a log group associated\n      with this anomaly detector.</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:evaluation_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: 'evaluationFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often the anomaly detector runs and look for anomalies. Set this value\n      according to the frequency that the log group receives new logs. For example, if the log group\n      receives new log events every 10 minutes, then setting <code>evaluationFrequency</code> to\n        <code>FIFTEEN_MIN</code> might be appropriate.</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern'))
    GetLogAnomalyDetectorResponse.add_member(:anomaly_detector_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: 'anomalyDetectorStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether the anomaly detector is currently active. To change its status, use the\n        <code>enabled</code> parameter in the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateLogAnomalyDetector.html\">UpdateLogAnomalyDetector</a> operation.</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key assigned to this anomaly detector, if any.</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:creation_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'creationTimeStamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date and time when this anomaly detector was created.</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:last_modified_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMillis, location_name: 'lastModifiedTimeStamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The date and time when this anomaly detector was most recently modified.</p>"}))
    GetLogAnomalyDetectorResponse.add_member(:anomaly_visibility_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: 'anomalyVisibilityTime', traits: {"smithy.api#documentation" => "<p>The number of days used as the life cycle of anomalies. After this time, anomalies are\n      automatically baselined and the anomaly detector model will treat new occurrences of similar\n      event as normal. </p>"}))
    GetLogAnomalyDetectorResponse.type = Types::GetLogAnomalyDetectorResponse
    GetLogEventsRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    GetLogEventsRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to view events from. If the log group is\n      in a source account and you are using a monitoring account, you must use the log group\n      ARN.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    GetLogEventsRequest.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream.</p>", "smithy.api#required" => {}}))
    GetLogEventsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start of the time range, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>. Events with a timestamp equal to this time or later than this time\n      are included. Events with a timestamp earlier than this time are not included.</p>"}))
    GetLogEventsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end of the time range, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>. Events with a timestamp equal to or later than this time are not\n      included.</p>"}))
    GetLogEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous\n      call.)</p>"}))
    GetLogEventsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of log events returned. If you don't specify a limit, the default is\n      as many log events as can fit in a response size of 1 MB (up to 10,000 log events).</p>"}))
    GetLogEventsRequest.add_member(:start_from_head, Smithy::Schema::Shapes::ShapeRef.new(shape: StartFromHead, location_name: 'startFromHead', traits: {"smithy.api#documentation" => "<p>If the value is true, the earliest log events are returned first. If the value is\n      false, the latest log events are returned first. The default value is false.</p>\n         <p>If you are using a previous <code>nextForwardToken</code> value as the\n        <code>nextToken</code> in this operation, you must specify <code>true</code> for\n        <code>startFromHead</code>.</p>"}))
    GetLogEventsRequest.add_member(:unmask, Smithy::Schema::Shapes::ShapeRef.new(shape: Unmask, location_name: 'unmask', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specify <code>true</code> to display the log event fields with all sensitive data unmasked\n      and visible. The default is <code>false</code>.</p>\n         <p>To use this operation with this parameter, you must be signed into an account with the\n        <code>logs:Unmask</code> permission.</p>"}))
    GetLogEventsRequest.type = Types::GetLogEventsRequest
    GetLogEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLogEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The events.</p>"}))
    GetLogEventsResponse.add_member(:next_forward_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextForwardToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items in the forward direction. The token expires after\n      24 hours. If you have reached the end of the stream, it returns the same token you passed\n      in.</p>"}))
    GetLogEventsResponse.add_member(:next_backward_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextBackwardToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items in the backward direction. The token expires after\n      24 hours. This token is not null. If you have reached the end of the stream, it returns the\n      same token you passed in.</p>"}))
    GetLogEventsResponse.type = Types::GetLogEventsResponse
    GetLogGroupFieldsRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group to search.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    GetLogGroupFieldsRequest.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'time', traits: {"smithy.api#documentation" => "<p>The time to set as the center of the query. If you specify <code>time</code>, the 8\n      minutes before and 8 minutes after this time are searched. If you omit <code>time</code>, the\n      most recent 15 minutes up to the current time are searched.</p>\n         <p>The <code>time</code> value is specified as epoch time, which is the number of seconds\n      since <code>January 1, 1970, 00:00:00 UTC</code>.</p>"}))
    GetLogGroupFieldsRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to view. If the log group is in a source\n      account and you are using a monitoring account, you must specify the ARN.</p>\n         <note>\n            <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,\n        but not both. </p>\n         </note>"}))
    GetLogGroupFieldsRequest.type = Types::GetLogGroupFieldsRequest
    GetLogGroupFieldsResponse.add_member(:log_group_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupFieldList, location_name: 'logGroupFields', traits: {"smithy.api#documentation" => "<p>The array of fields found in the query. Each object in the array contains the name of the\n      field, along with the percentage of time it appeared in the log events that were\n      queried.</p>"}))
    GetLogGroupFieldsResponse.type = Types::GetLogGroupFieldsResponse
    GetLogObjectRequest.add_member(:unmask, Smithy::Schema::Shapes::ShapeRef.new(shape: Unmask, location_name: 'unmask', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean flag that indicates whether to unmask sensitive log data. When set to true, any masked or redacted data in the log object will be displayed in its original form. Default is false.</p>"}))
    GetLogObjectRequest.add_member(:log_object_pointer, Smithy::Schema::Shapes::ShapeRef.new(shape: LogObjectPointer, location_name: 'logObjectPointer', traits: {"smithy.api#documentation" => "<p>A pointer to the specific log object to retrieve. This is a required parameter that uniquely identifies the log object within CloudWatch Logs. The pointer is typically obtained from a previous query or filter operation.</p>", "smithy.api#required" => {}}))
    GetLogObjectRequest.type = Types::GetLogObjectRequest
    GetLogObjectResponse.add_member(:field_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogObjectResponseStream, location_name: 'fieldStream'))
    GetLogObjectResponse.type = Types::GetLogObjectResponse
    GetLogObjectResponseStream.add_member(:fields, Types::GetLogObjectResponseStream::Fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsData, location_name: 'fields'))
    GetLogObjectResponseStream.add_member(:internal_streaming_exception, Types::GetLogObjectResponseStream::InternalStreamingException, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalStreamingException, location_name: 'InternalStreamingException'))
    GetLogObjectResponseStream.add_member(:unknown, Types::GetLogObjectResponseStream::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    GetLogObjectResponseStream.type = Types::GetLogObjectResponseStream
    GetLogRecordRequest.add_member(:log_record_pointer, Smithy::Schema::Shapes::ShapeRef.new(shape: LogRecordPointer, location_name: 'logRecordPointer', traits: {"smithy.api#documentation" => "<p>The pointer corresponding to the log event record you want to retrieve. You get this from\n      the response of a <code>GetQueryResults</code> operation. In that response, the value of the\n        <code>@ptr</code> field for a log event is the value to use as <code>logRecordPointer</code>\n      to retrieve that complete log event record.</p>", "smithy.api#required" => {}}))
    GetLogRecordRequest.add_member(:unmask, Smithy::Schema::Shapes::ShapeRef.new(shape: Unmask, location_name: 'unmask', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specify <code>true</code> to display the log event fields with all sensitive data unmasked\n      and visible. The default is <code>false</code>.</p>\n         <p>To use this operation with this parameter, you must be signed into an account with the\n        <code>logs:Unmask</code> permission.</p>"}))
    GetLogRecordRequest.type = Types::GetLogRecordRequest
    GetLogRecordResponse.add_member(:log_record, Smithy::Schema::Shapes::ShapeRef.new(shape: LogRecord, location_name: 'logRecord', traits: {"smithy.api#documentation" => "<p>The requested log event, as a JSON string.</p>"}))
    GetLogRecordResponse.type = Types::GetLogRecordResponse
    GetQueryResultsRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The ID number of the query.</p>", "smithy.api#required" => {}}))
    GetQueryResultsRequest.type = Types::GetQueryResultsRequest
    GetQueryResultsResponse.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>The query language used for this query. For more information about the query languages\n      that CloudWatch Logs supports, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html\">Supported query\n        languages</a>.</p>"}))
    GetQueryResultsResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResults, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The log events that matched the query criteria during the most recent time it ran.</p>\n         <p>The <code>results</code> value is an array of arrays. Each log event is one object in the\n      top-level array. Each of these log event objects is an array of\n        <code>field</code>/<code>value</code> pairs.</p>"}))
    GetQueryResultsResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>Includes the number of log events scanned by the query, the number of log events that\n      matched the query criteria, and the total number of bytes in the scanned log events. These\n      values reflect the full raw results of the query.</p>"}))
    GetQueryResultsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the most recent running of the query. Possible values are\n        <code>Cancelled</code>, <code>Complete</code>, <code>Failed</code>, <code>Running</code>,\n        <code>Scheduled</code>, <code>Timeout</code>, and <code>Unknown</code>.</p>\n         <p>Queries time out after 60 minutes of runtime. To avoid having your queries time out,\n      reduce the time range being searched or partition your query into a number of queries.</p>"}))
    GetQueryResultsResponse.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>If you associated an KMS key with the CloudWatch Logs Insights\n      query results in this account, this field displays the ARN of the key that's used to encrypt\n      the query results when <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html\">StartQuery</a> stores\n      them.</p>"}))
    GetQueryResultsResponse.type = Types::GetQueryResultsResponse
    GetTransformerRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to return transformer information for. If\n      the log group is in a source account and you are using a monitoring account, you must use the\n      log group ARN.</p>", "smithy.api#required" => {}}))
    GetTransformerRequest.type = Types::GetTransformerRequest
    GetTransformerResponse.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the log group that you specified in your request.</p>"}))
    GetTransformerResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the transformer, expressed as the number of milliseconds after Jan\n      1, 1970 00:00:00 UTC.</p>"}))
    GetTransformerResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when this transformer was most recently modified, expressed as the\n      number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>"}))
    GetTransformerResponse.add_member(:transformer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Processors, location_name: 'transformerConfig', traits: {"smithy.api#documentation" => "<p>This sructure contains the configuration of the requested transformer.</p>"}))
    GetTransformerResponse.type = Types::GetTransformerResponse
    Grok.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The path to the field in the log event that you want to parse. If you omit this value, the\n      whole log message is parsed.</p>"}))
    Grok.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: GrokMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The grok pattern to match against the log event. For a list of supported grok patterns,\n      see <a href=\"https://docs.aws.amazon.com/mazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation-Processors.html#Grok-Patterns\">Supported grok patterns</a>.</p>", "smithy.api#required" => {}}))
    Grok.type = Types::Grok
    Histogram.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Time)
    Histogram.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Count)
    IndexPolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexPolicy)
    IndexPolicy.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the log group that this index policy applies to.</p>"}))
    IndexPolicy.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The date and time that this index policy was most recently updated.</p>"}))
    IndexPolicy.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The policy document for this index policy, in JSON format.</p>"}))
    IndexPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of this policy. Responses about log group-level field index policies don't have\n      this field, because those policies don't have names.</p>"}))
    IndexPolicy.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>This field indicates whether this is an account-level index policy or an index policy that\n      applies only to a single log group.</p>"}))
    IndexPolicy.type = Types::IndexPolicy
    IndexSource.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    IndexSource.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG_GROUP', traits: {"smithy.api#enumValue" => "LOG_GROUP"}))
    InheritedProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InheritedProperty)
    InheritedProperty.add_member(:account_data_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_DATA_PROTECTION', traits: {"smithy.api#enumValue" => "ACCOUNT_DATA_PROTECTION"}))
    InputLogEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time the event occurred, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>.</p>", "smithy.api#required" => {}}))
    InputLogEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The raw event message. Each log event can be no larger than 1 MB.</p>", "smithy.api#required" => {}}))
    InputLogEvent.type = Types::InputLogEvent
    InputLogEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogEvent)
    InputLogStreamNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName)
    IntegrationDetails.add_member(:open_search_integration_details, Types::IntegrationDetails::OpenSearchIntegrationDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchIntegrationDetails, location_name: 'openSearchIntegrationDetails', traits: {"smithy.api#documentation" => "<p>This structure contains complete information about one integration between CloudWatch Logs and OpenSearch Service.</p>"}))
    IntegrationDetails.add_member(:unknown, Types::IntegrationDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationDetails.type = Types::IntegrationDetails
    IntegrationStatus.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    IntegrationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IntegrationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IntegrationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSummary)
    IntegrationSummary.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'integrationName', traits: {"smithy.api#documentation" => "<p>The name of this integration.</p>"}))
    IntegrationSummary.add_member(:integration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'integrationType', traits: {"smithy.api#documentation" => "<p>The type of integration. Integrations with OpenSearch Service have the type\n        <code>OPENSEARCH</code>.</p>"}))
    IntegrationSummary.add_member(:integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'integrationStatus', traits: {"smithy.api#documentation" => "<p>The current status of this integration.</p>"}))
    IntegrationSummary.type = Types::IntegrationSummary
    IntegrationType.add_member(:opensearch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSEARCH', traits: {"smithy.api#enumValue" => "OPENSEARCH"}))
    InternalStreamingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InternalStreamingException.type = Types::InternalStreamingException
    InvalidOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidSequenceTokenException.add_member(:expected_sequence_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceToken, location_name: 'expectedSequenceToken'))
    InvalidSequenceTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidSequenceTokenException.type = Types::InvalidSequenceTokenException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAnomaliesRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>Use this to optionally limit the results to only the anomalies found by a certain anomaly\n      detector.</p>"}))
    ListAnomaliesRequest.add_member(:suppression_state, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionState, location_name: 'suppressionState', traits: {"smithy.api#documentation" => "<p>You can specify this parameter if you want to the operation to return only anomalies that\n      are currently either suppressed or unsuppressed.</p>"}))
    ListAnomaliesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return. If you don't specify a value, the default\n      maximum value of 50 items is used.</p>"}))
    ListAnomaliesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAnomaliesRequest.type = Types::ListAnomaliesRequest
    ListAnomaliesResponse.add_member(:anomalies, Smithy::Schema::Shapes::ShapeRef.new(shape: Anomalies, location_name: 'anomalies', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure contains information about one anomaly that a\n      log anomaly detector has found.</p>"}))
    ListAnomaliesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAnomaliesResponse.type = Types::ListAnomaliesResponse
    ListIntegrationsRequest.add_member(:integration_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNamePrefix, location_name: 'integrationNamePrefix', traits: {"smithy.api#documentation" => "<p>To limit the results to integrations that start with a certain name prefix, specify that\n      name prefix here.</p>"}))
    ListIntegrationsRequest.add_member(:integration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'integrationType', traits: {"smithy.api#documentation" => "<p>To limit the results to integrations of a certain type, specify that type here.</p>"}))
    ListIntegrationsRequest.add_member(:integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'integrationStatus', traits: {"smithy.api#documentation" => "<p>To limit the results to integrations with a certain status, specify that status\n      here.</p>"}))
    ListIntegrationsRequest.type = Types::ListIntegrationsRequest
    ListIntegrationsResponse.add_member(:integration_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSummaries, location_name: 'integrationSummaries', traits: {"smithy.api#documentation" => "<p>An array, where each object in the array contains information about one CloudWatch Logs\n      integration in this account. </p>"}))
    ListIntegrationsResponse.type = Types::ListIntegrationsResponse
    ListLogAnomalyDetectorsRequest.add_member(:filter_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'filterLogGroupArn', traits: {"smithy.api#documentation" => "<p>Use this to optionally filter the results to only include anomaly detectors that are\n      associated with the specified log group.</p>"}))
    ListLogAnomalyDetectorsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogAnomalyDetectorsLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return. If you don't specify a value, the default\n      maximum value of 50 items is used.</p>"}))
    ListLogAnomalyDetectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogAnomalyDetectorsRequest.type = Types::ListLogAnomalyDetectorsRequest
    ListLogAnomalyDetectorsResponse.add_member(:anomaly_detectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectors, location_name: 'anomalyDetectors', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure in the array contains information about one\n      anomaly detector.</p>"}))
    ListLogAnomalyDetectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogAnomalyDetectorsResponse.type = Types::ListLogAnomalyDetectorsResponse
    ListLogGroupsForQueryRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The ID of the query to use. This query ID is from the response to your <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html\">StartQuery</a> operation.</p>", "smithy.api#required" => {}}))
    ListLogGroupsForQueryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogGroupsForQueryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogGroupsForQueryMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Limits the number of returned log groups to the specified number.</p>"}))
    ListLogGroupsForQueryRequest.type = Types::ListLogGroupsForQueryRequest
    ListLogGroupsForQueryResponse.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>An array of the names and ARNs of the log groups that were processed in the query.</p>"}))
    ListLogGroupsForQueryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogGroupsForQueryResponse.type = Types::ListLogGroupsForQueryResponse
    ListLogGroupsRequest.add_member(:log_group_name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupNameRegexPattern, location_name: 'logGroupNamePattern', traits: {"smithy.api#documentation" => "<p>Use this parameter to limit the returned log groups to only those with names that match\n      the pattern that you specify. This parameter is a regular expression that can match prefixes\n      and substrings, and supports wildcard matching and matching multiple patterns, as in the\n      following examples. </p>\n         <ul>\n            <li>\n               <p>Use <code>^</code> to match log group names by prefix.</p>\n            </li>\n            <li>\n               <p>For a substring match, specify the string to match. All matches are case\n          sensitive</p>\n            </li>\n            <li>\n               <p>To match multiple patterns, separate them with a <code>|</code> as in the example\n            <code>^/aws/lambda|discovery</code>\n               </p>\n            </li>\n         </ul>\n         <p>You can specify as many as five different regular expression patterns in this field, each\n      of which must be between 3 and 24 characters. You can include the <code>^</code> symbol as\n      many as five times, and include the <code>|</code> symbol as many as four times.</p>"}))
    ListLogGroupsRequest.add_member(:log_group_class, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupClass, location_name: 'logGroupClass', traits: {"smithy.api#documentation" => "<p>Use this parameter to limit the results to only those log groups in the specified log\n      group class. If you omit this parameter, log groups of all classes can be returned.</p>"}))
    ListLogGroupsRequest.add_member(:include_linked_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeLinkedAccounts, location_name: 'includeLinkedAccounts', traits: {"smithy.api#documentation" => "<p>If you are using a monitoring account, set this to <code>true</code> to have the operation\n      return log groups in the accounts listed in <code>accountIdentifiers</code>.</p>\n         <p>If this parameter is set to <code>true</code> and <code>accountIdentifiers</code> contains\n      a null value, the operation returns all log groups in the monitoring account and all log\n      groups in all source accounts that are linked to the monitoring account. </p>\n         <p>The default for this parameter is <code>false</code>.</p>"}))
    ListLogGroupsRequest.add_member(:account_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIdentifiers', traits: {"smithy.api#documentation" => "<p>When <code>includeLinkedAccounts</code> is set to <code>true</code>, use this parameter to\n      specify the list of accounts to search. You can specify as many as 20 account IDs in the\n      array.</p>"}))
    ListLogGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogGroupsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of log groups to return. If you omit this parameter, the default is\n      up to 50 log groups.</p>"}))
    ListLogGroupsRequest.type = Types::ListLogGroupsRequest
    ListLogGroupsResponse.add_member(:log_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupSummaries, location_name: 'logGroups', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure contains the information about one log\n      group.</p>"}))
    ListLogGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogGroupsResponse.type = Types::ListLogGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you want to view tags for.</p>\n         <p>The ARN format of a log group is\n          <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:log-group:<i>log-group-name</i>\n            </code>\n         </p>\n         <p>The ARN format of a destination is\n          <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:destination:<i>destination-name</i>\n            </code>\n         </p>\n         <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html\">CloudWatch Logs\n        resources and operations</a>.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the requested resource.></p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTagsLogGroupRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    ListTagsLogGroupRequest.type = Types::ListTagsLogGroupRequest
    ListTagsLogGroupResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the log group.</p>"}))
    ListTagsLogGroupResponse.type = Types::ListTagsLogGroupResponse
    ListToMap.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The key in the log event that has a list of objects that will be converted to a\n      map.</p>", "smithy.api#required" => {}}))
    ListToMap.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the field to be extracted as keys in the generated map</p>", "smithy.api#required" => {}}))
    ListToMap.add_member(:value_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueKey, location_name: 'valueKey', traits: {"smithy.api#documentation" => "<p>If this is specified, the values that you specify in this parameter will be extracted from\n      the <code>source</code> objects and put into the values of the generated map. Otherwise,\n      original objects in the source list will be put into the values of the generated map.</p>"}))
    ListToMap.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The key of the field that will hold the generated map </p>"}))
    ListToMap.add_member(:flatten, Smithy::Schema::Shapes::ShapeRef.new(shape: Flatten, location_name: 'flatten', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value to indicate whether the list will be flattened into single items. Specify\n        <code>true</code> to flatten the list. The default is <code>false</code>\n         </p>"}))
    ListToMap.add_member(:flattened_element, Smithy::Schema::Shapes::ShapeRef.new(shape: FlattenedElement, location_name: 'flattenedElement', traits: {"smithy.api#documentation" => "<p>If you set <code>flatten</code> to <code>true</code>, use <code>flattenedElement</code> to\n      specify which element, <code>first</code> or <code>last</code>, to keep. </p>\n         <p>You must specify this parameter if <code>flatten</code> is <code>true</code>\n         </p>"}))
    ListToMap.type = Types::ListToMap
    LiveTailSessionLogEvent.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream that ingested this log event.</p>"}))
    LiveTailSessionLogEvent.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ARN of the log group that ingested this log event.</p>"}))
    LiveTailSessionLogEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The log event message text.</p>"}))
    LiveTailSessionLogEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp specifying when this log event was created.</p>"}))
    LiveTailSessionLogEvent.add_member(:ingestion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ingestionTime', traits: {"smithy.api#documentation" => "<p>The timestamp specifying when this log event was ingested into the log group.</p>"}))
    LiveTailSessionLogEvent.type = Types::LiveTailSessionLogEvent
    LiveTailSessionMetadata.add_member(:sampled, Smithy::Schema::Shapes::ShapeRef.new(shape: IsSampled, location_name: 'sampled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this is <code>true</code>, then more than 500 log events matched the request for this\n      update, and the <code>sessionResults</code> includes a sample of 500 of those events.</p>\n         <p>If this is <code>false</code>, then 500 or fewer log events matched the request for this\n      update, so no sampling was necessary. In this case, the <code>sessionResults</code> array\n      includes all log events that matched your request during this time.</p>"}))
    LiveTailSessionMetadata.type = Types::LiveTailSessionMetadata
    LiveTailSessionResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LiveTailSessionLogEvent)
    LiveTailSessionStart.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The unique ID generated by CloudWatch Logs to identify this Live Tail session\n      request.</p>"}))
    LiveTailSessionStart.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The unique ID generated by CloudWatch Logs to identify this Live Tail session.</p>"}))
    LiveTailSessionStart.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: StartLiveTailLogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>An array of the names and ARNs of the log groups included in this Live Tail\n      session.</p>"}))
    LiveTailSessionStart.add_member(:log_stream_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: 'logStreamNames', traits: {"smithy.api#documentation" => "<p>If your StartLiveTail operation request included a <code>logStreamNames</code> parameter\n      that filtered the session to only include certain log streams, these streams are listed\n      here.</p>"}))
    LiveTailSessionStart.add_member(:log_stream_name_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: 'logStreamNamePrefixes', traits: {"smithy.api#documentation" => "<p>If your StartLiveTail operation request included a <code>logStreamNamePrefixes</code>\n      parameter that filtered the session to only include log streams that have names that start\n      with certain prefixes, these prefixes are listed here.</p>"}))
    LiveTailSessionStart.add_member(:log_event_filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'logEventFilterPattern', traits: {"smithy.api#documentation" => "<p>An optional pattern to filter the results to include only log events that match the\n      pattern. For example, a filter pattern of <code>error 404</code> displays only log events that\n      include both <code>error</code> and <code>404</code>.</p>\n         <p>For more information about filter pattern syntax, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html\">Filter and Pattern\n        Syntax</a>.</p>"}))
    LiveTailSessionStart.type = Types::LiveTailSessionStart
    LiveTailSessionUpdate.add_member(:session_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveTailSessionMetadata, location_name: 'sessionMetadata', traits: {"smithy.api#documentation" => "<p>This object contains the session metadata for a Live Tail session.</p>"}))
    LiveTailSessionUpdate.add_member(:session_results, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveTailSessionResults, location_name: 'sessionResults', traits: {"smithy.api#documentation" => "<p>An array, where each member of the array includes the information for one log event in the\n      Live Tail session.</p>\n         <p>A <code>sessionResults</code> array can include as many as 500 log events. If the number\n      of log events matching the request exceeds 500 per second, the log events are sampled down to\n      500 log events to be included in each <code>sessionUpdate</code> structure.</p>"}))
    LiveTailSessionUpdate.type = Types::LiveTailSessionUpdate
    LogEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of the log event.</p>"}))
    LogEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message content of the log event.</p>"}))
    LogEvent.type = Types::LogEvent
    LogGroup.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>"}))
    LogGroup.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the log group, expressed as the number of milliseconds after Jan\n      1, 1970 00:00:00 UTC.</p>"}))
    LogGroup.add_member(:retention_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Days, location_name: 'retentionInDays'))
    LogGroup.add_member(:metric_filter_count, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCount, location_name: 'metricFilterCount', traits: {"smithy.api#documentation" => "<p>The number of metric filters.</p>"}))
    LogGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log group. This version of the ARN includes a\n      trailing <code>:*</code> after the log group name. </p>\n         <p>Use this version to refer to the ARN in IAM policies when specifying\n      permissions for most API actions. The exception is when specifying permissions for <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html\">TagResource</a>, <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html\">UntagResource</a>,\n      and <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html\">ListTagsForResource</a>. The permissions for those three actions require the ARN\n      version that doesn't include a trailing <code>:*</code>.</p>"}))
    LogGroup.add_member(:stored_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: StoredBytes, location_name: 'storedBytes', traits: {"smithy.api#documentation" => "<p>The number of bytes stored.</p>"}))
    LogGroup.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key to use when\n      encrypting log data.</p>"}))
    LogGroup.add_member(:data_protection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionStatus, location_name: 'dataProtectionStatus', traits: {"smithy.api#documentation" => "<p>Displays whether this log group has a protection policy, or whether it had one in the\n      past. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html\">PutDataProtectionPolicy</a>.</p>"}))
    LogGroup.add_member(:inherited_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: InheritedProperties, location_name: 'inheritedProperties', traits: {"smithy.api#documentation" => "<p>Displays all the properties that this log group has inherited from account-level\n      settings.</p>"}))
    LogGroup.add_member(:log_group_class, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupClass, location_name: 'logGroupClass', traits: {"smithy.api#documentation" => "<p>This specifies the log group class for this log group. There are three classes:</p>\n         <ul>\n            <li>\n               <p>The <code>Standard</code> log class supports all CloudWatch Logs features.</p>\n            </li>\n            <li>\n               <p>The <code>Infrequent Access</code> log class supports a subset of CloudWatch Logs\n          features and incurs lower costs.</p>\n            </li>\n            <li>\n               <p>Use the <code>Delivery</code> log class only for delivering Lambda\n          logs to store in Amazon S3 or Amazon Data Firehose. Log events in log groups in\n          the Delivery class are kept in CloudWatch Logs for only one day. This log class doesn't\n          offer rich CloudWatch Logs capabilities such as CloudWatch Logs Insights\n          queries.</p>\n            </li>\n         </ul>\n         <p>For details about the features supported by the Standard and Infrequent Access classes,\n      see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html\">Log classes</a>\n         </p>"}))
    LogGroup.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log group. This version of the ARN doesn't\n      include a trailing <code>:*</code> after the log group name. </p>\n         <p>Use this version to refer to the ARN in the following situations:</p>\n         <ul>\n            <li>\n               <p>In the <code>logGroupIdentifier</code> input field in many CloudWatch Logs\n          APIs.</p>\n            </li>\n            <li>\n               <p>In the <code>resourceArn</code> field in tagging APIs</p>\n            </li>\n            <li>\n               <p>In IAM policies, when specifying permissions for <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html\">TagResource</a>, <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html\">UntagResource</a>, and <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html\">ListTagsForResource</a>.</p>\n            </li>\n         </ul>"}))
    LogGroup.type = Types::LogGroup
    LogGroupArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn)
    LogGroupClass.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    LogGroupClass.add_member(:infrequent_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFREQUENT_ACCESS', traits: {"smithy.api#enumValue" => "INFREQUENT_ACCESS"}))
    LogGroupClass.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    LogGroupField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Field, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a log field.</p>"}))
    LogGroupField.add_member(:percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'percent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of log events queried that contained the field.</p>"}))
    LogGroupField.type = Types::LogGroupField
    LogGroupFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupField)
    LogGroupIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier)
    LogGroupNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName)
    LogGroupSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupSummary)
    LogGroupSummary.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>"}))
    LogGroupSummary.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'logGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log group.</p>"}))
    LogGroupSummary.add_member(:log_group_class, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupClass, location_name: 'logGroupClass', traits: {"smithy.api#documentation" => "<p>The log group class for this log group. For details about the features supported by each\n      log group class, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html\">Log classes</a>\n         </p>"}))
    LogGroupSummary.type = Types::LogGroupSummary
    LogGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroup)
    LogRecord.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Field)
    LogRecord.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    LogSamples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogEvent)
    LogStream.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream.</p>"}))
    LogStream.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the stream, expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    LogStream.add_member(:first_event_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'firstEventTimestamp', traits: {"smithy.api#documentation" => "<p>The time of the first event, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>.</p>"}))
    LogStream.add_member(:last_event_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastEventTimestamp', traits: {"smithy.api#documentation" => "<p>The time of the most recent log event in the log stream in CloudWatch Logs. This number\n      is expressed as the number of milliseconds after <code>Jan 1, 1970 00:00:00 UTC</code>. The\n        <code>lastEventTime</code> value updates on an eventual consistency basis. It typically\n      updates in less than an hour from ingestion, but in rare situations might take\n      longer.</p>"}))
    LogStream.add_member(:last_ingestion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastIngestionTime', traits: {"smithy.api#documentation" => "<p>The ingestion time, expressed as the number of milliseconds after <code>Jan 1, 1970\n        00:00:00 UTC</code> The <code>lastIngestionTime</code> value updates on an eventual\n      consistency basis. It typically updates in less than an hour after ingestion, but in rare\n      situations might take longer.</p>"}))
    LogStream.add_member(:upload_sequence_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceToken, location_name: 'uploadSequenceToken', traits: {"smithy.api#documentation" => "<p>The sequence token.</p>\n         <important>\n            <p>The sequence token is now ignored in <code>PutLogEvents</code> actions.\n          <code>PutLogEvents</code> actions are always accepted regardless of receiving an invalid\n        sequence token. You don't need to obtain <code>uploadSequenceToken</code> to use a\n          <code>PutLogEvents</code> action.</p>\n         </important>"}))
    LogStream.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log stream.</p>"}))
    LogStream.add_member(:stored_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: StoredBytes, location_name: 'storedBytes', traits: {"smithy.api#deprecated" => {"message" => "Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected."}, "smithy.api#documentation" => "<p>The number of bytes stored.</p>\n         <p>\n            <b>Important:</b> As of June 17, 2019, this parameter is no\n      longer supported for log streams, and is always reported as zero. This change applies only to\n      log streams. The <code>storedBytes</code> parameter for log groups is not affected.</p>"}))
    LogStream.type = Types::LogStream
    LogStreams.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogStream)
    LogTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogType)
    LowerCaseString.add_member(:with_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: LowerCaseStringWithKeys, location_name: 'withKeys', traits: {"smithy.api#documentation" => "<p>The array caontaining the keys of the fields to convert to lowercase.</p>", "smithy.api#required" => {}}))
    LowerCaseString.type = Types::LowerCaseString
    LowerCaseStringWithKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WithKey)
    MalformedQueryException.add_member(:query_compile_error, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryCompileError, location_name: 'queryCompileError'))
    MalformedQueryException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    MalformedQueryException.type = Types::MalformedQueryException
    MatchPatterns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MatchPattern)
    MetricFilter.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterName', traits: {"smithy.api#documentation" => "<p>The name of the metric filter.</p>"}))
    MetricFilter.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern'))
    MetricFilter.add_member(:metric_transformations, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricTransformations, location_name: 'metricTransformations', traits: {"smithy.api#documentation" => "<p>The metric transformations.</p>"}))
    MetricFilter.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the metric filter, expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    MetricFilter.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>"}))
    MetricFilter.add_member(:apply_on_transformed_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: 'applyOnTransformedLogs', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This parameter is valid only for log groups that have an active log transformer. For more\n      information about log transformers, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html\">PutTransformer</a>.</p>\n         <p>If this value is <code>true</code>, the metric filter is applied on the transformed\n      version of the log events instead of the original ingested log events.</p>"}))
    MetricFilter.type = Types::MetricFilter
    MetricFilterMatchRecord.add_member(:event_number, Smithy::Schema::Shapes::ShapeRef.new(shape: EventNumber, location_name: 'eventNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The event number.</p>"}))
    MetricFilterMatchRecord.add_member(:event_message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'eventMessage', traits: {"smithy.api#documentation" => "<p>The raw event data.</p>"}))
    MetricFilterMatchRecord.add_member(:extracted_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtractedValues, location_name: 'extractedValues', traits: {"smithy.api#documentation" => "<p>The values extracted from the event data by the filter.</p>"}))
    MetricFilterMatchRecord.type = Types::MetricFilterMatchRecord
    MetricFilterMatches.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricFilterMatchRecord)
    MetricFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricFilter)
    MetricTransformation.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'metricName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch metric.</p>", "smithy.api#required" => {}}))
    MetricTransformation.add_member(:metric_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'metricNamespace', traits: {"smithy.api#documentation" => "<p>A custom namespace to contain your metric in CloudWatch. Use namespaces to group\n      together metrics that are similar. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace\">Namespaces</a>.</p>", "smithy.api#required" => {}}))
    MetricTransformation.add_member(:metric_value, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'metricValue', traits: {"smithy.api#documentation" => "<p>The value to publish to the CloudWatch metric when a filter pattern matches a log\n      event.</p>", "smithy.api#required" => {}}))
    MetricTransformation.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultValue, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>(Optional) The value to emit when a filter pattern does not match a log event. This\n      value can be null.</p>"}))
    MetricTransformation.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: 'dimensions', traits: {"smithy.api#documentation" => "<p>The fields to use as dimensions for the metric. One metric filter can include as many as\n      three dimensions.</p>\n         <important>\n            <p>Metrics extracted from log events are charged as custom metrics. To prevent unexpected\n        high charges, do not specify high-cardinality fields such as <code>IPAddress</code> or\n          <code>requestID</code> as dimensions. Each different value found for a dimension is\n        treated as a separate metric and accrues charges as a separate custom metric. </p>\n            <p>CloudWatch Logs disables a metric filter if it generates 1000 different name/value\n        pairs for your specified dimensions within a certain amount of time. This helps to prevent\n        accidental high charges.</p>\n            <p>You can also set up a billing alarm to alert you if your charges are higher than\n        expected. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html\">\n          Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges</a>.\n      </p>\n         </important>"}))
    MetricTransformation.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit to assign to the metric. If you omit this, the unit is set as\n      <code>None</code>.</p>"}))
    MetricTransformation.type = Types::MetricTransformation
    MetricTransformations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricTransformation)
    MoveKeyEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MoveKeyEntry)
    MoveKeyEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The key to move.</p>", "smithy.api#required" => {}}))
    MoveKeyEntry.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The key to move to.</p>", "smithy.api#required" => {}}))
    MoveKeyEntry.add_member(:overwrite_if_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: 'overwriteIfExists', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to overwrite the value if the destination key already exists. If you\n      omit this, the default is <code>false</code>.</p>"}))
    MoveKeyEntry.type = Types::MoveKeyEntry
    MoveKeys.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: MoveKeyEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of objects, where each object contains the information about one key to move.\n    </p>", "smithy.api#required" => {}}))
    MoveKeys.type = Types::MoveKeys
    OCSFVersion.add_member(:v1_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1_1', traits: {"smithy.api#enumValue" => "V1.1"}))
    OpenSearchApplication.add_member(:application_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchApplicationEndpoint, location_name: 'applicationEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the application.</p>"}))
    OpenSearchApplication.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'applicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    OpenSearchApplication.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    OpenSearchApplication.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchApplication.type = Types::OpenSearchApplication
    OpenSearchCollection.add_member(:collection_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchCollectionEndpoint, location_name: 'collectionEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the collection.</p>"}))
    OpenSearchCollection.add_member(:collection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'collectionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collection.</p>"}))
    OpenSearchCollection.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchCollection.type = Types::OpenSearchCollection
    OpenSearchDataAccessPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the data access policy.</p>"}))
    OpenSearchDataAccessPolicy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchDataAccessPolicy.type = Types::OpenSearchDataAccessPolicy
    OpenSearchDataSource.add_member(:data_source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchDataSourceName, location_name: 'dataSourceName', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch Service data source.</p>"}))
    OpenSearchDataSource.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchDataSource.type = Types::OpenSearchDataSource
    OpenSearchEncryptionPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the encryption policy.</p>"}))
    OpenSearchEncryptionPolicy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchEncryptionPolicy.type = Types::OpenSearchEncryptionPolicy
    OpenSearchIntegrationDetails.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchDataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service data source used for this\n      integration. This data source was created as part of the integration setup. An OpenSearch Service data source defines the source and destination for OpenSearch Service queries. It\n      includes the role required to execute queries and write to collections.</p>\n         <p>For more information about OpenSearch Service data sources , see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html\">Creating\n          OpenSearch Service data source integrations with Amazon S3.</a>\n         </p>"}))
    OpenSearchIntegrationDetails.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchApplication, location_name: 'application', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service application used for this\n      integration. An OpenSearch Service application is the web application that was created by the\n      integration with CloudWatch Logs. It hosts the vended logs dashboards.</p>"}))
    OpenSearchIntegrationDetails.add_member(:collection, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchCollection, location_name: 'collection', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service collection used for this\n      integration. This collection was created as part of the integration setup. An OpenSearch Service collection is a logical grouping of one or more indexes that represent an analytics\n      workload. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-collections.html\">Creating and\n        managing OpenSearch Service Serverless collections</a>.</p>"}))
    OpenSearchIntegrationDetails.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchWorkspace, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service workspace used for this\n      integration. An OpenSearch Service workspace is the collection of dashboards along with other\n        OpenSearch Service tools. This workspace was created automatically as part of the\n      integration setup. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html\">Centralized OpenSearch user\n        interface (Dashboards) with OpenSearch Service</a>.</p>"}))
    OpenSearchIntegrationDetails.add_member(:encryption_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchEncryptionPolicy, location_name: 'encryptionPolicy', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service encryption policy used\n      for this integration. The encryption policy was created automatically when you created the\n      integration. For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html#serverless-encryption-policies\">Encryption policies</a> in the OpenSearch Service Developer Guide. </p>"}))
    OpenSearchIntegrationDetails.add_member(:network_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchNetworkPolicy, location_name: 'networkPolicy', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service network policy used for\n      this integration. The network policy assigns network access settings to collections. For more\n      information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html#serverless-network-policies\">Network policies</a> in the OpenSearch Service Developer Guide.</p>"}))
    OpenSearchIntegrationDetails.add_member(:access_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchDataAccessPolicy, location_name: 'accessPolicy', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service data access policy used\n      for this integration. The access policy defines the access controls for the collection. This\n      data access policy was automatically created as part of the integration setup. For more\n      information about OpenSearch Service data access policies, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html\">Data access\n        control for Amazon OpenSearch Serverless</a> in the OpenSearch Service Developer\n      Guide.</p>"}))
    OpenSearchIntegrationDetails.add_member(:lifecycle_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchLifecyclePolicy, location_name: 'lifecyclePolicy', traits: {"smithy.api#documentation" => "<p>This structure contains information about the OpenSearch Service data lifecycle policy\n      used for this integration. The lifecycle policy determines the lifespan of the data in the\n      collection. It was automatically created as part of the integration setup.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html\">Using data\n        lifecycle policies with OpenSearch Service Serverless</a> in the OpenSearch Service\n      Developer Guide.</p>"}))
    OpenSearchIntegrationDetails.type = Types::OpenSearchIntegrationDetails
    OpenSearchLifecyclePolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the lifecycle policy.</p>"}))
    OpenSearchLifecyclePolicy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchLifecyclePolicy.type = Types::OpenSearchLifecyclePolicy
    OpenSearchNetworkPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the network policy.</p>"}))
    OpenSearchNetworkPolicy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of this OpenSearch Service\n      resource.</p>"}))
    OpenSearchNetworkPolicy.type = Types::OpenSearchNetworkPolicy
    OpenSearchResourceConfig.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>To have the vended dashboard data encrypted with KMS instead of the CloudWatch Logs default encryption method, specify the ARN of the KMS key that you\n      want to use.</p>"}))
    OpenSearchResourceConfig.add_member(:data_source_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'dataSourceRoleArn', traits: {"smithy.api#documentation" => "<p>Specify the ARN of an IAM role that CloudWatch Logs will use to create\n      the integration. This role must have the permissions necessary to access the OpenSearch Service collection to be able to create the dashboards. For more information about the permissions\n      needed, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/OpenSearch-Dashboards-CreateRole.html\">Permissions that\n        the integration needs</a> in the CloudWatch Logs User Guide.</p>", "smithy.api#required" => {}}))
    OpenSearchResourceConfig.add_member(:dashboard_viewer_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardViewerPrincipals, location_name: 'dashboardViewerPrincipals', traits: {"smithy.api#documentation" => "<p>Specify the ARNs of IAM roles and IAM users who you want to\n      grant permission to for viewing the dashboards.</p>\n         <important>\n            <p>In addition to specifying these users here, you must also grant them the <b>CloudWatchOpenSearchDashboardAccess</b>\n        IAM policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/OpenSearch-Dashboards-UserRoles.html\">IAM policies for\n          users</a>.</p>\n         </important>", "smithy.api#required" => {}}))
    OpenSearchResourceConfig.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'applicationArn', traits: {"smithy.api#documentation" => "<p>If you want to use an existing OpenSearch Service application for your integration with\n        OpenSearch Service, specify it here. If you omit this, a new application will be\n      created.</p>"}))
    OpenSearchResourceConfig.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionRetentionDays, location_name: 'retentionDays', traits: {"smithy.api#documentation" => "<p>Specify how many days that you want the data derived by OpenSearch Service to be retained\n      in the index that the dashboard refers to. This also sets the maximum time period that you can\n      choose when viewing data in the dashboard. Choosing a longer time frame will incur additional\n      costs. </p>", "smithy.api#required" => {}}))
    OpenSearchResourceConfig.type = Types::OpenSearchResourceConfig
    OpenSearchResourceStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatusType, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of this resource.</p>"}))
    OpenSearchResourceStatus.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A message with additional information about the status of this resource.</p>"}))
    OpenSearchResourceStatus.type = Types::OpenSearchResourceStatus
    OpenSearchResourceStatusType.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OpenSearchResourceStatusType.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FOUND', traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    OpenSearchResourceStatusType.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    OpenSearchWorkspace.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchWorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of this workspace.</p>"}))
    OpenSearchWorkspace.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>This structure contains information about the status of an OpenSearch Service\n      resource.</p>"}))
    OpenSearchWorkspace.type = Types::OpenSearchWorkspace
    OperationAbortedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    OperationAbortedException.type = Types::OperationAbortedException
    OrderBy.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LogStreamName', traits: {"smithy.api#enumValue" => "LogStreamName"}))
    OrderBy.add_member(:last_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastEventTime', traits: {"smithy.api#enumValue" => "LastEventTime"}))
    OutputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "json"}))
    OutputFormat.add_member(:plain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN', traits: {"smithy.api#enumValue" => "plain"}))
    OutputFormat.add_member(:w3_c, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'W3C', traits: {"smithy.api#enumValue" => "w3c"}))
    OutputFormat.add_member(:raw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RAW', traits: {"smithy.api#enumValue" => "raw"}))
    OutputFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "parquet"}))
    OutputFormats.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat)
    OutputLogEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time the event occurred, expressed as the number of milliseconds after <code>Jan 1,\n        1970 00:00:00 UTC</code>.</p>"}))
    OutputLogEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The data contained in the log event.</p>"}))
    OutputLogEvent.add_member(:ingestion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ingestionTime', traits: {"smithy.api#documentation" => "<p>The time the event was ingested, expressed as the number of milliseconds after\n        <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    OutputLogEvent.type = Types::OutputLogEvent
    OutputLogEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLogEvent)
    ParseCloudfront.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Omit this parameter and the whole log message will be processed by this processor. No\n      other value than <code>@message</code> is allowed for <code>source</code>.</p>"}))
    ParseCloudfront.type = Types::ParseCloudfront
    ParseJSON.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Path to the field in the log event that will be parsed. Use dot notation to access child\n      fields. For example, <code>store.book</code>\n         </p>"}))
    ParseJSON.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationField, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The location to put the parsed key value pair into. If you omit this parameter, it is\n      placed under the root node.</p>"}))
    ParseJSON.type = Types::ParseJSON
    ParseKeyValue.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Path to the field in the log event that will be parsed. Use dot notation to access child\n      fields. For example, <code>store.book</code>\n         </p>"}))
    ParseKeyValue.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationField, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The destination field to put the extracted key-value pairs into</p>"}))
    ParseKeyValue.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: ParserFieldDelimiter, location_name: 'fieldDelimiter', traits: {"smithy.api#documentation" => "<p>The field delimiter string that is used between key-value pairs in the original log\n      events. If you omit this, the ampersand <code>&</code> character is used.</p>"}))
    ParseKeyValue.add_member(:key_value_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueDelimiter, location_name: 'keyValueDelimiter', traits: {"smithy.api#documentation" => "<p>The delimiter string to use between the key and value in each pair in the transformed log\n      event.</p>\n         <p> If you omit this, the equal <code>=</code> character is used.</p>"}))
    ParseKeyValue.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>If you want to add a prefix to all transformed keys, specify it here.</p>"}))
    ParseKeyValue.add_member(:non_match_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonMatchValue, location_name: 'nonMatchValue', traits: {"smithy.api#documentation" => "<p>A value to insert into the value field in the result, when a key-value pair is not\n      successfully split.</p>"}))
    ParseKeyValue.add_member(:overwrite_if_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: 'overwriteIfExists', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to overwrite the value if the destination key already exists. If you\n      omit this, the default is <code>false</code>.</p>"}))
    ParseKeyValue.type = Types::ParseKeyValue
    ParsePostgres.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Omit this parameter and the whole log message will be processed by this processor. No\n      other value than <code>@message</code> is allowed for <code>source</code>.</p>"}))
    ParsePostgres.type = Types::ParsePostgres
    ParseRoute53.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Omit this parameter and the whole log message will be processed by this processor. No\n      other value than <code>@message</code> is allowed for <code>source</code>.</p>"}))
    ParseRoute53.type = Types::ParseRoute53
    ParseToOCSF.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The path to the field in the log event that you want to parse. If you omit this value, the\n      whole log message is parsed.</p>"}))
    ParseToOCSF.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource, location_name: 'eventSource', traits: {"smithy.api#documentation" => "<p>Specify the service or process that produces the log events that will be converted with\n      this processor.</p>", "smithy.api#required" => {}}))
    ParseToOCSF.add_member(:ocsf_version, Smithy::Schema::Shapes::ShapeRef.new(shape: OCSFVersion, location_name: 'ocsfVersion', traits: {"smithy.api#documentation" => "<p>Specify which version of the OCSF schema to use for the transformed log events.</p>", "smithy.api#required" => {}}))
    ParseToOCSF.type = Types::ParseToOCSF
    ParseVPC.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Omit this parameter and the whole log message will be processed by this processor. No\n      other value than <code>@message</code> is allowed for <code>source</code>.</p>"}))
    ParseVPC.type = Types::ParseVPC
    ParseWAF.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Omit this parameter and the whole log message will be processed by this processor. No\n      other value than <code>@message</code> is allowed for <code>source</code>.</p>"}))
    ParseWAF.type = Types::ParseWAF
    PatternToken.add_member(:dynamic_token_position, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicTokenPosition, location_name: 'dynamicTokenPosition', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>For a dynamic token, this indicates where in the pattern that this token appears, related\n      to other dynamic tokens. The dynamic token that appears first has a value of <code>1</code>,\n      the one that appears second is <code>2</code>, and so on.</p>"}))
    PatternToken.add_member(:is_dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isDynamic', traits: {"smithy.api#documentation" => "<p>Specifies whether this is a dynamic token.</p>"}))
    PatternToken.add_member(:token_string, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'tokenString', traits: {"smithy.api#documentation" => "<p>The string represented by this token. If this is a dynamic token, the value will be\n        <code><*></code>\n         </p>"}))
    PatternToken.add_member(:enumerations, Smithy::Schema::Shapes::ShapeRef.new(shape: Enumerations, location_name: 'enumerations', traits: {"smithy.api#documentation" => "<p>Contains the values found for a dynamic token, and the number of times each value was\n      found.</p>"}))
    PatternToken.add_member(:inferred_token_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InferredTokenName, location_name: 'inferredTokenName', traits: {"smithy.api#documentation" => "<p>A name that CloudWatch Logs assigned to this dynamic token to make the pattern more\n      readable. The string part of the <code>inferredTokenName</code> gives you a clearer idea of\n      the content of this token. The number part of the <code>inferredTokenName</code> shows where\n      in the pattern this token appears, compared to other dynamic tokens. CloudWatch Logs\n      assigns the string part of the name based on analyzing the content of the log events that\n      contain it.</p>\n         <p>For example, an inferred token name of <code>IPAddress-3</code> means that the token\n      represents an IP address, and this token is the third dynamic token in the pattern.</p>"}))
    PatternToken.type = Types::PatternToken
    PatternTokens.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PatternToken)
    Policy.add_member(:delivery_destination_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationPolicy, location_name: 'deliveryDestinationPolicy', traits: {"smithy.api#documentation" => "<p>The contents of the delivery destination policy.</p>"}))
    Policy.type = Types::Policy
    PolicyScope.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    PolicyScope.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    PolicyType.add_member(:data_protection_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_PROTECTION_POLICY', traits: {"smithy.api#enumValue" => "DATA_PROTECTION_POLICY"}))
    PolicyType.add_member(:subscription_filter_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBSCRIPTION_FILTER_POLICY', traits: {"smithy.api#enumValue" => "SUBSCRIPTION_FILTER_POLICY"}))
    PolicyType.add_member(:field_index_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_INDEX_POLICY', traits: {"smithy.api#enumValue" => "FIELD_INDEX_POLICY"}))
    PolicyType.add_member(:transformer_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSFORMER_POLICY', traits: {"smithy.api#enumValue" => "TRANSFORMER_POLICY"}))
    PolicyType.add_member(:metric_extraction_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METRIC_EXTRACTION_POLICY', traits: {"smithy.api#enumValue" => "METRIC_EXTRACTION_POLICY"}))
    Processor.add_member(:add_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: AddKeys, location_name: 'addKeys', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-addKeys\"> addKeys</a> processor in your transformer.</p>"}))
    Processor.add_member(:copy_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyValue, location_name: 'copyValue', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-copyValue\"> copyValue</a> processor in your transformer.</p>"}))
    Processor.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: CSV, location_name: 'csv', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-CSV\"> CSV</a> processor in your transformer.</p>"}))
    Processor.add_member(:date_time_converter, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimeConverter, location_name: 'dateTimeConverter', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-datetimeConverter\"> datetimeConverter</a> processor in your transformer.</p>"}))
    Processor.add_member(:delete_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeys, location_name: 'deleteKeys', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-deleteKeys\"> deleteKeys</a> processor in your transformer.</p>"}))
    Processor.add_member(:grok, Smithy::Schema::Shapes::ShapeRef.new(shape: Grok, location_name: 'grok', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-grok\"> grok</a> processor in your transformer.</p>"}))
    Processor.add_member(:list_to_map, Smithy::Schema::Shapes::ShapeRef.new(shape: ListToMap, location_name: 'listToMap', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-listToMap\"> listToMap</a> processor in your transformer.</p>"}))
    Processor.add_member(:lower_case_string, Smithy::Schema::Shapes::ShapeRef.new(shape: LowerCaseString, location_name: 'lowerCaseString', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-lowerCaseString\"> lowerCaseString</a> processor in your transformer.</p>"}))
    Processor.add_member(:move_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: MoveKeys, location_name: 'moveKeys', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-moveKeys\"> moveKeys</a> processor in your transformer.</p>"}))
    Processor.add_member(:parse_cloudfront, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseCloudfront, location_name: 'parseCloudfront', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseCloudfront\"> parseCloudfront</a> processor in your transformer.</p>\n         <p>If you use this processor, it must be the first processor in your transformer.</p>"}))
    Processor.add_member(:parse_json, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseJSON, location_name: 'parseJSON', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseJSON\"> parseJSON</a> processor in your transformer.</p>"}))
    Processor.add_member(:parse_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseKeyValue, location_name: 'parseKeyValue', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseKeyValue\"> parseKeyValue</a> processor in your transformer.</p>"}))
    Processor.add_member(:parse_route53, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseRoute53, location_name: 'parseRoute53', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseRoute53\"> parseRoute53</a> processor in your transformer.</p>\n         <p>If you use this processor, it must be the first processor in your transformer.</p>"}))
    Processor.add_member(:parse_to_ocsf, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseToOCSF, location_name: 'parseToOCSF', traits: {"smithy.api#documentation" => "<p>Use this parameter to convert logs into Open Cybersecurity Schema (OCSF) format.</p>"}))
    Processor.add_member(:parse_postgres, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsePostgres, location_name: 'parsePostgres', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parsePostGres\"> parsePostGres</a> processor in your transformer.</p>\n         <p>If you use this processor, it must be the first processor in your transformer.</p>"}))
    Processor.add_member(:parse_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseVPC, location_name: 'parseVPC', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseVPC\"> parseVPC</a> processor in your transformer.</p>\n         <p>If you use this processor, it must be the first processor in your transformer.</p>"}))
    Processor.add_member(:parse_waf, Smithy::Schema::Shapes::ShapeRef.new(shape: ParseWAF, location_name: 'parseWAF', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-parseWAF\"> parseWAF</a> processor in your transformer.</p>\n         <p>If you use this processor, it must be the first processor in your transformer.</p>"}))
    Processor.add_member(:rename_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: RenameKeys, location_name: 'renameKeys', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-renameKeys\"> renameKeys</a> processor in your transformer.</p>"}))
    Processor.add_member(:split_string, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitString, location_name: 'splitString', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-splitString\"> splitString</a> processor in your transformer.</p>"}))
    Processor.add_member(:substitute_string, Smithy::Schema::Shapes::ShapeRef.new(shape: SubstituteString, location_name: 'substituteString', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-substituteString\"> substituteString</a> processor in your transformer.</p>"}))
    Processor.add_member(:trim_string, Smithy::Schema::Shapes::ShapeRef.new(shape: TrimString, location_name: 'trimString', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-trimString\"> trimString</a> processor in your transformer.</p>"}))
    Processor.add_member(:type_converter, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeConverter, location_name: 'typeConverter', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-typeConverter\"> typeConverter</a> processor in your transformer.</p>"}))
    Processor.add_member(:upper_case_string, Smithy::Schema::Shapes::ShapeRef.new(shape: UpperCaseString, location_name: 'upperCaseString', traits: {"smithy.api#documentation" => "<p>Use this parameter to include the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-upperCaseString\"> upperCaseString</a> processor in your transformer.</p>"}))
    Processor.type = Types::Processor
    Processors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Processor)
    PutAccountPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>A name for the policy. This must be unique within the account.</p>", "smithy.api#required" => {}}))
    PutAccountPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>Specify the policy, in JSON.</p>\n         <p>\n            <b>Data protection policy</b>\n         </p>\n         <p>A data protection policy must include two JSON blocks:</p>\n         <ul>\n            <li>\n               <p>The first block must include both a <code>DataIdentifer</code> array and an\n            <code>Operation</code> property with an <code>Audit</code> action. The\n            <code>DataIdentifer</code> array lists the types of sensitive data that you want to\n          mask. For more information about the available options, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html\">Types of data that\n            you can mask</a>.</p>\n               <p>The <code>Operation</code> property with an <code>Audit</code> action is required to\n          find the sensitive data terms. This <code>Audit</code> action must contain a\n            <code>FindingsDestination</code> object. You can optionally use that\n            <code>FindingsDestination</code> object to list one or more destinations to send audit\n          findings to. If you specify destinations such as log groups, Firehose streams,\n          and S3 buckets, they must already exist.</p>\n            </li>\n            <li>\n               <p>The second block must include both a <code>DataIdentifer</code> array and an\n            <code>Operation</code> property with an <code>Deidentify</code> action. The\n            <code>DataIdentifer</code> array must exactly match the <code>DataIdentifer</code> array\n          in the first block of the policy.</p>\n               <p>The <code>Operation</code> property with the <code>Deidentify</code> action is what\n          actually masks the data, and it must contain the <code> \"MaskConfig\": {}</code> object.\n          The <code> \"MaskConfig\": {}</code> object must be empty.</p>\n            </li>\n         </ul>\n         <p>For an example data protection policy, see the <b>Examples</b>\n      section on this page.</p>\n         <important>\n            <p>The contents of the two <code>DataIdentifer</code> arrays must match exactly.</p>\n         </important>\n         <p>In addition to the two JSON blocks, the <code>policyDocument</code> can also include\n        <code>Name</code>, <code>Description</code>, and <code>Version</code> fields. The\n        <code>Name</code> is different than the operation's <code>policyName</code> parameter, and\n      is used as a dimension when CloudWatch Logs reports audit findings metrics to CloudWatch.</p>\n         <p>The JSON specified in <code>policyDocument</code> can be up to 30,720 characters\n      long.</p>\n         <p>\n            <b>Subscription filter policy</b>\n         </p>\n         <p>A subscription filter policy can include the following attributes in a JSON block:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>DestinationArn</b> The ARN of the destination to deliver\n          log events to. Supported destinations are:</p>\n               <ul>\n                  <li>\n                     <p>An Kinesis Data Streams data stream in the same account as the subscription policy,\n              for same-account delivery.</p>\n                  </li>\n                  <li>\n                     <p>An Firehose data stream in the same account as the subscription policy,\n              for same-account delivery.</p>\n                  </li>\n                  <li>\n                     <p>A Lambda function in the same account as the subscription policy, for\n              same-account delivery.</p>\n                  </li>\n                  <li>\n                     <p>A logical destination in a different account created with <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html\">PutDestination</a>, for cross-account delivery. Kinesis Data Streams and Firehose are supported as logical destinations.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <b>RoleArn</b> The ARN of an IAM role that grants CloudWatch\n          Logs permissions to deliver ingested log events to the destination stream. You don't need\n          to provide the ARN when you are working with a logical destination for cross-account\n          delivery.</p>\n            </li>\n            <li>\n               <p>\n                  <b>FilterPattern</b> A filter pattern for subscribing to\n          a filtered stream of log events.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Distribution</b> The method used to distribute log data\n          to the destination. By default, log data is grouped by log stream, but the grouping can be\n          set to <code>Random</code> for a more even distribution. This property is only applicable\n          when the destination is an Kinesis Data Streams data stream.</p>\n            </li>\n         </ul>\n         <p>\n            <b>Transformer policy</b>\n         </p>\n         <p>A transformer policy must include one JSON block with the array of processors and their\n      configurations. For more information about available processors, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors\"> Processors that you can use</a>. </p>\n         <p>\n            <b>Field index policy</b>\n         </p>\n         <p>A field index filter policy can include the following attribute in a JSON block:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Fields</b> The array of field indexes to create.</p>\n            </li>\n         </ul>\n         <p>It must contain at least one field index.</p>\n         <p>The following is an example of an index policy document that creates two indexes,\n        <code>RequestId</code> and <code>TransactionId</code>.</p>\n         <p>\n            <code>\"policyDocument\": \"{ \\\"Fields\\\": [ \\\"RequestId\\\", \\\"TransactionId\\\" ]\n      }\"</code>\n         </p>", "smithy.api#required" => {}}))
    PutAccountPolicyRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>The type of policy that you're creating or updating.</p>", "smithy.api#required" => {}}))
    PutAccountPolicyRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>Currently the only valid value for this parameter is <code>ALL</code>, which specifies\n      that the data protection policy applies to all log groups in the account. If you omit this\n      parameter, the default of <code>ALL</code> is used.</p>"}))
    PutAccountPolicyRequest.add_member(:selection_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectionCriteria, location_name: 'selectionCriteria', traits: {"smithy.api#documentation" => "<p>Use this parameter to apply the new policy to a subset of log groups in the\n      account.</p>\n         <p>Specifying <code>selectionCriteria</code> is valid only when you specify\n        <code>SUBSCRIPTION_FILTER_POLICY</code>, <code>FIELD_INDEX_POLICY</code> or\n        <code>TRANSFORMER_POLICY</code>for <code>policyType</code>.</p>\n         <p>If <code>policyType</code> is <code>SUBSCRIPTION_FILTER_POLICY</code>, the only supported\n        <code>selectionCriteria</code> filter is <code>LogGroupName NOT IN []</code>\n         </p>\n         <p>If <code>policyType</code> is <code>FIELD_INDEX_POLICY</code> or\n        <code>TRANSFORMER_POLICY</code>, the only supported <code>selectionCriteria</code> filter is\n        <code>LogGroupNamePrefix</code>\n         </p>\n         <p>The <code>selectionCriteria</code> string can be up to 25KB in length. The length is\n      determined by using its UTF-8 bytes.</p>\n         <p>Using the <code>selectionCriteria</code> parameter with\n        <code>SUBSCRIPTION_FILTER_POLICY</code> is useful to help prevent infinite loops. For more\n      information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions-recursion-prevention.html\">Log recursion\n        prevention</a>.</p>"}))
    PutAccountPolicyRequest.type = Types::PutAccountPolicyRequest
    PutAccountPolicyResponse.add_member(:account_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPolicy, location_name: 'accountPolicy', traits: {"smithy.api#documentation" => "<p>The account policy that you created.</p>"}))
    PutAccountPolicyResponse.type = Types::PutAccountPolicyResponse
    PutDataProtectionPolicyRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the log group name or log group ARN.</p>", "smithy.api#required" => {}}))
    PutDataProtectionPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>Specify the data protection policy, in JSON.</p>\n         <p>This policy must include two JSON blocks:</p>\n         <ul>\n            <li>\n               <p>The first block must include both a <code>DataIdentifer</code> array and an\n            <code>Operation</code> property with an <code>Audit</code> action. The\n            <code>DataIdentifer</code> array lists the types of sensitive data that you want to\n          mask. For more information about the available options, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html\">Types of data that\n            you can mask</a>.</p>\n               <p>The <code>Operation</code> property with an <code>Audit</code> action is required to\n          find the sensitive data terms. This <code>Audit</code> action must contain a\n            <code>FindingsDestination</code> object. You can optionally use that\n            <code>FindingsDestination</code> object to list one or more destinations to send audit\n          findings to. If you specify destinations such as log groups, Firehose streams,\n          and S3 buckets, they must already exist.</p>\n            </li>\n            <li>\n               <p>The second block must include both a <code>DataIdentifer</code> array and an\n            <code>Operation</code> property with an <code>Deidentify</code> action. The\n            <code>DataIdentifer</code> array must exactly match the <code>DataIdentifer</code> array\n          in the first block of the policy.</p>\n               <p>The <code>Operation</code> property with the <code>Deidentify</code> action is what\n          actually masks the data, and it must contain the <code> \"MaskConfig\": {}</code> object.\n          The <code> \"MaskConfig\": {}</code> object must be empty.</p>\n            </li>\n         </ul>\n         <p>For an example data protection policy, see the <b>Examples</b>\n      section on this page.</p>\n         <important>\n            <p>The contents of the two <code>DataIdentifer</code> arrays must match exactly.</p>\n         </important>\n         <p>In addition to the two JSON blocks, the <code>policyDocument</code> can also include\n        <code>Name</code>, <code>Description</code>, and <code>Version</code> fields. The\n        <code>Name</code> is used as a dimension when CloudWatch Logs reports audit findings\n      metrics to CloudWatch.</p>\n         <p>The JSON specified in <code>policyDocument</code> can be up to 30,720 characters.</p>", "smithy.api#required" => {}}))
    PutDataProtectionPolicyRequest.type = Types::PutDataProtectionPolicyRequest
    PutDataProtectionPolicyResponse.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The log group name or ARN that you specified in your request.</p>"}))
    PutDataProtectionPolicyResponse.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: DataProtectionPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The data protection policy used for this log group.</p>"}))
    PutDataProtectionPolicyResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that this policy was most recently updated.</p>"}))
    PutDataProtectionPolicyResponse.type = Types::PutDataProtectionPolicyResponse
    PutDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'deliveryDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the delivery destination to assign this policy to.</p>", "smithy.api#required" => {}}))
    PutDeliveryDestinationPolicyRequest.add_member(:delivery_destination_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationPolicy, location_name: 'deliveryDestinationPolicy', traits: {"smithy.api#documentation" => "<p>The contents of the policy.</p>", "smithy.api#required" => {}}))
    PutDeliveryDestinationPolicyRequest.type = Types::PutDeliveryDestinationPolicyRequest
    PutDeliveryDestinationPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The contents of the policy that you just created.</p>"}))
    PutDeliveryDestinationPolicyResponse.type = Types::PutDeliveryDestinationPolicyResponse
    PutDeliveryDestinationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for this delivery destination. This name must be unique for all delivery\n      destinations in your account.</p>", "smithy.api#required" => {}}))
    PutDeliveryDestinationRequest.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'outputFormat', traits: {"smithy.api#documentation" => "<p>The format for the logs that this delivery destination will receive.</p>"}))
    PutDeliveryDestinationRequest.add_member(:delivery_destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationConfiguration, location_name: 'deliveryDestinationConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains the ARN of the Amazon Web Services resource that will receive the\n      logs.</p>\n         <note>\n            <p>\n               <code>deliveryDestinationConfiguration</code> is required for CloudWatch Logs, Amazon S3, Firehose log delivery destinations and not required for X-Ray trace delivery destinations. <code>deliveryDestinationType</code> is needed for X-Ray trace delivery destinations but not required for other logs delivery destinations.</p>\n         </note>"}))
    PutDeliveryDestinationRequest.add_member(:delivery_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: 'deliveryDestinationType', traits: {"smithy.api#documentation" => "<p>The type of delivery destination. This parameter specifies the target service where log data will be delivered. Valid values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>S3</code> - Amazon S3 for long-term storage and analytics</p>\n            </li>\n            <li>\n               <p>\n                  <code>CWL</code> - CloudWatch Logs for centralized log management</p>\n            </li>\n            <li>\n               <p>\n                  <code>FH</code> - Amazon Kinesis Data Firehose for real-time data streaming</p>\n            </li>\n            <li>\n               <p>\n                  <code>XRAY</code> - Amazon Web Services X-Ray for distributed tracing and application monitoring</p>\n            </li>\n         </ul>\n         <p>The delivery destination type determines the format and configuration options available for log delivery.</p>"}))
    PutDeliveryDestinationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of key-value pairs to associate with the resource.</p>\n         <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n         </p>"}))
    PutDeliveryDestinationRequest.type = Types::PutDeliveryDestinationRequest
    PutDeliveryDestinationResponse.add_member(:delivery_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryDestination, location_name: 'deliveryDestination', traits: {"smithy.api#documentation" => "<p>A structure containing information about the delivery destination that you just created or\n      updated.</p>"}))
    PutDeliveryDestinationResponse.type = Types::PutDeliveryDestinationResponse
    PutDeliverySourceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for this delivery source. This name must be unique for all delivery sources in your\n      account.</p>", "smithy.api#required" => {}}))
    PutDeliverySourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Web Services resource that is generating and sending logs. For\n      example,\n        <code>arn:aws:workmail:us-east-1:123456789012:organization/m-1234EXAMPLEabcd1234abcd1234abcd1234</code>\n         </p>", "smithy.api#required" => {}}))
    PutDeliverySourceRequest.add_member(:log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#documentation" => "<p>Defines the type of log that the source is sending.</p>\n         <ul>\n            <li>\n               <p>For Amazon Bedrock, the valid value is <code>APPLICATION_LOGS</code> and <code>TRACES</code>.</p>\n            </li>\n            <li>\n               <p>For CloudFront, the valid value is <code>ACCESS_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Amazon CodeWhisperer, the valid value is <code>EVENT_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Elemental MediaPackage, the valid values are <code>EGRESS_ACCESS_LOGS</code> and\n            <code>INGRESS_ACCESS_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Elemental MediaTailor, the valid values are <code>AD_DECISION_SERVER_LOGS</code>,\n            <code>MANIFEST_SERVICE_LOGS</code>, and <code>TRANSCODE_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Entity Resolution, the valid value is <code>WORKFLOW_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For IAM Identity Center, the valid value is\n          <code>ERROR_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For PCS, the valid values are <code>PCS_SCHEDULER_LOGS</code> and\n            <code>PCS_JOBCOMP_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Amazon Q, the valid value is <code>EVENT_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Amazon SES mail manager, the valid values are <code>APPLICATION_LOG</code>\n          and <code>TRAFFIC_POLICY_DEBUG_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Amazon WorkMail, the valid values are <code>ACCESS_CONTROL_LOGS</code>,\n            <code>AUTHENTICATION_LOGS</code>, <code>WORKMAIL_AVAILABILITY_PROVIDER_LOGS</code>,\n            <code>WORKMAIL_MAILBOX_ACCESS_LOGS</code>, and\n            <code>WORKMAIL_PERSONAL_ACCESS_TOKEN_LOGS</code>.</p>\n            </li>\n            <li>\n               <p>For Amazon VPC Route Server, the valid value is\n          <code>EVENT_LOGS</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutDeliverySourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of key-value pairs to associate with the resource.</p>\n         <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n         </p>"}))
    PutDeliverySourceRequest.type = Types::PutDeliverySourceRequest
    PutDeliverySourceResponse.add_member(:delivery_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySource, location_name: 'deliverySource', traits: {"smithy.api#documentation" => "<p>A structure containing information about the delivery source that was just created or\n      updated.</p>"}))
    PutDeliverySourceResponse.type = Types::PutDeliverySourceResponse
    PutDestinationPolicyRequest.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>A name for an existing destination.</p>", "smithy.api#required" => {}}))
    PutDestinationPolicyRequest.add_member(:access_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicy, location_name: 'accessPolicy', traits: {"smithy.api#documentation" => "<p>An IAM policy document that authorizes cross-account users to deliver their log events\n      to the associated destination. This can be up to 5120 bytes.</p>", "smithy.api#required" => {}}))
    PutDestinationPolicyRequest.add_member(:force_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ForceUpdate, location_name: 'forceUpdate', traits: {"smithy.api#documentation" => "<p>Specify true if you are updating an existing destination policy to grant permission to an\n      organization ID instead of granting permission to individual Amazon Web Services accounts.\n      Before you update a destination policy this way, you must first update the subscription\n      filters in the accounts that send logs to this destination. If you do not, the subscription\n      filters might stop working. By specifying <code>true</code> for <code>forceUpdate</code>, you\n      are affirming that you have already updated the subscription filters. For more information,\n      see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html\"> Updating an\n        existing cross-account subscription</a>\n         </p>\n         <p>If you omit this parameter, the default of <code>false</code> is used.</p>"}))
    PutDestinationPolicyRequest.type = Types::PutDestinationPolicyRequest
    PutDestinationRequest.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>A name for the destination.</p>", "smithy.api#required" => {}}))
    PutDestinationRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The ARN of an Amazon Kinesis stream to which to deliver matching log events.</p>", "smithy.api#required" => {}}))
    PutDestinationRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon\n      Kinesis <code>PutRecord</code> operation on the destination stream.</p>", "smithy.api#required" => {}}))
    PutDestinationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional list of key-value pairs to associate with the resource.</p>\n         <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n         </p>"}))
    PutDestinationRequest.type = Types::PutDestinationRequest
    PutDestinationResponse.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The destination.</p>"}))
    PutDestinationResponse.type = Types::PutDestinationResponse
    PutIndexPolicyRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the log group name or log group ARN to apply this field index policy to. If\n      you specify an ARN, use the format\n        arn:aws:logs:<i>region</i>:<i>account-id</i>:log-group:<i>log_group_name</i>\n      Don't include an * at the end.</p>", "smithy.api#required" => {}}))
    PutIndexPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The index policy document, in JSON format. The following is an example of an index policy\n      document that creates two indexes, <code>RequestId</code> and\n      <code>TransactionId</code>.</p>\n         <p>\n            <code>\"policyDocument\": \"{ \"Fields\": [ \"RequestId\", \"TransactionId\" ] }\"</code>\n         </p>\n         <p>The policy document must include at least one field index. For more information about the\n      fields that can be included and other restrictions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing-Syntax.html\">Field index\n        syntax and quotas</a>.</p>", "smithy.api#required" => {}}))
    PutIndexPolicyRequest.type = Types::PutIndexPolicyRequest
    PutIndexPolicyResponse.add_member(:index_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexPolicy, location_name: 'indexPolicy', traits: {"smithy.api#documentation" => "<p>The index policy that you just created or updated.</p>"}))
    PutIndexPolicyResponse.type = Types::PutIndexPolicyResponse
    PutIntegrationRequest.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'integrationName', traits: {"smithy.api#documentation" => "<p>A name for the integration.</p>", "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfig, location_name: 'resourceConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains configuration information for the integration that you are\n      creating.</p>", "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:integration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationType, location_name: 'integrationType', traits: {"smithy.api#documentation" => "<p>The type of integration. Currently, the only supported type is\n      <code>OPENSEARCH</code>.</p>", "smithy.api#required" => {}}))
    PutIntegrationRequest.type = Types::PutIntegrationRequest
    PutIntegrationResponse.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'integrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration that you just created.</p>"}))
    PutIntegrationResponse.add_member(:integration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'integrationStatus', traits: {"smithy.api#documentation" => "<p>The status of the integration that you just created.</p>\n         <p>After you create an integration, it takes a few minutes to complete. During this time,\n      you'll see the status as <code>PROVISIONING</code>.</p>"}))
    PutIntegrationResponse.type = Types::PutIntegrationResponse
    PutLogEventsRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    PutLogEventsRequest.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream.</p>", "smithy.api#required" => {}}))
    PutLogEventsRequest.add_member(:log_events, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogEvents, location_name: 'logEvents', traits: {"smithy.api#documentation" => "<p>The log events.</p>", "smithy.api#required" => {}}))
    PutLogEventsRequest.add_member(:sequence_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceToken, location_name: 'sequenceToken', traits: {"smithy.api#documentation" => "<p>The sequence token obtained from the response of the previous <code>PutLogEvents</code>\n      call.</p>\n         <important>\n            <p>The <code>sequenceToken</code> parameter is now ignored in <code>PutLogEvents</code>\n        actions. <code>PutLogEvents</code> actions are now accepted and never return\n          <code>InvalidSequenceTokenException</code> or <code>DataAlreadyAcceptedException</code>\n        even if the sequence token is not valid.</p>\n         </important>"}))
    PutLogEventsRequest.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Entity, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>The entity associated with the log events.</p>"}))
    PutLogEventsRequest.type = Types::PutLogEventsRequest
    PutLogEventsResponse.add_member(:next_sequence_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceToken, location_name: 'nextSequenceToken', traits: {"smithy.api#documentation" => "<p>The next sequence token.</p>\n         <important>\n            <p>This field has been deprecated.</p>\n            <p>The sequence token is now ignored in <code>PutLogEvents</code> actions.\n          <code>PutLogEvents</code> actions are always accepted even if the sequence token is not\n        valid. You can use parallel <code>PutLogEvents</code> actions on the same log stream and you\n        do not need to wait for the response of a previous <code>PutLogEvents</code> action to\n        obtain the <code>nextSequenceToken</code> value.</p>\n         </important>"}))
    PutLogEventsResponse.add_member(:rejected_log_events_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RejectedLogEventsInfo, location_name: 'rejectedLogEventsInfo', traits: {"smithy.api#documentation" => "<p>The rejected events.</p>"}))
    PutLogEventsResponse.add_member(:rejected_entity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RejectedEntityInfo, location_name: 'rejectedEntityInfo', traits: {"smithy.api#documentation" => "<p>Information about why the entity is rejected when calling <code>PutLogEvents</code>. Only\n      returned when the entity is rejected.</p>\n         <note>\n            <p>When the entity is rejected, the events may still be accepted.</p>\n         </note>"}))
    PutLogEventsResponse.type = Types::PutLogEventsResponse
    PutMetricFilterRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterName', traits: {"smithy.api#documentation" => "<p>A name for the metric filter.</p>", "smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern', traits: {"smithy.api#documentation" => "<p>A filter pattern for extracting metric data out of ingested log events.</p>", "smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:metric_transformations, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricTransformations, location_name: 'metricTransformations', traits: {"smithy.api#documentation" => "<p>A collection of information that defines how metric data gets emitted.</p>", "smithy.api#required" => {}}))
    PutMetricFilterRequest.add_member(:apply_on_transformed_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: 'applyOnTransformedLogs', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This parameter is valid only for log groups that have an active log transformer. For more\n      information about log transformers, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html\">PutTransformer</a>.</p>\n         <p>If the log group uses either a log-group level or account-level transformer, and you\n      specify <code>true</code>, the metric filter will be applied on the transformed version of the\n      log events instead of the original ingested log events.</p>"}))
    PutMetricFilterRequest.type = Types::PutMetricFilterRequest
    PutQueryDefinitionRequest.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>Specify the query language to use for this query. The options are Logs Insights QL,\n      OpenSearch PPL, and OpenSearch SQL. For more information about the query languages that\n        CloudWatch Logs supports, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html\">Supported query\n        languages</a>.</p>"}))
    PutQueryDefinitionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the query definition. If you are saving numerous query definitions, we\n      recommend that you name them. This way, you can find the ones you want by using the first part\n      of the name as a filter in the <code>queryDefinitionNamePrefix</code> parameter of <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html\">DescribeQueryDefinitions</a>.</p>", "smithy.api#required" => {}}))
    PutQueryDefinitionRequest.add_member(:query_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryDefinitionId', traits: {"smithy.api#documentation" => "<p>If you are updating a query definition, use this parameter to specify the ID of the query\n      definition that you want to update. You can use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html\">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query\n      definitions.</p>\n         <p>If you are creating a query definition, do not specify this parameter. CloudWatch\n      generates a unique ID for the new query definition and include it in the response to this\n      operation.</p>"}))
    PutQueryDefinitionRequest.add_member(:log_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupNames, location_name: 'logGroupNames', traits: {"smithy.api#documentation" => "<p>Use this parameter to include specific log groups as part of your query definition. If\n      your query uses the OpenSearch Service query language, you specify the log group names inside\n      the <code>querystring</code> instead of here.</p>\n         <p>If you are updating an existing query definition for the Logs Insights QL or OpenSearch Service PPL and you omit this parameter, then the updated definition will contain no log\n      groups.</p>"}))
    PutQueryDefinitionRequest.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinitionString, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query string to use for this definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html\">CloudWatch Logs\n        Insights Query Syntax</a>.</p>", "smithy.api#required" => {}}))
    PutQueryDefinitionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Used as an idempotency token, to avoid returning an exception if the service receives the\n      same request twice because of a network error.</p>", "smithy.api#idempotencyToken" => {}}))
    PutQueryDefinitionRequest.type = Types::PutQueryDefinitionRequest
    PutQueryDefinitionResponse.add_member(:query_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the query definition.</p>"}))
    PutQueryDefinitionResponse.type = Types::PutQueryDefinitionResponse
    PutResourcePolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>Name of the new policy. This parameter is required.</p>"}))
    PutResourcePolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>Details of the new policy, including the identity of the principal that is enabled to\n      put logs to this account. This is formatted as a JSON string. This parameter is\n      required.</p>\n         <p>The following example creates a resource policy enabling the Route 53 service to put\n      DNS query logs in to the specified log group. Replace <code>\"logArn\"</code> with the ARN of\n      your CloudWatch Logs resource, such as a log group or log stream.</p>\n         <p>CloudWatch Logs also supports <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn\">aws:SourceArn</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount\">aws:SourceAccount</a> condition context keys.</p>\n         <p>In the example resource policy, you would replace the value of <code>SourceArn</code> with\n      the resource making the call from Route 53 to CloudWatch Logs. You would also\n      replace the value of <code>SourceAccount</code> with the Amazon Web Services account ID making\n      that call.</p>\n         <p></p>\n         <p>\n            <code>{ \"Version\": \"2012-10-17\", \"Statement\": [ { \"Sid\": \"Route53LogsToCloudWatchLogs\",\n        \"Effect\": \"Allow\", \"Principal\": { \"Service\": [ \"route53.amazonaws.com\" ] }, \"Action\":\n        \"logs:PutLogEvents\", \"Resource\": \"logArn\", \"Condition\": { \"ArnLike\": { \"aws:SourceArn\":\n        \"myRoute53ResourceArn\" }, \"StringEquals\": { \"aws:SourceAccount\": \"myAwsAccountId\" } } } ]\n        }</code>\n         </p>"}))
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Logs resource to which the resource policy needs to be added or attached. Currently only supports LogGroup ARN.</p>"}))
    PutResourcePolicyRequest.add_member(:expected_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: 'expectedRevisionId', traits: {"smithy.api#documentation" => "<p>The expected revision ID of the resource policy. Required when <code>resourceArn</code> is provided to prevent concurrent modifications. Use <code>null</code> when creating a resource policy for the first time.</p>"}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'resourcePolicy', traits: {"smithy.api#documentation" => "<p>The new policy.</p>"}))
    PutResourcePolicyResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the created or updated resource policy. Only returned for resource-scoped policies.</p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRetentionPolicyRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    PutRetentionPolicyRequest.add_member(:retention_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Days, location_name: 'retentionInDays', traits: {"smithy.api#required" => {}}))
    PutRetentionPolicyRequest.type = Types::PutRetentionPolicyRequest
    PutSubscriptionFilterRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterName', traits: {"smithy.api#documentation" => "<p>A name for the subscription filter. If you are updating an existing filter, you must\n      specify the correct name in <code>filterName</code>. To find the name of the filter currently\n      associated with a log group, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html\">DescribeSubscriptionFilters</a>.</p>", "smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern', traits: {"smithy.api#documentation" => "<p>A filter pattern for subscribing to a filtered stream of log events.</p>", "smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the destination to deliver matching log events to. Currently, the supported\n      destinations are:</p>\n         <ul>\n            <li>\n               <p>An Amazon Kinesis stream belonging to the same account as the subscription filter,\n          for same-account delivery.</p>\n            </li>\n            <li>\n               <p>A logical destination (specified using an ARN) belonging to a different account,\n          for cross-account delivery.</p>\n               <p>If you're setting up a cross-account subscription, the destination must have an IAM\n          policy associated with it. The IAM policy must allow the sender to send logs to the\n          destination. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html\">PutDestinationPolicy</a>.</p>\n            </li>\n            <li>\n               <p>A Kinesis Data Firehose delivery stream belonging to the same account as the\n          subscription filter, for same-account delivery.</p>\n            </li>\n            <li>\n               <p>A Lambda function belonging to the same account as the subscription\n          filter, for same-account delivery.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutSubscriptionFilterRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log\n      events to the destination stream. You don't need to provide the ARN when you are working with\n      a logical destination for cross-account delivery.</p>"}))
    PutSubscriptionFilterRequest.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'distribution', traits: {"smithy.api#documentation" => "<p>The method used to distribute log data to the destination. By default, log data is\n      grouped by log stream, but the grouping can be set to random for a more even distribution.\n      This property is only applicable when the destination is an Amazon Kinesis data stream.\n    </p>"}))
    PutSubscriptionFilterRequest.add_member(:apply_on_transformed_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: 'applyOnTransformedLogs', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This parameter is valid only for log groups that have an active log transformer. For more\n      information about log transformers, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html\">PutTransformer</a>.</p>\n         <p>If the log group uses either a log-group level or account-level transformer, and you\n      specify <code>true</code>, the subscription filter will be applied on the transformed version\n      of the log events instead of the original ingested log events.</p>"}))
    PutSubscriptionFilterRequest.type = Types::PutSubscriptionFilterRequest
    PutTransformerRequest.add_member(:log_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or ARN of the log group to create the transformer for. </p>", "smithy.api#required" => {}}))
    PutTransformerRequest.add_member(:transformer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Processors, location_name: 'transformerConfig', traits: {"smithy.api#documentation" => "<p>This structure contains the configuration of this log transformer. A log transformer is an\n      array of processors, where each processor applies one type of transformation to the log events\n      that are ingested.</p>", "smithy.api#required" => {}}))
    PutTransformerRequest.type = Types::PutTransformerRequest
    QueryCompileError.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryCompileErrorLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    QueryCompileError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    QueryCompileError.type = Types::QueryCompileError
    QueryCompileErrorLocation.add_member(:start_char_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryCharOffset, location_name: 'startCharOffset', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    QueryCompileErrorLocation.add_member(:end_char_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryCharOffset, location_name: 'endCharOffset', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    QueryCompileErrorLocation.type = Types::QueryCompileErrorLocation
    QueryDefinition.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>The query language used for this query. For more information about the query languages\n      that CloudWatch Logs supports, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html\">Supported query\n        languages</a>.</p>"}))
    QueryDefinition.add_member(:query_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryDefinitionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query definition.</p>"}))
    QueryDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the query definition.</p>"}))
    QueryDefinition.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinitionString, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query string to use for this definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html\">CloudWatch Logs\n        Insights Query Syntax</a>.</p>"}))
    QueryDefinition.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModified', traits: {"smithy.api#documentation" => "<p>The date that the query definition was most recently modified.</p>"}))
    QueryDefinition.add_member(:log_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupNames, location_name: 'logGroupNames', traits: {"smithy.api#documentation" => "<p>If this query definition contains a list of log groups that it is limited to, that list\n      appears here.</p>"}))
    QueryDefinition.type = Types::QueryDefinition
    QueryDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryDefinition)
    QueryInfo.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>The query language used for this query. For more information about the query languages\n      that CloudWatch Logs supports, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html\">Supported query\n        languages</a>.</p>"}))
    QueryInfo.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The unique ID number of this query.</p>"}))
    QueryInfo.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query string used in this query.</p>"}))
    QueryInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of this query. Possible values are <code>Cancelled</code>,\n        <code>Complete</code>, <code>Failed</code>, <code>Running</code>, <code>Scheduled</code>,\n      and <code>Unknown</code>.</p>"}))
    QueryInfo.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The date and time that this query was created.</p>"}))
    QueryInfo.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group scanned by this query.</p>"}))
    QueryInfo.type = Types::QueryInfo
    QueryInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInfo)
    QueryLanguage.add_member(:cwli, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CWLI', traits: {"smithy.api#enumValue" => "CWLI"}))
    QueryLanguage.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    QueryLanguage.add_member(:ppl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PPL', traits: {"smithy.api#enumValue" => "PPL"}))
    QueryResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultRows)
    QueryStatistics.add_member(:records_matched, Smithy::Schema::Shapes::ShapeRef.new(shape: StatsValue, location_name: 'recordsMatched', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of log events that matched the query string.</p>"}))
    QueryStatistics.add_member(:records_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: StatsValue, location_name: 'recordsScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of log events scanned during the query.</p>"}))
    QueryStatistics.add_member(:estimated_records_skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: StatsValue, location_name: 'estimatedRecordsSkipped', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An estimate of the number of log events that were skipped when processing this query,\n      because the query contained an indexed field. Skipping these entries lowers query costs and\n      improves the query performance time. For more information about field indexes, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html\">PutIndexPolicy</a>.</p>"}))
    QueryStatistics.add_member(:bytes_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: StatsValue, location_name: 'bytesScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of bytes in the log events scanned during the query.</p>"}))
    QueryStatistics.add_member(:estimated_bytes_skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: StatsValue, location_name: 'estimatedBytesSkipped', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An estimate of the number of bytes in the log events that were skipped when processing\n      this query, because the query contained an indexed field. Skipping these entries lowers query\n      costs and improves the query performance time. For more information about field indexes, see\n        <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html\">PutIndexPolicy</a>.</p>"}))
    QueryStatistics.add_member(:log_groups_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: StatsValue, location_name: 'logGroupsScanned', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of log groups that were scanned by this query.</p>"}))
    QueryStatistics.type = Types::QueryStatistics
    QueryStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Scheduled', traits: {"smithy.api#enumValue" => "Scheduled"}))
    QueryStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    QueryStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Complete', traits: {"smithy.api#enumValue" => "Complete"}))
    QueryStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    QueryStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    QueryStatus.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Timeout', traits: {"smithy.api#enumValue" => "Timeout"}))
    QueryStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "Unknown"}))
    RecordField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldHeader, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name to use when specifying this record field in a <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html\">CreateDelivery</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html\">UpdateDeliveryConfiguration</a> operation. </p>"}))
    RecordField.add_member(:mandatory, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'mandatory', traits: {"smithy.api#documentation" => "<p>If this is <code>true</code>, the record field must be present in the\n        <code>recordFields</code> parameter provided to a <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html\">CreateDelivery</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html\">UpdateDeliveryConfiguration</a> operation.</p>"}))
    RecordField.type = Types::RecordField
    RecordFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldHeader)
    RejectedEntityInfo.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityRejectionErrorType, location_name: 'errorType', traits: {"smithy.api#documentation" => "<p>The type of error that caused the rejection of the entity when calling\n        <code>PutLogEvents</code>.</p>", "smithy.api#required" => {}}))
    RejectedEntityInfo.type = Types::RejectedEntityInfo
    RejectedLogEventsInfo.add_member(:too_new_log_event_start_index, Smithy::Schema::Shapes::ShapeRef.new(shape: LogEventIndex, location_name: 'tooNewLogEventStartIndex', traits: {"smithy.api#documentation" => "<p>The index of the first log event that is too new. This field is inclusive.</p>"}))
    RejectedLogEventsInfo.add_member(:too_old_log_event_end_index, Smithy::Schema::Shapes::ShapeRef.new(shape: LogEventIndex, location_name: 'tooOldLogEventEndIndex', traits: {"smithy.api#documentation" => "<p>The index of the last log event that is too old. This field is exclusive.</p>"}))
    RejectedLogEventsInfo.add_member(:expired_log_event_end_index, Smithy::Schema::Shapes::ShapeRef.new(shape: LogEventIndex, location_name: 'expiredLogEventEndIndex', traits: {"smithy.api#documentation" => "<p>The expired log events.</p>"}))
    RejectedLogEventsInfo.type = Types::RejectedLogEventsInfo
    RenameKeyEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RenameKeyEntry)
    RenameKeyEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key to rename</p>", "smithy.api#required" => {}}))
    RenameKeyEntry.add_member(:rename_to, Smithy::Schema::Shapes::ShapeRef.new(shape: RenameTo, location_name: 'renameTo', traits: {"smithy.api#documentation" => "<p>The string to use for the new key name</p>", "smithy.api#required" => {}}))
    RenameKeyEntry.add_member(:overwrite_if_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: 'overwriteIfExists', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to overwrite the existing value if the destination key already exists.\n      The default is <code>false</code>\n         </p>"}))
    RenameKeyEntry.type = Types::RenameKeyEntry
    RenameKeys.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: RenameKeyEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of <code>RenameKeyEntry</code> objects, where each object contains the\n      information about a single key to rename. </p>", "smithy.api#required" => {}}))
    RenameKeys.type = Types::RenameKeys
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ResourceConfig.add_member(:open_search_resource_config, Types::ResourceConfig::OpenSearchResourceConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchResourceConfig, location_name: 'openSearchResourceConfig', traits: {"smithy.api#documentation" => "<p>This structure contains configuration details about an integration between CloudWatch Logs and OpenSearch Service.</p>"}))
    ResourceConfig.add_member(:unknown, Types::ResourceConfig::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ResourceConfig.type = Types::ResourceConfig
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy)
    ResourcePolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName', traits: {"smithy.api#documentation" => "<p>The name of the resource policy.</p>"}))
    ResourcePolicy.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The details of the policy.</p>"}))
    ResourcePolicy.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>Timestamp showing when this policy was last updated, expressed as the number of\n      milliseconds after <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    ResourcePolicy.add_member(:policy_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyScope, location_name: 'policyScope', traits: {"smithy.api#documentation" => "<p>Specifies scope of the resource policy. Valid values are ACCOUNT or RESOURCE.</p>"}))
    ResourcePolicy.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Logs resource to which the resource policy is attached. Only populated for resource-scoped policies.</p>"}))
    ResourcePolicy.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the resource policy. Only populated for resource-scoped policies.</p>"}))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourceTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResultField.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Field, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The log event field.</p>"}))
    ResultField.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of this field.</p>"}))
    ResultField.type = Types::ResultField
    ResultRows.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultField)
    S3DeliveryConfiguration.add_member(:suffix_path, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverySuffixPath, location_name: 'suffixPath', traits: {"smithy.api#documentation" => "<p>This string allows re-configuring the S3 object prefix to contain either static or\n      variable sections. The valid variables to use in the suffix path will vary by each log source.\n      To find the values supported for the suffix path for each log source, use the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeConfigurationTemplates.html\">DescribeConfigurationTemplates</a> operation and check the\n        <code>allowedSuffixPathFields</code> field in the response.</p>"}))
    S3DeliveryConfiguration.add_member(:enable_hive_compatible_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableHiveCompatiblePath', traits: {"smithy.api#documentation" => "<p>This parameter causes the S3 objects that contain delivered logs to use a prefix structure\n      that allows for integration with Apache Hive.</p>"}))
    S3DeliveryConfiguration.type = Types::S3DeliveryConfiguration
    Scope.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    SearchedLogStream.add_member(:log_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamName, location_name: 'logStreamName', traits: {"smithy.api#documentation" => "<p>The name of the log stream.</p>"}))
    SearchedLogStream.add_member(:searched_completely, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamSearchedCompletely, location_name: 'searchedCompletely', traits: {"smithy.api#documentation" => "<p>Indicates whether all the events in this log stream were searched.</p>"}))
    SearchedLogStream.type = Types::SearchedLogStream
    SearchedLogStreams.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedLogStream)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SessionStreamingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    SessionStreamingException.type = Types::SessionStreamingException
    SessionTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    SessionTimeoutException.type = Types::SessionTimeoutException
    SplitString.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitStringEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of <code>SplitStringEntry</code> objects, where each object contains the\n      information about one field to split. </p>", "smithy.api#required" => {}}))
    SplitString.type = Types::SplitString
    SplitStringEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SplitStringEntry)
    SplitStringEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The key of the field to split.</p>", "smithy.api#required" => {}}))
    SplitStringEntry.add_member(:delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitStringDelimiter, location_name: 'delimiter', traits: {"smithy.api#documentation" => "<p>The separator characters to split the string entry on.</p>", "smithy.api#required" => {}}))
    SplitStringEntry.type = Types::SplitStringEntry
    StandardUnit.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Seconds', traits: {"smithy.api#enumValue" => "Seconds"}))
    StandardUnit.add_member(:microseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Microseconds', traits: {"smithy.api#enumValue" => "Microseconds"}))
    StandardUnit.add_member(:milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Milliseconds', traits: {"smithy.api#enumValue" => "Milliseconds"}))
    StandardUnit.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Bytes', traits: {"smithy.api#enumValue" => "Bytes"}))
    StandardUnit.add_member(:kilobytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kilobytes', traits: {"smithy.api#enumValue" => "Kilobytes"}))
    StandardUnit.add_member(:megabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Megabytes', traits: {"smithy.api#enumValue" => "Megabytes"}))
    StandardUnit.add_member(:gigabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gigabytes', traits: {"smithy.api#enumValue" => "Gigabytes"}))
    StandardUnit.add_member(:terabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terabytes', traits: {"smithy.api#enumValue" => "Terabytes"}))
    StandardUnit.add_member(:bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Bits', traits: {"smithy.api#enumValue" => "Bits"}))
    StandardUnit.add_member(:kilobits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kilobits', traits: {"smithy.api#enumValue" => "Kilobits"}))
    StandardUnit.add_member(:megabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Megabits', traits: {"smithy.api#enumValue" => "Megabits"}))
    StandardUnit.add_member(:gigabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gigabits', traits: {"smithy.api#enumValue" => "Gigabits"}))
    StandardUnit.add_member(:terabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terabits', traits: {"smithy.api#enumValue" => "Terabits"}))
    StandardUnit.add_member(:percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Percent', traits: {"smithy.api#enumValue" => "Percent"}))
    StandardUnit.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Count', traits: {"smithy.api#enumValue" => "Count"}))
    StandardUnit.add_member(:bytes_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BytesSecond', traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    StandardUnit.add_member(:kilobytes_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KilobytesSecond', traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    StandardUnit.add_member(:megabytes_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MegabytesSecond', traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    StandardUnit.add_member(:gigabytes_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GigabytesSecond', traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    StandardUnit.add_member(:terabytes_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TerabytesSecond', traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    StandardUnit.add_member(:bits_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BitsSecond', traits: {"smithy.api#enumValue" => "Bits/Second"}))
    StandardUnit.add_member(:kilobits_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KilobitsSecond', traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    StandardUnit.add_member(:megabits_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MegabitsSecond', traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    StandardUnit.add_member(:gigabits_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GigabitsSecond', traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    StandardUnit.add_member(:terabits_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TerabitsSecond', traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    StandardUnit.add_member(:count_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CountSecond', traits: {"smithy.api#enumValue" => "Count/Second"}))
    StandardUnit.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "None"}))
    StartLiveTailLogGroupIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier)
    StartLiveTailRequest.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: StartLiveTailLogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>An array where each item in the array is a log group to include in the Live Tail\n      session.</p>\n         <p>Specify each log group by its ARN. </p>\n         <p>If you specify an ARN, the ARN can't end with an asterisk (*).</p>\n         <note>\n            <p> You can include up to 10 log groups.</p>\n         </note>", "smithy.api#required" => {}}))
    StartLiveTailRequest.add_member(:log_stream_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: 'logStreamNames', traits: {"smithy.api#documentation" => "<p>If you specify this parameter, then only log events in the log streams that you specify\n      here are included in the Live Tail session.</p>\n         <p>If you specify this field, you can't also specify the <code>logStreamNamePrefixes</code>\n      field.</p>\n         <note>\n            <p>You can specify this parameter only if you specify only one log group in\n          <code>logGroupIdentifiers</code>.</p>\n         </note>"}))
    StartLiveTailRequest.add_member(:log_stream_name_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: 'logStreamNamePrefixes', traits: {"smithy.api#documentation" => "<p>If you specify this parameter, then only log events in the log streams that have names\n      that start with the prefixes that you specify here are included in the Live Tail\n      session.</p>\n         <p>If you specify this field, you can't also specify the <code>logStreamNames</code>\n      field.</p>\n         <note>\n            <p>You can specify this parameter only if you specify only one log group in\n          <code>logGroupIdentifiers</code>.</p>\n         </note>"}))
    StartLiveTailRequest.add_member(:log_event_filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'logEventFilterPattern', traits: {"smithy.api#documentation" => "<p>An optional pattern to use to filter the results to include only log events that match the\n      pattern. For example, a filter pattern of <code>error 404</code> causes only log events that\n      include both <code>error</code> and <code>404</code> to be included in the Live Tail\n      stream.</p>\n         <p>Regular expression filter patterns are supported.</p>\n         <p>For more information about filter pattern syntax, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html\">Filter and Pattern\n        Syntax</a>.</p>"}))
    StartLiveTailRequest.type = Types::StartLiveTailRequest
    StartLiveTailResponse.add_member(:response_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: StartLiveTailResponseStream, location_name: 'responseStream', traits: {"smithy.api#documentation" => "<p>An object that includes the stream returned by your request. It can include both log\n      events and exceptions.</p>"}))
    StartLiveTailResponse.type = Types::StartLiveTailResponse
    StartLiveTailResponseStream.add_member(:session_start, Types::StartLiveTailResponseStream::SessionStart, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveTailSessionStart, location_name: 'sessionStart', traits: {"smithy.api#documentation" => "<p>This object contains information about this Live Tail session, including the log groups\n      included and the log stream filters, if any.</p>"}))
    StartLiveTailResponseStream.add_member(:session_update, Types::StartLiveTailResponseStream::SessionUpdate, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveTailSessionUpdate, location_name: 'sessionUpdate', traits: {"smithy.api#documentation" => "<p>This object contains the log events and session metadata.</p>"}))
    StartLiveTailResponseStream.add_member(:session_timeout_exception, Types::StartLiveTailResponseStream::SessionTimeoutException, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTimeoutException, location_name: 'SessionTimeoutException', traits: {"smithy.api#documentation" => "<p>This exception is returned in the stream when the Live Tail session times out. Live Tail\n      sessions time out after three hours.</p>"}))
    StartLiveTailResponseStream.add_member(:session_streaming_exception, Types::StartLiveTailResponseStream::SessionStreamingException, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStreamingException, location_name: 'SessionStreamingException', traits: {"smithy.api#documentation" => "<p>This exception is returned if an unknown error occurs.</p>"}))
    StartLiveTailResponseStream.add_member(:unknown, Types::StartLiveTailResponseStream::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    StartLiveTailResponseStream.type = Types::StartLiveTailResponseStream
    StartQueryRequest.add_member(:query_language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'queryLanguage', traits: {"smithy.api#documentation" => "<p>Specify the query language to use for this query. The options are Logs Insights QL,\n      OpenSearch PPL, and OpenSearch SQL. For more information about the query languages that\n        CloudWatch Logs supports, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html\">Supported query\n        languages</a>.</p>"}))
    StartQueryRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The log group on which to perform the query.</p>\n         <note>\n            <p>A <code>StartQuery</code> operation must include exactly one of the following\n        parameters: <code>logGroupName</code>, <code>logGroupNames</code>, or\n          <code>logGroupIdentifiers</code>. The exception is queries using the OpenSearch Service\n        SQL query language, where you specify the log group names inside the\n          <code>querystring</code> instead of here.</p>\n         </note>"}))
    StartQueryRequest.add_member(:log_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupNames, location_name: 'logGroupNames', traits: {"smithy.api#documentation" => "<p>The list of log groups to be queried. You can include up to 50 log groups.</p>\n         <note>\n            <p>A <code>StartQuery</code> operation must include exactly one of the following\n        parameters: <code>logGroupName</code>, <code>logGroupNames</code>, or\n          <code>logGroupIdentifiers</code>. The exception is queries using the OpenSearch Service\n        SQL query language, where you specify the log group names inside the\n          <code>querystring</code> instead of here.</p>\n         </note>"}))
    StartQueryRequest.add_member(:log_group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifiers, location_name: 'logGroupIdentifiers', traits: {"smithy.api#documentation" => "<p>The list of log groups to query. You can include up to 50 log groups.</p>\n         <p>You can specify them by the log group name or ARN. If a log group that you're querying is\n      in a source account and you're using a monitoring account, you must specify the ARN of the log\n      group here. The query definition must also be defined in the monitoring account.</p>\n         <p>If you specify an ARN, use the format\n        arn:aws:logs:<i>region</i>:<i>account-id</i>:log-group:<i>log_group_name</i>\n      Don't include an * at the end.</p>\n         <p>A <code>StartQuery</code> operation must include exactly one of the following parameters:\n        <code>logGroupName</code>, <code>logGroupNames</code>, or <code>logGroupIdentifiers</code>.\n      The exception is queries using the OpenSearch Service SQL query language, where you specify\n      the log group names inside the <code>querystring</code> instead of here. </p>"}))
    StartQueryRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The beginning of the time range to query. The range is inclusive, so the specified start\n      time is included in the query. Specified as epoch time, the number of seconds since\n        <code>January 1, 1970, 00:00:00 UTC</code>.</p>", "smithy.api#required" => {}}))
    StartQueryRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end of the time range to query. The range is inclusive, so the specified end time is\n      included in the query. Specified as epoch time, the number of seconds since <code>January 1,\n        1970, 00:00:00 UTC</code>.</p>", "smithy.api#required" => {}}))
    StartQueryRequest.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query string to use. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html\">CloudWatch Logs Insights Query\n        Syntax</a>.</p>", "smithy.api#required" => {}}))
    StartQueryRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsLimit, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of log events to return in the query. If the query string uses the\n        <code>fields</code> command, only the specified fields and their values are returned. The\n      default is 10,000.</p>"}))
    StartQueryRequest.type = Types::StartQueryRequest
    StartQueryResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query. </p>"}))
    StartQueryResponse.type = Types::StartQueryResponse
    State.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    State.add_member(:suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Suppressed', traits: {"smithy.api#enumValue" => "Suppressed"}))
    State.add_member(:baseline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Baseline', traits: {"smithy.api#enumValue" => "Baseline"}))
    StopQueryRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryId, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The ID number of the query to stop. To find this ID number, use\n        <code>DescribeQueries</code>.</p>", "smithy.api#required" => {}}))
    StopQueryRequest.type = Types::StopQueryRequest
    StopQueryResponse.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Success, location_name: 'success', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if the query was stopped by the <code>StopQuery</code> operation.</p>"}))
    StopQueryResponse.type = Types::StopQueryResponse
    SubscriptionFilter.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'filterName', traits: {"smithy.api#documentation" => "<p>The name of the subscription filter.</p>"}))
    SubscriptionFilter.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>"}))
    SubscriptionFilter.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern'))
    SubscriptionFilter.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination.</p>"}))
    SubscriptionFilter.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p></p>"}))
    SubscriptionFilter.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'distribution'))
    SubscriptionFilter.add_member(:apply_on_transformed_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: 'applyOnTransformedLogs', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This parameter is valid only for log groups that have an active log transformer. For more\n      information about log transformers, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html\">PutTransformer</a>.</p>\n         <p>If this value is <code>true</code>, the subscription filter is applied on the transformed\n      version of the log events instead of the original ingested log events.</p>"}))
    SubscriptionFilter.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the subscription filter, expressed as the number of milliseconds\n      after <code>Jan 1, 1970 00:00:00 UTC</code>.</p>"}))
    SubscriptionFilter.type = Types::SubscriptionFilter
    SubscriptionFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionFilter)
    SubstituteString.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: SubstituteStringEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of objects, where each object contains the information about one key to match and\n      replace. </p>", "smithy.api#required" => {}}))
    SubstituteString.type = Types::SubstituteString
    SubstituteStringEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubstituteStringEntry)
    SubstituteStringEntry.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The key to modify</p>", "smithy.api#required" => {}}))
    SubstituteStringEntry.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: FromKey, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The regular expression string to be replaced. Special regex characters such as [ and ]\n      must be escaped using \\\\ when using double quotes and with \\ when using single quotes. For\n      more information, see <a href=\"https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html\"> Class Pattern</a> on the Oracle web site.</p>", "smithy.api#required" => {}}))
    SubstituteStringEntry.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: ToKey, location_name: 'to', traits: {"smithy.api#documentation" => "<p>The string to be substituted for each match of <code>from</code>\n         </p>", "smithy.api#required" => {}}))
    SubstituteStringEntry.type = Types::SubstituteStringEntry
    SuppressionPeriod.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the number of seconds, minutes or hours to suppress this anomaly. There is no\n      maximum.</p>"}))
    SuppressionPeriod.add_member(:suppression_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionUnit, location_name: 'suppressionUnit', traits: {"smithy.api#documentation" => "<p>Specifies whether the value of <code>value</code> is in seconds, minutes, or hours.</p>"}))
    SuppressionPeriod.type = Types::SuppressionPeriod
    SuppressionState.add_member(:suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPPRESSED', traits: {"smithy.api#enumValue" => "SUPPRESSED"}))
    SuppressionState.add_member(:unsuppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPRESSED', traits: {"smithy.api#enumValue" => "UNSUPPRESSED"}))
    SuppressionType.add_member(:limited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMITED', traits: {"smithy.api#enumValue" => "LIMITED"}))
    SuppressionType.add_member(:infinite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFINITE', traits: {"smithy.api#enumValue" => "INFINITE"}))
    SuppressionUnit.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "SECONDS"}))
    SuppressionUnit.add_member(:minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINUTES', traits: {"smithy.api#enumValue" => "MINUTES"}))
    SuppressionUnit.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "HOURS"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagLogGroupRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    TagLogGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to use for the tags.</p>", "smithy.api#required" => {}}))
    TagLogGroupRequest.type = Types::TagLogGroupRequest
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you're adding tags to.</p>\n         <p>The ARN format of a log group is\n          <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:log-group:<i>log-group-name</i>\n            </code>\n         </p>\n         <p>The ARN format of a destination is\n          <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:destination:<i>destination-name</i>\n            </code>\n         </p>\n         <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html\">CloudWatch Logs\n        resources and operations</a>.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TestEventMessages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage)
    TestMetricFilterRequest.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern', traits: {"smithy.api#required" => {}}))
    TestMetricFilterRequest.add_member(:log_event_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: TestEventMessages, location_name: 'logEventMessages', traits: {"smithy.api#documentation" => "<p>The log event messages to test.</p>", "smithy.api#required" => {}}))
    TestMetricFilterRequest.type = Types::TestMetricFilterRequest
    TestMetricFilterResponse.add_member(:matches, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricFilterMatches, location_name: 'matches', traits: {"smithy.api#documentation" => "<p>The matched events.</p>"}))
    TestMetricFilterResponse.type = Types::TestMetricFilterResponse
    TestTransformerRequest.add_member(:transformer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Processors, location_name: 'transformerConfig', traits: {"smithy.api#documentation" => "<p>This structure contains the configuration of this log transformer that you want to test. A\n      log transformer is an array of processors, where each processor applies one type of\n      transformation to the log events that are ingested.</p>", "smithy.api#required" => {}}))
    TestTransformerRequest.add_member(:log_event_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: TestEventMessages, location_name: 'logEventMessages', traits: {"smithy.api#documentation" => "<p>An array of the raw log events that you want to use to test this transformer.</p>", "smithy.api#required" => {}}))
    TestTransformerRequest.type = Types::TestTransformerRequest
    TestTransformerResponse.add_member(:transformed_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformedLogs, location_name: 'transformedLogs', traits: {"smithy.api#documentation" => "<p>An array where each member of the array includes both the original version and the\n      transformed version of one of the log events that you input.</p>"}))
    TestTransformerResponse.type = Types::TestTransformerResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    TransformedLogRecord.add_member(:event_number, Smithy::Schema::Shapes::ShapeRef.new(shape: EventNumber, location_name: 'eventNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The event number.</p>"}))
    TransformedLogRecord.add_member(:event_message, Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'eventMessage', traits: {"smithy.api#documentation" => "<p>The original log event message before it was transformed.</p>"}))
    TransformedLogRecord.add_member(:transformed_event_message, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformedEventMessage, location_name: 'transformedEventMessage', traits: {"smithy.api#documentation" => "<p>The log event message after being transformed.</p>"}))
    TransformedLogRecord.type = Types::TransformedLogRecord
    TransformedLogs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransformedLogRecord)
    TrimString.add_member(:with_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TrimStringWithKeys, location_name: 'withKeys', traits: {"smithy.api#documentation" => "<p>The array containing the keys of the fields to trim.</p>", "smithy.api#required" => {}}))
    TrimString.type = Types::TrimString
    TrimStringWithKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WithKey)
    Type.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "boolean"}))
    Type.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "integer"}))
    Type.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "double"}))
    Type.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "string"}))
    TypeConverter.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeConverterEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>An array of <code>TypeConverterEntry</code> objects, where each object contains the\n      information about one field to change the type of. </p>", "smithy.api#required" => {}}))
    TypeConverter.type = Types::TypeConverter
    TypeConverterEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypeConverterEntry)
    TypeConverterEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key with the value that is to be converted to a different type.</p>", "smithy.api#required" => {}}))
    TypeConverterEntry.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type to convert the field value to. Valid values are <code>integer</code>,\n        <code>double</code>, <code>string</code> and <code>boolean</code>.</p>", "smithy.api#required" => {}}))
    TypeConverterEntry.type = Types::TypeConverterEntry
    UnrecognizedClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    UnrecognizedClientException.type = Types::UnrecognizedClientException
    UntagLogGroupRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>", "smithy.api#required" => {}}))
    UntagLogGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tag keys. The corresponding tags are removed from the log group.</p>", "smithy.api#required" => {}}))
    UntagLogGroupRequest.type = Types::UntagLogGroupRequest
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch Logs resource that you're removing tags from.</p>\n         <p>The ARN format of a log group is\n          <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:log-group:<i>log-group-name</i>\n            </code>\n         </p>\n         <p>The ARN format of a destination is\n          <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:destination:<i>destination-name</i>\n            </code>\n         </p>\n         <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html\">CloudWatch Logs\n        resources and operations</a>.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAnomalyRequest.add_member(:anomaly_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyId, location_name: 'anomalyId', traits: {"smithy.api#documentation" => "<p>If you are suppressing or unsuppressing an anomaly, specify its unique ID here. You can\n      find anomaly IDs by using the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html\">ListAnomalies</a>\n      operation.</p>"}))
    UpdateAnomalyRequest.add_member(:pattern_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PatternId, location_name: 'patternId', traits: {"smithy.api#documentation" => "<p>If you are suppressing or unsuppressing an pattern, specify its unique ID here. You can\n      find pattern IDs by using the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html\">ListAnomalies</a>\n      operation.</p>"}))
    UpdateAnomalyRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector that this operation is to act on.</p>", "smithy.api#required" => {}}))
    UpdateAnomalyRequest.add_member(:suppression_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionType, location_name: 'suppressionType', traits: {"smithy.api#documentation" => "<p>Use this to specify whether the suppression to be temporary or infinite. If you specify\n        <code>LIMITED</code>, you must also specify a <code>suppressionPeriod</code>. If you specify\n        <code>INFINITE</code>, any value for <code>suppressionPeriod</code> is ignored. </p>"}))
    UpdateAnomalyRequest.add_member(:suppression_period, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionPeriod, location_name: 'suppressionPeriod', traits: {"smithy.api#documentation" => "<p>If you are temporarily suppressing an anomaly or pattern, use this structure to specify\n      how long the suppression is to last.</p>"}))
    UpdateAnomalyRequest.add_member(:baseline, Smithy::Schema::Shapes::ShapeRef.new(shape: Baseline, location_name: 'baseline', traits: {"smithy.api#documentation" => "<p>Set this to <code>true</code> to prevent CloudWatch Logs from displaying this behavior\n      as an anomaly in the future. The behavior is then treated as baseline behavior. However, if\n      similar but more severe occurrences of this behavior occur in the future, those will still be\n      reported as anomalies. </p>\n         <p>The default is <code>false</code>\n         </p>"}))
    UpdateAnomalyRequest.type = Types::UpdateAnomalyRequest
    UpdateDeliveryConfigurationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the delivery to be updated by this request.</p>", "smithy.api#required" => {}}))
    UpdateDeliveryConfigurationRequest.add_member(:record_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordFields, location_name: 'recordFields', traits: {"smithy.api#documentation" => "<p>The list of record fields to be delivered to the destination, in order. If the delivery's\n      log source has mandatory fields, they must be included in this list.</p>"}))
    UpdateDeliveryConfigurationRequest.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: 'fieldDelimiter', traits: {"smithy.api#documentation" => "<p>The field delimiter to use between record fields when the final output format of a\n      delivery is in <code>Plain</code>, <code>W3C</code>, or <code>Raw</code> format.</p>"}))
    UpdateDeliveryConfigurationRequest.add_member(:s3_delivery_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: 's3DeliveryConfiguration', traits: {"smithy.api#documentation" => "<p>This structure contains parameters that are valid only when the delivery's delivery\n      destination is an S3 bucket.</p>"}))
    UpdateDeliveryConfigurationRequest.type = Types::UpdateDeliveryConfigurationRequest
    UpdateDeliveryConfigurationResponse.type = Types::UpdateDeliveryConfigurationResponse
    UpdateLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: 'anomalyDetectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the anomaly detector that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateLogAnomalyDetectorRequest.add_member(:evaluation_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: 'evaluationFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often the anomaly detector runs and look for anomalies. Set this value\n      according to the frequency that the log group receives new logs. For example, if the log group\n      receives new log events every 10 minutes, then setting <code>evaluationFrequency</code> to\n        <code>FIFTEEN_MIN</code> might be appropriate.</p>"}))
    UpdateLogAnomalyDetectorRequest.add_member(:filter_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPattern, location_name: 'filterPattern'))
    UpdateLogAnomalyDetectorRequest.add_member(:anomaly_visibility_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: 'anomalyVisibilityTime', traits: {"smithy.api#documentation" => "<p>The number of days to use as the life cycle of anomalies. After this time, anomalies are\n      automatically baselined and the anomaly detector model will treat new occurrences of similar\n      event as normal. Therefore, if you do not correct the cause of an anomaly during this time, it\n      will be considered normal going forward and will not be detected.</p>"}))
    UpdateLogAnomalyDetectorRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Use this parameter to pause or restart the anomaly detector. </p>", "smithy.api#required" => {}}))
    UpdateLogAnomalyDetectorRequest.type = Types::UpdateLogAnomalyDetectorRequest
    UpperCaseString.add_member(:with_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: UpperCaseStringWithKeys, location_name: 'withKeys', traits: {"smithy.api#documentation" => "<p>The array of containing the keys of the field to convert to uppercase.</p>", "smithy.api#required" => {}}))
    UpperCaseString.type = Types::UpperCaseString
    UpperCaseStringWithKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WithKey)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    Logs20140328 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatchlogs#Logs_20140328"
      service.name = "Logs20140328"
      service.version = "2014-03-28"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatch Logs", "arnNamespace" => "logs", "cloudFormationName" => "Logs", "cloudTrailEventSource" => "logs.amazonaws.com", "docId" => "logs-2014-03-28", "endpointPrefix" => "logs"}, "aws.auth#sigv4" => {"name" => "logs"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudWatch Logs", "smithy.api#xmlNamespace" => {"uri" => "http://monitoring.amazonaws.com/doc/2014-03-28/"}}
      service.add_operation(:associate_kms_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#AssociateKmsKey"
        operation.name = "AssociateKmsKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateKmsKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_export_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CancelExportTask"
        operation.name = "CancelExportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_delivery, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateDelivery"
        operation.name = "CreateDelivery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeliveryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeliveryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_export_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateExportTask"
        operation.name = "CreateExportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_log_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateLogAnomalyDetector"
        operation.name = "CreateLogAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_log_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateLogGroup"
        operation.name = "CreateLogGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_log_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#CreateLogStream"
        operation.name = "CreateLogStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_account_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteAccountPolicy"
        operation.name = "DeleteAccountPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_data_protection_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDataProtectionPolicy"
        operation.name = "DeleteDataProtectionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataProtectionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDelivery"
        operation.name = "DeleteDelivery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeliveryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDeliveryDestination"
        operation.name = "DeleteDeliveryDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeliveryDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_destination_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDeliveryDestinationPolicy"
        operation.name = "DeleteDeliveryDestinationPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeliveryDestinationPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDeliverySource"
        operation.name = "DeleteDeliverySource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeliverySourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteDestination"
        operation.name = "DeleteDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_index_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteIndexPolicy"
        operation.name = "DeleteIndexPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_log_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteLogAnomalyDetector"
        operation.name = "DeleteLogAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_log_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteLogGroup"
        operation.name = "DeleteLogGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_log_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteLogStream"
        operation.name = "DeleteLogStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteMetricFilter"
        operation.name = "DeleteMetricFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMetricFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_query_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteQueryDefinition"
        operation.name = "DeleteQueryDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueryDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueryDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_retention_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteRetentionPolicy"
        operation.name = "DeleteRetentionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRetentionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_subscription_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteSubscriptionFilter"
        operation.name = "DeleteSubscriptionFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriptionFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_transformer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DeleteTransformer"
        operation.name = "DeleteTransformer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTransformerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeAccountPolicies"
        operation.name = "DescribeAccountPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeConfigurationTemplates"
        operation.name = "DescribeConfigurationTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigurationTemplates.new
      end)
      service.add_operation(:describe_deliveries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDeliveries"
        operation.name = "DescribeDeliveries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeliveriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeliveriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDeliveries.new
      end)
      service.add_operation(:describe_delivery_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDeliveryDestinations"
        operation.name = "DescribeDeliveryDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeliveryDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeliveryDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDeliveryDestinations.new
      end)
      service.add_operation(:describe_delivery_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDeliverySources"
        operation.name = "DescribeDeliverySources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeliverySourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeliverySourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDeliverySources.new
      end)
      service.add_operation(:describe_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeDestinations"
        operation.name = "DescribeDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDestinations.new
      end)
      service.add_operation(:describe_export_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeExportTasks"
        operation.name = "DescribeExportTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_field_indexes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeFieldIndexes"
        operation.name = "DescribeFieldIndexes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFieldIndexesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFieldIndexesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_index_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeIndexPolicies"
        operation.name = "DescribeIndexPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIndexPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIndexPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_log_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeLogGroups"
        operation.name = "DescribeLogGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeLogGroupsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeLogGroups.new
      end)
      service.add_operation(:describe_log_streams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeLogStreams"
        operation.name = "DescribeLogStreams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogStreamsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLogStreamsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLogStreams.new
      end)
      service.add_operation(:describe_metric_filters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeMetricFilters"
        operation.name = "DescribeMetricFilters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetricFiltersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMetricFiltersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMetricFilters.new
      end)
      service.add_operation(:describe_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeQueries"
        operation.name = "DescribeQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_query_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeQueryDefinitions"
        operation.name = "DescribeQueryDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryDefinitionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeResourcePolicies"
        operation.name = "DescribeResourcePolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_subscription_filters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DescribeSubscriptionFilters"
        operation.name = "DescribeSubscriptionFilters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubscriptionFiltersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubscriptionFiltersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSubscriptionFilters.new
      end)
      service.add_operation(:disassociate_kms_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#DisassociateKmsKey"
        operation.name = "DisassociateKmsKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateKmsKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:filter_log_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#FilterLogEvents"
        operation.name = "FilterLogEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterLogEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterLogEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::FilterLogEvents.new
      end)
      service.add_operation(:get_data_protection_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDataProtectionPolicy"
        operation.name = "GetDataProtectionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataProtectionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataProtectionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_delivery, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDelivery"
        operation.name = "GetDelivery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliveryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliveryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_delivery_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDeliveryDestination"
        operation.name = "GetDeliveryDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliveryDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliveryDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_delivery_destination_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDeliveryDestinationPolicy"
        operation.name = "GetDeliveryDestinationPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliveryDestinationPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliveryDestinationPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_delivery_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetDeliverySource"
        operation.name = "GetDeliverySource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverySourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverySourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_log_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogAnomalyDetector"
        operation.name = "GetLogAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogAnomalyDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_log_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogEvents"
        operation.name = "GetLogEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetLogEventsFailure", "params" => {"logGroupName" => "fakegroup", "logStreamName" => "fakestream"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::GetLogEvents.new
      end)
      service.add_operation(:get_log_group_fields, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogGroupFields"
        operation.name = "GetLogGroupFields"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogGroupFieldsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogGroupFieldsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_log_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogObject"
        operation.name = "GetLogObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "streaming-"}}
      end)
      service.add_operation(:get_log_record, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetLogRecord"
        operation.name = "GetLogRecord"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogRecordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogRecordResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_query_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_transformer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#GetTransformer"
        operation.name = "GetTransformer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransformerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransformerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:list_anomalies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListAnomalies"
        operation.name = "ListAnomalies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnomaliesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAnomalies.new
      end)
      service.add_operation(:list_integrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListIntegrations"
        operation.name = "ListIntegrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIntegrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIntegrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:list_log_anomaly_detectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListLogAnomalyDetectors"
        operation.name = "ListLogAnomalyDetectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogAnomalyDetectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogAnomalyDetectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogAnomalyDetectors.new
      end)
      service.add_operation(:list_log_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListLogGroups"
        operation.name = "ListLogGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:list_log_groups_for_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListLogGroupsForQuery"
        operation.name = "ListLogGroupsForQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogGroupsForQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogGroupsForQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogGroupsForQuery.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_log_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#ListTagsLogGroup"
        operation.name = "ListTagsLogGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsLogGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsLogGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API ListTagsForResource"}}
      end)
      service.add_operation(:put_account_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutAccountPolicy"
        operation.name = "PutAccountPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_data_protection_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDataProtectionPolicy"
        operation.name = "PutDataProtectionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDataProtectionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDataProtectionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDeliveryDestination"
        operation.name = "PutDeliveryDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliveryDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliveryDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_destination_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDeliveryDestinationPolicy"
        operation.name = "PutDeliveryDestinationPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliveryDestinationPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliveryDestinationPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDeliverySource"
        operation.name = "PutDeliverySource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliverySourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliverySourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDestination"
        operation.name = "PutDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_destination_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutDestinationPolicy"
        operation.name = "PutDestinationPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDestinationPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_index_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutIndexPolicy"
        operation.name = "PutIndexPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIndexPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIndexPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutIntegration"
        operation.name = "PutIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntegrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutIntegrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_log_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutLogEvents"
        operation.name = "PutLogEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLogEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLogEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataAlreadyAcceptedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSequenceTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnrecognizedClientException)
        operation.traits = {}
      end)
      service.add_operation(:put_metric_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutMetricFilter"
        operation.name = "PutMetricFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_query_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutQueryDefinition"
        operation.name = "PutQueryDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutQueryDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutQueryDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_retention_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutRetentionPolicy"
        operation.name = "PutRetentionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRetentionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_subscription_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutSubscriptionFilter"
        operation.name = "PutSubscriptionFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSubscriptionFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:put_transformer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#PutTransformer"
        operation.name = "PutTransformer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTransformerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:start_live_tail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#StartLiveTail"
        operation.name = "StartLiveTail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLiveTailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLiveTailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "streaming-"}}
      end)
      service.add_operation(:start_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#StartQuery"
        operation.name = "StartQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedQueryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:stop_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#StopQuery"
        operation.name = "StopQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:tag_log_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TagLogGroup"
        operation.name = "TagLogGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagLogGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API TagResource"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:test_metric_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TestMetricFilter"
        operation.name = "TestMetricFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestMetricFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestMetricFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:test_transformer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#TestTransformer"
        operation.name = "TestTransformer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestTransformerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestTransformerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:untag_log_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UntagLogGroup"
        operation.name = "UntagLogGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagLogGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Please use the generic tagging API UntagResource"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_anomaly, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UpdateAnomaly"
        operation.name = "UpdateAnomaly"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_delivery_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UpdateDeliveryConfiguration"
        operation.name = "UpdateDeliveryConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeliveryConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeliveryConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_log_anomaly_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchlogs#UpdateLogAnomalyDetector"
        operation.name = "UpdateLogAnomalyDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLogAnomalyDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationAbortedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#AccountIdList', name: 'AccountIdList')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Association = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Association', name: 'Association')
    AssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#AssociationList', name: 'AssociationList')
    Capacity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftserverless#Capacity', name: 'Capacity', traits: {"smithy.api#default" => 0})
    Charge = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshiftserverless#Charge', name: 'Charge', traits: {"smithy.api#default" => 0})
    ConfigParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ConfigParameter', name: 'ConfigParameter')
    ConfigParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#ConfigParameterList', name: 'ConfigParameterList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConvertRecoveryPointToSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ConvertRecoveryPointToSnapshotRequest', name: 'ConvertRecoveryPointToSnapshotRequest')
    ConvertRecoveryPointToSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ConvertRecoveryPointToSnapshotResponse', name: 'ConvertRecoveryPointToSnapshotResponse')
    CreateCustomDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateCustomDomainAssociationRequest', name: 'CreateCustomDomainAssociationRequest')
    CreateCustomDomainAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateCustomDomainAssociationResponse', name: 'CreateCustomDomainAssociationResponse')
    CreateEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateEndpointAccessRequest', name: 'CreateEndpointAccessRequest')
    CreateEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateEndpointAccessResponse', name: 'CreateEndpointAccessResponse')
    CreateNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateNamespaceRequest', name: 'CreateNamespaceRequest')
    CreateNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateNamespaceResponse', name: 'CreateNamespaceResponse')
    CreateReservationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateReservationRequest', name: 'CreateReservationRequest')
    CreateReservationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateReservationResponse', name: 'CreateReservationResponse')
    CreateScheduledActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateScheduledActionRequest', name: 'CreateScheduledActionRequest')
    CreateScheduledActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateScheduledActionResponse', name: 'CreateScheduledActionResponse')
    CreateSnapshotCopyConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateSnapshotCopyConfigurationRequest', name: 'CreateSnapshotCopyConfigurationRequest')
    CreateSnapshotCopyConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateSnapshotCopyConfigurationResponse', name: 'CreateSnapshotCopyConfigurationResponse')
    CreateSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateSnapshotRequest', name: 'CreateSnapshotRequest')
    CreateSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateSnapshotResponse', name: 'CreateSnapshotResponse')
    CreateSnapshotScheduleActionParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateSnapshotScheduleActionParameters', name: 'CreateSnapshotScheduleActionParameters')
    CreateUsageLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateUsageLimitRequest', name: 'CreateUsageLimitRequest')
    CreateUsageLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateUsageLimitResponse', name: 'CreateUsageLimitResponse')
    CreateWorkgroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateWorkgroupRequest', name: 'CreateWorkgroupRequest')
    CreateWorkgroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#CreateWorkgroupResponse', name: 'CreateWorkgroupResponse')
    CurrencyCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#CurrencyCode', name: 'CurrencyCode')
    CustomDomainCertificateArnString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#CustomDomainCertificateArnString', name: 'CustomDomainCertificateArnString', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"})
    CustomDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#CustomDomainName', name: 'CustomDomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DbName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#DbName', name: 'DbName')
    DbPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#DbPassword', name: 'DbPassword', traits: {"smithy.api#sensitive" => {}})
    DbUser = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#DbUser', name: 'DbUser', traits: {"smithy.api#sensitive" => {}})
    DeleteCustomDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteCustomDomainAssociationRequest', name: 'DeleteCustomDomainAssociationRequest')
    DeleteCustomDomainAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteCustomDomainAssociationResponse', name: 'DeleteCustomDomainAssociationResponse')
    DeleteEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteEndpointAccessRequest', name: 'DeleteEndpointAccessRequest')
    DeleteEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteEndpointAccessResponse', name: 'DeleteEndpointAccessResponse')
    DeleteNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteNamespaceRequest', name: 'DeleteNamespaceRequest')
    DeleteNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteNamespaceResponse', name: 'DeleteNamespaceResponse')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DeleteScheduledActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteScheduledActionRequest', name: 'DeleteScheduledActionRequest')
    DeleteScheduledActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteScheduledActionResponse', name: 'DeleteScheduledActionResponse')
    DeleteSnapshotCopyConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteSnapshotCopyConfigurationRequest', name: 'DeleteSnapshotCopyConfigurationRequest')
    DeleteSnapshotCopyConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteSnapshotCopyConfigurationResponse', name: 'DeleteSnapshotCopyConfigurationResponse')
    DeleteSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteSnapshotRequest', name: 'DeleteSnapshotRequest')
    DeleteSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteSnapshotResponse', name: 'DeleteSnapshotResponse')
    DeleteUsageLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteUsageLimitRequest', name: 'DeleteUsageLimitRequest')
    DeleteUsageLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteUsageLimitResponse', name: 'DeleteUsageLimitResponse')
    DeleteWorkgroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteWorkgroupRequest', name: 'DeleteWorkgroupRequest')
    DeleteWorkgroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#DeleteWorkgroupResponse', name: 'DeleteWorkgroupResponse')
    Duration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshiftserverless#Duration', name: 'Duration', traits: {"smithy.api#default" => 0})
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Endpoint', name: 'Endpoint')
    EndpointAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#EndpointAccess', name: 'EndpointAccess')
    EndpointAccessList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#EndpointAccessList', name: 'EndpointAccessList')
    GetCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetCredentialsRequest', name: 'GetCredentialsRequest')
    GetCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetCredentialsResponse', name: 'GetCredentialsResponse')
    GetCustomDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetCustomDomainAssociationRequest', name: 'GetCustomDomainAssociationRequest')
    GetCustomDomainAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetCustomDomainAssociationResponse', name: 'GetCustomDomainAssociationResponse')
    GetEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetEndpointAccessRequest', name: 'GetEndpointAccessRequest')
    GetEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetEndpointAccessResponse', name: 'GetEndpointAccessResponse')
    GetNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetNamespaceRequest', name: 'GetNamespaceRequest')
    GetNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetNamespaceResponse', name: 'GetNamespaceResponse')
    GetRecoveryPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetRecoveryPointRequest', name: 'GetRecoveryPointRequest')
    GetRecoveryPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetRecoveryPointResponse', name: 'GetRecoveryPointResponse')
    GetReservationOfferingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetReservationOfferingRequest', name: 'GetReservationOfferingRequest')
    GetReservationOfferingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetReservationOfferingResponse', name: 'GetReservationOfferingResponse')
    GetReservationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetReservationRequest', name: 'GetReservationRequest')
    GetReservationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetReservationResponse', name: 'GetReservationResponse')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    GetScheduledActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetScheduledActionRequest', name: 'GetScheduledActionRequest')
    GetScheduledActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetScheduledActionResponse', name: 'GetScheduledActionResponse')
    GetSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetSnapshotRequest', name: 'GetSnapshotRequest')
    GetSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetSnapshotResponse', name: 'GetSnapshotResponse')
    GetTableRestoreStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetTableRestoreStatusRequest', name: 'GetTableRestoreStatusRequest')
    GetTableRestoreStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetTableRestoreStatusResponse', name: 'GetTableRestoreStatusResponse')
    GetTrackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetTrackRequest', name: 'GetTrackRequest')
    GetTrackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetTrackResponse', name: 'GetTrackResponse')
    GetUsageLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetUsageLimitRequest', name: 'GetUsageLimitRequest')
    GetUsageLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetUsageLimitResponse', name: 'GetUsageLimitResponse')
    GetWorkgroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetWorkgroupRequest', name: 'GetWorkgroupRequest')
    GetWorkgroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#GetWorkgroupResponse', name: 'GetWorkgroupResponse')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#IamRoleArn', name: 'IamRoleArn')
    IamRoleArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#IamRoleArnList', name: 'IamRoleArnList')
    InsufficientCapacityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#InsufficientCapacityException', name: 'InsufficientCapacityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidPaginationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#InvalidPaginationException', name: 'InvalidPaginationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#IpAddressType', name: 'IpAddressType', traits: {"smithy.api#pattern" => "^(ipv4|dualstack)$"})
    Ipv6CidrBlockNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Ipv6CidrBlockNotFoundException', name: 'Ipv6CidrBlockNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#KmsKeyId', name: 'KmsKeyId')
    ListCustomDomainAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListCustomDomainAssociationsRequest', name: 'ListCustomDomainAssociationsRequest')
    ListCustomDomainAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListCustomDomainAssociationsResponse', name: 'ListCustomDomainAssociationsResponse')
    ListEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListEndpointAccessRequest', name: 'ListEndpointAccessRequest')
    ListEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListEndpointAccessResponse', name: 'ListEndpointAccessResponse')
    ListManagedWorkgroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListManagedWorkgroupsRequest', name: 'ListManagedWorkgroupsRequest')
    ListManagedWorkgroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListManagedWorkgroupsResponse', name: 'ListManagedWorkgroupsResponse')
    ListNamespacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListNamespacesRequest', name: 'ListNamespacesRequest')
    ListNamespacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListNamespacesResponse', name: 'ListNamespacesResponse')
    ListRecoveryPointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListRecoveryPointsRequest', name: 'ListRecoveryPointsRequest')
    ListRecoveryPointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListRecoveryPointsResponse', name: 'ListRecoveryPointsResponse')
    ListReservationOfferingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListReservationOfferingsRequest', name: 'ListReservationOfferingsRequest')
    ListReservationOfferingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListReservationOfferingsResponse', name: 'ListReservationOfferingsResponse')
    ListReservationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListReservationsRequest', name: 'ListReservationsRequest')
    ListReservationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListReservationsResponse', name: 'ListReservationsResponse')
    ListScheduledActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListScheduledActionsRequest', name: 'ListScheduledActionsRequest')
    ListScheduledActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListScheduledActionsResponse', name: 'ListScheduledActionsResponse')
    ListSnapshotCopyConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListSnapshotCopyConfigurationsRequest', name: 'ListSnapshotCopyConfigurationsRequest')
    ListSnapshotCopyConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListSnapshotCopyConfigurationsResponse', name: 'ListSnapshotCopyConfigurationsResponse')
    ListSnapshotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListSnapshotsRequest', name: 'ListSnapshotsRequest')
    ListSnapshotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListSnapshotsResponse', name: 'ListSnapshotsResponse')
    ListTableRestoreStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListTableRestoreStatusRequest', name: 'ListTableRestoreStatusRequest')
    ListTableRestoreStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListTableRestoreStatusResponse', name: 'ListTableRestoreStatusResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTracksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListTracksRequest', name: 'ListTracksRequest')
    ListTracksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListTracksResponse', name: 'ListTracksResponse')
    ListUsageLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListUsageLimitsRequest', name: 'ListUsageLimitsRequest')
    ListUsageLimitsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListUsageLimitsResponse', name: 'ListUsageLimitsResponse')
    ListWorkgroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListWorkgroupsRequest', name: 'ListWorkgroupsRequest')
    ListWorkgroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ListWorkgroupsResponse', name: 'ListWorkgroupsResponse')
    LogExport = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#LogExport', name: 'LogExport', traits: {"smithy.api#enum" => [{"name" => "USER_ACTIVITY_LOG", "value" => "useractivitylog"}, {"name" => "USER_LOG", "value" => "userlog"}, {"name" => "CONNECTION_LOG", "value" => "connectionlog"}]})
    LogExportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#LogExportList', name: 'LogExportList', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    ManagedWorkgroupListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ManagedWorkgroupListItem', name: 'ManagedWorkgroupListItem')
    ManagedWorkgroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#ManagedWorkgroupName', name: 'ManagedWorkgroupName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_:\\-]+$"})
    ManagedWorkgroupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshiftserverless#ManagedWorkgroupStatus', name: 'ManagedWorkgroupStatus')
    ManagedWorkgroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#ManagedWorkgroups', name: 'ManagedWorkgroups')
    Namespace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Namespace', name: 'Namespace')
    NamespaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#NamespaceList', name: 'NamespaceList')
    NamespaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#NamespaceName', name: 'NamespaceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    NamespaceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#NamespaceStatus', name: 'NamespaceStatus', traits: {"smithy.api#enum" => [{"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "MODIFYING", "value" => "MODIFYING"}, {"name" => "DELETING", "value" => "DELETING"}]})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#NetworkInterfaceList', name: 'NetworkInterfaceList')
    NextInvocationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#NextInvocationsList', name: 'NextInvocationsList')
    OfferingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#OfferingId', name: 'OfferingId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OfferingType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#OfferingType', name: 'OfferingType', traits: {"smithy.api#enum" => [{"name" => "ALL_UPFRONT", "value" => "ALL_UPFRONT"}, {"name" => "NO_UPFRONT", "value" => "NO_UPFRONT"}]})
    OwnerAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#OwnerAccount', name: 'OwnerAccount', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "(\\d{12})"})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}})
    ParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#ParameterKey', name: 'ParameterKey')
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#ParameterValue', name: 'ParameterValue')
    PerformanceTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#PerformanceTarget', name: 'PerformanceTarget')
    PerformanceTargetStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#PerformanceTargetStatus', name: 'PerformanceTargetStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    RecoveryPoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RecoveryPoint', name: 'RecoveryPoint')
    RecoveryPointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#RecoveryPointList', name: 'RecoveryPointList')
    RedshiftIdcApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#RedshiftIdcApplicationArn', name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Reservation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Reservation', name: 'Reservation')
    ReservationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#ReservationArn', name: 'ReservationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ReservationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#ReservationId', name: 'ReservationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ReservationOffering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ReservationOffering', name: 'ReservationOffering')
    ReservationOfferingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#ReservationOfferingsList', name: 'ReservationOfferingsList')
    ReservationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#ReservationsList', name: 'ReservationsList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ResourcePolicy', name: 'ResourcePolicy')
    RestoreFromRecoveryPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreFromRecoveryPointRequest', name: 'RestoreFromRecoveryPointRequest')
    RestoreFromRecoveryPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreFromRecoveryPointResponse', name: 'RestoreFromRecoveryPointResponse')
    RestoreFromSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreFromSnapshotRequest', name: 'RestoreFromSnapshotRequest')
    RestoreFromSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreFromSnapshotResponse', name: 'RestoreFromSnapshotResponse')
    RestoreTableFromRecoveryPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreTableFromRecoveryPointRequest', name: 'RestoreTableFromRecoveryPointRequest')
    RestoreTableFromRecoveryPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreTableFromRecoveryPointResponse', name: 'RestoreTableFromRecoveryPointResponse')
    RestoreTableFromSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreTableFromSnapshotRequest', name: 'RestoreTableFromSnapshotRequest')
    RestoreTableFromSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#RestoreTableFromSnapshotResponse', name: 'RestoreTableFromSnapshotResponse')
    Schedule = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshiftserverless#Schedule', name: 'Schedule')
    ScheduledActionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ScheduledActionAssociation', name: 'ScheduledActionAssociation')
    ScheduledActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#ScheduledActionName', name: 'ScheduledActionName', traits: {"smithy.api#length" => {"min" => 3, "max" => 60}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    ScheduledActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ScheduledActionResponse', name: 'ScheduledActionResponse')
    ScheduledActionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#ScheduledActionsList', name: 'ScheduledActionsList')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#SecurityGroupId', name: 'SecurityGroupId')
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#SecurityGroupIdList', name: 'SecurityGroupIdList')
    ServerlessTrack = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ServerlessTrack', name: 'ServerlessTrack')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Snapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Snapshot', name: 'Snapshot')
    SnapshotCopyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#SnapshotCopyConfiguration', name: 'SnapshotCopyConfiguration')
    SnapshotCopyConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#SnapshotCopyConfigurations', name: 'SnapshotCopyConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SnapshotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#SnapshotList', name: 'SnapshotList')
    SnapshotNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#SnapshotNamePrefix', name: 'SnapshotNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 235}})
    SnapshotStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#SnapshotStatus', name: 'SnapshotStatus', traits: {"smithy.api#enum" => [{"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "CREATING", "value" => "CREATING"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "COPYING", "value" => "COPYING"}]})
    SourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#SourceArn', name: 'SourceArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:glue:[a-z0-9-]+:\\d+:(database|catalog)[a-z0-9-:]*(?:/[A-Za-z0-9-_]{1,255})*$"})
    State = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#State', name: 'State', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#Status', name: 'Status', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#SubnetId', name: 'SubnetId')
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#SubnetIdList', name: 'SubnetIdList')
    TableRestoreStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#TableRestoreStatus', name: 'TableRestoreStatus')
    TableRestoreStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#TableRestoreStatusList', name: 'TableRestoreStatusList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetAction = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshiftserverless#TargetAction', name: 'TargetAction')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrackList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#TrackList', name: 'TrackList')
    TrackName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#TrackName', name: 'TrackName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateCustomDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateCustomDomainAssociationRequest', name: 'UpdateCustomDomainAssociationRequest')
    UpdateCustomDomainAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateCustomDomainAssociationResponse', name: 'UpdateCustomDomainAssociationResponse')
    UpdateEndpointAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateEndpointAccessRequest', name: 'UpdateEndpointAccessRequest')
    UpdateEndpointAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateEndpointAccessResponse', name: 'UpdateEndpointAccessResponse')
    UpdateNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateNamespaceRequest', name: 'UpdateNamespaceRequest')
    UpdateNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateNamespaceResponse', name: 'UpdateNamespaceResponse')
    UpdateScheduledActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateScheduledActionRequest', name: 'UpdateScheduledActionRequest')
    UpdateScheduledActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateScheduledActionResponse', name: 'UpdateScheduledActionResponse')
    UpdateSnapshotCopyConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateSnapshotCopyConfigurationRequest', name: 'UpdateSnapshotCopyConfigurationRequest')
    UpdateSnapshotCopyConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateSnapshotCopyConfigurationResponse', name: 'UpdateSnapshotCopyConfigurationResponse')
    UpdateSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateSnapshotRequest', name: 'UpdateSnapshotRequest')
    UpdateSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateSnapshotResponse', name: 'UpdateSnapshotResponse')
    UpdateTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateTarget', name: 'UpdateTarget')
    UpdateTargetsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#UpdateTargetsList', name: 'UpdateTargetsList')
    UpdateUsageLimitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateUsageLimitRequest', name: 'UpdateUsageLimitRequest')
    UpdateUsageLimitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateUsageLimitResponse', name: 'UpdateUsageLimitResponse')
    UpdateWorkgroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateWorkgroupRequest', name: 'UpdateWorkgroupRequest')
    UpdateWorkgroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UpdateWorkgroupResponse', name: 'UpdateWorkgroupResponse')
    UsageLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#UsageLimit', name: 'UsageLimit')
    UsageLimitBreachAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#UsageLimitBreachAction', name: 'UsageLimitBreachAction', traits: {"smithy.api#enum" => [{"name" => "LOG", "value" => "log"}, {"name" => "EMIT_METRIC", "value" => "emit-metric"}, {"name" => "DEACTIVATE", "value" => "deactivate"}]})
    UsageLimitPeriod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#UsageLimitPeriod', name: 'UsageLimitPeriod', traits: {"smithy.api#enum" => [{"name" => "DAILY", "value" => "daily"}, {"name" => "WEEKLY", "value" => "weekly"}, {"name" => "MONTHLY", "value" => "monthly"}]})
    UsageLimitUsageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#UsageLimitUsageType', name: 'UsageLimitUsageType', traits: {"smithy.api#enum" => [{"name" => "SERVERLESS_COMPUTE", "value" => "serverless-compute"}, {"name" => "CROSS_REGION_DATASHARING", "value" => "cross-region-datasharing"}]})
    UsageLimits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#UsageLimits', name: 'UsageLimits', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#VpcEndpoint', name: 'VpcEndpoint')
    VpcEndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#VpcEndpointList', name: 'VpcEndpointList')
    VpcIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#VpcIds', name: 'VpcIds')
    VpcSecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#VpcSecurityGroupId', name: 'VpcSecurityGroupId')
    VpcSecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#VpcSecurityGroupIdList', name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#VpcSecurityGroupMembership', name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#VpcSecurityGroupMembershipList', name: 'VpcSecurityGroupMembershipList')
    Workgroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshiftserverless#Workgroup', name: 'Workgroup')
    WorkgroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshiftserverless#WorkgroupList', name: 'WorkgroupList')
    WorkgroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#WorkgroupName', name: 'WorkgroupName', traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    WorkgroupStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshiftserverless#WorkgroupStatus', name: 'WorkgroupStatus', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING"}, {"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "MODIFYING", "value" => "MODIFYING"}, {"name" => "DELETING", "value" => "DELETING"}]})

    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code'))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Association.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>"}))
    Association.add_member(:custom_domain_certificate_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'customDomainCertificateExpiryTime', traits: {"smithy.api#documentation" => "<p>The expiration time for the certificate.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Association.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>"}))
    Association.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>"}))
    Association.type = Types::Association
    AssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Association)
    ConfigParameter.add_member(:parameter_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterKey, location_name: 'parameterKey', traits: {"smithy.api#documentation" => "<p>The key of the parameter. The\n         options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>,\n         <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and query monitoring metrics that let \n         you define performance boundaries. For more information about query monitoring rules and available metrics, see \n         <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless\">Query monitoring metrics for Amazon Redshift Serverless</a>.</p>"}))
    ConfigParameter.add_member(:parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'parameterValue', traits: {"smithy.api#documentation" => "<p>The value of the parameter to set.</p>"}))
    ConfigParameter.type = Types::ConfigParameter
    ConfigParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigParameter)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConvertRecoveryPointToSnapshotRequest.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the recovery point.</p>", "smithy.api#required" => {}}))
    ConvertRecoveryPointToSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot.</p>", "smithy.api#required" => {}}))
    ConvertRecoveryPointToSnapshotRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long to retain the snapshot.</p>"}))
    ConvertRecoveryPointToSnapshotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of <a href=\"https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html\">Tag objects</a> \n         to associate with the created snapshot.</p>"}))
    ConvertRecoveryPointToSnapshotRequest.type = Types::ConvertRecoveryPointToSnapshotRequest
    ConvertRecoveryPointToSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>The snapshot converted from the recovery point.</p>"}))
    ConvertRecoveryPointToSnapshotResponse.type = Types::ConvertRecoveryPointToSnapshotResponse
    CreateCustomDomainAssociationRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>", "smithy.api#required" => {}}))
    CreateCustomDomainAssociationRequest.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name to associate with the workgroup.</p>", "smithy.api#required" => {}}))
    CreateCustomDomainAssociationRequest.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>", "smithy.api#required" => {}}))
    CreateCustomDomainAssociationRequest.type = Types::CreateCustomDomainAssociationRequest
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name to associate with the workgroup.</p>"}))
    CreateCustomDomainAssociationResponse.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>"}))
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>"}))
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'customDomainCertificateExpiryTime', traits: {"smithy.api#documentation" => "<p>The expiration time for the certificate.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CreateCustomDomainAssociationResponse.type = Types::CreateCustomDomainAssociationResponse
    CreateEndpointAccessRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint. An endpoint name must contain 1-30 characters. \n         Valid characters are A-Z, a-z, 0-9, and hyphen(-). The first character must be a letter. \n         The name can't contain two consecutive hyphens or end with a hyphen.</p>", "smithy.api#required" => {}}))
    CreateEndpointAccessRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The unique identifers of subnets from which \n         Amazon Redshift Serverless chooses one to deploy a VPC endpoint.</p>", "smithy.api#required" => {}}))
    CreateEndpointAccessRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to associate with the VPC endpoint.</p>", "smithy.api#required" => {}}))
    CreateEndpointAccessRequest.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The unique identifiers of the security group that defines the ports, \n         protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>"}))
    CreateEndpointAccessRequest.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>"}))
    CreateEndpointAccessRequest.type = Types::CreateEndpointAccessRequest
    CreateEndpointAccessResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The created VPC endpoint.</p>"}))
    CreateEndpointAccessResponse.type = Types::CreateEndpointAccessResponse
    CreateNamespaceRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace.</p>", "smithy.api#required" => {}}))
    CreateNamespaceRequest.add_member(:admin_username, Smithy::Schema::Shapes::ShapeRef.new(shape: DbUser, location_name: 'adminUsername', traits: {"smithy.api#documentation" => "<p>The username of the administrator for the first database created in the namespace.</p>"}))
    CreateNamespaceRequest.add_member(:admin_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: DbPassword, location_name: 'adminUserPassword', traits: {"smithy.api#documentation" => "<p>The password of the administrator for the first database created in the namespace.</p>\n         <p>You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. </p>"}))
    CreateNamespaceRequest.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dbName', traits: {"smithy.api#documentation" => "<p>The name of the first database created in the namespace.</p>"}))
    CreateNamespaceRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>"}))
    CreateNamespaceRequest.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace.</p>"}))
    CreateNamespaceRequest.add_member(:iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'iamRoles', traits: {"smithy.api#documentation" => "<p>A list of IAM roles to associate with the namespace.</p>"}))
    CreateNamespaceRequest.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogExportList, location_name: 'logExports', traits: {"smithy.api#documentation" => "<p>The types of logs the namespace can export. \n         Available export types are <code>userlog</code>, <code>connectionlog</code>, and <code>useractivitylog</code>.</p>"}))
    CreateNamespaceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateNamespaceRequest.add_member(:manage_admin_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageAdminPassword', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the namespace's admin credentials. \n         You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. \n         If <code>manageAdminPassword</code> is false or not set, Amazon Redshift uses \n         <code>adminUserPassword</code> for the admin user account's password.\n      </p>"}))
    CreateNamespaceRequest.add_member(:admin_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'adminPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. \n         You can only use this parameter if <code>manageAdminPassword</code> is true.</p>"}))
    CreateNamespaceRequest.add_member(:redshift_idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationArn, location_name: 'redshiftIdcApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>"}))
    CreateNamespaceRequest.type = Types::CreateNamespaceRequest
    CreateNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The created namespace object.</p>"}))
    CreateNamespaceResponse.type = Types::CreateNamespaceResponse
    CreateReservationRequest.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'capacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Redshift Processing Units (RPUs) to reserve.</p>", "smithy.api#required" => {}}))
    CreateReservationRequest.add_member(:offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingId, location_name: 'offeringId', traits: {"smithy.api#documentation" => "<p>The ID of the offering associated with the reservation. The offering determines the payment schedule for the reservation.</p>", "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    CreateReservationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services \n         SDK populates this field. This token must be a valid UUIDv4 value. For more information about idempotency, see <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">\n            Making retries safe with idempotent APIs\n         </a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateReservationRequest.type = Types::CreateReservationRequest
    CreateReservationResponse.add_member(:reservation, Smithy::Schema::Shapes::ShapeRef.new(shape: Reservation, location_name: 'reservation', traits: {"smithy.api#documentation" => "<p>The reservation object that the <code>CreateReservation</code> action created.</p>"}))
    CreateReservationResponse.type = Types::CreateReservationResponse
    CreateScheduledActionRequest.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: 'scheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action.</p>", "smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAction, location_name: 'targetAction', traits: {"smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p>\n         <ul>\n            <li>\n               <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>\n            </li>\n            <li>\n               <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>\"(0 10 ? * MON *)\"</code>. For more information, see \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. \n         This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots. (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. \n         For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for \n            Amazon Redshift</a> in the Amazon Redshift Management Guide</p>", "smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace for which to create a scheduled action.</p>", "smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the schedule is enabled. If false, the scheduled action does not trigger. For more information about <code>state</code> \n         of the scheduled action, see <a href=\"https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_ScheduledAction.html\">ScheduledAction</a>.</p>"}))
    CreateScheduledActionRequest.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'scheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The description of the scheduled action.</p>"}))
    CreateScheduledActionRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger.</p>"}))
    CreateScheduledActionRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger.</p>"}))
    CreateScheduledActionRequest.type = Types::CreateScheduledActionRequest
    CreateScheduledActionResponse.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: 'scheduledAction', traits: {"smithy.api#documentation" => "<p>The returned <code>ScheduledAction</code> object that describes the properties of a scheduled action.</p>"}))
    CreateScheduledActionResponse.type = Types::CreateScheduledActionResponse
    CreateSnapshotCopyConfigurationRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to copy snapshots from.</p>", "smithy.api#required" => {}}))
    CreateSnapshotCopyConfigurationRequest.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destinationRegion', traits: {"smithy.api#documentation" => "<p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>", "smithy.api#required" => {}}))
    CreateSnapshotCopyConfigurationRequest.add_member(:snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'snapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of the snapshots that you copy to the destination Amazon Web Services Region.</p>"}))
    CreateSnapshotCopyConfigurationRequest.add_member(:destination_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'destinationKmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key to use to encrypt your snapshots in the destination Amazon Web Services Region.</p>"}))
    CreateSnapshotCopyConfigurationRequest.type = Types::CreateSnapshotCopyConfigurationRequest
    CreateSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration, location_name: 'snapshotCopyConfiguration', traits: {"smithy.api#documentation" => "<p>The snapshot copy configuration object that is returned.</p>", "smithy.api#required" => {}}))
    CreateSnapshotCopyConfigurationResponse.type = Types::CreateSnapshotCopyConfigurationResponse
    CreateSnapshotRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace to create a snapshot for.</p>", "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot.</p>", "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long to retain the created snapshot.</p>"}))
    CreateSnapshotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of <a href=\"https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html\">Tag objects</a> to associate with the snapshot.</p>"}))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>The created snapshot object.</p>"}))
    CreateSnapshotResponse.type = Types::CreateSnapshotResponse
    CreateSnapshotScheduleActionParameters.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace for which you want to configure a scheduled action to create a snapshot.</p>", "smithy.api#required" => {}}))
    CreateSnapshotScheduleActionParameters.add_member(:snapshot_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNamePrefix, location_name: 'snapshotNamePrefix', traits: {"smithy.api#documentation" => "<p>A string prefix that is attached to the name of the snapshot created by the scheduled action. The final \n      name of the snapshot is the string prefix appended by the date and time of when the snapshot was created.</p>", "smithy.api#required" => {}}))
    CreateSnapshotScheduleActionParameters.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of the snapshot created by the scheduled action.</p>"}))
    CreateSnapshotScheduleActionParameters.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of <a href=\"https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html\">Tag objects</a> to associate with the snapshot.</p>"}))
    CreateSnapshotScheduleActionParameters.type = Types::CreateSnapshotScheduleActionParameters
    CreateUsageLimitRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.</p>", "smithy.api#required" => {}}))
    CreateUsageLimitRequest.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitUsageType, location_name: 'usageType', traits: {"smithy.api#documentation" => "<p>The type of Amazon Redshift Serverless usage to create a usage limit for.</p>", "smithy.api#required" => {}}))
    CreateUsageLimitRequest.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'amount', traits: {"smithy.api#documentation" => "<p>The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data\n         transferred between Regions in cross-account sharing. The value must be a positive number.</p>", "smithy.api#required" => {}}))
    CreateUsageLimitRequest.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'period', traits: {"smithy.api#documentation" => "<p>The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly.</p>"}))
    CreateUsageLimitRequest.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'breachAction', traits: {"smithy.api#documentation" => "<p>The action that Amazon Redshift Serverless takes when the limit is reached. The default is log.</p>"}))
    CreateUsageLimitRequest.type = Types::CreateUsageLimitRequest
    CreateUsageLimitResponse.add_member(:usage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit, location_name: 'usageLimit', traits: {"smithy.api#documentation" => "<p>The returned usage limit object.</p>"}))
    CreateUsageLimitResponse.type = Types::CreateUsageLimitResponse
    CreateWorkgroupRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the created workgroup.</p>", "smithy.api#required" => {}}))
    CreateWorkgroupRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to associate with the workgroup.</p>", "smithy.api#required" => {}}))
    CreateWorkgroupRequest.add_member(:base_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'baseCapacity', traits: {"smithy.api#documentation" => "<p>The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).</p>"}))
    CreateWorkgroupRequest.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>The value that specifies whether to turn on enhanced virtual \n         private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.</p>"}))
    CreateWorkgroupRequest.add_member(:config_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigParameterList, location_name: 'configParameters', traits: {"smithy.api#documentation" => "<p>An array of parameters to set for advanced control over a database. The\n         options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>,\n         <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and query monitoring metrics that let you define performance boundaries. For more information about query monitoring rules and available metrics, see \n         <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless\">\n            Query monitoring metrics for Amazon Redshift Serverless</a>.</p>"}))
    CreateWorkgroupRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>An array of security group IDs to associate with the workgroup.</p>"}))
    CreateWorkgroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>An array of VPC subnet IDs to associate with the workgroup.</p>"}))
    CreateWorkgroupRequest.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publiclyAccessible', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the workgroup can be accessed from a public network.</p>"}))
    CreateWorkgroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A array of tag instances.</p>"}))
    CreateWorkgroupRequest.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>"}))
    CreateWorkgroupRequest.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCapacity', traits: {"smithy.api#documentation" => "<p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>"}))
    CreateWorkgroupRequest.add_member(:price_performance_target, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceTarget, location_name: 'pricePerformanceTarget', traits: {"smithy.api#documentation" => "<p>An object that represents the price performance target settings for the workgroup.</p>"}))
    CreateWorkgroupRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    CreateWorkgroupRequest.add_member(:track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'trackName', traits: {"smithy.api#documentation" => "<p>An optional parameter for the name of the track for the workgroup. If you don't provide \n         a track name, the workgroup is assigned to the <code>current</code> track.</p>"}))
    CreateWorkgroupRequest.type = Types::CreateWorkgroupRequest
    CreateWorkgroupResponse.add_member(:workgroup, Smithy::Schema::Shapes::ShapeRef.new(shape: Workgroup, location_name: 'workgroup', traits: {"smithy.api#documentation" => "<p>The created workgroup object.</p>"}))
    CreateWorkgroupResponse.type = Types::CreateWorkgroupResponse
    DeleteCustomDomainAssociationRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>", "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationRequest.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>", "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationRequest.type = Types::DeleteCustomDomainAssociationRequest
    DeleteCustomDomainAssociationResponse.type = Types::DeleteCustomDomainAssociationResponse
    DeleteEndpointAccessRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint to delete.</p>", "smithy.api#required" => {}}))
    DeleteEndpointAccessRequest.type = Types::DeleteEndpointAccessRequest
    DeleteEndpointAccessResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The deleted VPC endpoint.</p>"}))
    DeleteEndpointAccessResponse.type = Types::DeleteEndpointAccessResponse
    DeleteNamespaceRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to delete.</p>", "smithy.api#required" => {}}))
    DeleteNamespaceRequest.add_member(:final_snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'finalSnapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot to be created before the namespace is deleted.</p>"}))
    DeleteNamespaceRequest.add_member(:final_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'finalSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>How long to retain the final snapshot.</p>"}))
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The deleted namespace object.</p>", "smithy.api#required" => {}}))
    DeleteNamespaceResponse.type = Types::DeleteNamespaceResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the policy to delete.</p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteScheduledActionRequest.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: 'scheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action to delete.</p>", "smithy.api#required" => {}}))
    DeleteScheduledActionRequest.type = Types::DeleteScheduledActionRequest
    DeleteScheduledActionResponse.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: 'scheduledAction', traits: {"smithy.api#documentation" => "<p>The deleted scheduled action object.</p>"}))
    DeleteScheduledActionResponse.type = Types::DeleteScheduledActionResponse
    DeleteSnapshotCopyConfigurationRequest.add_member(:snapshot_copy_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotCopyConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot copy configuration to delete.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotCopyConfigurationRequest.type = Types::DeleteSnapshotCopyConfigurationRequest
    DeleteSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration, location_name: 'snapshotCopyConfiguration', traits: {"smithy.api#documentation" => "<p>The deleted snapshot copy configuration object.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotCopyConfigurationResponse.type = Types::DeleteSnapshotCopyConfigurationResponse
    DeleteSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>The deleted snapshot object.</p>"}))
    DeleteSnapshotResponse.type = Types::DeleteSnapshotResponse
    DeleteUsageLimitRequest.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'usageLimitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the usage limit to delete.</p>", "smithy.api#required" => {}}))
    DeleteUsageLimitRequest.type = Types::DeleteUsageLimitRequest
    DeleteUsageLimitResponse.add_member(:usage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit, location_name: 'usageLimit', traits: {"smithy.api#documentation" => "<p>The deleted usage limit object.</p>"}))
    DeleteUsageLimitResponse.type = Types::DeleteUsageLimitResponse
    DeleteWorkgroupRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkgroupRequest.type = Types::DeleteWorkgroupRequest
    DeleteWorkgroupResponse.add_member(:workgroup, Smithy::Schema::Shapes::ShapeRef.new(shape: Workgroup, location_name: 'workgroup', traits: {"smithy.api#documentation" => "<p>The deleted workgroup object.</p>", "smithy.api#required" => {}}))
    DeleteWorkgroupResponse.type = Types::DeleteWorkgroupResponse
    Endpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'address', traits: {"smithy.api#documentation" => "<p>The DNS address of the VPC endpoint.</p>"}))
    Endpoint.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port that Amazon Redshift Serverless listens on.</p>"}))
    Endpoint.add_member(:vpc_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointList, location_name: 'vpcEndpoints', traits: {"smithy.api#documentation" => "<p>An array of <code>VpcEndpoint</code> objects.</p>"}))
    Endpoint.type = Types::Endpoint
    EndpointAccess.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint.</p>"}))
    EndpointAccess.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointStatus', traits: {"smithy.api#documentation" => "<p>The status of the VPC endpoint.</p>"}))
    EndpointAccess.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the endpoint.</p>"}))
    EndpointAccess.add_member(:endpoint_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endpointCreateTime', traits: {"smithy.api#documentation" => "<p>The time that the endpoint was created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    EndpointAccess.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port number on which Amazon Redshift Serverless accepts incoming connections.</p>"}))
    EndpointAccess.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'address', traits: {"smithy.api#documentation" => "<p>The DNS address of the endpoint.</p>"}))
    EndpointAccess.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The unique identifier of subnets \n         where Amazon Redshift Serverless choose to deploy the VPC endpoint.</p>"}))
    EndpointAccess.add_member(:vpc_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'vpcSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security groups associated with the endpoint.</p>"}))
    EndpointAccess.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'vpcEndpoint', traits: {"smithy.api#documentation" => "<p>The connection endpoint for connecting to Amazon Redshift Serverless.</p>"}))
    EndpointAccess.add_member(:endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC endpoint.</p>"}))
    EndpointAccess.type = Types::EndpointAccess
    EndpointAccessList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess)
    GetCredentialsRequest.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DbName, location_name: 'dbName', traits: {"smithy.api#documentation" => "<p>The name of the database to get temporary authorization to log on to.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 64 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Must contain only uppercase or lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p>\n            </li>\n            <li>\n               <p>The first character must be a letter.</p>\n            </li>\n            <li>\n               <p>Must not contain a colon ( : ) or slash ( / ).</p>\n            </li>\n            <li>\n               <p>Cannot be a reserved word. A list of reserved words can be found \n               in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words </a> \n               in the Amazon Redshift Database Developer Guide</p>\n            </li>\n         </ul>"}))
    GetCredentialsRequest.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'durationSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds until the returned temporary password expires.\n         The minimum is 900 seconds, and the maximum is 3600 seconds.</p>"}))
    GetCredentialsRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>"}))
    GetCredentialsRequest.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup. The custom domain name or the workgroup name must be included in the request.</p>"}))
    GetCredentialsRequest.type = Types::GetCredentialsRequest
    GetCredentialsResponse.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: DbUser, location_name: 'dbUser', traits: {"smithy.api#documentation" => "<p>A database user name that is authorized to log on to the database <code>DbName</code>\n         using the password <code>DbPassword</code>. If the specified <code>DbUser</code> exists in the database, \n         the new user name has the same database privileges as the the user named in \n         <code>DbUser</code>. By default, the user is added to PUBLIC.</p>"}))
    GetCredentialsResponse.add_member(:db_password, Smithy::Schema::Shapes::ShapeRef.new(shape: DbPassword, location_name: 'dbPassword', traits: {"smithy.api#documentation" => "<p>A temporary password that authorizes the user name returned by \n         <code>DbUser</code> to log on to the database <code>DbName</code>.</p>"}))
    GetCredentialsResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expiration', traits: {"smithy.api#documentation" => "<p>The date and time the password in <code>DbPassword</code> expires.</p>"}))
    GetCredentialsResponse.add_member(:next_refresh_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'nextRefreshTime', traits: {"smithy.api#documentation" => "<p>The date and time of when the <code>DbUser</code> and <code>DbPassword</code> \n         authorization refreshes.</p>"}))
    GetCredentialsResponse.type = Types::GetCredentialsResponse
    GetCustomDomainAssociationRequest.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>", "smithy.api#required" => {}}))
    GetCustomDomainAssociationRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>", "smithy.api#required" => {}}))
    GetCustomDomainAssociationRequest.type = Types::GetCustomDomainAssociationRequest
    GetCustomDomainAssociationResponse.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>"}))
    GetCustomDomainAssociationResponse.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>"}))
    GetCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>"}))
    GetCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'customDomainCertificateExpiryTime', traits: {"smithy.api#documentation" => "<p>The expiration time for the certificate.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetCustomDomainAssociationResponse.type = Types::GetCustomDomainAssociationResponse
    GetEndpointAccessRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint to return information for.</p>", "smithy.api#required" => {}}))
    GetEndpointAccessRequest.type = Types::GetEndpointAccessRequest
    GetEndpointAccessResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The returned VPC endpoint.</p>"}))
    GetEndpointAccessResponse.type = Types::GetEndpointAccessResponse
    GetNamespaceRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetNamespaceRequest.type = Types::GetNamespaceRequest
    GetNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The returned namespace object.</p>", "smithy.api#required" => {}}))
    GetNamespaceResponse.type = Types::GetNamespaceResponse
    GetRecoveryPointRequest.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the recovery point to return information for.</p>", "smithy.api#required" => {}}))
    GetRecoveryPointRequest.type = Types::GetRecoveryPointRequest
    GetRecoveryPointResponse.add_member(:recovery_point, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPoint, location_name: 'recoveryPoint', traits: {"smithy.api#documentation" => "<p>The returned recovery point object.</p>"}))
    GetRecoveryPointResponse.type = Types::GetRecoveryPointResponse
    GetReservationOfferingRequest.add_member(:offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingId, location_name: 'offeringId', traits: {"smithy.api#documentation" => "<p>The identifier for the offering..</p>", "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    GetReservationOfferingRequest.type = Types::GetReservationOfferingRequest
    GetReservationOfferingResponse.add_member(:reservation_offering, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationOffering, location_name: 'reservationOffering', traits: {"smithy.api#documentation" => "<p>The returned reservation offering. The offering determines the payment schedule for the reservation.</p>", "smithy.api#required" => {}}))
    GetReservationOfferingResponse.type = Types::GetReservationOfferingResponse
    GetReservationRequest.add_member(:reservation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationId, location_name: 'reservationId', traits: {"smithy.api#documentation" => "<p>The ID of the reservation to retrieve.</p>", "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    GetReservationRequest.type = Types::GetReservationRequest
    GetReservationResponse.add_member(:reservation, Smithy::Schema::Shapes::ShapeRef.new(shape: Reservation, location_name: 'reservation', traits: {"smithy.api#documentation" => "<p>The returned reservation object.</p>", "smithy.api#required" => {}}))
    GetReservationResponse.type = Types::GetReservationResponse
    GetResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to return.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'resourcePolicy', traits: {"smithy.api#documentation" => "<p>The returned resource policy.</p>"}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetScheduledActionRequest.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: 'scheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action.</p>", "smithy.api#required" => {}}))
    GetScheduledActionRequest.type = Types::GetScheduledActionRequest
    GetScheduledActionResponse.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: 'scheduledAction', traits: {"smithy.api#documentation" => "<p>The returned scheduled action object.</p>"}))
    GetScheduledActionResponse.type = Types::GetScheduledActionResponse
    GetSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot to return.</p>"}))
    GetSnapshotRequest.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services account of a snapshot shared with another user.</p>"}))
    GetSnapshotRequest.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot to return.</p>"}))
    GetSnapshotRequest.type = Types::GetSnapshotRequest
    GetSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>The returned snapshot object.</p>"}))
    GetSnapshotResponse.type = Types::GetSnapshotResponse
    GetTableRestoreStatusRequest.add_member(:table_restore_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'tableRestoreRequestId', traits: {"smithy.api#documentation" => "<p>The ID of the <code>RestoreTableFromSnapshot</code> request to return status for.</p>", "smithy.api#required" => {}}))
    GetTableRestoreStatusRequest.type = Types::GetTableRestoreStatusRequest
    GetTableRestoreStatusResponse.add_member(:table_restore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: 'tableRestoreStatus', traits: {"smithy.api#documentation" => "<p>The returned <code>TableRestoreStatus</code> object that contains information about\n         the status of your <code>RestoreTableFromSnapshot</code> request.</p>"}))
    GetTableRestoreStatusResponse.type = Types::GetTableRestoreStatusResponse
    GetTrackRequest.add_member(:track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'trackName', traits: {"smithy.api#documentation" => "<p>The name of the track of which its version is fetched.</p>", "smithy.api#required" => {}}))
    GetTrackRequest.type = Types::GetTrackRequest
    GetTrackResponse.add_member(:track, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessTrack, location_name: 'track', traits: {"smithy.api#documentation" => "<p>The version of the specified track.</p>"}))
    GetTrackResponse.type = Types::GetTrackResponse
    GetUsageLimitRequest.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'usageLimitId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the usage limit to return information for.</p>", "smithy.api#required" => {}}))
    GetUsageLimitRequest.type = Types::GetUsageLimitRequest
    GetUsageLimitResponse.add_member(:usage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit, location_name: 'usageLimit', traits: {"smithy.api#documentation" => "<p>The returned usage limit object.</p>"}))
    GetUsageLimitResponse.type = Types::GetUsageLimitResponse
    GetWorkgroupRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to return information for.</p>", "smithy.api#required" => {}}))
    GetWorkgroupRequest.type = Types::GetWorkgroupRequest
    GetWorkgroupResponse.add_member(:workgroup, Smithy::Schema::Shapes::ShapeRef.new(shape: Workgroup, location_name: 'workgroup', traits: {"smithy.api#documentation" => "<p>The returned workgroup object.</p>", "smithy.api#required" => {}}))
    GetWorkgroupResponse.type = Types::GetWorkgroupResponse
    IamRoleArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn)
    InsufficientCapacityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidPaginationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidPaginationException.type = Types::InvalidPaginationException
    Ipv6CidrBlockNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    Ipv6CidrBlockNotFoundException.type = Types::Ipv6CidrBlockNotFoundException
    ListCustomDomainAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCustomDomainAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCustomDomainAssociationsRequest.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>"}))
    ListCustomDomainAssociationsRequest.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>"}))
    ListCustomDomainAssociationsRequest.type = Types::ListCustomDomainAssociationsRequest
    ListCustomDomainAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>"}))
    ListCustomDomainAssociationsResponse.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationList, location_name: 'associations', traits: {"smithy.api#documentation" => "<p>A list of Association objects.</p>"}))
    ListCustomDomainAssociationsResponse.type = Types::ListCustomDomainAssociationsResponse
    ListEndpointAccessRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListEndpointAccess</code> operation returns a <code>nextToken</code>,\n         you can include the returned <code>nextToken</code> in following <code>ListEndpointAccess</code> operations,\n         which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEndpointAccessRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListEndpointAccessRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the VPC endpoint to return.</p>"}))
    ListEndpointAccessRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the virtual private cloud with access to Amazon Redshift Serverless.</p>"}))
    ListEndpointAccessRequest.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>"}))
    ListEndpointAccessRequest.type = Types::ListEndpointAccessRequest
    ListEndpointAccessResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>"}))
    ListEndpointAccessResponse.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccessList, location_name: 'endpoints', traits: {"smithy.api#documentation" => "<p>The returned VPC endpoints.</p>", "smithy.api#required" => {}}))
    ListEndpointAccessResponse.type = Types::ListEndpointAccessResponse
    ListManagedWorkgroupsRequest.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'sourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the managed \n         workgroup in the AWS Glue Data Catalog.</p>"}))
    ListManagedWorkgroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial ListManagedWorkgroups operation returns a nextToken, \n         you can include the returned nextToken in following ListManagedWorkgroups \n         operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListManagedWorkgroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number \n         of results to return. You can use nextToken to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListManagedWorkgroupsRequest.type = Types::ListManagedWorkgroupsRequest
    ListManagedWorkgroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If nextToken is returned, there are more results available. \n         The value of nextToken is a unique pagination token for each page.\n         To retrieve the next page, make the call again using the returned token.</p>"}))
    ListManagedWorkgroupsResponse.add_member(:managed_workgroups, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedWorkgroups, location_name: 'managedWorkgroups', traits: {"smithy.api#documentation" => "<p>The returned array of managed workgroups.</p>"}))
    ListManagedWorkgroupsResponse.type = Types::ListManagedWorkgroupsResponse
    ListNamespacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListNamespaces</code> operation returns a <code>nextToken</code>,\n         you can include the returned <code>nextToken</code> in following <code>ListNamespaces</code> operations,\n         which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNamespacesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListNamespacesRequest.type = Types::ListNamespacesRequest
    ListNamespacesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>"}))
    ListNamespacesResponse.add_member(:namespaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: 'namespaces', traits: {"smithy.api#documentation" => "<p>The list of returned namespaces.</p>", "smithy.api#required" => {}}))
    ListNamespacesResponse.type = Types::ListNamespacesResponse
    ListRecoveryPointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListRecoveryPoints</code> operation returns a <code>nextToken</code>,\n         you can include the returned <code>nextToken</code> in following <code>ListRecoveryPoints</code> operations,\n         which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRecoveryPointsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The time when the recovery point's creation was initiated.</p>"}))
    ListRecoveryPointsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time when creation of the recovery point finished.</p>"}))
    ListRecoveryPointsRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to list recovery points for.</p>"}))
    ListRecoveryPointsRequest.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the namespace from which to list recovery points.</p>"}))
    ListRecoveryPointsRequest.type = Types::ListRecoveryPointsRequest
    ListRecoveryPointsResponse.add_member(:recovery_points, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPointList, location_name: 'recoveryPoints', traits: {"smithy.api#documentation" => "<p>The returned recovery point objects.</p>"}))
    ListRecoveryPointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>"}))
    ListRecoveryPointsResponse.type = Types::ListRecoveryPointsResponse
    ListReservationOfferingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReservationOfferingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReservationOfferingsRequest.type = Types::ListReservationOfferingsRequest
    ListReservationOfferingsResponse.add_member(:reservation_offerings_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationOfferingsList, location_name: 'reservationOfferingsList', traits: {"smithy.api#documentation" => "<p>The returned list of reservation offerings.</p>", "smithy.api#required" => {}}))
    ListReservationOfferingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of items.</p>"}))
    ListReservationOfferingsResponse.type = Types::ListReservationOfferingsResponse
    ListReservationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReservationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReservationsRequest.type = Types::ListReservationsRequest
    ListReservationsResponse.add_member(:reservations_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationsList, location_name: 'reservationsList', traits: {"smithy.api#documentation" => "<p>The serverless reservations returned by the request.</p>", "smithy.api#required" => {}}))
    ListReservationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of items.</p>"}))
    ListReservationsResponse.type = Types::ListReservationsResponse
    ListScheduledActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListScheduledActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. Use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListScheduledActionsRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of namespace associated with the scheduled action to retrieve.</p>"}))
    ListScheduledActionsRequest.type = Types::ListScheduledActionsRequest
    ListScheduledActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListScheduledActionsResponse.add_member(:scheduled_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionsList, location_name: 'scheduledActions', traits: {"smithy.api#documentation" => "<p>All of the returned scheduled action association objects.</p>"}))
    ListScheduledActionsResponse.type = Types::ListScheduledActionsResponse
    ListSnapshotCopyConfigurationsRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace from which to list all snapshot copy configurations.</p>"}))
    ListSnapshotCopyConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using \n         the returned token to retrieve the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSnapshotCopyConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSnapshotCopyConfigurationsRequest.type = Types::ListSnapshotCopyConfigurationsRequest
    ListSnapshotCopyConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using \n         the returned token to retrieve the next page.</p>"}))
    ListSnapshotCopyConfigurationsResponse.add_member(:snapshot_copy_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyConfigurations, location_name: 'snapshotCopyConfigurations', traits: {"smithy.api#documentation" => "<p>All of the returned snapshot copy configurations.</p>", "smithy.api#required" => {}}))
    ListSnapshotCopyConfigurationsResponse.type = Types::ListSnapshotCopyConfigurationsResponse
    ListSnapshotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSnapshotsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSnapshotsRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace from which to list all snapshots.</p>"}))
    ListSnapshotsRequest.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the namespace from which to list all snapshots.</p>"}))
    ListSnapshotsRequest.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services account of the snapshot.</p>"}))
    ListSnapshotsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The time when the creation of the snapshot was initiated.</p>"}))
    ListSnapshotsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The timestamp showing when the snapshot creation finished.</p>"}))
    ListSnapshotsRequest.type = Types::ListSnapshotsRequest
    ListSnapshotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>"}))
    ListSnapshotsResponse.add_member(:snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'snapshots', traits: {"smithy.api#documentation" => "<p>All of the returned snapshot objects.</p>"}))
    ListSnapshotsResponse.type = Types::ListSnapshotsResponse
    ListTableRestoreStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListTableRestoreStatus</code> operation returns a nextToken, \n         you can include the returned <code>nextToken</code> in following <code>ListTableRestoreStatus</code>\n         operations. This will return results on the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTableRestoreStatusRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to \n         return. You can use nextToken to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTableRestoreStatusRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace from which to list all of the statuses of <code>RestoreTableFromSnapshot</code> operations .</p>"}))
    ListTableRestoreStatusRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The workgroup from which to list all of the statuses of <code>RestoreTableFromSnapshot</code> operations.</p>"}))
    ListTableRestoreStatusRequest.type = Types::ListTableRestoreStatusRequest
    ListTableRestoreStatusResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListTableRestoreStatus</code> operation returns a <code>nextToken</code>, \n         you can include the returned <code>nextToken</code> in following <code>ListTableRestoreStatus</code>\n         operations. This will returns results on the next page.</p>"}))
    ListTableRestoreStatusResponse.add_member(:table_restore_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusList, location_name: 'tableRestoreStatuses', traits: {"smithy.api#documentation" => "<p>The array of returned <code>TableRestoreStatus</code> objects.</p>"}))
    ListTableRestoreStatusResponse.type = Types::ListTableRestoreStatusResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of the key-value pairs assigned to the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTracksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListTracksRequest</code> operation returns a \n         <code>nextToken</code>, you can include the returned <code>nextToken</code>\n         in following <code>ListTracksRequest</code> operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTracksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of response records to return in each call. \n         If the number of remaining response records exceeds the specified \n         MaxRecords value, a value is returned in a marker field of the response. \n         You can retrieve the next set of records by retrying the command with the \n         returned marker value.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTracksRequest.type = Types::ListTracksRequest
    ListTracksResponse.add_member(:tracks, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackList, location_name: 'tracks', traits: {"smithy.api#documentation" => "<p>The returned tracks.</p>"}))
    ListTracksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code>\n         is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListTracksResponse.type = Types::ListTracksResponse
    ListUsageLimitsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the resource whose usage limits you want to list.</p>"}))
    ListUsageLimitsRequest.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitUsageType, location_name: 'usageType', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift Serverless feature whose limits you want to see.</p>"}))
    ListUsageLimitsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListUsageLimits</code> operation returns a <code>nextToken</code>,\n         you can include the returned <code>nextToken</code> in following <code>ListUsageLimits</code> operations,\n         which returns results in the next page.\n      </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListUsageLimitsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to get the next page of results. The default is 100.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListUsageLimitsRequest.type = Types::ListUsageLimitsRequest
    ListUsageLimitsResponse.add_member(:usage_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimits, location_name: 'usageLimits', traits: {"smithy.api#documentation" => "<p>An array of returned usage limit objects.</p>"}))
    ListUsageLimitsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         Make the call again using the returned token to retrieve the next page.</p>"}))
    ListUsageLimitsResponse.type = Types::ListUsageLimitsResponse
    ListWorkgroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If your initial ListWorkgroups operation returns a <code>nextToken</code>,\n         you can include the returned <code>nextToken</code> in following ListNamespaces operations,\n         which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkgroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return.\n         You can use <code>nextToken</code> to display the next page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkgroupsRequest.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerAccount, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>"}))
    ListWorkgroupsRequest.type = Types::ListWorkgroupsRequest
    ListWorkgroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n         If <code>nextToken</code> is returned, there are more results available. \n         The value of <code>nextToken</code> is a unique pagination token for each page. \n         To retrieve the next page, make the call again using the returned token.</p>"}))
    ListWorkgroupsResponse.add_member(:workgroups, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupList, location_name: 'workgroups', traits: {"smithy.api#documentation" => "<p>The returned array of workgroups.</p>", "smithy.api#required" => {}}))
    ListWorkgroupsResponse.type = Types::ListWorkgroupsResponse
    LogExportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogExport)
    ManagedWorkgroupListItem.add_member(:managed_workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedWorkgroupName, location_name: 'managedWorkgroupName', traits: {"smithy.api#documentation" => "<p>The name of the managed workgroup.</p>"}))
    ManagedWorkgroupListItem.add_member(:managed_workgroup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'managedWorkgroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the managed workgroup.</p>"}))
    ManagedWorkgroupListItem.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'sourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the managed \n         workgroup in the AWS Glue Data Catalog.</p>"}))
    ManagedWorkgroupListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedWorkgroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the managed workgroup.</p>"}))
    ManagedWorkgroupListItem.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date of the managed workgroup.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ManagedWorkgroupListItem.type = Types::ManagedWorkgroupListItem
    ManagedWorkgroupStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ManagedWorkgroupStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ManagedWorkgroupStatus.add_member(:modifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ManagedWorkgroupStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ManagedWorkgroupStatus.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    ManagedWorkgroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedWorkgroupListItem)
    Namespace.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with a namespace.</p>"}))
    Namespace.add_member(:namespace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of a namespace.</p>"}))
    Namespace.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace. \n      Must be between 3-64 alphanumeric characters in lowercase, \n      and it cannot be a reserved word. A list of reserved words can be found \n      in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p>"}))
    Namespace.add_member(:admin_username, Smithy::Schema::Shapes::ShapeRef.new(shape: DbUser, location_name: 'adminUsername', traits: {"smithy.api#documentation" => "<p>The username of the administrator for the first database created in the namespace.</p>"}))
    Namespace.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dbName', traits: {"smithy.api#documentation" => "<p>The name of the first database created in the namespace.</p>"}))
    Namespace.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>"}))
    Namespace.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace.</p>"}))
    Namespace.add_member(:iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'iamRoles', traits: {"smithy.api#documentation" => "<p>A list of IAM roles to associate with the namespace.</p>"}))
    Namespace.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogExportList, location_name: 'logExports', traits: {"smithy.api#documentation" => "<p>The types of logs the namespace can export. Available export types are User log, Connection log, and User activity log.</p>"}))
    Namespace.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the namespace.</p>"}))
    Namespace.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date of when the namespace was created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Namespace.add_member(:admin_password_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'adminPasswordSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the namespace's admin user credentials secret.</p>"}))
    Namespace.add_member(:admin_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'adminPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>"}))
    Namespace.type = Types::Namespace
    NamespaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace)
    NetworkInterface.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'networkInterfaceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network interface.</p>"}))
    NetworkInterface.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'subnetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the subnet.</p>"}))
    NetworkInterface.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'privateIpAddress', traits: {"smithy.api#documentation" => "<p>The IPv4 address of the network interface within the subnet.</p>"}))
    NetworkInterface.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'availabilityZone', traits: {"smithy.api#documentation" => "<p>The availability Zone.</p>"}))
    NetworkInterface.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ipv6Address', traits: {"smithy.api#documentation" => "<p>The IPv6 address of the network interface within the subnet.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    NextInvocationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp)
    PerformanceTarget.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceTargetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Whether the price performance target is enabled for the workgroup.</p>"}))
    PerformanceTarget.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The target price performance level for the workgroup. Valid values include 1, 25, 50, 75, and 100. These\n         correspond to the price performance levels LOW_COST, ECONOMICAL, BALANCED, RESOURCEFUL, and HIGH_PERFORMANCE.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    PerformanceTarget.type = Types::PerformanceTarget
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account to create or update a resource policy for.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The policy to create or update. For example, the following policy grants a user authorization to restore a snapshot.</p>\n         <p>\n            <code>\"{\\\"Version\\\": \\\"2012-10-17\\\", \\\"Statement\\\" : \n            [{ \\\"Sid\\\": \\\"AllowUserRestoreFromSnapshot\\\", \\\"Principal\\\":{\\\"AWS\\\": \n            [\\\"739247239426\\\"]}, \\\"Action\\\": [\\\"redshift-serverless:RestoreFromSnapshot\\\"]\n            , \\\"Effect\\\": \\\"Allow\\\" }]}\"</code>\n         </p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'resourcePolicy', traits: {"smithy.api#documentation" => "<p>The policy that was created or updated.</p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RecoveryPoint.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the recovery point.</p>"}))
    RecoveryPoint.add_member(:recovery_point_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'recoveryPointCreateTime', traits: {"smithy.api#documentation" => "<p>The time the recovery point is created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    RecoveryPoint.add_member(:total_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'totalSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total size of the data in the recovery point in megabytes.</p>"}))
    RecoveryPoint.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace the recovery point is associated with.</p>"}))
    RecoveryPoint.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup the recovery point is associated with.</p>"}))
    RecoveryPoint.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the namespace the recovery point is associated with.</p>"}))
    RecoveryPoint.type = Types::RecoveryPoint
    RecoveryPointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPoint)
    Reservation.add_member(:reservation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationId, location_name: 'reservationId', traits: {"smithy.api#documentation" => "<p>The identifier that uniquely identifies the serverless reservation.</p>"}))
    Reservation.add_member(:reservation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationArn, location_name: 'reservationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the serverless reservation.</p>"}))
    Reservation.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The start date for the serverless reservation. This is the date you specified for the reservation to start when\n         you created the reservation.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Reservation.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The end date for the serverless reservation. This date is one year after the start date that you specify.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Reservation.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'capacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Redshift Processing Units (RPUs) to reserve.</p>"}))
    Reservation.add_member(:offering, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationOffering, location_name: 'offering', traits: {"smithy.api#documentation" => "<p>The type of offering for the reservation. The offering class determines the payment schedule for the reservation.</p>"}))
    Reservation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the reservation. Possible values include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>payment-pending</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>active</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>payment-failed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>retired</code>\n               </p>\n            </li>\n         </ul>"}))
    Reservation.type = Types::Reservation
    ReservationOffering.add_member(:offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingId, location_name: 'offeringId', traits: {"smithy.api#documentation" => "<p>The offering identifier.</p>"}))
    ReservationOffering.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration, in seconds, for which the reservation reserves the RPUs.</p>"}))
    ReservationOffering.add_member(:upfront_charge, Smithy::Schema::Shapes::ShapeRef.new(shape: Charge, location_name: 'upfrontCharge', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The up-front price you are charged for the reservation.</p>"}))
    ReservationOffering.add_member(:hourly_charge, Smithy::Schema::Shapes::ShapeRef.new(shape: Charge, location_name: 'hourlyCharge', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The rate you are charged for each hour the reservation is active.</p>"}))
    ReservationOffering.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>The currency code for the offering.</p>"}))
    ReservationOffering.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingType, location_name: 'offeringType', traits: {"smithy.api#documentation" => "<p>Determines the payment schedule for the reservation.</p>"}))
    ReservationOffering.type = Types::ReservationOffering
    ReservationOfferingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationOffering)
    ReservationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Reservation)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource that could not be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the policy.</p>"}))
    ResourcePolicy.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The resource policy.</p>"}))
    ResourcePolicy.type = Types::ResourcePolicy
    RestoreFromRecoveryPointRequest.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the recovery point to restore from.</p>", "smithy.api#required" => {}}))
    RestoreFromRecoveryPointRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to restore data into.</p>", "smithy.api#required" => {}}))
    RestoreFromRecoveryPointRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup used to restore data.</p>", "smithy.api#required" => {}}))
    RestoreFromRecoveryPointRequest.type = Types::RestoreFromRecoveryPointRequest
    RestoreFromRecoveryPointResponse.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the recovery point used for the restore.</p>"}))
    RestoreFromRecoveryPointResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace that data was restored into.</p>"}))
    RestoreFromRecoveryPointResponse.type = Types::RestoreFromRecoveryPointResponse
    RestoreFromSnapshotRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to restore the snapshot to.</p>", "smithy.api#required" => {}}))
    RestoreFromSnapshotRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup used to restore the snapshot.</p>", "smithy.api#required" => {}}))
    RestoreFromSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot to restore from. Must not be specified at the same time as <code>snapshotArn</code>.</p>"}))
    RestoreFromSnapshotRequest.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot to restore from. Required if restoring\n         from a provisioned cluster to Amazon Redshift Serverless. Must not be specified at the same time as\n            <code>snapshotName</code>.</p>\n         <p>The format of the ARN is arn:aws:redshift:&lt;region&gt;:&lt;account_id&gt;:snapshot:&lt;cluster_identifier&gt;/&lt;snapshot_identifier&gt;.</p>"}))
    RestoreFromSnapshotRequest.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that owns the snapshot.</p>"}))
    RestoreFromSnapshotRequest.add_member(:manage_admin_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageAdminPassword', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the restored \n         snapshot's admin credentials. If <code>MmanageAdminPassword</code> is false or not set, \n         Amazon Redshift uses the admin credentials that the namespace or cluster \n         had at the time the snapshot was taken.</p>"}))
    RestoreFromSnapshotRequest.add_member(:admin_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'adminPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>"}))
    RestoreFromSnapshotRequest.type = Types::RestoreFromSnapshotRequest
    RestoreFromSnapshotResponse.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot used to restore the namespace.</p>"}))
    RestoreFromSnapshotResponse.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services; account of the snapshot that was restored.</p>"}))
    RestoreFromSnapshotResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace'))
    RestoreFromSnapshotResponse.type = Types::RestoreFromSnapshotResponse
    RestoreTableFromRecoveryPointRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>Namespace of the recovery point to restore from.</p>", "smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The workgroup to restore the table to.</p>", "smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The ID of the recovery point to restore the table from.</p>", "smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:source_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the source database that contains the table being restored.</p>", "smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:source_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the source schema that contains the table being restored.</p>"}))
    RestoreTableFromRecoveryPointRequest.add_member(:source_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceTableName', traits: {"smithy.api#documentation" => "<p>The name of the source table being restored.</p>", "smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database to restore the table to.</p>"}))
    RestoreTableFromRecoveryPointRequest.add_member(:target_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the schema to restore the table to.</p>"}))
    RestoreTableFromRecoveryPointRequest.add_member(:new_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'newTableName', traits: {"smithy.api#documentation" => "<p>The name of the table to create from the restore operation.</p>", "smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:activate_case_sensitive_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'activateCaseSensitiveIdentifier', traits: {"smithy.api#documentation" => "<p>Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false.</p>"}))
    RestoreTableFromRecoveryPointRequest.type = Types::RestoreTableFromRecoveryPointRequest
    RestoreTableFromRecoveryPointResponse.add_member(:table_restore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: 'tableRestoreStatus'))
    RestoreTableFromRecoveryPointResponse.type = Types::RestoreTableFromRecoveryPointResponse
    RestoreTableFromSnapshotRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace of the snapshot to restore from.</p>", "smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The workgroup to restore the table to.</p>", "smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot to restore the table from.</p>", "smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:source_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the source database that contains the table being restored.</p>", "smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:source_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the source schema that contains the table being restored.</p>"}))
    RestoreTableFromSnapshotRequest.add_member(:source_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceTableName', traits: {"smithy.api#documentation" => "<p>The name of the source table being restored.</p>", "smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database to restore the table to.</p>"}))
    RestoreTableFromSnapshotRequest.add_member(:target_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the schema to restore the table to.</p>"}))
    RestoreTableFromSnapshotRequest.add_member(:new_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'newTableName', traits: {"smithy.api#documentation" => "<p>The name of the table to create from the restore operation.</p>", "smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:activate_case_sensitive_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'activateCaseSensitiveIdentifier', traits: {"smithy.api#documentation" => "<p>Indicates whether name identifiers for database, schema, and table \n         are case sensitive. If true, the names are case sensitive. If \n         false, the names are not case sensitive. The default is false.</p>"}))
    RestoreTableFromSnapshotRequest.type = Types::RestoreTableFromSnapshotRequest
    RestoreTableFromSnapshotResponse.add_member(:table_restore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: 'tableRestoreStatus', traits: {"smithy.api#documentation" => "<p>The TableRestoreStatus object that contains the status of the restore operation.</p>"}))
    RestoreTableFromSnapshotResponse.type = Types::RestoreTableFromSnapshotResponse
    Schedule.add_member(:at, Types::Schedule::At, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'at', traits: {"smithy.api#documentation" => "<p>The timestamp of when Amazon Redshift Serverless should run the scheduled action. Timestamp is in UTC. Format of at expression is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>"}))
    Schedule.add_member(:cron, Types::Schedule::Cron, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'cron', traits: {"smithy.api#documentation" => "<p>The cron expression to use to schedule a recurring scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p>\n         <p>Format of cron expressions is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>\"(0 10 ? * MON *)\"</code>. For more information, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>"}))
    Schedule.add_member(:unknown, Types::Schedule::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Schedule.type = Types::Schedule
    ScheduledActionAssociation.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>Name of associated Amazon Redshift Serverless namespace.</p>"}))
    ScheduledActionAssociation.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: 'scheduledActionName', traits: {"smithy.api#documentation" => "<p>Name of associated scheduled action.</p>"}))
    ScheduledActionAssociation.type = Types::ScheduledActionAssociation
    ScheduledActionResponse.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: 'scheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action.</p>"}))
    ScheduledActionResponse.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p>\n         <ul>\n            <li>\n               <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>\n            </li>\n            <li>\n               <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>\"(0 10 ? * MON *)\"</code>. For more information, see \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>\n            </li>\n         </ul>"}))
    ScheduledActionResponse.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'scheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The description of the scheduled action.</p>"}))
    ScheduledActionResponse.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: NextInvocationsList, location_name: 'nextInvocations', traits: {"smithy.api#documentation" => "<p>An array of timestamps of when the next scheduled actions will trigger.</p>"}))
    ScheduledActionResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. \n         This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots. (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. \n         For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for \n            Amazon Redshift</a> in the Amazon Redshift Management Guide</p>"}))
    ScheduledActionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the scheduled action.</p>"}))
    ScheduledActionResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger.</p>"}))
    ScheduledActionResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time of </p>"}))
    ScheduledActionResponse.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAction, location_name: 'targetAction'))
    ScheduledActionResponse.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger.</p>"}))
    ScheduledActionResponse.add_member(:scheduled_action_uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'scheduledActionUuid', traits: {"smithy.api#documentation" => "<p>The uuid of the scheduled action.</p>"}))
    ScheduledActionResponse.type = Types::ScheduledActionResponse
    ScheduledActionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionAssociation)
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServerlessTrack.add_member(:track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'trackName', traits: {"smithy.api#documentation" => "<p>The name of the track. Valid values are <code>current</code> and <code>trailing</code>.</p>"}))
    ServerlessTrack.add_member(:workgroup_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupVersion', traits: {"smithy.api#documentation" => "<p>The workgroup version number for the workgroup release.</p>"}))
    ServerlessTrack.add_member(:update_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetsList, location_name: 'updateTargets', traits: {"smithy.api#documentation" => "<p>An array of <code>UpdateTarget</code> objects to update with the track.</p>"}))
    ServerlessTrack.type = Types::ServerlessTrack
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Snapshot.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namepsace.</p>"}))
    Snapshot.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the namespace the snapshot was created from.</p>"}))
    Snapshot.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot.</p>"}))
    Snapshot.add_member(:snapshot_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime', traits: {"smithy.api#documentation" => "<p>The timestamp of when the snapshot was created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Snapshot.add_member(:admin_username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'adminUsername', traits: {"smithy.api#documentation" => "<p>The username of the database within a snapshot.</p>"}))
    Snapshot.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the snapshot.</p>"}))
    Snapshot.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the KMS key used to encrypt the snapshot.</p>"}))
    Snapshot.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ownerAccount', traits: {"smithy.api#documentation" => "<p>The owner Amazon Web Services; account of the snapshot.</p>"}))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'totalBackupSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total size, in megabytes, of how big the snapshot is.</p>"}))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'actualIncrementalBackupSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The size of the incremental backup in megabytes.</p>"}))
    Snapshot.add_member(:backup_progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'backupProgressInMegaBytes', traits: {"smithy.api#documentation" => "<p>The size in megabytes of the data that has been backed up to a snapshot.</p>"}))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'currentBackupRateInMegaBytesPerSecond', traits: {"smithy.api#documentation" => "<p>The rate at which data is backed up into a snapshot in megabytes per second.</p>"}))
    Snapshot.add_member(:estimated_seconds_to_completion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'estimatedSecondsToCompletion', traits: {"smithy.api#documentation" => "<p>The estimated amount of seconds until the snapshot completes backup.</p>"}))
    Snapshot.add_member(:elapsed_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'elapsedTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time it took to back up data into a snapshot.</p>"}))
    Snapshot.add_member(:snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'snapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The period of time, in days, of how long the snapshot is retained.</p>"}))
    Snapshot.add_member(:snapshot_remaining_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'snapshotRemainingDays', traits: {"smithy.api#documentation" => "<p>The amount of days until the snapshot is deleted.</p>"}))
    Snapshot.add_member(:snapshot_retention_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotRetentionStartTime', traits: {"smithy.api#documentation" => "<p>The timestamp of when data within the snapshot started getting retained.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Snapshot.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot.</p>"}))
    Snapshot.add_member(:accounts_with_restore_access, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'accountsWithRestoreAccess', traits: {"smithy.api#documentation" => "<p>All of the Amazon Web Services accounts that have access to \n         restore a snapshot to a namespace.</p>"}))
    Snapshot.add_member(:accounts_with_provisioned_restore_access, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'accountsWithProvisionedRestoreAccess', traits: {"smithy.api#documentation" => "<p>All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.</p>"}))
    Snapshot.add_member(:admin_password_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'adminPasswordSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the namespace's admin user credentials secret.</p>"}))
    Snapshot.add_member(:admin_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'adminPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>"}))
    Snapshot.type = Types::Snapshot
    SnapshotCopyConfiguration.add_member(:snapshot_copy_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotCopyConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot copy configuration object.</p>"}))
    SnapshotCopyConfiguration.add_member(:snapshot_copy_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotCopyConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the snapshot copy configuration object.</p>"}))
    SnapshotCopyConfiguration.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to copy snapshots from in the source Amazon Web Services Region.</p>"}))
    SnapshotCopyConfiguration.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destinationRegion', traits: {"smithy.api#documentation" => "<p>The destination Amazon Web Services Region to copy snapshots to.</p>"}))
    SnapshotCopyConfiguration.add_member(:snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'snapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of snapshots that are copied to the destination Amazon Web Services Region.</p>"}))
    SnapshotCopyConfiguration.add_member(:destination_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'destinationKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key to use to encrypt your snapshots in the destination Amazon Web Services Region.</p>"}))
    SnapshotCopyConfiguration.type = Types::SnapshotCopyConfiguration
    SnapshotCopyConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration)
    SnapshotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TableRestoreStatus.add_member(:table_restore_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'tableRestoreRequestId', traits: {"smithy.api#documentation" => "<p>The ID of the RestoreTableFromSnapshot request.</p>"}))
    TableRestoreStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A value that describes the current state of the table restore request. \n         Possible values are <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>"}))
    TableRestoreStatus.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that explains the returned status. For example, if the status of the operation is <code>FAILED</code>, the message explains why the operation failed.</p>"}))
    TableRestoreStatus.add_member(:request_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'requestTime', traits: {"smithy.api#documentation" => "<p>The time that the table restore request was made, \n         in Universal Coordinated Time (UTC).</p>"}))
    TableRestoreStatus.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace of the table being restored from.</p>"}))
    TableRestoreStatus.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup being restored from.</p>"}))
    TableRestoreStatus.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot being restored from.</p>"}))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'progressInMegaBytes', traits: {"smithy.api#documentation" => "<p>The amount of data restored to the new table so far, in megabytes (MB).</p>"}))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalDataInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total amount of data to restore to the new table, in megabytes (MB).</p>"}))
    TableRestoreStatus.add_member(:source_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the source database being restored from.</p>"}))
    TableRestoreStatus.add_member(:source_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the source schema being restored from.</p>"}))
    TableRestoreStatus.add_member(:source_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceTableName', traits: {"smithy.api#documentation" => "<p>The name of the source table being restored from.</p>"}))
    TableRestoreStatus.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database to restore to.</p>"}))
    TableRestoreStatus.add_member(:target_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the schema to restore to.</p>"}))
    TableRestoreStatus.add_member(:new_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'newTableName', traits: {"smithy.api#documentation" => "<p>The name of the table to create from the restore operation.</p>"}))
    TableRestoreStatus.add_member(:recovery_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recoveryPointId', traits: {"smithy.api#documentation" => "<p>The ID of the recovery point being restored from.</p>"}))
    TableRestoreStatus.type = Types::TableRestoreStatus
    TableRestoreStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key to use in the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to tag.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The map of the key-value pairs used to tag the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAction.add_member(:create_snapshot, Types::TargetAction::CreateSnapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotScheduleActionParameters, location_name: 'createSnapshot'))
    TargetAction.add_member(:unknown, Types::TargetAction::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TargetAction.type = Types::TargetAction
    ThrottlingException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code'))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource that exceeded the number of tags allowed for a resource.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    TrackList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessTrack)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag or set of tags to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCustomDomainAssociationRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>", "smithy.api#required" => {}}))
    UpdateCustomDomainAssociationRequest.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>", "smithy.api#required" => {}}))
    UpdateCustomDomainAssociationRequest.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN). This is optional.</p>", "smithy.api#required" => {}}))
    UpdateCustomDomainAssociationRequest.type = Types::UpdateCustomDomainAssociationRequest
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>"}))
    UpdateCustomDomainAssociationResponse.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup associated with the database.</p>"}))
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>"}))
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'customDomainCertificateExpiryTime', traits: {"smithy.api#documentation" => "<p>The expiration time for the certificate.</p>", "smithy.api#timestampFormat" => "date-time"}))
    UpdateCustomDomainAssociationResponse.type = Types::UpdateCustomDomainAssociationResponse
    UpdateEndpointAccessRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpointName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint to update.</p>", "smithy.api#required" => {}}))
    UpdateEndpointAccessRequest.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The list of VPC security groups associated with the endpoint after the endpoint is modified.</p>"}))
    UpdateEndpointAccessRequest.type = Types::UpdateEndpointAccessRequest
    UpdateEndpointAccessResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The updated VPC endpoint.</p>"}))
    UpdateEndpointAccessResponse.type = Types::UpdateEndpointAccessResponse
    UpdateNamespaceRequest.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The name of the namespace to update. You can't update the name of a namespace once it is created.</p>", "smithy.api#required" => {}}))
    UpdateNamespaceRequest.add_member(:admin_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: DbPassword, location_name: 'adminUserPassword', traits: {"smithy.api#documentation" => "<p>The password of the administrator for the first database created in the namespace. This parameter must be updated together\n      with <code>adminUsername</code>.</p>\n         <p>You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. </p>"}))
    UpdateNamespaceRequest.add_member(:admin_username, Smithy::Schema::Shapes::ShapeRef.new(shape: DbUser, location_name: 'adminUsername', traits: {"smithy.api#documentation" => "<p>The username of the administrator for the first database created in the namespace. This parameter must be updated\n      together with <code>adminUserPassword</code>.</p>"}))
    UpdateNamespaceRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>"}))
    UpdateNamespaceRequest.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. This parameter must be updated together\n      with <code>iamRoles</code>.</p>"}))
    UpdateNamespaceRequest.add_member(:iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'iamRoles', traits: {"smithy.api#documentation" => "<p>A list of IAM roles to associate with the namespace. This parameter must be updated together with <code>defaultIamRoleArn</code>.</p>"}))
    UpdateNamespaceRequest.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogExportList, location_name: 'logExports', traits: {"smithy.api#documentation" => "<p>The types of logs the namespace can export. The export types are <code>userlog</code>, <code>connectionlog</code>, and <code>useractivitylog</code>.</p>"}))
    UpdateNamespaceRequest.add_member(:manage_admin_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageAdminPassword', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the namespace's admin credentials. \n         You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. \n         If <code>manageAdminPassword</code> is false or not set, Amazon Redshift uses \n         <code>adminUserPassword</code> for the admin user account's password.\n      </p>"}))
    UpdateNamespaceRequest.add_member(:admin_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'adminPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. \n         You can only use this parameter if <code>manageAdminPassword</code> is true.</p>"}))
    UpdateNamespaceRequest.type = Types::UpdateNamespaceRequest
    UpdateNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>", "smithy.api#required" => {}}))
    UpdateNamespaceResponse.type = Types::UpdateNamespaceResponse
    UpdateScheduledActionRequest.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: 'scheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action to update to.</p>", "smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAction, location_name: 'targetAction'))
    UpdateScheduledActionRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p>\n         <ul>\n            <li>\n               <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>\n            </li>\n            <li>\n               <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>\"(0 10 ? * MON *)\"</code>. For more information, see \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>\n            </li>\n         </ul>"}))
    UpdateScheduledActionRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. \n         This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. \n         For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for \n            Amazon Redshift</a> in the Amazon Redshift Management Guide</p>"}))
    UpdateScheduledActionRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether to enable the scheduled action.</p>"}))
    UpdateScheduledActionRequest.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'scheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The descripion of the scheduled action to update to.</p>"}))
    UpdateScheduledActionRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC of the scheduled action to update to.</p>"}))
    UpdateScheduledActionRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC of the scheduled action to update.</p>"}))
    UpdateScheduledActionRequest.type = Types::UpdateScheduledActionRequest
    UpdateScheduledActionResponse.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: 'scheduledAction', traits: {"smithy.api#documentation" => "<p>The ScheduledAction object that was updated.</p>"}))
    UpdateScheduledActionResponse.type = Types::UpdateScheduledActionResponse
    UpdateSnapshotCopyConfigurationRequest.add_member(:snapshot_copy_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotCopyConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot copy configuration to update.</p>", "smithy.api#required" => {}}))
    UpdateSnapshotCopyConfigurationRequest.add_member(:snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'snapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The new retention period of how long to keep a snapshot in the destination Amazon Web Services Region.</p>"}))
    UpdateSnapshotCopyConfigurationRequest.type = Types::UpdateSnapshotCopyConfigurationRequest
    UpdateSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration, location_name: 'snapshotCopyConfiguration', traits: {"smithy.api#documentation" => "<p>The updated snapshot copy configuration object.</p>", "smithy.api#required" => {}}))
    UpdateSnapshotCopyConfigurationResponse.type = Types::UpdateSnapshotCopyConfigurationResponse
    UpdateSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot.</p>", "smithy.api#required" => {}}))
    UpdateSnapshotRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>The new retention period of the snapshot.</p>"}))
    UpdateSnapshotRequest.type = Types::UpdateSnapshotRequest
    UpdateSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>The updated snapshot object.</p>"}))
    UpdateSnapshotResponse.type = Types::UpdateSnapshotResponse
    UpdateTarget.add_member(:track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'trackName', traits: {"smithy.api#documentation" => "<p>The name of the new track.</p>"}))
    UpdateTarget.add_member(:workgroup_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupVersion', traits: {"smithy.api#documentation" => "<p>The workgroup version for the new track.</p>"}))
    UpdateTarget.type = Types::UpdateTarget
    UpdateTargetsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTarget)
    UpdateUsageLimitRequest.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'usageLimitId', traits: {"smithy.api#documentation" => "<p>The identifier of the usage limit to update.</p>", "smithy.api#required" => {}}))
    UpdateUsageLimitRequest.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'amount', traits: {"smithy.api#documentation" => "<p>The new limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. \n         If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. \n         The value must be a positive number.</p>"}))
    UpdateUsageLimitRequest.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'breachAction', traits: {"smithy.api#documentation" => "<p>The new action that Amazon Redshift Serverless takes when the limit is reached.</p>"}))
    UpdateUsageLimitRequest.type = Types::UpdateUsageLimitRequest
    UpdateUsageLimitResponse.add_member(:usage_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit, location_name: 'usageLimit', traits: {"smithy.api#documentation" => "<p>The updated usage limit object.</p>"}))
    UpdateUsageLimitResponse.type = Types::UpdateUsageLimitResponse
    UpdateWorkgroupRequest.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to update. You can't update the name of a workgroup once it is created.</p>", "smithy.api#required" => {}}))
    UpdateWorkgroupRequest.add_member(:base_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'baseCapacity', traits: {"smithy.api#documentation" => "<p>The new base data warehouse capacity in Redshift Processing Units (RPUs).</p>"}))
    UpdateWorkgroupRequest.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>The value that specifies whether to turn on enhanced virtual \n         private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC.</p>"}))
    UpdateWorkgroupRequest.add_member(:config_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigParameterList, location_name: 'configParameters', traits: {"smithy.api#documentation" => "<p>An array of parameters to set for advanced control over a database. The\n         options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>,\n         <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and query monitoring metrics that let you \n         define performance boundaries. For more information about query monitoring rules and available metrics, see \n         <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless\"> \n            Query monitoring metrics for Amazon Redshift Serverless</a>.</p>"}))
    UpdateWorkgroupRequest.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publiclyAccessible', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the workgroup can be accessible from a public network.</p>"}))
    UpdateWorkgroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>An array of VPC subnet IDs to associate with the workgroup.</p>"}))
    UpdateWorkgroupRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>An array of security group IDs to associate with the workgroup.</p>"}))
    UpdateWorkgroupRequest.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>"}))
    UpdateWorkgroupRequest.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCapacity', traits: {"smithy.api#documentation" => "<p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>"}))
    UpdateWorkgroupRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    UpdateWorkgroupRequest.add_member(:price_performance_target, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceTarget, location_name: 'pricePerformanceTarget', traits: {"smithy.api#documentation" => "<p>An object that represents the price performance target settings for the workgroup.</p>"}))
    UpdateWorkgroupRequest.add_member(:track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'trackName', traits: {"smithy.api#documentation" => "<p>An optional parameter for the name of the track for the workgroup. If you don't provide \n         a track name, the workgroup is assigned to the <code>current</code> track.</p>"}))
    UpdateWorkgroupRequest.type = Types::UpdateWorkgroupRequest
    UpdateWorkgroupResponse.add_member(:workgroup, Smithy::Schema::Shapes::ShapeRef.new(shape: Workgroup, location_name: 'workgroup', traits: {"smithy.api#documentation" => "<p>The updated workgroup object.</p>", "smithy.api#required" => {}}))
    UpdateWorkgroupResponse.type = Types::UpdateWorkgroupResponse
    UsageLimit.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'usageLimitId', traits: {"smithy.api#documentation" => "<p>The identifier of the usage limit.</p>"}))
    UsageLimit.add_member(:usage_limit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'usageLimitArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource associated with the usage limit.</p>"}))
    UsageLimit.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the Amazon Redshift Serverless resource.</p>"}))
    UsageLimit.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitUsageType, location_name: 'usageType', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift Serverless feature to limit.</p>"}))
    UsageLimit.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'amount', traits: {"smithy.api#documentation" => "<p>The limit amount. If time-based, this amount is in RPUs consumed per hour. If data-based, this amount is in terabytes (TB). The value must be a positive number.</p>"}))
    UsageLimit.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'period', traits: {"smithy.api#documentation" => "<p>The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly.</p>"}))
    UsageLimit.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'breachAction', traits: {"smithy.api#documentation" => "<p>The action that Amazon Redshift Serverless takes when the limit is reached.</p>"}))
    UsageLimit.type = Types::UsageLimit
    UsageLimits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VpcEndpoint.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The connection endpoint ID for connecting to Amazon Redshift Serverless.</p>"}))
    VpcEndpoint.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC identifier that the endpoint is associated with.</p>"}))
    VpcEndpoint.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p>One or more network interfaces of the endpoint. Also known as an interface endpoint.</p>"}))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint)
    VpcIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    VpcSecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupId)
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupId, location_name: 'vpcSecurityGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the VPC security group.</p>"}))
    VpcSecurityGroupMembership.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the VPC security group.</p>"}))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership)
    Workgroup.add_member(:workgroup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the workgroup.</p>"}))
    Workgroup.add_member(:workgroup_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that links to the workgroup.</p>"}))
    Workgroup.add_member(:workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupName, location_name: 'workgroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup.</p>"}))
    Workgroup.add_member(:namespace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespaceName', traits: {"smithy.api#documentation" => "<p>The namespace the workgroup is associated with.</p>"}))
    Workgroup.add_member(:base_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'baseCapacity', traits: {"smithy.api#documentation" => "<p>The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).</p>"}))
    Workgroup.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>The value that specifies whether to enable enhanced virtual \n      private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC.</p>"}))
    Workgroup.add_member(:config_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigParameterList, location_name: 'configParameters', traits: {"smithy.api#documentation" => "<p>An array of parameters to set for advanced control over a database. The\n        options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>,\n        <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and query monitoring metrics that let you define performance boundaries. \n        For more information about query monitoring rules and available metrics, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless\"> Query monitoring metrics for Amazon Redshift Serverless</a>.</p>"}))
    Workgroup.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>An array of security group IDs to associate with the workgroup.</p>"}))
    Workgroup.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>An array of subnet IDs the workgroup is associated with.</p>"}))
    Workgroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkgroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workgroup.</p>"}))
    Workgroup.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint that is created from the workgroup.</p>"}))
    Workgroup.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publiclyAccessible', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the workgroup can be accessible from a public network.</p>"}))
    Workgroup.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The creation date of the workgroup.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Workgroup.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>"}))
    Workgroup.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the workgroup.</p>"}))
    Workgroup.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'customDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The custom domain name’s certificate Amazon resource name (ARN).</p>"}))
    Workgroup.add_member(:custom_domain_certificate_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'customDomainCertificateExpiryTime', traits: {"smithy.api#documentation" => "<p>The expiration time for the certificate.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Workgroup.add_member(:workgroup_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workgroupVersion', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift Serverless version of your workgroup. For more information about Amazon Redshift Serverless versions, see<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html\">Cluster versions for Amazon Redshift</a>.</p>"}))
    Workgroup.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'patchVersion', traits: {"smithy.api#documentation" => "<p>The patch version of your Amazon Redshift Serverless workgroup. For more information about patch versions, see\n         <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html\">Cluster versions for Amazon Redshift</a>.</p>"}))
    Workgroup.add_member(:max_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCapacity', traits: {"smithy.api#documentation" => "<p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>"}))
    Workgroup.add_member(:cross_account_vpcs, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIds, location_name: 'crossAccountVpcs', traits: {"smithy.api#documentation" => "<p>A list of VPCs. Each entry is the unique identifier of a virtual private cloud with access to Amazon Redshift Serverless. If all of the VPCs for the grantee are allowed, it shows an asterisk.</p>"}))
    Workgroup.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    Workgroup.add_member(:price_performance_target, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceTarget, location_name: 'pricePerformanceTarget', traits: {"smithy.api#documentation" => "<p>An object that represents the price performance target settings for the workgroup.</p>"}))
    Workgroup.add_member(:track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'trackName', traits: {"smithy.api#documentation" => "<p>The name of the track for the workgroup.</p>"}))
    Workgroup.add_member(:pending_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackName, location_name: 'pendingTrackName', traits: {"smithy.api#documentation" => "<p>The name for the track that you want to assign to the workgroup. When the track changes, the \n         workgroup is switched to the latest workgroup release available for the track. At this point, the \n         track name is applied.</p>"}))
    Workgroup.type = Types::Workgroup
    WorkgroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Workgroup)

    RedshiftServerless = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshiftserverless#RedshiftServerless"
      service.name = "RedshiftServerless"
      service.version = "2021-04-21"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift Serverless", "arnNamespace" => "redshift-serverless"}, "aws.auth#sigv4" => {"name" => "redshift-serverless"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Redshift Serverless"}
      service.add_operation(:convert_recovery_point_to_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ConvertRecoveryPointToSnapshot"
        operation.name = "ConvertRecoveryPointToSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ConvertRecoveryPointToSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ConvertRecoveryPointToSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateCustomDomainAssociation"
        operation.name = "CreateCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateEndpointAccess"
        operation.name = "CreateEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateNamespace"
        operation.name = "CreateNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateReservation"
        operation.name = "CreateReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReservationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReservationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateScheduledAction"
        operation.name = "CreateScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_snapshot_copy_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateSnapshotCopyConfiguration"
        operation.name = "CreateSnapshotCopyConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotCopyConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotCopyConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateUsageLimit"
        operation.name = "CreateUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workgroup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateWorkgroup"
        operation.name = "CreateWorkgroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkgroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkgroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteCustomDomainAssociation"
        operation.name = "DeleteCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteEndpointAccess"
        operation.name = "DeleteEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduledActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduledActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_snapshot_copy_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteSnapshotCopyConfiguration"
        operation.name = "DeleteSnapshotCopyConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotCopyConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotCopyConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteUsageLimit"
        operation.name = "DeleteUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsageLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsageLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workgroup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteWorkgroup"
        operation.name = "DeleteWorkgroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkgroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkgroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetCredentials"
        operation.name = "GetCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetCustomDomainAssociation"
        operation.name = "GetCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomDomainAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetEndpointAccess"
        operation.name = "GetEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetNamespace"
        operation.name = "GetNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recovery_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetRecoveryPoint"
        operation.name = "GetRecoveryPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecoveryPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecoveryPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetReservation"
        operation.name = "GetReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reservation_offering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetReservationOffering"
        operation.name = "GetReservationOffering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationOfferingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationOfferingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetScheduledAction"
        operation.name = "GetScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetScheduledActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetScheduledActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetSnapshot"
        operation.name = "GetSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_restore_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetTableRestoreStatus"
        operation.name = "GetTableRestoreStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableRestoreStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableRestoreStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_track, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetTrack"
        operation.name = "GetTrack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetUsageLimit"
        operation.name = "GetUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workgroup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetWorkgroup"
        operation.name = "GetWorkgroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkgroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkgroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_custom_domain_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListCustomDomainAssociations"
        operation.name = "ListCustomDomainAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomDomainAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomDomainAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomDomainAssociations.new
      end)
      service.add_operation(:list_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListEndpointAccess"
        operation.name = "ListEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEndpointAccess.new
      end)
      service.add_operation(:list_managed_workgroups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListManagedWorkgroups"
        operation.name = "ListManagedWorkgroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedWorkgroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedWorkgroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListManagedWorkgroups.new
      end)
      service.add_operation(:list_namespaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListNamespaces"
        operation.name = "ListNamespaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamespacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamespacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNamespaces.new
      end)
      service.add_operation(:list_recovery_points, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListRecoveryPoints"
        operation.name = "ListRecoveryPoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecoveryPointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecoveryPoints.new
      end)
      service.add_operation(:list_reservation_offerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListReservationOfferings"
        operation.name = "ListReservationOfferings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReservationOfferingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReservationOfferingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReservationOfferings.new
      end)
      service.add_operation(:list_reservations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListReservations"
        operation.name = "ListReservations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReservationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReservationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReservations.new
      end)
      service.add_operation(:list_scheduled_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListScheduledActions"
        operation.name = "ListScheduledActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduledActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScheduledActions.new
      end)
      service.add_operation(:list_snapshot_copy_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListSnapshotCopyConfigurations"
        operation.name = "ListSnapshotCopyConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotCopyConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotCopyConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSnapshotCopyConfigurations.new
      end)
      service.add_operation(:list_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListSnapshots"
        operation.name = "ListSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSnapshotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSnapshots.new
      end)
      service.add_operation(:list_table_restore_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListTableRestoreStatus"
        operation.name = "ListTableRestoreStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableRestoreStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableRestoreStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTableRestoreStatus.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tracks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListTracks"
        operation.name = "ListTracks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTracksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTracksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTracks.new
      end)
      service.add_operation(:list_usage_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListUsageLimits"
        operation.name = "ListUsageLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageLimitsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsageLimits.new
      end)
      service.add_operation(:list_workgroups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListWorkgroups"
        operation.name = "ListWorkgroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkgroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkgroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkgroups.new
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:restore_from_recovery_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreFromRecoveryPoint"
        operation.name = "RestoreFromRecoveryPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromRecoveryPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromRecoveryPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:restore_from_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreFromSnapshot"
        operation.name = "RestoreFromSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:restore_table_from_recovery_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreTableFromRecoveryPoint"
        operation.name = "RestoreTableFromRecoveryPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromRecoveryPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromRecoveryPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:restore_table_from_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreTableFromSnapshot"
        operation.name = "RestoreTableFromSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateCustomDomainAssociation"
        operation.name = "UpdateCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomDomainAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateEndpointAccess"
        operation.name = "UpdateEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateNamespace"
        operation.name = "UpdateNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateScheduledAction"
        operation.name = "UpdateScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduledActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateSnapshot"
        operation.name = "UpdateSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_snapshot_copy_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateSnapshotCopyConfiguration"
        operation.name = "UpdateSnapshotCopyConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSnapshotCopyConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSnapshotCopyConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateUsageLimit"
        operation.name = "UpdateUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUsageLimitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUsageLimitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_workgroup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateWorkgroup"
        operation.name = "UpdateWorkgroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkgroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkgroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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

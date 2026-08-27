# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#AccountIdList", name: "AccountIdList")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Association = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Association", name: "Association")
    AssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#AssociationList", name: "AssociationList")
    Capacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftserverless#Capacity", name: "Capacity", traits: {"smithy.api#default" => 0})
    Charge = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.redshiftserverless#Charge", name: "Charge", traits: {"smithy.api#default" => 0})
    ConfigParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ConfigParameter", name: "ConfigParameter")
    ConfigParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#ConfigParameterList", name: "ConfigParameterList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConvertRecoveryPointToSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ConvertRecoveryPointToSnapshotRequest", name: "ConvertRecoveryPointToSnapshotRequest")
    ConvertRecoveryPointToSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ConvertRecoveryPointToSnapshotResponse", name: "ConvertRecoveryPointToSnapshotResponse")
    CreateCustomDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateCustomDomainAssociationRequest", name: "CreateCustomDomainAssociationRequest")
    CreateCustomDomainAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateCustomDomainAssociationResponse", name: "CreateCustomDomainAssociationResponse")
    CreateEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateEndpointAccessRequest", name: "CreateEndpointAccessRequest")
    CreateEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateEndpointAccessResponse", name: "CreateEndpointAccessResponse")
    CreateNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateNamespaceRequest", name: "CreateNamespaceRequest")
    CreateNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateNamespaceResponse", name: "CreateNamespaceResponse")
    CreateReservationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateReservationRequest", name: "CreateReservationRequest")
    CreateReservationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateReservationResponse", name: "CreateReservationResponse")
    CreateScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateScheduledActionRequest", name: "CreateScheduledActionRequest")
    CreateScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateScheduledActionResponse", name: "CreateScheduledActionResponse")
    CreateSnapshotCopyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateSnapshotCopyConfigurationRequest", name: "CreateSnapshotCopyConfigurationRequest")
    CreateSnapshotCopyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateSnapshotCopyConfigurationResponse", name: "CreateSnapshotCopyConfigurationResponse")
    CreateSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateSnapshotRequest", name: "CreateSnapshotRequest")
    CreateSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateSnapshotResponse", name: "CreateSnapshotResponse")
    CreateSnapshotScheduleActionParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateSnapshotScheduleActionParameters", name: "CreateSnapshotScheduleActionParameters")
    CreateUsageLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateUsageLimitRequest", name: "CreateUsageLimitRequest")
    CreateUsageLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateUsageLimitResponse", name: "CreateUsageLimitResponse")
    CreateWorkgroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateWorkgroupRequest", name: "CreateWorkgroupRequest")
    CreateWorkgroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#CreateWorkgroupResponse", name: "CreateWorkgroupResponse")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#CurrencyCode", name: "CurrencyCode")
    CustomDomainCertificateArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#CustomDomainCertificateArnString", name: "CustomDomainCertificateArnString", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"})
    CustomDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#CustomDomainName", name: "CustomDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DbName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#DbName", name: "DbName")
    DbPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#DbPassword", name: "DbPassword", traits: {"smithy.api#sensitive" => {}})
    DbUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#DbUser", name: "DbUser", traits: {"smithy.api#sensitive" => {}})
    DeleteCustomDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteCustomDomainAssociationRequest", name: "DeleteCustomDomainAssociationRequest")
    DeleteCustomDomainAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteCustomDomainAssociationResponse", name: "DeleteCustomDomainAssociationResponse")
    DeleteEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteEndpointAccessRequest", name: "DeleteEndpointAccessRequest")
    DeleteEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteEndpointAccessResponse", name: "DeleteEndpointAccessResponse")
    DeleteNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteNamespaceRequest", name: "DeleteNamespaceRequest")
    DeleteNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteNamespaceResponse", name: "DeleteNamespaceResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteScheduledActionRequest", name: "DeleteScheduledActionRequest")
    DeleteScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteScheduledActionResponse", name: "DeleteScheduledActionResponse")
    DeleteSnapshotCopyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteSnapshotCopyConfigurationRequest", name: "DeleteSnapshotCopyConfigurationRequest")
    DeleteSnapshotCopyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteSnapshotCopyConfigurationResponse", name: "DeleteSnapshotCopyConfigurationResponse")
    DeleteSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteSnapshotRequest", name: "DeleteSnapshotRequest")
    DeleteSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteSnapshotResponse", name: "DeleteSnapshotResponse")
    DeleteUsageLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteUsageLimitRequest", name: "DeleteUsageLimitRequest")
    DeleteUsageLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteUsageLimitResponse", name: "DeleteUsageLimitResponse")
    DeleteWorkgroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteWorkgroupRequest", name: "DeleteWorkgroupRequest")
    DeleteWorkgroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#DeleteWorkgroupResponse", name: "DeleteWorkgroupResponse")
    Duration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshiftserverless#Duration", name: "Duration", traits: {"smithy.api#default" => 0})
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Endpoint", name: "Endpoint")
    EndpointAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#EndpointAccess", name: "EndpointAccess")
    EndpointAccessList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#EndpointAccessList", name: "EndpointAccessList")
    GetCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetCredentialsRequest", name: "GetCredentialsRequest")
    GetCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetCredentialsResponse", name: "GetCredentialsResponse")
    GetCustomDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetCustomDomainAssociationRequest", name: "GetCustomDomainAssociationRequest")
    GetCustomDomainAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetCustomDomainAssociationResponse", name: "GetCustomDomainAssociationResponse")
    GetEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetEndpointAccessRequest", name: "GetEndpointAccessRequest")
    GetEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetEndpointAccessResponse", name: "GetEndpointAccessResponse")
    GetNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetNamespaceRequest", name: "GetNamespaceRequest")
    GetNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetNamespaceResponse", name: "GetNamespaceResponse")
    GetRecoveryPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetRecoveryPointRequest", name: "GetRecoveryPointRequest")
    GetRecoveryPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetRecoveryPointResponse", name: "GetRecoveryPointResponse")
    GetReservationOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetReservationOfferingRequest", name: "GetReservationOfferingRequest")
    GetReservationOfferingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetReservationOfferingResponse", name: "GetReservationOfferingResponse")
    GetReservationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetReservationRequest", name: "GetReservationRequest")
    GetReservationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetReservationResponse", name: "GetReservationResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GetScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetScheduledActionRequest", name: "GetScheduledActionRequest")
    GetScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetScheduledActionResponse", name: "GetScheduledActionResponse")
    GetSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetSnapshotRequest", name: "GetSnapshotRequest")
    GetSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetSnapshotResponse", name: "GetSnapshotResponse")
    GetTableRestoreStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetTableRestoreStatusRequest", name: "GetTableRestoreStatusRequest")
    GetTableRestoreStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetTableRestoreStatusResponse", name: "GetTableRestoreStatusResponse")
    GetTrackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetTrackRequest", name: "GetTrackRequest")
    GetTrackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetTrackResponse", name: "GetTrackResponse")
    GetUsageLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetUsageLimitRequest", name: "GetUsageLimitRequest")
    GetUsageLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetUsageLimitResponse", name: "GetUsageLimitResponse")
    GetWorkgroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetWorkgroupRequest", name: "GetWorkgroupRequest")
    GetWorkgroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#GetWorkgroupResponse", name: "GetWorkgroupResponse")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#IamRoleArn", name: "IamRoleArn")
    IamRoleArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#IamRoleArnList", name: "IamRoleArnList")
    InsufficientCapacityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#InsufficientCapacityException", name: "InsufficientCapacityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidPaginationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#InvalidPaginationException", name: "InvalidPaginationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#IpAddressType", name: "IpAddressType", traits: {"smithy.api#pattern" => "^(ipv4|dualstack)$"})
    Ipv6CidrBlockNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Ipv6CidrBlockNotFoundException", name: "Ipv6CidrBlockNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#KmsKeyId", name: "KmsKeyId")
    ListCustomDomainAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListCustomDomainAssociationsRequest", name: "ListCustomDomainAssociationsRequest")
    ListCustomDomainAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListCustomDomainAssociationsResponse", name: "ListCustomDomainAssociationsResponse")
    ListEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListEndpointAccessRequest", name: "ListEndpointAccessRequest")
    ListEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListEndpointAccessResponse", name: "ListEndpointAccessResponse")
    ListManagedWorkgroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListManagedWorkgroupsRequest", name: "ListManagedWorkgroupsRequest")
    ListManagedWorkgroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListManagedWorkgroupsResponse", name: "ListManagedWorkgroupsResponse")
    ListNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListNamespacesRequest", name: "ListNamespacesRequest")
    ListNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListNamespacesResponse", name: "ListNamespacesResponse")
    ListRecoveryPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListRecoveryPointsRequest", name: "ListRecoveryPointsRequest")
    ListRecoveryPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListRecoveryPointsResponse", name: "ListRecoveryPointsResponse")
    ListReservationOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListReservationOfferingsRequest", name: "ListReservationOfferingsRequest")
    ListReservationOfferingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListReservationOfferingsResponse", name: "ListReservationOfferingsResponse")
    ListReservationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListReservationsRequest", name: "ListReservationsRequest")
    ListReservationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListReservationsResponse", name: "ListReservationsResponse")
    ListScheduledActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListScheduledActionsRequest", name: "ListScheduledActionsRequest")
    ListScheduledActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListScheduledActionsResponse", name: "ListScheduledActionsResponse")
    ListSnapshotCopyConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListSnapshotCopyConfigurationsRequest", name: "ListSnapshotCopyConfigurationsRequest")
    ListSnapshotCopyConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListSnapshotCopyConfigurationsResponse", name: "ListSnapshotCopyConfigurationsResponse")
    ListSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListSnapshotsRequest", name: "ListSnapshotsRequest")
    ListSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListSnapshotsResponse", name: "ListSnapshotsResponse")
    ListTableRestoreStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListTableRestoreStatusRequest", name: "ListTableRestoreStatusRequest")
    ListTableRestoreStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListTableRestoreStatusResponse", name: "ListTableRestoreStatusResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTracksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListTracksRequest", name: "ListTracksRequest")
    ListTracksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListTracksResponse", name: "ListTracksResponse")
    ListUsageLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListUsageLimitsRequest", name: "ListUsageLimitsRequest")
    ListUsageLimitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListUsageLimitsResponse", name: "ListUsageLimitsResponse")
    ListWorkgroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListWorkgroupsRequest", name: "ListWorkgroupsRequest")
    ListWorkgroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ListWorkgroupsResponse", name: "ListWorkgroupsResponse")
    LogExport = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#LogExport", name: "LogExport", traits: {"smithy.api#enum" => [{"name" => "USER_ACTIVITY_LOG", "value" => "useractivitylog"}, {"name" => "USER_LOG", "value" => "userlog"}, {"name" => "CONNECTION_LOG", "value" => "connectionlog"}]})
    LogExportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#LogExportList", name: "LogExportList", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    ManagedWorkgroupListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ManagedWorkgroupListItem", name: "ManagedWorkgroupListItem")
    ManagedWorkgroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#ManagedWorkgroupName", name: "ManagedWorkgroupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_:\\-]+$"})
    ManagedWorkgroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshiftserverless#ManagedWorkgroupStatus", name: "ManagedWorkgroupStatus")
    ManagedWorkgroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#ManagedWorkgroups", name: "ManagedWorkgroups")
    Namespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Namespace", name: "Namespace")
    NamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#NamespaceList", name: "NamespaceList")
    NamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#NamespaceName", name: "NamespaceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    NamespaceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#NamespaceStatus", name: "NamespaceStatus", traits: {"smithy.api#enum" => [{"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "MODIFYING", "value" => "MODIFYING"}, {"name" => "DELETING", "value" => "DELETING"}]})
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#NetworkInterfaceList", name: "NetworkInterfaceList")
    NextInvocationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#NextInvocationsList", name: "NextInvocationsList")
    OfferingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#OfferingId", name: "OfferingId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OfferingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#OfferingType", name: "OfferingType", traits: {"smithy.api#enum" => [{"name" => "ALL_UPFRONT", "value" => "ALL_UPFRONT"}, {"name" => "NO_UPFRONT", "value" => "NO_UPFRONT"}]})
    OwnerAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#OwnerAccount", name: "OwnerAccount", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "(\\d{12})"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}})
    ParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#ParameterKey", name: "ParameterKey")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#ParameterValue", name: "ParameterValue")
    PerformanceTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#PerformanceTarget", name: "PerformanceTarget")
    PerformanceTargetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#PerformanceTargetStatus", name: "PerformanceTargetStatus", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    RecoveryPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RecoveryPoint", name: "RecoveryPoint")
    RecoveryPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#RecoveryPointList", name: "RecoveryPointList")
    RedshiftIdcApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#RedshiftIdcApplicationArn", name: "RedshiftIdcApplicationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Reservation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Reservation", name: "Reservation")
    ReservationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#ReservationArn", name: "ReservationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ReservationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#ReservationId", name: "ReservationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ReservationOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ReservationOffering", name: "ReservationOffering")
    ReservationOfferingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#ReservationOfferingsList", name: "ReservationOfferingsList")
    ReservationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#ReservationsList", name: "ReservationsList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ResourcePolicy", name: "ResourcePolicy")
    RestoreFromRecoveryPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreFromRecoveryPointRequest", name: "RestoreFromRecoveryPointRequest")
    RestoreFromRecoveryPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreFromRecoveryPointResponse", name: "RestoreFromRecoveryPointResponse")
    RestoreFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreFromSnapshotRequest", name: "RestoreFromSnapshotRequest")
    RestoreFromSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreFromSnapshotResponse", name: "RestoreFromSnapshotResponse")
    RestoreTableFromRecoveryPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreTableFromRecoveryPointRequest", name: "RestoreTableFromRecoveryPointRequest")
    RestoreTableFromRecoveryPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreTableFromRecoveryPointResponse", name: "RestoreTableFromRecoveryPointResponse")
    RestoreTableFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreTableFromSnapshotRequest", name: "RestoreTableFromSnapshotRequest")
    RestoreTableFromSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#RestoreTableFromSnapshotResponse", name: "RestoreTableFromSnapshotResponse")
    Schedule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshiftserverless#Schedule", name: "Schedule")
    ScheduledActionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ScheduledActionAssociation", name: "ScheduledActionAssociation")
    ScheduledActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#ScheduledActionName", name: "ScheduledActionName", traits: {"smithy.api#length" => {"min" => 3, "max" => 60}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    ScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ScheduledActionResponse", name: "ScheduledActionResponse")
    ScheduledActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#ScheduledActionsList", name: "ScheduledActionsList")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#SecurityGroupId", name: "SecurityGroupId")
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#SecurityGroupIdList", name: "SecurityGroupIdList")
    ServerlessTrack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ServerlessTrack", name: "ServerlessTrack")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Snapshot", name: "Snapshot")
    SnapshotCopyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#SnapshotCopyConfiguration", name: "SnapshotCopyConfiguration")
    SnapshotCopyConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#SnapshotCopyConfigurations", name: "SnapshotCopyConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#SnapshotList", name: "SnapshotList")
    SnapshotNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#SnapshotNamePrefix", name: "SnapshotNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 235}})
    SnapshotStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#SnapshotStatus", name: "SnapshotStatus", traits: {"smithy.api#enum" => [{"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "CREATING", "value" => "CREATING"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "COPYING", "value" => "COPYING"}]})
    SourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#SourceArn", name: "SourceArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:glue:[a-z0-9-]+:\\d+:(database|catalog)[a-z0-9-:]*(?:/[A-Za-z0-9-_]{1,255})*$"})
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#State", name: "State", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#Status", name: "Status", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#SubnetId", name: "SubnetId")
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#SubnetIdList", name: "SubnetIdList")
    TableRestoreStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#TableRestoreStatus", name: "TableRestoreStatus")
    TableRestoreStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#TableRestoreStatusList", name: "TableRestoreStatusList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshiftserverless#TargetAction", name: "TargetAction")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#TrackList", name: "TrackList")
    TrackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#TrackName", name: "TrackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateCustomDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateCustomDomainAssociationRequest", name: "UpdateCustomDomainAssociationRequest")
    UpdateCustomDomainAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateCustomDomainAssociationResponse", name: "UpdateCustomDomainAssociationResponse")
    UpdateEndpointAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateEndpointAccessRequest", name: "UpdateEndpointAccessRequest")
    UpdateEndpointAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateEndpointAccessResponse", name: "UpdateEndpointAccessResponse")
    UpdateNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateNamespaceRequest", name: "UpdateNamespaceRequest")
    UpdateNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateNamespaceResponse", name: "UpdateNamespaceResponse")
    UpdateScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateScheduledActionRequest", name: "UpdateScheduledActionRequest")
    UpdateScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateScheduledActionResponse", name: "UpdateScheduledActionResponse")
    UpdateSnapshotCopyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateSnapshotCopyConfigurationRequest", name: "UpdateSnapshotCopyConfigurationRequest")
    UpdateSnapshotCopyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateSnapshotCopyConfigurationResponse", name: "UpdateSnapshotCopyConfigurationResponse")
    UpdateSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateSnapshotRequest", name: "UpdateSnapshotRequest")
    UpdateSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateSnapshotResponse", name: "UpdateSnapshotResponse")
    UpdateTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateTarget", name: "UpdateTarget")
    UpdateTargetsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#UpdateTargetsList", name: "UpdateTargetsList")
    UpdateUsageLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateUsageLimitRequest", name: "UpdateUsageLimitRequest")
    UpdateUsageLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateUsageLimitResponse", name: "UpdateUsageLimitResponse")
    UpdateWorkgroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateWorkgroupRequest", name: "UpdateWorkgroupRequest")
    UpdateWorkgroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UpdateWorkgroupResponse", name: "UpdateWorkgroupResponse")
    UsageLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#UsageLimit", name: "UsageLimit")
    UsageLimitBreachAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#UsageLimitBreachAction", name: "UsageLimitBreachAction", traits: {"smithy.api#enum" => [{"name" => "LOG", "value" => "log"}, {"name" => "EMIT_METRIC", "value" => "emit-metric"}, {"name" => "DEACTIVATE", "value" => "deactivate"}]})
    UsageLimitPeriod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#UsageLimitPeriod", name: "UsageLimitPeriod", traits: {"smithy.api#enum" => [{"name" => "DAILY", "value" => "daily"}, {"name" => "WEEKLY", "value" => "weekly"}, {"name" => "MONTHLY", "value" => "monthly"}]})
    UsageLimitUsageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#UsageLimitUsageType", name: "UsageLimitUsageType", traits: {"smithy.api#enum" => [{"name" => "SERVERLESS_COMPUTE", "value" => "serverless-compute"}, {"name" => "CROSS_REGION_DATASHARING", "value" => "cross-region-datasharing"}]})
    UsageLimits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#UsageLimits", name: "UsageLimits", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#VpcEndpoint", name: "VpcEndpoint")
    VpcEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#VpcEndpointList", name: "VpcEndpointList")
    VpcIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#VpcIds", name: "VpcIds")
    VpcSecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#VpcSecurityGroupId", name: "VpcSecurityGroupId")
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#VpcSecurityGroupIdList", name: "VpcSecurityGroupIdList")
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#VpcSecurityGroupMembership", name: "VpcSecurityGroupMembership")
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#VpcSecurityGroupMembershipList", name: "VpcSecurityGroupMembershipList")
    Workgroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshiftserverless#Workgroup", name: "Workgroup")
    WorkgroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshiftserverless#WorkgroupList", name: "WorkgroupList")
    WorkgroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#WorkgroupName", name: "WorkgroupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    WorkgroupStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshiftserverless#WorkgroupStatus", name: "WorkgroupStatus", traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING"}, {"name" => "AVAILABLE", "value" => "AVAILABLE"}, {"name" => "MODIFYING", "value" => "MODIFYING"}, {"name" => "DELETING", "value" => "DELETING"}]})

    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    Association.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn"))
    Association.add_member(:custom_domain_certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "customDomainCertificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Association.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    Association.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    Association.type = Types::Association
    AssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "member")
    ConfigParameter.add_member(:parameter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "parameterKey"))
    ConfigParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "parameterValue"))
    ConfigParameter.type = Types::ConfigParameter
    ConfigParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigParameter, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConvertRecoveryPointToSnapshotRequest.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId", traits: {"smithy.api#required" => {}}))
    ConvertRecoveryPointToSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName", traits: {"smithy.api#required" => {}}))
    ConvertRecoveryPointToSnapshotRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriod"))
    ConvertRecoveryPointToSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ConvertRecoveryPointToSnapshotRequest.type = Types::ConvertRecoveryPointToSnapshotRequest
    ConvertRecoveryPointToSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "snapshot"))
    ConvertRecoveryPointToSnapshotResponse.type = Types::ConvertRecoveryPointToSnapshotResponse
    CreateCustomDomainAssociationRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    CreateCustomDomainAssociationRequest.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName", traits: {"smithy.api#required" => {}}))
    CreateCustomDomainAssociationRequest.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn", traits: {"smithy.api#required" => {}}))
    CreateCustomDomainAssociationRequest.type = Types::CreateCustomDomainAssociationRequest
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    CreateCustomDomainAssociationResponse.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn"))
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "customDomainCertificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateCustomDomainAssociationResponse.type = Types::CreateCustomDomainAssociationResponse
    CreateEndpointAccessRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointName", traits: {"smithy.api#required" => {}}))
    CreateEndpointAccessRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    CreateEndpointAccessRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    CreateEndpointAccessRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    CreateEndpointAccessRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerAccount, name: "ownerAccount"))
    CreateEndpointAccessRequest.type = Types::CreateEndpointAccessRequest
    CreateEndpointAccessResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccess, name: "endpoint"))
    CreateEndpointAccessResponse.type = Types::CreateEndpointAccessResponse
    CreateNamespaceRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    CreateNamespaceRequest.add_member(:admin_username, ::Smithy::Schema::Shapes::MemberShape.new(target: DbUser, name: "adminUsername"))
    CreateNamespaceRequest.add_member(:admin_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: DbPassword, name: "adminUserPassword"))
    CreateNamespaceRequest.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName"))
    CreateNamespaceRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyId"))
    CreateNamespaceRequest.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultIamRoleArn"))
    CreateNamespaceRequest.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "iamRoles"))
    CreateNamespaceRequest.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogExportList, name: "logExports"))
    CreateNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateNamespaceRequest.add_member(:manage_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageAdminPassword"))
    CreateNamespaceRequest.add_member(:admin_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "adminPasswordSecretKmsKeyId"))
    CreateNamespaceRequest.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplicationArn, name: "redshiftIdcApplicationArn"))
    CreateNamespaceRequest.type = Types::CreateNamespaceRequest
    CreateNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    CreateNamespaceResponse.type = Types::CreateNamespaceResponse
    CreateReservationRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, name: "capacity", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateReservationRequest.add_member(:offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingId, name: "offeringId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    CreateReservationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateReservationRequest.type = Types::CreateReservationRequest
    CreateReservationResponse.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, name: "reservation"))
    CreateReservationResponse.type = Types::CreateReservationResponse
    CreateScheduledActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "scheduledActionName", traits: {"smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAction, name: "targetAction", traits: {"smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule", traits: {"smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    CreateScheduledActionRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CreateScheduledActionRequest.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledActionDescription"))
    CreateScheduledActionRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    CreateScheduledActionRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    CreateScheduledActionRequest.type = Types::CreateScheduledActionRequest
    CreateScheduledActionResponse.add_member(:scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionResponse, name: "scheduledAction"))
    CreateScheduledActionResponse.type = Types::CreateScheduledActionResponse
    CreateSnapshotCopyConfigurationRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    CreateSnapshotCopyConfigurationRequest.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "destinationRegion", traits: {"smithy.api#required" => {}}))
    CreateSnapshotCopyConfigurationRequest.add_member(:snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshotRetentionPeriod"))
    CreateSnapshotCopyConfigurationRequest.add_member(:destination_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "destinationKmsKeyId"))
    CreateSnapshotCopyConfigurationRequest.type = Types::CreateSnapshotCopyConfigurationRequest
    CreateSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyConfiguration, name: "snapshotCopyConfiguration", traits: {"smithy.api#required" => {}}))
    CreateSnapshotCopyConfigurationResponse.type = Types::CreateSnapshotCopyConfigurationResponse
    CreateSnapshotRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName", traits: {"smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriod"))
    CreateSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "snapshot"))
    CreateSnapshotResponse.type = Types::CreateSnapshotResponse
    CreateSnapshotScheduleActionParameters.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    CreateSnapshotScheduleActionParameters.add_member(:snapshot_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotNamePrefix, name: "snapshotNamePrefix", traits: {"smithy.api#required" => {}}))
    CreateSnapshotScheduleActionParameters.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriod"))
    CreateSnapshotScheduleActionParameters.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateSnapshotScheduleActionParameters.type = Types::CreateSnapshotScheduleActionParameters
    CreateUsageLimitRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CreateUsageLimitRequest.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitUsageType, name: "usageType", traits: {"smithy.api#required" => {}}))
    CreateUsageLimitRequest.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "amount", traits: {"smithy.api#required" => {}}))
    CreateUsageLimitRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitPeriod, name: "period"))
    CreateUsageLimitRequest.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "breachAction"))
    CreateUsageLimitRequest.type = Types::CreateUsageLimitRequest
    CreateUsageLimitResponse.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "usageLimit"))
    CreateUsageLimitResponse.type = Types::CreateUsageLimitResponse
    CreateWorkgroupRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    CreateWorkgroupRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    CreateWorkgroupRequest.add_member(:base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "baseCapacity"))
    CreateWorkgroupRequest.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enhancedVpcRouting"))
    CreateWorkgroupRequest.add_member(:config_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigParameterList, name: "configParameters"))
    CreateWorkgroupRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    CreateWorkgroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    CreateWorkgroupRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    CreateWorkgroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateWorkgroupRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    CreateWorkgroupRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCapacity"))
    CreateWorkgroupRequest.add_member(:price_performance_target, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceTarget, name: "pricePerformanceTarget"))
    CreateWorkgroupRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    CreateWorkgroupRequest.add_member(:track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "trackName"))
    CreateWorkgroupRequest.type = Types::CreateWorkgroupRequest
    CreateWorkgroupResponse.add_member(:workgroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Workgroup, name: "workgroup"))
    CreateWorkgroupResponse.type = Types::CreateWorkgroupResponse
    DeleteCustomDomainAssociationRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    DeleteCustomDomainAssociationRequest.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName", traits: {"smithy.api#required" => {}}))
    DeleteCustomDomainAssociationRequest.type = Types::DeleteCustomDomainAssociationRequest
    DeleteCustomDomainAssociationResponse.type = Types::DeleteCustomDomainAssociationResponse
    DeleteEndpointAccessRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointName", traits: {"smithy.api#required" => {}}))
    DeleteEndpointAccessRequest.type = Types::DeleteEndpointAccessRequest
    DeleteEndpointAccessResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccess, name: "endpoint"))
    DeleteEndpointAccessResponse.type = Types::DeleteEndpointAccessResponse
    DeleteNamespaceRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    DeleteNamespaceRequest.add_member(:final_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "finalSnapshotName"))
    DeleteNamespaceRequest.add_member(:final_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "finalSnapshotRetentionPeriod"))
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    DeleteNamespaceResponse.type = Types::DeleteNamespaceResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteScheduledActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "scheduledActionName", traits: {"smithy.api#required" => {}}))
    DeleteScheduledActionRequest.type = Types::DeleteScheduledActionRequest
    DeleteScheduledActionResponse.add_member(:scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionResponse, name: "scheduledAction"))
    DeleteScheduledActionResponse.type = Types::DeleteScheduledActionResponse
    DeleteSnapshotCopyConfigurationRequest.add_member(:snapshot_copy_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotCopyConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteSnapshotCopyConfigurationRequest.type = Types::DeleteSnapshotCopyConfigurationRequest
    DeleteSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyConfiguration, name: "snapshotCopyConfiguration", traits: {"smithy.api#required" => {}}))
    DeleteSnapshotCopyConfigurationResponse.type = Types::DeleteSnapshotCopyConfigurationResponse
    DeleteSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName", traits: {"smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "snapshot"))
    DeleteSnapshotResponse.type = Types::DeleteSnapshotResponse
    DeleteUsageLimitRequest.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLimitId", traits: {"smithy.api#required" => {}}))
    DeleteUsageLimitRequest.type = Types::DeleteUsageLimitRequest
    DeleteUsageLimitResponse.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "usageLimit"))
    DeleteUsageLimitResponse.type = Types::DeleteUsageLimitResponse
    DeleteWorkgroupRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    DeleteWorkgroupRequest.type = Types::DeleteWorkgroupRequest
    DeleteWorkgroupResponse.add_member(:workgroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Workgroup, name: "workgroup", traits: {"smithy.api#required" => {}}))
    DeleteWorkgroupResponse.type = Types::DeleteWorkgroupResponse
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    Endpoint.add_member(:vpc_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointList, name: "vpcEndpoints"))
    Endpoint.type = Types::Endpoint
    EndpointAccess.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointName"))
    EndpointAccess.add_member(:endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointStatus"))
    EndpointAccess.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName"))
    EndpointAccess.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endpointCreateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    EndpointAccess.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    EndpointAccess.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "address"))
    EndpointAccess.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    EndpointAccess.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "vpcSecurityGroups"))
    EndpointAccess.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "vpcEndpoint"))
    EndpointAccess.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointArn"))
    EndpointAccess.type = Types::EndpointAccess
    EndpointAccessList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccess, name: "member")
    GetCredentialsRequest.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbName, name: "dbName"))
    GetCredentialsRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "durationSeconds"))
    GetCredentialsRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    GetCredentialsRequest.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    GetCredentialsRequest.type = Types::GetCredentialsRequest
    GetCredentialsResponse.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: DbUser, name: "dbUser"))
    GetCredentialsResponse.add_member(:db_password, ::Smithy::Schema::Shapes::MemberShape.new(target: DbPassword, name: "dbPassword"))
    GetCredentialsResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiration"))
    GetCredentialsResponse.add_member(:next_refresh_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextRefreshTime"))
    GetCredentialsResponse.type = Types::GetCredentialsResponse
    GetCustomDomainAssociationRequest.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName", traits: {"smithy.api#required" => {}}))
    GetCustomDomainAssociationRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    GetCustomDomainAssociationRequest.type = Types::GetCustomDomainAssociationRequest
    GetCustomDomainAssociationResponse.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    GetCustomDomainAssociationResponse.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    GetCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn"))
    GetCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "customDomainCertificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetCustomDomainAssociationResponse.type = Types::GetCustomDomainAssociationResponse
    GetEndpointAccessRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointName", traits: {"smithy.api#required" => {}}))
    GetEndpointAccessRequest.type = Types::GetEndpointAccessRequest
    GetEndpointAccessResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccess, name: "endpoint"))
    GetEndpointAccessResponse.type = Types::GetEndpointAccessResponse
    GetNamespaceRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    GetNamespaceRequest.type = Types::GetNamespaceRequest
    GetNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.type = Types::GetNamespaceResponse
    GetRecoveryPointRequest.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId", traits: {"smithy.api#required" => {}}))
    GetRecoveryPointRequest.type = Types::GetRecoveryPointRequest
    GetRecoveryPointResponse.add_member(:recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPoint, name: "recoveryPoint"))
    GetRecoveryPointResponse.type = Types::GetRecoveryPointResponse
    GetReservationOfferingRequest.add_member(:offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingId, name: "offeringId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    GetReservationOfferingRequest.type = Types::GetReservationOfferingRequest
    GetReservationOfferingResponse.add_member(:reservation_offering, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationOffering, name: "reservationOffering", traits: {"smithy.api#required" => {}}))
    GetReservationOfferingResponse.type = Types::GetReservationOfferingResponse
    GetReservationRequest.add_member(:reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationId, name: "reservationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    GetReservationRequest.type = Types::GetReservationRequest
    GetReservationResponse.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, name: "reservation", traits: {"smithy.api#required" => {}}))
    GetReservationResponse.type = Types::GetReservationResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "resourcePolicy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetScheduledActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "scheduledActionName", traits: {"smithy.api#required" => {}}))
    GetScheduledActionRequest.type = Types::GetScheduledActionRequest
    GetScheduledActionResponse.add_member(:scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionResponse, name: "scheduledAction"))
    GetScheduledActionResponse.type = Types::GetScheduledActionResponse
    GetSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName"))
    GetSnapshotRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ownerAccount"))
    GetSnapshotRequest.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotArn"))
    GetSnapshotRequest.type = Types::GetSnapshotRequest
    GetSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "snapshot"))
    GetSnapshotResponse.type = Types::GetSnapshotResponse
    GetTableRestoreStatusRequest.add_member(:table_restore_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tableRestoreRequestId", traits: {"smithy.api#required" => {}}))
    GetTableRestoreStatusRequest.type = Types::GetTableRestoreStatusRequest
    GetTableRestoreStatusResponse.add_member(:table_restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatus, name: "tableRestoreStatus"))
    GetTableRestoreStatusResponse.type = Types::GetTableRestoreStatusResponse
    GetTrackRequest.add_member(:track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "trackName", traits: {"smithy.api#required" => {}}))
    GetTrackRequest.type = Types::GetTrackRequest
    GetTrackResponse.add_member(:track, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessTrack, name: "track"))
    GetTrackResponse.type = Types::GetTrackResponse
    GetUsageLimitRequest.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLimitId", traits: {"smithy.api#required" => {}}))
    GetUsageLimitRequest.type = Types::GetUsageLimitRequest
    GetUsageLimitResponse.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "usageLimit"))
    GetUsageLimitResponse.type = Types::GetUsageLimitResponse
    GetWorkgroupRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    GetWorkgroupRequest.type = Types::GetWorkgroupRequest
    GetWorkgroupResponse.add_member(:workgroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Workgroup, name: "workgroup", traits: {"smithy.api#required" => {}}))
    GetWorkgroupResponse.type = Types::GetWorkgroupResponse
    IamRoleArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "member")
    InsufficientCapacityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidPaginationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidPaginationException.type = Types::InvalidPaginationException
    Ipv6CidrBlockNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    Ipv6CidrBlockNotFoundException.type = Types::Ipv6CidrBlockNotFoundException
    ListCustomDomainAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomDomainAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCustomDomainAssociationsRequest.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    ListCustomDomainAssociationsRequest.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn"))
    ListCustomDomainAssociationsRequest.type = Types::ListCustomDomainAssociationsRequest
    ListCustomDomainAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCustomDomainAssociationsResponse.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationList, name: "associations"))
    ListCustomDomainAssociationsResponse.type = Types::ListCustomDomainAssociationsResponse
    ListEndpointAccessRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEndpointAccessRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListEndpointAccessRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName"))
    ListEndpointAccessRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcId"))
    ListEndpointAccessRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerAccount, name: "ownerAccount"))
    ListEndpointAccessRequest.type = Types::ListEndpointAccessRequest
    ListEndpointAccessResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListEndpointAccessResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccessList, name: "endpoints", traits: {"smithy.api#required" => {}}))
    ListEndpointAccessResponse.type = Types::ListEndpointAccessResponse
    ListManagedWorkgroupsRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "sourceArn"))
    ListManagedWorkgroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedWorkgroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListManagedWorkgroupsRequest.type = Types::ListManagedWorkgroupsRequest
    ListManagedWorkgroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListManagedWorkgroupsResponse.add_member(:managed_workgroups, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedWorkgroups, name: "managedWorkgroups"))
    ListManagedWorkgroupsResponse.type = Types::ListManagedWorkgroupsResponse
    ListNamespacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNamespacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListNamespacesRequest.type = Types::ListNamespacesRequest
    ListNamespacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListNamespacesResponse.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    ListNamespacesResponse.type = Types::ListNamespacesResponse
    ListRecoveryPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRecoveryPointsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    ListRecoveryPointsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    ListRecoveryPointsRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    ListRecoveryPointsRequest.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceArn"))
    ListRecoveryPointsRequest.type = Types::ListRecoveryPointsRequest
    ListRecoveryPointsResponse.add_member(:recovery_points, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointList, name: "recoveryPoints"))
    ListRecoveryPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRecoveryPointsResponse.type = Types::ListRecoveryPointsResponse
    ListReservationOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReservationOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReservationOfferingsRequest.type = Types::ListReservationOfferingsRequest
    ListReservationOfferingsResponse.add_member(:reservation_offerings_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationOfferingsList, name: "reservationOfferingsList", traits: {"smithy.api#required" => {}}))
    ListReservationOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListReservationOfferingsResponse.type = Types::ListReservationOfferingsResponse
    ListReservationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReservationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReservationsRequest.type = Types::ListReservationsRequest
    ListReservationsResponse.add_member(:reservations_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationsList, name: "reservationsList", traits: {"smithy.api#required" => {}}))
    ListReservationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListReservationsResponse.type = Types::ListReservationsResponse
    ListScheduledActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScheduledActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListScheduledActionsRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    ListScheduledActionsRequest.type = Types::ListScheduledActionsRequest
    ListScheduledActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListScheduledActionsResponse.add_member(:scheduled_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionsList, name: "scheduledActions"))
    ListScheduledActionsResponse.type = Types::ListScheduledActionsResponse
    ListSnapshotCopyConfigurationsRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    ListSnapshotCopyConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSnapshotCopyConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSnapshotCopyConfigurationsRequest.type = Types::ListSnapshotCopyConfigurationsRequest
    ListSnapshotCopyConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSnapshotCopyConfigurationsResponse.add_member(:snapshot_copy_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyConfigurations, name: "snapshotCopyConfigurations", traits: {"smithy.api#required" => {}}))
    ListSnapshotCopyConfigurationsResponse.type = Types::ListSnapshotCopyConfigurationsResponse
    ListSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSnapshotsRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName"))
    ListSnapshotsRequest.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceArn"))
    ListSnapshotsRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ownerAccount"))
    ListSnapshotsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    ListSnapshotsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    ListSnapshotsRequest.type = Types::ListSnapshotsRequest
    ListSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSnapshotsResponse.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotList, name: "snapshots"))
    ListSnapshotsResponse.type = Types::ListSnapshotsResponse
    ListTableRestoreStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTableRestoreStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTableRestoreStatusRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName"))
    ListTableRestoreStatusRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName"))
    ListTableRestoreStatusRequest.type = Types::ListTableRestoreStatusRequest
    ListTableRestoreStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTableRestoreStatusResponse.add_member(:table_restore_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatusList, name: "tableRestoreStatuses"))
    ListTableRestoreStatusResponse.type = Types::ListTableRestoreStatusResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTracksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTracksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTracksRequest.type = Types::ListTracksRequest
    ListTracksResponse.add_member(:tracks, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackList, name: "tracks"))
    ListTracksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTracksResponse.type = Types::ListTracksResponse
    ListUsageLimitsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn"))
    ListUsageLimitsRequest.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitUsageType, name: "usageType"))
    ListUsageLimitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUsageLimitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListUsageLimitsRequest.type = Types::ListUsageLimitsRequest
    ListUsageLimitsResponse.add_member(:usage_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimits, name: "usageLimits"))
    ListUsageLimitsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListUsageLimitsResponse.type = Types::ListUsageLimitsResponse
    ListWorkgroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkgroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkgroupsRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerAccount, name: "ownerAccount"))
    ListWorkgroupsRequest.type = Types::ListWorkgroupsRequest
    ListWorkgroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListWorkgroupsResponse.add_member(:workgroups, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupList, name: "workgroups", traits: {"smithy.api#required" => {}}))
    ListWorkgroupsResponse.type = Types::ListWorkgroupsResponse
    LogExportList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LogExport, name: "member")
    ManagedWorkgroupListItem.add_member(:managed_workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedWorkgroupName, name: "managedWorkgroupName"))
    ManagedWorkgroupListItem.add_member(:managed_workgroup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "managedWorkgroupId"))
    ManagedWorkgroupListItem.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "sourceArn"))
    ManagedWorkgroupListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedWorkgroupStatus, name: "status"))
    ManagedWorkgroupListItem.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedWorkgroupListItem.type = Types::ManagedWorkgroupListItem
    ManagedWorkgroupStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ManagedWorkgroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ManagedWorkgroupStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ManagedWorkgroupStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ManagedWorkgroupStatus.add_member(:not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    ManagedWorkgroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedWorkgroupListItem, name: "member")
    Namespace.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceArn"))
    Namespace.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceId"))
    Namespace.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    Namespace.add_member(:admin_username, ::Smithy::Schema::Shapes::MemberShape.new(target: DbUser, name: "adminUsername"))
    Namespace.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName"))
    Namespace.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyId"))
    Namespace.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultIamRoleArn"))
    Namespace.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "iamRoles"))
    Namespace.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogExportList, name: "logExports"))
    Namespace.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceStatus, name: "status"))
    Namespace.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Namespace.add_member(:admin_password_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adminPasswordSecretArn"))
    Namespace.add_member(:admin_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "adminPasswordSecretKmsKeyId"))
    Namespace.type = Types::Namespace
    NamespaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "member")
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "networkInterfaceId"))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "subnetId"))
    NetworkInterface.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateIpAddress"))
    NetworkInterface.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ipv6Address"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member")
    NextInvocationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "member")
    PerformanceTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceTargetStatus, name: "status"))
    PerformanceTarget.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "level", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    PerformanceTarget.type = Types::PerformanceTarget
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "resourcePolicy"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RecoveryPoint.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId"))
    RecoveryPoint.add_member(:recovery_point_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "recoveryPointCreateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RecoveryPoint.add_member(:total_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "totalSizeInMegaBytes"))
    RecoveryPoint.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    RecoveryPoint.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    RecoveryPoint.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceArn"))
    RecoveryPoint.type = Types::RecoveryPoint
    RecoveryPointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPoint, name: "member")
    Reservation.add_member(:reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationId, name: "reservationId"))
    Reservation.add_member(:reservation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationArn, name: "reservationArn"))
    Reservation.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Reservation.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Reservation.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, name: "capacity", traits: {"smithy.api#default" => 0}))
    Reservation.add_member(:offering, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationOffering, name: "offering"))
    Reservation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    Reservation.type = Types::Reservation
    ReservationOffering.add_member(:offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingId, name: "offeringId"))
    ReservationOffering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "duration", traits: {"smithy.api#default" => 0}))
    ReservationOffering.add_member(:upfront_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: Charge, name: "upfrontCharge", traits: {"smithy.api#default" => 0}))
    ReservationOffering.add_member(:hourly_charge, ::Smithy::Schema::Shapes::MemberShape.new(target: Charge, name: "hourlyCharge", traits: {"smithy.api#default" => 0}))
    ReservationOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currencyCode"))
    ReservationOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingType, name: "offeringType"))
    ReservationOffering.type = Types::ReservationOffering
    ReservationOfferingsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationOffering, name: "member")
    ReservationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn"))
    ResourcePolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy"))
    ResourcePolicy.type = Types::ResourcePolicy
    RestoreFromRecoveryPointRequest.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId", traits: {"smithy.api#required" => {}}))
    RestoreFromRecoveryPointRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    RestoreFromRecoveryPointRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    RestoreFromRecoveryPointRequest.type = Types::RestoreFromRecoveryPointRequest
    RestoreFromRecoveryPointResponse.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId"))
    RestoreFromRecoveryPointResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    RestoreFromRecoveryPointResponse.type = Types::RestoreFromRecoveryPointResponse
    RestoreFromSnapshotRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    RestoreFromSnapshotRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    RestoreFromSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName"))
    RestoreFromSnapshotRequest.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotArn"))
    RestoreFromSnapshotRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ownerAccount"))
    RestoreFromSnapshotRequest.add_member(:manage_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageAdminPassword"))
    RestoreFromSnapshotRequest.add_member(:admin_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "adminPasswordSecretKmsKeyId"))
    RestoreFromSnapshotRequest.type = Types::RestoreFromSnapshotRequest
    RestoreFromSnapshotResponse.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName"))
    RestoreFromSnapshotResponse.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ownerAccount"))
    RestoreFromSnapshotResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    RestoreFromSnapshotResponse.type = Types::RestoreFromSnapshotResponse
    RestoreTableFromRecoveryPointRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId", traits: {"smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:source_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceDatabaseName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:source_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceSchemaName"))
    RestoreTableFromRecoveryPointRequest.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceTableName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetDatabaseName"))
    RestoreTableFromRecoveryPointRequest.add_member(:target_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetSchemaName"))
    RestoreTableFromRecoveryPointRequest.add_member(:new_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "newTableName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromRecoveryPointRequest.add_member(:activate_case_sensitive_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "activateCaseSensitiveIdentifier"))
    RestoreTableFromRecoveryPointRequest.type = Types::RestoreTableFromRecoveryPointRequest
    RestoreTableFromRecoveryPointResponse.add_member(:table_restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatus, name: "tableRestoreStatus"))
    RestoreTableFromRecoveryPointResponse.type = Types::RestoreTableFromRecoveryPointResponse
    RestoreTableFromSnapshotRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:source_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceDatabaseName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:source_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceSchemaName"))
    RestoreTableFromSnapshotRequest.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceTableName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetDatabaseName"))
    RestoreTableFromSnapshotRequest.add_member(:target_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetSchemaName"))
    RestoreTableFromSnapshotRequest.add_member(:new_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "newTableName", traits: {"smithy.api#required" => {}}))
    RestoreTableFromSnapshotRequest.add_member(:activate_case_sensitive_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "activateCaseSensitiveIdentifier"))
    RestoreTableFromSnapshotRequest.type = Types::RestoreTableFromSnapshotRequest
    RestoreTableFromSnapshotResponse.add_member(:table_restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatus, name: "tableRestoreStatus"))
    RestoreTableFromSnapshotResponse.type = Types::RestoreTableFromSnapshotResponse
    Schedule.add_member(:at, Types::Schedule::At, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "at"))
    Schedule.add_member(:cron, Types::Schedule::Cron, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cron"))
    Schedule.add_member(:unknown, Types::Schedule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Schedule.type = Types::Schedule
    ScheduledActionAssociation.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    ScheduledActionAssociation.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "scheduledActionName"))
    ScheduledActionAssociation.type = Types::ScheduledActionAssociation
    ScheduledActionResponse.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "scheduledActionName"))
    ScheduledActionResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    ScheduledActionResponse.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledActionDescription"))
    ScheduledActionResponse.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: NextInvocationsList, name: "nextInvocations"))
    ScheduledActionResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    ScheduledActionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state"))
    ScheduledActionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    ScheduledActionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    ScheduledActionResponse.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAction, name: "targetAction"))
    ScheduledActionResponse.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    ScheduledActionResponse.add_member(:scheduled_action_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledActionUuid"))
    ScheduledActionResponse.type = Types::ScheduledActionResponse
    ScheduledActionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionAssociation, name: "member")
    SecurityGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member")
    ServerlessTrack.add_member(:track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "trackName"))
    ServerlessTrack.add_member(:workgroup_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupVersion"))
    ServerlessTrack.add_member(:update_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTargetsList, name: "updateTargets"))
    ServerlessTrack.type = Types::ServerlessTrack
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Snapshot.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName"))
    Snapshot.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceArn"))
    Snapshot.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName"))
    Snapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "snapshotCreateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Snapshot.add_member(:admin_username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adminUsername"))
    Snapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotStatus, name: "status"))
    Snapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    Snapshot.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ownerAccount"))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "totalBackupSizeInMegaBytes"))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "actualIncrementalBackupSizeInMegaBytes"))
    Snapshot.add_member(:backup_progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "backupProgressInMegaBytes"))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "currentBackupRateInMegaBytesPerSecond"))
    Snapshot.add_member(:estimated_seconds_to_completion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "estimatedSecondsToCompletion"))
    Snapshot.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "elapsedTimeInSeconds"))
    Snapshot.add_member(:snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshotRetentionPeriod"))
    Snapshot.add_member(:snapshot_remaining_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshotRemainingDays"))
    Snapshot.add_member(:snapshot_retention_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "snapshotRetentionStartTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Snapshot.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotArn"))
    Snapshot.add_member(:accounts_with_restore_access, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountsWithRestoreAccess"))
    Snapshot.add_member(:accounts_with_provisioned_restore_access, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountsWithProvisionedRestoreAccess"))
    Snapshot.add_member(:admin_password_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "adminPasswordSecretArn"))
    Snapshot.add_member(:admin_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "adminPasswordSecretKmsKeyId"))
    Snapshot.type = Types::Snapshot
    SnapshotCopyConfiguration.add_member(:snapshot_copy_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotCopyConfigurationId"))
    SnapshotCopyConfiguration.add_member(:snapshot_copy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotCopyConfigurationArn"))
    SnapshotCopyConfiguration.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName"))
    SnapshotCopyConfiguration.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "destinationRegion"))
    SnapshotCopyConfiguration.add_member(:snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshotRetentionPeriod"))
    SnapshotCopyConfiguration.add_member(:destination_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "destinationKmsKeyId"))
    SnapshotCopyConfiguration.type = Types::SnapshotCopyConfiguration
    SnapshotCopyConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyConfiguration, name: "member")
    SnapshotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "member")
    SubnetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member")
    TableRestoreStatus.add_member(:table_restore_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tableRestoreRequestId"))
    TableRestoreStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status"))
    TableRestoreStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TableRestoreStatus.add_member(:request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "requestTime"))
    TableRestoreStatus.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName"))
    TableRestoreStatus.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupName"))
    TableRestoreStatus.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName"))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "progressInMegaBytes"))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "totalDataInMegaBytes"))
    TableRestoreStatus.add_member(:source_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceDatabaseName"))
    TableRestoreStatus.add_member(:source_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceSchemaName"))
    TableRestoreStatus.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceTableName"))
    TableRestoreStatus.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetDatabaseName"))
    TableRestoreStatus.add_member(:target_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetSchemaName"))
    TableRestoreStatus.add_member(:new_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "newTableName"))
    TableRestoreStatus.add_member(:recovery_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recoveryPointId"))
    TableRestoreStatus.type = Types::TableRestoreStatus
    TableRestoreStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatus, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAction.add_member(:create_snapshot, Types::TargetAction::CreateSnapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSnapshotScheduleActionParameters, name: "createSnapshot"))
    TargetAction.add_member(:unknown, Types::TargetAction::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TargetAction.type = Types::TargetAction
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    TrackList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessTrack, name: "member")
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCustomDomainAssociationRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    UpdateCustomDomainAssociationRequest.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName", traits: {"smithy.api#required" => {}}))
    UpdateCustomDomainAssociationRequest.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn", traits: {"smithy.api#required" => {}}))
    UpdateCustomDomainAssociationRequest.type = Types::UpdateCustomDomainAssociationRequest
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    UpdateCustomDomainAssociationResponse.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn"))
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "customDomainCertificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateCustomDomainAssociationResponse.type = Types::UpdateCustomDomainAssociationResponse
    UpdateEndpointAccessRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpointName", traits: {"smithy.api#required" => {}}))
    UpdateEndpointAccessRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    UpdateEndpointAccessRequest.type = Types::UpdateEndpointAccessRequest
    UpdateEndpointAccessResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccess, name: "endpoint"))
    UpdateEndpointAccessResponse.type = Types::UpdateEndpointAccessResponse
    UpdateNamespaceRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespaceName", traits: {"smithy.api#required" => {}}))
    UpdateNamespaceRequest.add_member(:admin_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: DbPassword, name: "adminUserPassword"))
    UpdateNamespaceRequest.add_member(:admin_username, ::Smithy::Schema::Shapes::MemberShape.new(target: DbUser, name: "adminUsername"))
    UpdateNamespaceRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyId"))
    UpdateNamespaceRequest.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultIamRoleArn"))
    UpdateNamespaceRequest.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "iamRoles"))
    UpdateNamespaceRequest.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogExportList, name: "logExports"))
    UpdateNamespaceRequest.add_member(:manage_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageAdminPassword"))
    UpdateNamespaceRequest.add_member(:admin_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "adminPasswordSecretKmsKeyId"))
    UpdateNamespaceRequest.type = Types::UpdateNamespaceRequest
    UpdateNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    UpdateNamespaceResponse.type = Types::UpdateNamespaceResponse
    UpdateScheduledActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "scheduledActionName", traits: {"smithy.api#required" => {}}))
    UpdateScheduledActionRequest.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAction, name: "targetAction"))
    UpdateScheduledActionRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    UpdateScheduledActionRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    UpdateScheduledActionRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    UpdateScheduledActionRequest.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledActionDescription"))
    UpdateScheduledActionRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    UpdateScheduledActionRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    UpdateScheduledActionRequest.type = Types::UpdateScheduledActionRequest
    UpdateScheduledActionResponse.add_member(:scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionResponse, name: "scheduledAction"))
    UpdateScheduledActionResponse.type = Types::UpdateScheduledActionResponse
    UpdateSnapshotCopyConfigurationRequest.add_member(:snapshot_copy_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotCopyConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateSnapshotCopyConfigurationRequest.add_member(:snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshotRetentionPeriod"))
    UpdateSnapshotCopyConfigurationRequest.type = Types::UpdateSnapshotCopyConfigurationRequest
    UpdateSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyConfiguration, name: "snapshotCopyConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateSnapshotCopyConfigurationResponse.type = Types::UpdateSnapshotCopyConfigurationResponse
    UpdateSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "snapshotName", traits: {"smithy.api#required" => {}}))
    UpdateSnapshotRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriod"))
    UpdateSnapshotRequest.type = Types::UpdateSnapshotRequest
    UpdateSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "snapshot"))
    UpdateSnapshotResponse.type = Types::UpdateSnapshotResponse
    UpdateTarget.add_member(:track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "trackName"))
    UpdateTarget.add_member(:workgroup_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupVersion"))
    UpdateTarget.type = Types::UpdateTarget
    UpdateTargetsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTarget, name: "member")
    UpdateUsageLimitRequest.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLimitId", traits: {"smithy.api#required" => {}}))
    UpdateUsageLimitRequest.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "amount"))
    UpdateUsageLimitRequest.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "breachAction"))
    UpdateUsageLimitRequest.type = Types::UpdateUsageLimitRequest
    UpdateUsageLimitResponse.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "usageLimit"))
    UpdateUsageLimitResponse.type = Types::UpdateUsageLimitResponse
    UpdateWorkgroupRequest.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName", traits: {"smithy.api#required" => {}}))
    UpdateWorkgroupRequest.add_member(:base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "baseCapacity"))
    UpdateWorkgroupRequest.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enhancedVpcRouting"))
    UpdateWorkgroupRequest.add_member(:config_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigParameterList, name: "configParameters"))
    UpdateWorkgroupRequest.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    UpdateWorkgroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    UpdateWorkgroupRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    UpdateWorkgroupRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    UpdateWorkgroupRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCapacity"))
    UpdateWorkgroupRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    UpdateWorkgroupRequest.add_member(:price_performance_target, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceTarget, name: "pricePerformanceTarget"))
    UpdateWorkgroupRequest.add_member(:track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "trackName"))
    UpdateWorkgroupRequest.type = Types::UpdateWorkgroupRequest
    UpdateWorkgroupResponse.add_member(:workgroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Workgroup, name: "workgroup", traits: {"smithy.api#required" => {}}))
    UpdateWorkgroupResponse.type = Types::UpdateWorkgroupResponse
    UsageLimit.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLimitId"))
    UsageLimit.add_member(:usage_limit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLimitArn"))
    UsageLimit.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn"))
    UsageLimit.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitUsageType, name: "usageType"))
    UsageLimit.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "amount"))
    UsageLimit.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitPeriod, name: "period"))
    UsageLimit.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "breachAction"))
    UsageLimit.type = Types::UsageLimit
    UsageLimits.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "member")
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcId"))
    VpcEndpoint.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceList, name: "networkInterfaces"))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "member")
    VpcIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupId, name: "member")
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupId, name: "vpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status"))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembership, name: "member")
    Workgroup.add_member(:workgroup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupId"))
    Workgroup.add_member(:workgroup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupArn"))
    Workgroup.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, name: "workgroupName"))
    Workgroup.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespaceName"))
    Workgroup.add_member(:base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "baseCapacity"))
    Workgroup.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enhancedVpcRouting"))
    Workgroup.add_member(:config_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigParameterList, name: "configParameters"))
    Workgroup.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    Workgroup.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    Workgroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupStatus, name: "status"))
    Workgroup.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint"))
    Workgroup.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    Workgroup.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Workgroup.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    Workgroup.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainName, name: "customDomainName"))
    Workgroup.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "customDomainCertificateArn"))
    Workgroup.add_member(:custom_domain_certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "customDomainCertificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Workgroup.add_member(:workgroup_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workgroupVersion"))
    Workgroup.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "patchVersion"))
    Workgroup.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCapacity"))
    Workgroup.add_member(:cross_account_vpcs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIds, name: "crossAccountVpcs"))
    Workgroup.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    Workgroup.add_member(:price_performance_target, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceTarget, name: "pricePerformanceTarget"))
    Workgroup.add_member(:track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "trackName"))
    Workgroup.add_member(:pending_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackName, name: "pendingTrackName"))
    Workgroup.type = Types::Workgroup
    WorkgroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Workgroup, name: "member")

    RedshiftServerless = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshiftserverless#RedshiftServerless"
      service.name = "RedshiftServerless"
      service.version = "2021-04-21"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift Serverless", "arnNamespace" => "redshift-serverless"}, "aws.auth#sigv4" => {"name" => "redshift-serverless"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Redshift Serverless"}
      service.add_operation(:convert_recovery_point_to_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ConvertRecoveryPointToSnapshot"
        operation.name = "ConvertRecoveryPointToSnapshot"
        operation.input = ConvertRecoveryPointToSnapshotRequest
        operation.output = ConvertRecoveryPointToSnapshotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateCustomDomainAssociation"
        operation.name = "CreateCustomDomainAssociation"
        operation.input = CreateCustomDomainAssociationRequest
        operation.output = CreateCustomDomainAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateEndpointAccess"
        operation.name = "CreateEndpointAccess"
        operation.input = CreateEndpointAccessRequest
        operation.output = CreateEndpointAccessResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateNamespace"
        operation.name = "CreateNamespace"
        operation.input = CreateNamespaceRequest
        operation.output = CreateNamespaceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateReservation"
        operation.name = "CreateReservation"
        operation.input = CreateReservationRequest
        operation.output = CreateReservationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateScheduledAction"
        operation.name = "CreateScheduledAction"
        operation.input = CreateScheduledActionRequest
        operation.output = CreateScheduledActionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = CreateSnapshotRequest
        operation.output = CreateSnapshotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_snapshot_copy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateSnapshotCopyConfiguration"
        operation.name = "CreateSnapshotCopyConfiguration"
        operation.input = CreateSnapshotCopyConfigurationRequest
        operation.output = CreateSnapshotCopyConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateUsageLimit"
        operation.name = "CreateUsageLimit"
        operation.input = CreateUsageLimitRequest
        operation.output = CreateUsageLimitResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workgroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#CreateWorkgroup"
        operation.name = "CreateWorkgroup"
        operation.input = CreateWorkgroupRequest
        operation.output = CreateWorkgroupResponse
        operation.errors << ConflictException
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerException
        operation.errors << Ipv6CidrBlockNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteCustomDomainAssociation"
        operation.name = "DeleteCustomDomainAssociation"
        operation.input = DeleteCustomDomainAssociationRequest
        operation.output = DeleteCustomDomainAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteEndpointAccess"
        operation.name = "DeleteEndpointAccess"
        operation.input = DeleteEndpointAccessRequest
        operation.output = DeleteEndpointAccessResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = DeleteNamespaceRequest
        operation.output = DeleteNamespaceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = DeleteScheduledActionRequest
        operation.output = DeleteScheduledActionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = DeleteSnapshotRequest
        operation.output = DeleteSnapshotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_snapshot_copy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteSnapshotCopyConfiguration"
        operation.name = "DeleteSnapshotCopyConfiguration"
        operation.input = DeleteSnapshotCopyConfigurationRequest
        operation.output = DeleteSnapshotCopyConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteUsageLimit"
        operation.name = "DeleteUsageLimit"
        operation.input = DeleteUsageLimitRequest
        operation.output = DeleteUsageLimitResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workgroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#DeleteWorkgroup"
        operation.name = "DeleteWorkgroup"
        operation.input = DeleteWorkgroupRequest
        operation.output = DeleteWorkgroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetCredentials"
        operation.name = "GetCredentials"
        operation.input = GetCredentialsRequest
        operation.output = GetCredentialsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetCustomDomainAssociation"
        operation.name = "GetCustomDomainAssociation"
        operation.input = GetCustomDomainAssociationRequest
        operation.output = GetCustomDomainAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetEndpointAccess"
        operation.name = "GetEndpointAccess"
        operation.input = GetEndpointAccessRequest
        operation.output = GetEndpointAccessResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetNamespace"
        operation.name = "GetNamespace"
        operation.input = GetNamespaceRequest
        operation.output = GetNamespaceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetRecoveryPoint"
        operation.name = "GetRecoveryPoint"
        operation.input = GetRecoveryPointRequest
        operation.output = GetRecoveryPointResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetReservation"
        operation.name = "GetReservation"
        operation.input = GetReservationRequest
        operation.output = GetReservationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reservation_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetReservationOffering"
        operation.name = "GetReservationOffering"
        operation.input = GetReservationOfferingRequest
        operation.output = GetReservationOfferingResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetScheduledAction"
        operation.name = "GetScheduledAction"
        operation.input = GetScheduledActionRequest
        operation.output = GetScheduledActionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetSnapshot"
        operation.name = "GetSnapshot"
        operation.input = GetSnapshotRequest
        operation.output = GetSnapshotResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_restore_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetTableRestoreStatus"
        operation.name = "GetTableRestoreStatus"
        operation.input = GetTableRestoreStatusRequest
        operation.output = GetTableRestoreStatusResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_track, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetTrack"
        operation.name = "GetTrack"
        operation.input = GetTrackRequest
        operation.output = GetTrackResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetUsageLimit"
        operation.name = "GetUsageLimit"
        operation.input = GetUsageLimitRequest
        operation.output = GetUsageLimitResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workgroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#GetWorkgroup"
        operation.name = "GetWorkgroup"
        operation.input = GetWorkgroupRequest
        operation.output = GetWorkgroupResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_custom_domain_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListCustomDomainAssociations"
        operation.name = "ListCustomDomainAssociations"
        operation.input = ListCustomDomainAssociationsRequest
        operation.output = ListCustomDomainAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidPaginationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomDomainAssociations.new
      end)
      service.add_operation(:list_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListEndpointAccess"
        operation.name = "ListEndpointAccess"
        operation.input = ListEndpointAccessRequest
        operation.output = ListEndpointAccessResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEndpointAccess.new
      end)
      service.add_operation(:list_managed_workgroups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListManagedWorkgroups"
        operation.name = "ListManagedWorkgroups"
        operation.input = ListManagedWorkgroupsRequest
        operation.output = ListManagedWorkgroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.traits = {}
        operation[:paginator] = Paginators::ListManagedWorkgroups.new
      end)
      service.add_operation(:list_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListNamespaces"
        operation.name = "ListNamespaces"
        operation.input = ListNamespacesRequest
        operation.output = ListNamespacesResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNamespaces.new
      end)
      service.add_operation(:list_recovery_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListRecoveryPoints"
        operation.name = "ListRecoveryPoints"
        operation.input = ListRecoveryPointsRequest
        operation.output = ListRecoveryPointsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecoveryPoints.new
      end)
      service.add_operation(:list_reservation_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListReservationOfferings"
        operation.name = "ListReservationOfferings"
        operation.input = ListReservationOfferingsRequest
        operation.output = ListReservationOfferingsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReservationOfferings.new
      end)
      service.add_operation(:list_reservations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListReservations"
        operation.name = "ListReservations"
        operation.input = ListReservationsRequest
        operation.output = ListReservationsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReservations.new
      end)
      service.add_operation(:list_scheduled_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListScheduledActions"
        operation.name = "ListScheduledActions"
        operation.input = ListScheduledActionsRequest
        operation.output = ListScheduledActionsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidPaginationException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScheduledActions.new
      end)
      service.add_operation(:list_snapshot_copy_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListSnapshotCopyConfigurations"
        operation.name = "ListSnapshotCopyConfigurations"
        operation.input = ListSnapshotCopyConfigurationsRequest
        operation.output = ListSnapshotCopyConfigurationsResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidPaginationException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSnapshotCopyConfigurations.new
      end)
      service.add_operation(:list_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListSnapshots"
        operation.name = "ListSnapshots"
        operation.input = ListSnapshotsRequest
        operation.output = ListSnapshotsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSnapshots.new
      end)
      service.add_operation(:list_table_restore_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListTableRestoreStatus"
        operation.name = "ListTableRestoreStatus"
        operation.input = ListTableRestoreStatusRequest
        operation.output = ListTableRestoreStatusResponse
        operation.errors << InvalidPaginationException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTableRestoreStatus.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tracks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListTracks"
        operation.name = "ListTracks"
        operation.input = ListTracksRequest
        operation.output = ListTracksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidPaginationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTracks.new
      end)
      service.add_operation(:list_usage_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListUsageLimits"
        operation.name = "ListUsageLimits"
        operation.input = ListUsageLimitsRequest
        operation.output = ListUsageLimitsResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << InvalidPaginationException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsageLimits.new
      end)
      service.add_operation(:list_workgroups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#ListWorkgroups"
        operation.name = "ListWorkgroups"
        operation.input = ListWorkgroupsRequest
        operation.output = ListWorkgroupsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkgroups.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:restore_from_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreFromRecoveryPoint"
        operation.name = "RestoreFromRecoveryPoint"
        operation.input = RestoreFromRecoveryPointRequest
        operation.output = RestoreFromRecoveryPointResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:restore_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreFromSnapshot"
        operation.name = "RestoreFromSnapshot"
        operation.input = RestoreFromSnapshotRequest
        operation.output = RestoreFromSnapshotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:restore_table_from_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreTableFromRecoveryPoint"
        operation.name = "RestoreTableFromRecoveryPoint"
        operation.input = RestoreTableFromRecoveryPointRequest
        operation.output = RestoreTableFromRecoveryPointResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:restore_table_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#RestoreTableFromSnapshot"
        operation.name = "RestoreTableFromSnapshot"
        operation.input = RestoreTableFromSnapshotRequest
        operation.output = RestoreTableFromSnapshotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateCustomDomainAssociation"
        operation.name = "UpdateCustomDomainAssociation"
        operation.input = UpdateCustomDomainAssociationRequest
        operation.output = UpdateCustomDomainAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateEndpointAccess"
        operation.name = "UpdateEndpointAccess"
        operation.input = UpdateEndpointAccessRequest
        operation.output = UpdateEndpointAccessResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateNamespace"
        operation.name = "UpdateNamespace"
        operation.input = UpdateNamespaceRequest
        operation.output = UpdateNamespaceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateScheduledAction"
        operation.name = "UpdateScheduledAction"
        operation.input = UpdateScheduledActionRequest
        operation.output = UpdateScheduledActionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateSnapshot"
        operation.name = "UpdateSnapshot"
        operation.input = UpdateSnapshotRequest
        operation.output = UpdateSnapshotResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_snapshot_copy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateSnapshotCopyConfiguration"
        operation.name = "UpdateSnapshotCopyConfiguration"
        operation.input = UpdateSnapshotCopyConfigurationRequest
        operation.output = UpdateSnapshotCopyConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateUsageLimit"
        operation.name = "UpdateUsageLimit"
        operation.input = UpdateUsageLimitRequest
        operation.output = UpdateUsageLimitResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_workgroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshiftserverless#UpdateWorkgroup"
        operation.name = "UpdateWorkgroup"
        operation.input = UpdateWorkgroupRequest
        operation.output = UpdateWorkgroupResponse
        operation.errors << ConflictException
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerException
        operation.errors << Ipv6CidrBlockNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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

# frozen_string_literal: true

# This is generated code!

module Aws::Odb
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptMarketplaceRegistrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AcceptMarketplaceRegistrationInput", name: "AcceptMarketplaceRegistrationInput")
    AcceptMarketplaceRegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AcceptMarketplaceRegistrationOutput", name: "AcceptMarketplaceRegistrationOutput")
    Access = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#Access", name: "Access")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AutonomousVirtualMachineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousVirtualMachineList", name: "AutonomousVirtualMachineList")
    AutonomousVirtualMachineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousVirtualMachineSummary", name: "AutonomousVirtualMachineSummary")
    CloudAutonomousVmCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudAutonomousVmCluster", name: "CloudAutonomousVmCluster")
    CloudAutonomousVmClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CloudAutonomousVmClusterList", name: "CloudAutonomousVmClusterList")
    CloudAutonomousVmClusterResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudAutonomousVmClusterResourceDetails", name: "CloudAutonomousVmClusterResourceDetails")
    CloudAutonomousVmClusterResourceDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CloudAutonomousVmClusterResourceDetailsList", name: "CloudAutonomousVmClusterResourceDetailsList")
    CloudAutonomousVmClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudAutonomousVmClusterSummary", name: "CloudAutonomousVmClusterSummary")
    CloudExadataInfrastructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudExadataInfrastructure", name: "CloudExadataInfrastructure")
    CloudExadataInfrastructureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CloudExadataInfrastructureList", name: "CloudExadataInfrastructureList")
    CloudExadataInfrastructureSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudExadataInfrastructureSummary", name: "CloudExadataInfrastructureSummary")
    CloudExadataInfrastructureUnallocatedResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudExadataInfrastructureUnallocatedResources", name: "CloudExadataInfrastructureUnallocatedResources")
    CloudVmCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudVmCluster", name: "CloudVmCluster")
    CloudVmClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CloudVmClusterList", name: "CloudVmClusterList")
    CloudVmClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloudVmClusterSummary", name: "CloudVmClusterSummary")
    ComputeModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ComputeModel", name: "ComputeModel")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCloudAutonomousVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudAutonomousVmClusterInput", name: "CreateCloudAutonomousVmClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "cloudExadataInfrastructureId"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "odbNetworkId"}}]})
    CreateCloudAutonomousVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudAutonomousVmClusterOutput", name: "CreateCloudAutonomousVmClusterOutput")
    CreateCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudExadataInfrastructureInput", name: "CreateCloudExadataInfrastructureInput")
    CreateCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudExadataInfrastructureOutput", name: "CreateCloudExadataInfrastructureOutput")
    CreateCloudVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudVmClusterInput", name: "CreateCloudVmClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "cloudExadataInfrastructureId"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "odbNetworkId"}}]})
    CreateCloudVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudVmClusterOutput", name: "CreateCloudVmClusterOutput")
    CreateOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbNetworkInput", name: "CreateOdbNetworkInput")
    CreateOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbNetworkOutput", name: "CreateOdbNetworkOutput")
    CreateOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbPeeringConnectionInput", name: "CreateOdbPeeringConnectionInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "odbNetworkId"}}]})
    CreateOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbPeeringConnectionOutput", name: "CreateOdbPeeringConnectionOutput")
    CustomerContact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CustomerContact", name: "CustomerContact")
    CustomerContacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CustomerContacts", name: "CustomerContacts")
    DataCollectionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DataCollectionOptions", name: "DataCollectionOptions")
    DayOfWeek = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DayOfWeek", name: "DayOfWeek")
    DayOfWeekName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DayOfWeekName", name: "DayOfWeekName")
    DaysOfWeek = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DaysOfWeek", name: "DaysOfWeek")
    DbIormConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbIormConfig", name: "DbIormConfig")
    DbIormConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DbIormConfigList", name: "DbIormConfigList")
    DbNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbNode", name: "DbNode")
    DbNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DbNodeList", name: "DbNodeList")
    DbNodeMaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DbNodeMaintenanceType", name: "DbNodeMaintenanceType")
    DbNodeResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DbNodeResourceStatus", name: "DbNodeResourceStatus")
    DbNodeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbNodeSummary", name: "DbNodeSummary")
    DbServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbServer", name: "DbServer")
    DbServerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DbServerList", name: "DbServerList")
    DbServerPatchingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbServerPatchingDetails", name: "DbServerPatchingDetails")
    DbServerPatchingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DbServerPatchingStatus", name: "DbServerPatchingStatus")
    DbServerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbServerSummary", name: "DbServerSummary")
    DbSystemShapeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DbSystemShapeList", name: "DbSystemShapeList")
    DbSystemShapeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DbSystemShapeSummary", name: "DbSystemShapeSummary")
    DeleteCloudAutonomousVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudAutonomousVmClusterInput", name: "DeleteCloudAutonomousVmClusterInput")
    DeleteCloudAutonomousVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudAutonomousVmClusterOutput", name: "DeleteCloudAutonomousVmClusterOutput")
    DeleteCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudExadataInfrastructureInput", name: "DeleteCloudExadataInfrastructureInput")
    DeleteCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudExadataInfrastructureOutput", name: "DeleteCloudExadataInfrastructureOutput")
    DeleteCloudVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudVmClusterInput", name: "DeleteCloudVmClusterInput")
    DeleteCloudVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudVmClusterOutput", name: "DeleteCloudVmClusterOutput")
    DeleteOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbNetworkInput", name: "DeleteOdbNetworkInput")
    DeleteOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbNetworkOutput", name: "DeleteOdbNetworkOutput")
    DeleteOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbPeeringConnectionInput", name: "DeleteOdbPeeringConnectionInput")
    DeleteOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbPeeringConnectionOutput", name: "DeleteOdbPeeringConnectionOutput")
    DiskRedundancy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DiskRedundancy", name: "DiskRedundancy")
    ExadataIormConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExadataIormConfig", name: "ExadataIormConfig")
    GeneralInputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#GeneralInputString", name: "GeneralInputString", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\/.=-]+$"})
    GetCloudAutonomousVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudAutonomousVmClusterInput", name: "GetCloudAutonomousVmClusterInput")
    GetCloudAutonomousVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudAutonomousVmClusterOutput", name: "GetCloudAutonomousVmClusterOutput")
    GetCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureInput", name: "GetCloudExadataInfrastructureInput")
    GetCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureOutput", name: "GetCloudExadataInfrastructureOutput")
    GetCloudExadataInfrastructureUnallocatedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureUnallocatedResourcesInput", name: "GetCloudExadataInfrastructureUnallocatedResourcesInput")
    GetCloudExadataInfrastructureUnallocatedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureUnallocatedResourcesOutput", name: "GetCloudExadataInfrastructureUnallocatedResourcesOutput")
    GetCloudVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudVmClusterInput", name: "GetCloudVmClusterInput")
    GetCloudVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudVmClusterOutput", name: "GetCloudVmClusterOutput")
    GetDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbNodeInput", name: "GetDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "cloudVmClusterId"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "dbNodeId"}}]})
    GetDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbNodeOutput", name: "GetDbNodeOutput")
    GetDbServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbServerInput", name: "GetDbServerInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "cloudExadataInfrastructureId"}}]})
    GetDbServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbServerOutput", name: "GetDbServerOutput")
    GetOciOnboardingStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOciOnboardingStatusInput", name: "GetOciOnboardingStatusInput")
    GetOciOnboardingStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOciOnboardingStatusOutput", name: "GetOciOnboardingStatusOutput")
    GetOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbNetworkInput", name: "GetOdbNetworkInput")
    GetOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbNetworkOutput", name: "GetOdbNetworkOutput")
    GetOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbPeeringConnectionInput", name: "GetOdbPeeringConnectionInput")
    GetOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbPeeringConnectionOutput", name: "GetOdbPeeringConnectionOutput")
    GiVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#GiVersionList", name: "GiVersionList")
    GiVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GiVersionSummary", name: "GiVersionSummary")
    HoursOfDay = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#HoursOfDay", name: "HoursOfDay")
    InitializeServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#InitializeServiceInput", name: "InitializeServiceInput")
    InitializeServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#InitializeServiceOutput", name: "InitializeServiceOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IormLifecycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#IormLifecycleState", name: "IormLifecycleState")
    LicenseModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#LicenseModel", name: "LicenseModel")
    ListAutonomousVirtualMachinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousVirtualMachinesInput", name: "ListAutonomousVirtualMachinesInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource"}]})
    ListAutonomousVirtualMachinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousVirtualMachinesOutput", name: "ListAutonomousVirtualMachinesOutput")
    ListCloudAutonomousVmClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudAutonomousVmClustersInput", name: "ListCloudAutonomousVmClustersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}]})
    ListCloudAutonomousVmClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudAutonomousVmClustersOutput", name: "ListCloudAutonomousVmClustersOutput")
    ListCloudExadataInfrastructuresInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudExadataInfrastructuresInput", name: "ListCloudExadataInfrastructuresInput")
    ListCloudExadataInfrastructuresOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudExadataInfrastructuresOutput", name: "ListCloudExadataInfrastructuresOutput")
    ListCloudVmClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudVmClustersInput", name: "ListCloudVmClustersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}]})
    ListCloudVmClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudVmClustersOutput", name: "ListCloudVmClustersOutput")
    ListDbNodesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbNodesInput", name: "ListDbNodesInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource"}]})
    ListDbNodesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbNodesOutput", name: "ListDbNodesOutput")
    ListDbServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbServersInput", name: "ListDbServersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "cloudExadataInfrastructureId"}}]})
    ListDbServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbServersOutput", name: "ListDbServersOutput")
    ListDbSystemShapesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbSystemShapesInput", name: "ListDbSystemShapesInput")
    ListDbSystemShapesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbSystemShapesOutput", name: "ListDbSystemShapesOutput")
    ListGiVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListGiVersionsInput", name: "ListGiVersionsInput")
    ListGiVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListGiVersionsOutput", name: "ListGiVersionsOutput")
    ListOdbNetworksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbNetworksInput", name: "ListOdbNetworksInput")
    ListOdbNetworksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbNetworksOutput", name: "ListOdbNetworksOutput")
    ListOdbPeeringConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbPeeringConnectionsInput", name: "ListOdbPeeringConnectionsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    ListOdbPeeringConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbPeeringConnectionsOutput", name: "ListOdbPeeringConnectionsOutput")
    ListSystemVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListSystemVersionsInput", name: "ListSystemVersionsInput")
    ListSystemVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListSystemVersionsOutput", name: "ListSystemVersionsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbPeeringConnectionResource", "ids" => {"odbPeeringConnectionId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaintenanceWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#MaintenanceWindow", name: "MaintenanceWindow")
    ManagedResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ManagedResourceStatus", name: "ManagedResourceStatus")
    ManagedS3BackupAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ManagedS3BackupAccess", name: "ManagedS3BackupAccess")
    ManagedServices = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ManagedServices", name: "ManagedServices")
    Month = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#Month", name: "Month")
    MonthName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#MonthName", name: "MonthName")
    Months = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#Months", name: "Months")
    Objective = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#Objective", name: "Objective")
    OciDnsForwardingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OciDnsForwardingConfig", name: "OciDnsForwardingConfig")
    OciDnsForwardingConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OciDnsForwardingConfigList", name: "OciDnsForwardingConfigList")
    OciOnboardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#OciOnboardingStatus", name: "OciOnboardingStatus")
    OdbNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbNetwork", name: "OdbNetwork")
    OdbNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OdbNetworkList", name: "OdbNetworkList")
    OdbNetworkSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbNetworkSummary", name: "OdbNetworkSummary")
    OdbPeeringConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbPeeringConnection", name: "OdbPeeringConnection")
    OdbPeeringConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OdbPeeringConnectionList", name: "OdbPeeringConnectionList")
    OdbPeeringConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbPeeringConnectionSummary", name: "OdbPeeringConnectionSummary")
    PatchingModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#PatchingModeType", name: "PatchingModeType")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 3, "max" => 20480}})
    PreferenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#PreferenceType", name: "PreferenceType")
    RebootDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RebootDbNodeInput", name: "RebootDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "cloudVmClusterId"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "dbNodeId"}}]})
    RebootDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RebootDbNodeOutput", name: "RebootDbNodeOutput")
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.odb#RequestTagMap", name: "RequestTagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):[a-z0-9-]+:[a-z0-9-]*:[0-9]+:[a-z0-9-]+/[a-z0-9-_]{6,64}$"})
    ResourceDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceDisplayName", name: "ResourceDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_~.-]+$"})
    ResourceIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceIdOrArn", name: "ResourceIdOrArn", traits: {"smithy.api#length" => {"min" => 6, "max" => 2048}, "smithy.api#pattern" => "^(arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):[a-z0-9-]+:[a-z0-9-]*:[0-9]+:[a-z0-9-]+/[a-zA-Z0-9_~.-]{6,64}|[a-zA-Z0-9_~.-]{6,64})$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ResourceStatus", name: "ResourceStatus")
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.odb#ResponseTagMap", name: "ResponseTagMap", traits: {"smithy.api#length" => {"max" => 200}})
    S3Access = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#S3Access", name: "S3Access")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    SensitiveStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#SensitiveStringList", name: "SensitiveStringList")
    ServiceNetworkEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ServiceNetworkEndpoint", name: "ServiceNetworkEndpoint")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShapeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ShapeType", name: "ShapeType")
    StartDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StartDbNodeInput", name: "StartDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "cloudVmClusterId"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "dbNodeId"}}]})
    StartDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StartDbNodeOutput", name: "StartDbNodeOutput")
    StopDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StopDbNodeInput", name: "StopDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "cloudVmClusterId"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "dbNodeId"}}]})
    StopDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StopDbNodeOutput", name: "StopDbNodeOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#StringList", name: "StringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SystemVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#SystemVersionList", name: "SystemVersionList")
    SystemVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#SystemVersionSummary", name: "SystemVersionSummary")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbPeeringConnectionResource", "ids" => {"odbPeeringConnectionId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbPeeringConnectionResource", "ids" => {"odbPeeringConnectionId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateCloudExadataInfrastructureInput", name: "UpdateCloudExadataInfrastructureInput")
    UpdateCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateCloudExadataInfrastructureOutput", name: "UpdateCloudExadataInfrastructureOutput")
    UpdateOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateOdbNetworkInput", name: "UpdateOdbNetworkInput")
    UpdateOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateOdbNetworkOutput", name: "UpdateOdbNetworkOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ValidationExceptionReason", name: "ValidationExceptionReason")
    VpcEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#VpcEndpointType", name: "VpcEndpointType")
    WeeksOfMonth = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#WeeksOfMonth", name: "WeeksOfMonth")
    ZeroEtlAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ZeroEtlAccess", name: "ZeroEtlAccess")

    AcceptMarketplaceRegistrationInput.add_member(:marketplace_registration_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "marketplaceRegistrationToken", traits: {"smithy.api#required" => {}}))
    AcceptMarketplaceRegistrationInput.type = Types::AcceptMarketplaceRegistrationInput
    AcceptMarketplaceRegistrationOutput.type = Types::AcceptMarketplaceRegistrationOutput
    Access.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Access.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AutonomousVirtualMachineList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousVirtualMachineSummary)
    AutonomousVirtualMachineSummary.add_member(:autonomous_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "autonomousVirtualMachineId"))
    AutonomousVirtualMachineSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    AutonomousVirtualMachineSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    AutonomousVirtualMachineSummary.add_member(:vm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vmName"))
    AutonomousVirtualMachineSummary.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbServerId"))
    AutonomousVirtualMachineSummary.add_member(:db_server_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbServerDisplayName"))
    AutonomousVirtualMachineSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    AutonomousVirtualMachineSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    AutonomousVirtualMachineSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    AutonomousVirtualMachineSummary.add_member(:client_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientIpAddress"))
    AutonomousVirtualMachineSummary.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudAutonomousVmClusterId"))
    AutonomousVirtualMachineSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    AutonomousVirtualMachineSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    AutonomousVirtualMachineSummary.type = Types::AutonomousVirtualMachineSummary
    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudAutonomousVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmCluster.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudAutonomousVmCluster.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    CloudAutonomousVmCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    CloudAutonomousVmCluster.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName"))
    CloudAutonomousVmCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CloudAutonomousVmCluster.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CloudAutonomousVmCluster.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmCluster.add_member(:autonomous_data_storage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "autonomousDataStoragePercentage"))
    CloudAutonomousVmCluster.add_member(:autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "autonomousDataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:available_autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "availableAutonomousDataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:available_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:available_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "availableCpus"))
    CloudAutonomousVmCluster.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    CloudAutonomousVmCluster.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    CloudAutonomousVmCluster.add_member(:cpu_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCountPerNode"))
    CloudAutonomousVmCluster.add_member(:cpu_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "cpuPercentage"))
    CloudAutonomousVmCluster.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInGBs"))
    CloudAutonomousVmCluster.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudAutonomousVmCluster.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    CloudAutonomousVmCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    CloudAutonomousVmCluster.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "domain"))
    CloudAutonomousVmCluster.add_member(:exadata_storage_in_t_bs_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "exadataStorageInTBsLowestScaledValue"))
    CloudAutonomousVmCluster.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    CloudAutonomousVmCluster.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    CloudAutonomousVmCluster.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociUrl"))
    CloudAutonomousVmCluster.add_member(:is_mtls_enabled_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isMtlsEnabledVmCluster"))
    CloudAutonomousVmCluster.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, location_name: "licenseModel"))
    CloudAutonomousVmCluster.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudAutonomousVmCluster.add_member(:max_acds_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxAcdsLowestScaledValue"))
    CloudAutonomousVmCluster.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memoryPerOracleComputeUnitInGBs"))
    CloudAutonomousVmCluster.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CloudAutonomousVmCluster.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "nodeCount"))
    CloudAutonomousVmCluster.add_member(:non_provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "nonProvisionableAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "provisionableAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisioned_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "provisionedAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisioned_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "provisionedCpus"))
    CloudAutonomousVmCluster.add_member(:reclaimable_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "reclaimableCpus"))
    CloudAutonomousVmCluster.add_member(:reserved_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "reservedCpus"))
    CloudAutonomousVmCluster.add_member(:scan_listener_port_non_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortNonTls"))
    CloudAutonomousVmCluster.add_member(:scan_listener_port_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortTls"))
    CloudAutonomousVmCluster.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    CloudAutonomousVmCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmCluster.add_member(:time_database_ssl_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "timeDatabaseSslCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmCluster.add_member(:time_ords_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "timeOrdsCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmCluster.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeZone"))
    CloudAutonomousVmCluster.add_member(:total_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalContainerDatabases"))
    CloudAutonomousVmCluster.type = Types::CloudAutonomousVmCluster
    CloudAutonomousVmClusterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterSummary)
    CloudAutonomousVmClusterResourceDetails.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmClusterResourceDetails.add_member(:unallocated_adb_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "unallocatedAdbStorageInTBs"))
    CloudAutonomousVmClusterResourceDetails.type = Types::CloudAutonomousVmClusterResourceDetails
    CloudAutonomousVmClusterResourceDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterResourceDetails)
    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudAutonomousVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmClusterSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudAutonomousVmClusterSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    CloudAutonomousVmClusterSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    CloudAutonomousVmClusterSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName"))
    CloudAutonomousVmClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CloudAutonomousVmClusterSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmClusterSummary.add_member(:autonomous_data_storage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "autonomousDataStoragePercentage"))
    CloudAutonomousVmClusterSummary.add_member(:autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "autonomousDataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:available_autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "availableAutonomousDataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:available_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:available_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "availableCpus"))
    CloudAutonomousVmClusterSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCountPerNode"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "cpuPercentage"))
    CloudAutonomousVmClusterSummary.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    CloudAutonomousVmClusterSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    CloudAutonomousVmClusterSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "domain"))
    CloudAutonomousVmClusterSummary.add_member(:exadata_storage_in_t_bs_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "exadataStorageInTBsLowestScaledValue"))
    CloudAutonomousVmClusterSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    CloudAutonomousVmClusterSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    CloudAutonomousVmClusterSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociUrl"))
    CloudAutonomousVmClusterSummary.add_member(:is_mtls_enabled_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isMtlsEnabledVmCluster"))
    CloudAutonomousVmClusterSummary.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, location_name: "licenseModel"))
    CloudAutonomousVmClusterSummary.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudAutonomousVmClusterSummary.add_member(:max_acds_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxAcdsLowestScaledValue"))
    CloudAutonomousVmClusterSummary.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memoryPerOracleComputeUnitInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "nodeCount"))
    CloudAutonomousVmClusterSummary.add_member(:non_provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "nonProvisionableAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "provisionableAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisioned_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "provisionedAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisioned_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "provisionedCpus"))
    CloudAutonomousVmClusterSummary.add_member(:reclaimable_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "reclaimableCpus"))
    CloudAutonomousVmClusterSummary.add_member(:reserved_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "reservedCpus"))
    CloudAutonomousVmClusterSummary.add_member(:scan_listener_port_non_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortNonTls"))
    CloudAutonomousVmClusterSummary.add_member(:scan_listener_port_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortTls"))
    CloudAutonomousVmClusterSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    CloudAutonomousVmClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmClusterSummary.add_member(:time_database_ssl_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "timeDatabaseSslCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmClusterSummary.add_member(:time_ords_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "timeOrdsCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmClusterSummary.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeZone"))
    CloudAutonomousVmClusterSummary.add_member(:total_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalContainerDatabases"))
    CloudAutonomousVmClusterSummary.type = Types::CloudAutonomousVmClusterSummary
    CloudExadataInfrastructure.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CloudExadataInfrastructure.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CloudExadataInfrastructure.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CloudExadataInfrastructure.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CloudExadataInfrastructure.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureArn"))
    CloudExadataInfrastructure.add_member(:activated_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "activatedStorageCount"))
    CloudExadataInfrastructure.add_member(:additional_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "additionalStorageCount"))
    CloudExadataInfrastructure.add_member(:available_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone"))
    CloudExadataInfrastructure.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId"))
    CloudExadataInfrastructure.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "computeCount"))
    CloudExadataInfrastructure.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCount"))
    CloudExadataInfrastructure.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CloudExadataInfrastructure.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CloudExadataInfrastructure.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbServerVersion"))
    CloudExadataInfrastructure.add_member(:last_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lastMaintenanceRunId"))
    CloudExadataInfrastructure.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudExadataInfrastructure.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpuCount"))
    CloudExadataInfrastructure.add_member(:max_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "maxDataStorageInTBs"))
    CloudExadataInfrastructure.add_member(:max_db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDbNodeStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxMemoryInGBs"))
    CloudExadataInfrastructure.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CloudExadataInfrastructure.add_member(:monthly_db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "monthlyDbServerVersion"))
    CloudExadataInfrastructure.add_member(:monthly_storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "monthlyStorageServerVersion"))
    CloudExadataInfrastructure.add_member(:next_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextMaintenanceRunId"))
    CloudExadataInfrastructure.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    CloudExadataInfrastructure.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociUrl"))
    CloudExadataInfrastructure.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    CloudExadataInfrastructure.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    CloudExadataInfrastructure.add_member(:storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCount"))
    CloudExadataInfrastructure.add_member(:storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "storageServerVersion"))
    CloudExadataInfrastructure.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudExadataInfrastructure.add_member(:total_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    CloudExadataInfrastructure.add_member(:database_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "databaseServerType"))
    CloudExadataInfrastructure.add_member(:storage_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "storageServerType"))
    CloudExadataInfrastructure.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    CloudExadataInfrastructure.type = Types::CloudExadataInfrastructure
    CloudExadataInfrastructureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructureSummary)
    CloudExadataInfrastructureSummary.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CloudExadataInfrastructureSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CloudExadataInfrastructureSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CloudExadataInfrastructureSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CloudExadataInfrastructureSummary.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureArn"))
    CloudExadataInfrastructureSummary.add_member(:activated_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "activatedStorageCount"))
    CloudExadataInfrastructureSummary.add_member(:additional_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "additionalStorageCount"))
    CloudExadataInfrastructureSummary.add_member(:available_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone"))
    CloudExadataInfrastructureSummary.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId"))
    CloudExadataInfrastructureSummary.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "computeCount"))
    CloudExadataInfrastructureSummary.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCount"))
    CloudExadataInfrastructureSummary.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CloudExadataInfrastructureSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CloudExadataInfrastructureSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:last_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lastMaintenanceRunId"))
    CloudExadataInfrastructureSummary.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudExadataInfrastructureSummary.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpuCount"))
    CloudExadataInfrastructureSummary.add_member(:max_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "maxDataStorageInTBs"))
    CloudExadataInfrastructureSummary.add_member(:max_db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDbNodeStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxMemoryInGBs"))
    CloudExadataInfrastructureSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:monthly_db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "monthlyDbServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:monthly_storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "monthlyStorageServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:next_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextMaintenanceRunId"))
    CloudExadataInfrastructureSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    CloudExadataInfrastructureSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociUrl"))
    CloudExadataInfrastructureSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    CloudExadataInfrastructureSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    CloudExadataInfrastructureSummary.add_member(:storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCount"))
    CloudExadataInfrastructureSummary.add_member(:storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "storageServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudExadataInfrastructureSummary.add_member(:total_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    CloudExadataInfrastructureSummary.add_member(:database_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "databaseServerType"))
    CloudExadataInfrastructureSummary.add_member(:storage_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "storageServerType"))
    CloudExadataInfrastructureSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    CloudExadataInfrastructureSummary.type = Types::CloudExadataInfrastructureSummary
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_autonomous_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterResourceDetailsList, location_name: "cloudAutonomousVmClusters"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_exadata_infrastructure_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureDisplayName"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:exadata_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "exadataStorageInTBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:local_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "localStorageInGBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memoryInGBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:ocpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ocpus"))
    CloudExadataInfrastructureUnallocatedResources.type = Types::CloudExadataInfrastructureUnallocatedResources
    CloudVmCluster.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudVmCluster.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CloudVmCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CloudVmCluster.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CloudVmCluster.add_member(:cloud_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudVmClusterArn"))
    CloudVmCluster.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureId"))
    CloudVmCluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName"))
    CloudVmCluster.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    CloudVmCluster.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CloudVmCluster.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CloudVmCluster.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudVmCluster.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    CloudVmCluster.add_member(:disk_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskRedundancy, location_name: "diskRedundancy"))
    CloudVmCluster.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "giVersion"))
    CloudVmCluster.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    CloudVmCluster.add_member(:iorm_config_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadataIormConfig, location_name: "iormConfigCache"))
    CloudVmCluster.add_member(:is_local_backup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isLocalBackupEnabled"))
    CloudVmCluster.add_member(:is_sparse_diskgroup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isSparseDiskgroupEnabled"))
    CloudVmCluster.add_member(:last_update_history_entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lastUpdateHistoryEntryId"))
    CloudVmCluster.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, location_name: "licenseModel"))
    CloudVmCluster.add_member(:listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "listenerPort"))
    CloudVmCluster.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CloudVmCluster.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "nodeCount"))
    CloudVmCluster.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    CloudVmCluster.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    CloudVmCluster.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociUrl"))
    CloudVmCluster.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "domain"))
    CloudVmCluster.add_member(:scan_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scanDnsName"))
    CloudVmCluster.add_member(:scan_dns_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scanDnsRecordId"))
    CloudVmCluster.add_member(:scan_ip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "scanIpIds"))
    CloudVmCluster.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    CloudVmCluster.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringList, location_name: "sshPublicKeys"))
    CloudVmCluster.add_member(:storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageSizeInGBs"))
    CloudVmCluster.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "systemVersion"))
    CloudVmCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudVmCluster.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeZone"))
    CloudVmCluster.add_member(:vip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "vipIds"))
    CloudVmCluster.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudVmCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    CloudVmCluster.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    CloudVmCluster.type = Types::CloudVmCluster
    CloudVmClusterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudVmClusterSummary)
    CloudVmClusterSummary.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudVmClusterSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CloudVmClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CloudVmClusterSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CloudVmClusterSummary.add_member(:cloud_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudVmClusterArn"))
    CloudVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureId"))
    CloudVmClusterSummary.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName"))
    CloudVmClusterSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    CloudVmClusterSummary.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CloudVmClusterSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CloudVmClusterSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudVmClusterSummary.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    CloudVmClusterSummary.add_member(:disk_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskRedundancy, location_name: "diskRedundancy"))
    CloudVmClusterSummary.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "giVersion"))
    CloudVmClusterSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    CloudVmClusterSummary.add_member(:iorm_config_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadataIormConfig, location_name: "iormConfigCache"))
    CloudVmClusterSummary.add_member(:is_local_backup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isLocalBackupEnabled"))
    CloudVmClusterSummary.add_member(:is_sparse_diskgroup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isSparseDiskgroupEnabled"))
    CloudVmClusterSummary.add_member(:last_update_history_entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lastUpdateHistoryEntryId"))
    CloudVmClusterSummary.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, location_name: "licenseModel"))
    CloudVmClusterSummary.add_member(:listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "listenerPort"))
    CloudVmClusterSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CloudVmClusterSummary.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "nodeCount"))
    CloudVmClusterSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    CloudVmClusterSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    CloudVmClusterSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociUrl"))
    CloudVmClusterSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "domain"))
    CloudVmClusterSummary.add_member(:scan_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scanDnsName"))
    CloudVmClusterSummary.add_member(:scan_dns_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scanDnsRecordId"))
    CloudVmClusterSummary.add_member(:scan_ip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "scanIpIds"))
    CloudVmClusterSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    CloudVmClusterSummary.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringList, location_name: "sshPublicKeys"))
    CloudVmClusterSummary.add_member(:storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageSizeInGBs"))
    CloudVmClusterSummary.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "systemVersion"))
    CloudVmClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudVmClusterSummary.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeZone"))
    CloudVmClusterSummary.add_member(:vip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "vipIds"))
    CloudVmClusterSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudVmClusterSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    CloudVmClusterSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    CloudVmClusterSummary.type = Types::CloudVmClusterSummary
    ComputeModel.add_member(:ecpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECPU", traits: {"smithy.api#enumValue" => "ECPU"}))
    ComputeModel.add_member(:ocpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OCPU", traits: {"smithy.api#enumValue" => "OCPU"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateCloudAutonomousVmClusterInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateCloudAutonomousVmClusterInput.add_member(:autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "autonomousDataStorageSizeInTBs", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:cpu_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCountPerNode", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    CreateCloudAutonomousVmClusterInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}}))
    CreateCloudAutonomousVmClusterInput.add_member(:is_mtls_enabled_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isMtlsEnabledVmCluster"))
    CreateCloudAutonomousVmClusterInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, location_name: "licenseModel"))
    CreateCloudAutonomousVmClusterInput.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CreateCloudAutonomousVmClusterInput.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memoryPerOracleComputeUnitInGBs", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:scan_listener_port_non_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortNonTls", traits: {"smithy.api#default" => 1521, "smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateCloudAutonomousVmClusterInput.add_member(:scan_listener_port_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortTls", traits: {"smithy.api#default" => 2484, "smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateCloudAutonomousVmClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateCloudAutonomousVmClusterInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudAutonomousVmClusterInput.add_member(:total_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalContainerDatabases", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.type = Types::CreateCloudAutonomousVmClusterInput
    CreateCloudAutonomousVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CreateCloudAutonomousVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CreateCloudAutonomousVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CreateCloudAutonomousVmClusterOutput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudAutonomousVmClusterId", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterOutput.type = Types::CreateCloudAutonomousVmClusterOutput
    CreateCloudExadataInfrastructureInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateCloudExadataInfrastructureInput.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "computeCount", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CreateCloudExadataInfrastructureInput.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CreateCloudExadataInfrastructureInput.add_member(:storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCount", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateCloudExadataInfrastructureInput.add_member(:database_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "databaseServerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.add_member(:storage_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "storageServerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.type = Types::CreateCloudExadataInfrastructureInput
    CreateCloudExadataInfrastructureOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CreateCloudExadataInfrastructureOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CreateCloudExadataInfrastructureOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CreateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureOutput.type = Types::CreateCloudExadataInfrastructureOutput
    CreateCloudVmClusterInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 368}, "smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "giVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$", "smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "sshPublicKeys", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]*$"}))
    CreateCloudVmClusterInput.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CreateCloudVmClusterInput.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "dataStorageSizeInTBs"))
    CreateCloudVmClusterInput.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    CreateCloudVmClusterInput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    CreateCloudVmClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateCloudVmClusterInput.add_member(:is_local_backup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isLocalBackupEnabled"))
    CreateCloudVmClusterInput.add_member(:is_sparse_diskgroup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isSparseDiskgroupEnabled"))
    CreateCloudVmClusterInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, location_name: "licenseModel"))
    CreateCloudVmClusterInput.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    CreateCloudVmClusterInput.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "systemVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudVmClusterInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudVmClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateCloudVmClusterInput.add_member(:scan_listener_port_tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "scanListenerPortTcp", traits: {"smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateCloudVmClusterInput.type = Types::CreateCloudVmClusterInput
    CreateCloudVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CreateCloudVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CreateCloudVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CreateCloudVmClusterOutput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudVmClusterId", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterOutput.type = Types::CreateCloudVmClusterOutput
    CreateOdbNetworkInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateOdbNetworkInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateOdbNetworkInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateOdbNetworkInput.add_member(:client_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 43}, "smithy.api#required" => {}}))
    CreateOdbNetworkInput.add_member(:backup_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 43}}))
    CreateOdbNetworkInput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "customDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateOdbNetworkInput.add_member(:default_dns_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "defaultDnsPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*$"}))
    CreateOdbNetworkInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateOdbNetworkInput.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, location_name: "s3Access"))
    CreateOdbNetworkInput.add_member(:zero_etl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, location_name: "zeroEtlAccess"))
    CreateOdbNetworkInput.add_member(:s3_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "s3PolicyDocument"))
    CreateOdbNetworkInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateOdbNetworkInput.type = Types::CreateOdbNetworkInput
    CreateOdbNetworkOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CreateOdbNetworkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CreateOdbNetworkOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CreateOdbNetworkOutput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateOdbNetworkOutput.type = Types::CreateOdbNetworkOutput
    CreateOdbPeeringConnectionInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateOdbPeeringConnectionInput.add_member(:peer_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "peerNetworkId", traits: {"smithy.api#required" => {}}))
    CreateOdbPeeringConnectionInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName"))
    CreateOdbPeeringConnectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateOdbPeeringConnectionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateOdbPeeringConnectionInput.type = Types::CreateOdbPeeringConnectionInput
    CreateOdbPeeringConnectionOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    CreateOdbPeeringConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    CreateOdbPeeringConnectionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    CreateOdbPeeringConnectionOutput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    CreateOdbPeeringConnectionOutput.type = Types::CreateOdbPeeringConnectionOutput
    CustomerContact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, location_name: "email", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}}))
    CustomerContact.type = Types::CustomerContact
    CustomerContacts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContact)
    DataCollectionOptions.add_member(:is_diagnostics_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isDiagnosticsEventsEnabled"))
    DataCollectionOptions.add_member(:is_health_monitoring_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isHealthMonitoringEnabled"))
    DataCollectionOptions.add_member(:is_incident_logs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isIncidentLogsEnabled"))
    DataCollectionOptions.type = Types::DataCollectionOptions
    DayOfWeek.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeekName, location_name: "name"))
    DayOfWeek.type = Types::DayOfWeek
    DayOfWeekName.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeekName.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeekName.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeekName.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeekName.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeekName.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeekName.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DaysOfWeek.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek)
    DbIormConfig.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbName"))
    DbIormConfig.add_member(:flash_cache_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "flashCacheLimit"))
    DbIormConfig.add_member(:share, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "share"))
    DbIormConfig.type = Types::DbIormConfig
    DbIormConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbIormConfig)
    DbNode.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbNodeId"))
    DbNode.add_member(:db_node_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "dbNodeArn"))
    DbNode.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, location_name: "status"))
    DbNode.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    DbNode.add_member(:additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "additionalDetails"))
    DbNode.add_member(:backup_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupIpId"))
    DbNode.add_member(:backup_vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupVnic2Id"))
    DbNode.add_member(:backup_vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupVnicId"))
    DbNode.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    DbNode.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbNode.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbServerId"))
    DbNode.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbSystemId"))
    DbNode.add_member(:fault_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "faultDomain"))
    DbNode.add_member(:host_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostIpId"))
    DbNode.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    DbNode.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    DbNode.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    DbNode.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeMaintenanceType, location_name: "maintenanceType"))
    DbNode.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    DbNode.add_member(:software_storage_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "softwareStorageSizeInGB"))
    DbNode.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbNode.add_member(:time_maintenance_window_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeMaintenanceWindowEnd"))
    DbNode.add_member(:time_maintenance_window_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeMaintenanceWindowStart"))
    DbNode.add_member(:total_cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalCpuCoreCount"))
    DbNode.add_member(:vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnic2Id"))
    DbNode.add_member(:vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnicId"))
    DbNode.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "privateIpAddress"))
    DbNode.add_member(:floating_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "floatingIpAddress"))
    DbNode.type = Types::DbNode
    DbNodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeSummary)
    DbNodeMaintenanceType.add_member(:vmdb_reboot_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VMDB_REBOOT_MIGRATION", traits: {"smithy.api#enumValue" => "VMDB_REBOOT_MIGRATION"}))
    DbNodeResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DbNodeResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DbNodeResourceStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    DbNodeResourceStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    DbNodeResourceStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    DbNodeResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DbNodeResourceStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    DbNodeResourceStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DbNodeResourceStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    DbNodeSummary.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbNodeId"))
    DbNodeSummary.add_member(:db_node_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "dbNodeArn"))
    DbNodeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, location_name: "status"))
    DbNodeSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    DbNodeSummary.add_member(:additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "additionalDetails"))
    DbNodeSummary.add_member(:backup_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupIpId"))
    DbNodeSummary.add_member(:backup_vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupVnic2Id"))
    DbNodeSummary.add_member(:backup_vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupVnicId"))
    DbNodeSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    DbNodeSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbNodeSummary.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbServerId"))
    DbNodeSummary.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbSystemId"))
    DbNodeSummary.add_member(:fault_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "faultDomain"))
    DbNodeSummary.add_member(:host_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostIpId"))
    DbNodeSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "hostname"))
    DbNodeSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    DbNodeSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    DbNodeSummary.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeMaintenanceType, location_name: "maintenanceType"))
    DbNodeSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    DbNodeSummary.add_member(:software_storage_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "softwareStorageSizeInGB"))
    DbNodeSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbNodeSummary.add_member(:time_maintenance_window_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeMaintenanceWindowEnd"))
    DbNodeSummary.add_member(:time_maintenance_window_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timeMaintenanceWindowStart"))
    DbNodeSummary.add_member(:total_cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalCpuCoreCount"))
    DbNodeSummary.add_member(:vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnic2Id"))
    DbNodeSummary.add_member(:vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnicId"))
    DbNodeSummary.type = Types::DbNodeSummary
    DbServer.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbServerId"))
    DbServer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    DbServer.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    DbServer.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    DbServer.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbServer.add_member(:db_server_patching_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerPatchingDetails, location_name: "dbServerPatchingDetails"))
    DbServer.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    DbServer.add_member(:exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "exadataInfrastructureId"))
    DbServer.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    DbServer.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    DbServer.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpuCount"))
    DbServer.add_member(:max_db_node_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDbNodeStorageInGBs"))
    DbServer.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxMemoryInGBs"))
    DbServer.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    DbServer.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    DbServer.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbServer.add_member(:vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "vmClusterIds"))
    DbServer.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    DbServer.add_member(:autonomous_vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "autonomousVmClusterIds"))
    DbServer.add_member(:autonomous_virtual_machine_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "autonomousVirtualMachineIds"))
    DbServer.type = Types::DbServer
    DbServerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerSummary)
    DbServerPatchingDetails.add_member(:estimated_patch_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "estimatedPatchDuration"))
    DbServerPatchingDetails.add_member(:patching_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerPatchingStatus, location_name: "patchingStatus"))
    DbServerPatchingDetails.add_member(:time_patching_ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timePatchingEnded"))
    DbServerPatchingDetails.add_member(:time_patching_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "timePatchingStarted"))
    DbServerPatchingDetails.type = Types::DbServerPatchingDetails
    DbServerPatchingStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    DbServerPatchingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DbServerPatchingStatus.add_member(:maintenance_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAINTENANCE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "MAINTENANCE_IN_PROGRESS"}))
    DbServerPatchingStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    DbServerSummary.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbServerId"))
    DbServerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    DbServerSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    DbServerSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpuCoreCount"))
    DbServerSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbServerSummary.add_member(:db_server_patching_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerPatchingDetails, location_name: "dbServerPatchingDetails"))
    DbServerSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    DbServerSummary.add_member(:exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "exadataInfrastructureId"))
    DbServerSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ocid"))
    DbServerSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    DbServerSummary.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpuCount"))
    DbServerSummary.add_member(:max_db_node_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDbNodeStorageInGBs"))
    DbServerSummary.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxMemoryInGBs"))
    DbServerSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memorySizeInGBs"))
    DbServerSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    DbServerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbServerSummary.add_member(:vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "vmClusterIds"))
    DbServerSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    DbServerSummary.add_member(:autonomous_vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "autonomousVmClusterIds"))
    DbServerSummary.add_member(:autonomous_virtual_machine_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "autonomousVirtualMachineIds"))
    DbServerSummary.type = Types::DbServerSummary
    DbSystemShapeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbSystemShapeSummary)
    DbSystemShapeSummary.add_member(:available_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableCoreCount"))
    DbSystemShapeSummary.add_member(:available_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableCoreCountPerNode"))
    DbSystemShapeSummary.add_member(:available_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableDataStorageInTBs"))
    DbSystemShapeSummary.add_member(:available_data_storage_per_server_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableDataStoragePerServerInTBs"))
    DbSystemShapeSummary.add_member(:available_db_node_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableDbNodePerNodeInGBs"))
    DbSystemShapeSummary.add_member(:available_db_node_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableDbNodeStorageInGBs"))
    DbSystemShapeSummary.add_member(:available_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableMemoryInGBs"))
    DbSystemShapeSummary.add_member(:available_memory_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "availableMemoryPerNodeInGBs"))
    DbSystemShapeSummary.add_member(:core_count_increment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "coreCountIncrement"))
    DbSystemShapeSummary.add_member(:max_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxStorageCount"))
    DbSystemShapeSummary.add_member(:maximum_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maximumNodeCount"))
    DbSystemShapeSummary.add_member(:min_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minCoreCountPerNode"))
    DbSystemShapeSummary.add_member(:min_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minDataStorageInTBs"))
    DbSystemShapeSummary.add_member(:min_db_node_storage_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minDbNodeStoragePerNodeInGBs"))
    DbSystemShapeSummary.add_member(:min_memory_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minMemoryPerNodeInGBs"))
    DbSystemShapeSummary.add_member(:min_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minStorageCount"))
    DbSystemShapeSummary.add_member(:minimum_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minimumCoreCount"))
    DbSystemShapeSummary.add_member(:minimum_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minimumNodeCount"))
    DbSystemShapeSummary.add_member(:runtime_minimum_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "runtimeMinimumCoreCount"))
    DbSystemShapeSummary.add_member(:shape_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shapeFamily"))
    DbSystemShapeSummary.add_member(:shape_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeType, location_name: "shapeType"))
    DbSystemShapeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    DbSystemShapeSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, location_name: "computeModel"))
    DbSystemShapeSummary.add_member(:are_server_types_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "areServerTypesSupported"))
    DbSystemShapeSummary.type = Types::DbSystemShapeSummary
    DeleteCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudAutonomousVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudAutonomousVmClusterInput.type = Types::DeleteCloudAutonomousVmClusterInput
    DeleteCloudAutonomousVmClusterOutput.type = Types::DeleteCloudAutonomousVmClusterOutput
    DeleteCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudExadataInfrastructureInput.type = Types::DeleteCloudExadataInfrastructureInput
    DeleteCloudExadataInfrastructureOutput.type = Types::DeleteCloudExadataInfrastructureOutput
    DeleteCloudVmClusterInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudVmClusterInput.type = Types::DeleteCloudVmClusterInput
    DeleteCloudVmClusterOutput.type = Types::DeleteCloudVmClusterOutput
    DeleteOdbNetworkInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOdbNetworkInput.add_member(:delete_associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "deleteAssociatedResources", traits: {"smithy.api#required" => {}}))
    DeleteOdbNetworkInput.type = Types::DeleteOdbNetworkInput
    DeleteOdbNetworkOutput.type = Types::DeleteOdbNetworkOutput
    DeleteOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbPeeringConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOdbPeeringConnectionInput.type = Types::DeleteOdbPeeringConnectionInput
    DeleteOdbPeeringConnectionOutput.type = Types::DeleteOdbPeeringConnectionOutput
    DiskRedundancy.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    DiskRedundancy.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NORMAL", traits: {"smithy.api#enumValue" => "NORMAL"}))
    ExadataIormConfig.add_member(:db_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: DbIormConfigList, location_name: "dbPlans"))
    ExadataIormConfig.add_member(:lifecycle_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lifecycleDetails"))
    ExadataIormConfig.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: IormLifecycleState, location_name: "lifecycleState"))
    ExadataIormConfig.add_member(:objective, ::Smithy::Schema::Shapes::MemberShape.new(target: Objective, location_name: "objective"))
    ExadataIormConfig.type = Types::ExadataIormConfig
    GetCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudAutonomousVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudAutonomousVmClusterInput.type = Types::GetCloudAutonomousVmClusterInput
    GetCloudAutonomousVmClusterOutput.add_member(:cloud_autonomous_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmCluster, location_name: "cloudAutonomousVmCluster"))
    GetCloudAutonomousVmClusterOutput.type = Types::GetCloudAutonomousVmClusterOutput
    GetCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudExadataInfrastructureInput.type = Types::GetCloudExadataInfrastructureInput
    GetCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructure, location_name: "cloudExadataInfrastructure"))
    GetCloudExadataInfrastructureOutput.type = Types::GetCloudExadataInfrastructureOutput
    GetCloudExadataInfrastructureUnallocatedResourcesInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudExadataInfrastructureUnallocatedResourcesInput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dbServers"))
    GetCloudExadataInfrastructureUnallocatedResourcesInput.type = Types::GetCloudExadataInfrastructureUnallocatedResourcesInput
    GetCloudExadataInfrastructureUnallocatedResourcesOutput.add_member(:cloud_exadata_infrastructure_unallocated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructureUnallocatedResources, location_name: "cloudExadataInfrastructureUnallocatedResources"))
    GetCloudExadataInfrastructureUnallocatedResourcesOutput.type = Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput
    GetCloudVmClusterInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudVmClusterInput.type = Types::GetCloudVmClusterInput
    GetCloudVmClusterOutput.add_member(:cloud_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudVmCluster, location_name: "cloudVmCluster"))
    GetCloudVmClusterOutput.type = Types::GetCloudVmClusterOutput
    GetDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbNodeInput.type = Types::GetDbNodeInput
    GetDbNodeOutput.add_member(:db_node, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNode, location_name: "dbNode"))
    GetDbNodeOutput.type = Types::GetDbNodeOutput
    GetDbServerInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbServerInput.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbServerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbServerInput.type = Types::GetDbServerInput
    GetDbServerOutput.add_member(:db_server, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServer, location_name: "dbServer"))
    GetDbServerOutput.type = Types::GetDbServerOutput
    GetOciOnboardingStatusInput.type = Types::GetOciOnboardingStatusInput
    GetOciOnboardingStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OciOnboardingStatus, location_name: "status"))
    GetOciOnboardingStatusOutput.add_member(:existing_tenancy_activation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "existingTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:new_tenancy_activation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "newTenancyActivationLink"))
    GetOciOnboardingStatusOutput.type = Types::GetOciOnboardingStatusOutput
    GetOdbNetworkInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOdbNetworkInput.type = Types::GetOdbNetworkInput
    GetOdbNetworkOutput.add_member(:odb_network, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbNetwork, location_name: "odbNetwork"))
    GetOdbNetworkOutput.type = Types::GetOdbNetworkOutput
    GetOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbPeeringConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOdbPeeringConnectionInput.type = Types::GetOdbPeeringConnectionInput
    GetOdbPeeringConnectionOutput.add_member(:odb_peering_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbPeeringConnection, location_name: "odbPeeringConnection"))
    GetOdbPeeringConnectionOutput.type = Types::GetOdbPeeringConnectionOutput
    GiVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GiVersionSummary)
    GiVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version"))
    GiVersionSummary.type = Types::GiVersionSummary
    HoursOfDay.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer)
    InitializeServiceInput.type = Types::InitializeServiceInput
    InitializeServiceOutput.type = Types::InitializeServiceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IormLifecycleState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    IormLifecycleState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    IormLifecycleState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    IormLifecycleState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IormLifecycleState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    LicenseModel.add_member(:bring_your_own_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRING_YOUR_OWN_LICENSE", traits: {"smithy.api#enumValue" => "BRING_YOUR_OWN_LICENSE"}))
    LicenseModel.add_member(:license_included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LICENSE_INCLUDED", traits: {"smithy.api#enumValue" => "LICENSE_INCLUDED"}))
    ListAutonomousVirtualMachinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousVirtualMachinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousVirtualMachinesInput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudAutonomousVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutonomousVirtualMachinesInput.type = Types::ListAutonomousVirtualMachinesInput
    ListAutonomousVirtualMachinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListAutonomousVirtualMachinesOutput.add_member(:autonomous_virtual_machines, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousVirtualMachineList, location_name: "autonomousVirtualMachines", traits: {"smithy.api#required" => {}}))
    ListAutonomousVirtualMachinesOutput.type = Types::ListAutonomousVirtualMachinesOutput
    ListCloudAutonomousVmClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListCloudAutonomousVmClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListCloudAutonomousVmClustersInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    ListCloudAutonomousVmClustersInput.type = Types::ListCloudAutonomousVmClustersInput
    ListCloudAutonomousVmClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListCloudAutonomousVmClustersOutput.add_member(:cloud_autonomous_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterList, location_name: "cloudAutonomousVmClusters", traits: {"smithy.api#required" => {}}))
    ListCloudAutonomousVmClustersOutput.type = Types::ListCloudAutonomousVmClustersOutput
    ListCloudExadataInfrastructuresInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListCloudExadataInfrastructuresInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListCloudExadataInfrastructuresInput.type = Types::ListCloudExadataInfrastructuresInput
    ListCloudExadataInfrastructuresOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListCloudExadataInfrastructuresOutput.add_member(:cloud_exadata_infrastructures, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructureList, location_name: "cloudExadataInfrastructures", traits: {"smithy.api#required" => {}}))
    ListCloudExadataInfrastructuresOutput.type = Types::ListCloudExadataInfrastructuresOutput
    ListCloudVmClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListCloudVmClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListCloudVmClustersInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    ListCloudVmClustersInput.type = Types::ListCloudVmClustersInput
    ListCloudVmClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListCloudVmClustersOutput.add_member(:cloud_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudVmClusterList, location_name: "cloudVmClusters", traits: {"smithy.api#required" => {}}))
    ListCloudVmClustersOutput.type = Types::ListCloudVmClustersOutput
    ListDbNodesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListDbNodesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListDbNodesInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDbNodesInput.type = Types::ListDbNodesInput
    ListDbNodesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListDbNodesOutput.add_member(:db_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeList, location_name: "dbNodes", traits: {"smithy.api#required" => {}}))
    ListDbNodesOutput.type = Types::ListDbNodesOutput
    ListDbServersInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDbServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListDbServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListDbServersInput.type = Types::ListDbServersInput
    ListDbServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListDbServersOutput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerList, location_name: "dbServers", traits: {"smithy.api#required" => {}}))
    ListDbServersOutput.type = Types::ListDbServersOutput
    ListDbSystemShapesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListDbSystemShapesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListDbSystemShapesInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListDbSystemShapesInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListDbSystemShapesInput.type = Types::ListDbSystemShapesInput
    ListDbSystemShapesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListDbSystemShapesOutput.add_member(:db_system_shapes, ::Smithy::Schema::Shapes::MemberShape.new(target: DbSystemShapeList, location_name: "dbSystemShapes", traits: {"smithy.api#required" => {}}))
    ListDbSystemShapesOutput.type = Types::ListDbSystemShapesOutput
    ListGiVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListGiVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListGiVersionsInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListGiVersionsInput.type = Types::ListGiVersionsInput
    ListGiVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListGiVersionsOutput.add_member(:gi_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: GiVersionList, location_name: "giVersions", traits: {"smithy.api#required" => {}}))
    ListGiVersionsOutput.type = Types::ListGiVersionsOutput
    ListOdbNetworksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListOdbNetworksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListOdbNetworksInput.type = Types::ListOdbNetworksInput
    ListOdbNetworksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListOdbNetworksOutput.add_member(:odb_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbNetworkList, location_name: "odbNetworks", traits: {"smithy.api#required" => {}}))
    ListOdbNetworksOutput.type = Types::ListOdbNetworksOutput
    ListOdbPeeringConnectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListOdbPeeringConnectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListOdbPeeringConnectionsInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId"))
    ListOdbPeeringConnectionsInput.type = Types::ListOdbPeeringConnectionsInput
    ListOdbPeeringConnectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListOdbPeeringConnectionsOutput.add_member(:odb_peering_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbPeeringConnectionList, location_name: "odbPeeringConnections", traits: {"smithy.api#required" => {}}))
    ListOdbPeeringConnectionsOutput.type = Types::ListOdbPeeringConnectionsOutput
    ListSystemVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSystemVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListSystemVersionsInput.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "giVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    ListSystemVersionsInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ListSystemVersionsInput.type = Types::ListSystemVersionsInput
    ListSystemVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListSystemVersionsOutput.add_member(:system_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemVersionList, location_name: "systemVersions", traits: {"smithy.api#required" => {}}))
    ListSystemVersionsOutput.type = Types::ListSystemVersionsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceWindow.add_member(:custom_action_timeout_in_mins, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "customActionTimeoutInMins", traits: {"smithy.api#range" => {"min" => 15, "max" => 120}}))
    MaintenanceWindow.add_member(:days_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysOfWeek, location_name: "daysOfWeek"))
    MaintenanceWindow.add_member(:hours_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HoursOfDay, location_name: "hoursOfDay"))
    MaintenanceWindow.add_member(:is_custom_action_timeout_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isCustomActionTimeoutEnabled"))
    MaintenanceWindow.add_member(:lead_time_in_weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "leadTimeInWeeks", traits: {"smithy.api#range" => {"min" => 1, "max" => 4}}))
    MaintenanceWindow.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: Months, location_name: "months"))
    MaintenanceWindow.add_member(:patching_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchingModeType, location_name: "patchingMode"))
    MaintenanceWindow.add_member(:preference, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceType, location_name: "preference"))
    MaintenanceWindow.add_member(:skip_ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "skipRu"))
    MaintenanceWindow.add_member(:weeks_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeksOfMonth, location_name: "weeksOfMonth"))
    MaintenanceWindow.type = Types::MaintenanceWindow
    ManagedResourceStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedResourceStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ManagedResourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ManagedResourceStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ManagedS3BackupAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, location_name: "status"))
    ManagedS3BackupAccess.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "ipv4Addresses"))
    ManagedS3BackupAccess.type = Types::ManagedS3BackupAccess
    ManagedServices.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "serviceNetworkArn"))
    ManagedServices.add_member(:resource_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceGatewayArn"))
    ManagedServices.add_member(:managed_services_ipv4_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "managedServicesIpv4Cidrs"))
    ManagedServices.add_member(:service_network_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkEndpoint, location_name: "serviceNetworkEndpoint"))
    ManagedServices.add_member(:managed_s3_backup_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedS3BackupAccess, location_name: "managedS3BackupAccess"))
    ManagedServices.add_member(:zero_etl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroEtlAccess, location_name: "zeroEtlAccess"))
    ManagedServices.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Access, location_name: "s3Access"))
    ManagedServices.type = Types::ManagedServices
    Month.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthName, location_name: "name"))
    Month.type = Types::Month
    MonthName.add_member(:january, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JANUARY", traits: {"smithy.api#enumValue" => "JANUARY"}))
    MonthName.add_member(:february, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FEBRUARY", traits: {"smithy.api#enumValue" => "FEBRUARY"}))
    MonthName.add_member(:march, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MARCH", traits: {"smithy.api#enumValue" => "MARCH"}))
    MonthName.add_member(:april, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APRIL", traits: {"smithy.api#enumValue" => "APRIL"}))
    MonthName.add_member(:may, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAY", traits: {"smithy.api#enumValue" => "MAY"}))
    MonthName.add_member(:june, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JUNE", traits: {"smithy.api#enumValue" => "JUNE"}))
    MonthName.add_member(:july, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JULY", traits: {"smithy.api#enumValue" => "JULY"}))
    MonthName.add_member(:august, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUGUST", traits: {"smithy.api#enumValue" => "AUGUST"}))
    MonthName.add_member(:september, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEPTEMBER", traits: {"smithy.api#enumValue" => "SEPTEMBER"}))
    MonthName.add_member(:october, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OCTOBER", traits: {"smithy.api#enumValue" => "OCTOBER"}))
    MonthName.add_member(:november, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOVEMBER", traits: {"smithy.api#enumValue" => "NOVEMBER"}))
    MonthName.add_member(:december, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DECEMBER", traits: {"smithy.api#enumValue" => "DECEMBER"}))
    Months.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Month)
    Objective.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    Objective.add_member(:balanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BALANCED", traits: {"smithy.api#enumValue" => "BALANCED"}))
    Objective.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    Objective.add_member(:high_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH_THROUGHPUT", traits: {"smithy.api#enumValue" => "HIGH_THROUGHPUT"}))
    Objective.add_member(:low_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_LATENCY", traits: {"smithy.api#enumValue" => "LOW_LATENCY"}))
    OciDnsForwardingConfig.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "domainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OciDnsForwardingConfig.add_member(:oci_dns_listener_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociDnsListenerIp"))
    OciDnsForwardingConfig.type = Types::OciDnsForwardingConfig
    OciDnsForwardingConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OciDnsForwardingConfig)
    OciOnboardingStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    OciOnboardingStatus.add_member(:pending_link_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_LINK_GENERATION", traits: {"smithy.api#enumValue" => "PENDING_LINK_GENERATION"}))
    OciOnboardingStatus.add_member(:pending_customer_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CUSTOMER_ACTION", traits: {"smithy.api#enumValue" => "PENDING_CUSTOMER_ACTION"}))
    OciOnboardingStatus.add_member(:pending_initialization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_INITIALIZATION", traits: {"smithy.api#enumValue" => "PENDING_INITIALIZATION"}))
    OciOnboardingStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    OciOnboardingStatus.add_member(:active_in_home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE_IN_HOME_REGION", traits: {"smithy.api#enumValue" => "ACTIVE_IN_HOME_REGION"}))
    OciOnboardingStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OciOnboardingStatus.add_member(:active_limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE_LIMITED", traits: {"smithy.api#enumValue" => "ACTIVE_LIMITED"}))
    OciOnboardingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OciOnboardingStatus.add_member(:public_offer_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_OFFER_UNSUPPORTED", traits: {"smithy.api#enumValue" => "PUBLIC_OFFER_UNSUPPORTED"}))
    OciOnboardingStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    OciOnboardingStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    OdbNetwork.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    OdbNetwork.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    OdbNetwork.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    OdbNetwork.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    OdbNetwork.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbNetworkArn"))
    OdbNetwork.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:client_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:backup_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "customDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:default_dns_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "defaultDnsPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:peered_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "peeredCidrs"))
    OdbNetwork.add_member(:oci_network_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociNetworkAnchorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:oci_network_anchor_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociNetworkAnchorUrl"))
    OdbNetwork.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    OdbNetwork.add_member(:oci_vcn_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociVcnId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:oci_vcn_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociVcnUrl"))
    OdbNetwork.add_member(:oci_dns_forwarding_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: OciDnsForwardingConfigList, location_name: "ociDnsForwardingConfigs"))
    OdbNetwork.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbNetwork.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    OdbNetwork.add_member(:managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedServices, location_name: "managedServices"))
    OdbNetwork.type = Types::OdbNetwork
    OdbNetworkList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OdbNetworkSummary)
    OdbNetworkSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    OdbNetworkSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    OdbNetworkSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    OdbNetworkSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    OdbNetworkSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbNetworkArn"))
    OdbNetworkSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:client_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:backup_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "backupSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "customDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:default_dns_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "defaultDnsPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:peered_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "peeredCidrs"))
    OdbNetworkSummary.add_member(:oci_network_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociNetworkAnchorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:oci_network_anchor_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociNetworkAnchorUrl"))
    OdbNetworkSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociResourceAnchorName"))
    OdbNetworkSummary.add_member(:oci_vcn_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociVcnId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:oci_vcn_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ociVcnUrl"))
    OdbNetworkSummary.add_member(:oci_dns_forwarding_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: OciDnsForwardingConfigList, location_name: "ociDnsForwardingConfigs"))
    OdbNetworkSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbNetworkSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    OdbNetworkSummary.add_member(:managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedServices, location_name: "managedServices"))
    OdbNetworkSummary.type = Types::OdbNetworkSummary
    OdbPeeringConnection.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    OdbPeeringConnection.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    OdbPeeringConnection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    OdbPeeringConnection.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    OdbPeeringConnection.add_member(:odb_peering_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbPeeringConnectionArn"))
    OdbPeeringConnection.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbNetworkArn"))
    OdbPeeringConnection.add_member(:peer_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "peerNetworkArn"))
    OdbPeeringConnection.add_member(:odb_peering_connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbPeeringConnectionType"))
    OdbPeeringConnection.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbPeeringConnection.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    OdbPeeringConnection.type = Types::OdbPeeringConnection
    OdbPeeringConnectionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OdbPeeringConnectionSummary)
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    OdbPeeringConnectionSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    OdbPeeringConnectionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    OdbPeeringConnectionSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbPeeringConnectionArn"))
    OdbPeeringConnectionSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbNetworkArn"))
    OdbPeeringConnectionSummary.add_member(:peer_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "peerNetworkArn"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbPeeringConnectionType"))
    OdbPeeringConnectionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbPeeringConnectionSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "percentProgress"))
    OdbPeeringConnectionSummary.type = Types::OdbPeeringConnectionSummary
    PatchingModeType.add_member(:rolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLING", traits: {"smithy.api#enumValue" => "ROLLING"}))
    PatchingModeType.add_member(:nonrolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONROLLING", traits: {"smithy.api#enumValue" => "NONROLLING"}))
    PreferenceType.add_member(:no_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_PREFERENCE", traits: {"smithy.api#enumValue" => "NO_PREFERENCE"}))
    PreferenceType.add_member(:custom_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_PREFERENCE", traits: {"smithy.api#enumValue" => "CUSTOM_PREFERENCE"}))
    RebootDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RebootDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RebootDbNodeInput.type = Types::RebootDbNodeInput
    RebootDbNodeOutput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbNodeId", traits: {"smithy.api#required" => {}}))
    RebootDbNodeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, location_name: "status"))
    RebootDbNodeOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    RebootDbNodeOutput.type = Types::RebootDbNodeOutput
    RequestTagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    RequestTagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    ResourceStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ResourceStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResourceStatus.add_member(:maintenance_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAINTENANCE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "MAINTENANCE_IN_PROGRESS"}))
    ResponseTagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    ResponseTagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    S3Access.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, location_name: "status"))
    S3Access.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "ipv4Addresses"))
    S3Access.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "domainName"))
    S3Access.add_member(:s3_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "s3PolicyDocument"))
    S3Access.type = Types::S3Access
    SensitiveStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString)
    ServiceNetworkEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vpcEndpointId"))
    ServiceNetworkEndpoint.add_member(:vpc_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointType, location_name: "vpcEndpointType"))
    ServiceNetworkEndpoint.type = Types::ServiceNetworkEndpoint
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShapeType.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMD", traits: {"smithy.api#enumValue" => "AMD"}))
    ShapeType.add_member(:intel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEL", traits: {"smithy.api#enumValue" => "INTEL"}))
    ShapeType.add_member(:intel_flex_x9, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEL_FLEX_X9", traits: {"smithy.api#enumValue" => "INTEL_FLEX_X9"}))
    ShapeType.add_member(:ampere_flex_a1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMPERE_FLEX_A1", traits: {"smithy.api#enumValue" => "AMPERE_FLEX_A1"}))
    StartDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDbNodeInput.type = Types::StartDbNodeInput
    StartDbNodeOutput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbNodeId", traits: {"smithy.api#required" => {}}))
    StartDbNodeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, location_name: "status"))
    StartDbNodeOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    StartDbNodeOutput.type = Types::StartDbNodeOutput
    StopDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDbNodeInput.type = Types::StopDbNodeInput
    StopDbNodeOutput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbNodeId", traits: {"smithy.api#required" => {}}))
    StopDbNodeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, location_name: "status"))
    StopDbNodeOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    StopDbNodeOutput.type = Types::StopDbNodeOutput
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    SystemVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SystemVersionSummary)
    SystemVersionSummary.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "giVersion"))
    SystemVersionSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shape"))
    SystemVersionSummary.add_member(:system_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "systemVersions"))
    SystemVersionSummary.type = Types::SystemVersionSummary
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCloudExadataInfrastructureInput.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    UpdateCloudExadataInfrastructureInput.type = Types::UpdateCloudExadataInfrastructureInput
    UpdateCloudExadataInfrastructureOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    UpdateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    UpdateCloudExadataInfrastructureOutput.type = Types::UpdateCloudExadataInfrastructureOutput
    UpdateOdbNetworkInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, location_name: "odbNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOdbNetworkInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, location_name: "displayName"))
    UpdateOdbNetworkInput.add_member(:peered_cidrs_to_be_added, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "peeredCidrsToBeAdded"))
    UpdateOdbNetworkInput.add_member(:peered_cidrs_to_be_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "peeredCidrsToBeRemoved"))
    UpdateOdbNetworkInput.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, location_name: "s3Access"))
    UpdateOdbNetworkInput.add_member(:zero_etl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, location_name: "zeroEtlAccess"))
    UpdateOdbNetworkInput.add_member(:s3_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "s3PolicyDocument"))
    UpdateOdbNetworkInput.type = Types::UpdateOdbNetworkInput
    UpdateOdbNetworkOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    UpdateOdbNetworkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    UpdateOdbNetworkOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    UpdateOdbNetworkOutput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    UpdateOdbNetworkOutput.type = Types::UpdateOdbNetworkOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    VpcEndpointType.add_member(:servicenetwork, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICENETWORK", traits: {"smithy.api#enumValue" => "SERVICENETWORK"}))
    WeeksOfMonth.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer)
    ZeroEtlAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, location_name: "status"))
    ZeroEtlAccess.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cidr"))
    ZeroEtlAccess.type = Types::ZeroEtlAccess

    Odb = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.odb#Odb"
      service.name = "Odb"
      service.version = "2024-08-20"
      service.traits = {"aws.api#service" => {"sdkId" => "odb", "arnNamespace" => "odb"}, "aws.auth#sigv4" => {"name" => "odb"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "odb"}
      service.add_operation(:accept_marketplace_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#AcceptMarketplaceRegistration"
        operation.name = "AcceptMarketplaceRegistration"
        operation.input = AcceptMarketplaceRegistrationInput
        operation.output = AcceptMarketplaceRegistrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cloud_autonomous_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateCloudAutonomousVmCluster"
        operation.name = "CreateCloudAutonomousVmCluster"
        operation.input = CreateCloudAutonomousVmClusterInput
        operation.output = CreateCloudAutonomousVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cloud_exadata_infrastructure, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateCloudExadataInfrastructure"
        operation.name = "CreateCloudExadataInfrastructure"
        operation.input = CreateCloudExadataInfrastructureInput
        operation.output = CreateCloudExadataInfrastructureOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cloud_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateCloudVmCluster"
        operation.name = "CreateCloudVmCluster"
        operation.input = CreateCloudVmClusterInput
        operation.output = CreateCloudVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_odb_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateOdbNetwork"
        operation.name = "CreateOdbNetwork"
        operation.input = CreateOdbNetworkInput
        operation.output = CreateOdbNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_odb_peering_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateOdbPeeringConnection"
        operation.name = "CreateOdbPeeringConnection"
        operation.input = CreateOdbPeeringConnectionInput
        operation.output = CreateOdbPeeringConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cloud_autonomous_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteCloudAutonomousVmCluster"
        operation.name = "DeleteCloudAutonomousVmCluster"
        operation.input = DeleteCloudAutonomousVmClusterInput
        operation.output = DeleteCloudAutonomousVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cloud_exadata_infrastructure, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteCloudExadataInfrastructure"
        operation.name = "DeleteCloudExadataInfrastructure"
        operation.input = DeleteCloudExadataInfrastructureInput
        operation.output = DeleteCloudExadataInfrastructureOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cloud_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteCloudVmCluster"
        operation.name = "DeleteCloudVmCluster"
        operation.input = DeleteCloudVmClusterInput
        operation.output = DeleteCloudVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_odb_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteOdbNetwork"
        operation.name = "DeleteOdbNetwork"
        operation.input = DeleteOdbNetworkInput
        operation.output = DeleteOdbNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_odb_peering_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteOdbPeeringConnection"
        operation.name = "DeleteOdbPeeringConnection"
        operation.input = DeleteOdbPeeringConnectionInput
        operation.output = DeleteOdbPeeringConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_cloud_autonomous_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetCloudAutonomousVmCluster"
        operation.name = "GetCloudAutonomousVmCluster"
        operation.input = GetCloudAutonomousVmClusterInput
        operation.output = GetCloudAutonomousVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_cloud_exadata_infrastructure, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetCloudExadataInfrastructure"
        operation.name = "GetCloudExadataInfrastructure"
        operation.input = GetCloudExadataInfrastructureInput
        operation.output = GetCloudExadataInfrastructureOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetCloudExadataInfrastructure_ValidationException", "params" => {"cloudExadataInfrastructureId" => "exa-does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.odb#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_cloud_exadata_infrastructure_unallocated_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetCloudExadataInfrastructureUnallocatedResources"
        operation.name = "GetCloudExadataInfrastructureUnallocatedResources"
        operation.input = GetCloudExadataInfrastructureUnallocatedResourcesInput
        operation.output = GetCloudExadataInfrastructureUnallocatedResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_cloud_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetCloudVmCluster"
        operation.name = "GetCloudVmCluster"
        operation.input = GetCloudVmClusterInput
        operation.output = GetCloudVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_db_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetDbNode"
        operation.name = "GetDbNode"
        operation.input = GetDbNodeInput
        operation.output = GetDbNodeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_db_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetDbServer"
        operation.name = "GetDbServer"
        operation.input = GetDbServerInput
        operation.output = GetDbServerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_oci_onboarding_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetOciOnboardingStatus"
        operation.name = "GetOciOnboardingStatus"
        operation.input = GetOciOnboardingStatusInput
        operation.output = GetOciOnboardingStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_odb_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetOdbNetwork"
        operation.name = "GetOdbNetwork"
        operation.input = GetOdbNetworkInput
        operation.output = GetOdbNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_odb_peering_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetOdbPeeringConnection"
        operation.name = "GetOdbPeeringConnection"
        operation.input = GetOdbPeeringConnectionInput
        operation.output = GetOdbPeeringConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:initialize_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#InitializeService"
        operation.name = "InitializeService"
        operation.input = InitializeServiceInput
        operation.output = InitializeServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_autonomous_virtual_machines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousVirtualMachines"
        operation.name = "ListAutonomousVirtualMachines"
        operation.input = ListAutonomousVirtualMachinesInput
        operation.output = ListAutonomousVirtualMachinesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousVirtualMachines.new
      end)
      service.add_operation(:list_cloud_autonomous_vm_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListCloudAutonomousVmClusters"
        operation.name = "ListCloudAutonomousVmClusters"
        operation.input = ListCloudAutonomousVmClustersInput
        operation.output = ListCloudAutonomousVmClustersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCloudAutonomousVmClusters.new
      end)
      service.add_operation(:list_cloud_exadata_infrastructures, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListCloudExadataInfrastructures"
        operation.name = "ListCloudExadataInfrastructures"
        operation.input = ListCloudExadataInfrastructuresInput
        operation.output = ListCloudExadataInfrastructuresOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCloudExadataInfrastructures.new
      end)
      service.add_operation(:list_cloud_vm_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListCloudVmClusters"
        operation.name = "ListCloudVmClusters"
        operation.input = ListCloudVmClustersInput
        operation.output = ListCloudVmClustersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCloudVmClusters.new
      end)
      service.add_operation(:list_db_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListDbNodes"
        operation.name = "ListDbNodes"
        operation.input = ListDbNodesInput
        operation.output = ListDbNodesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDbNodes.new
      end)
      service.add_operation(:list_db_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListDbServers"
        operation.name = "ListDbServers"
        operation.input = ListDbServersInput
        operation.output = ListDbServersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDbServers.new
      end)
      service.add_operation(:list_db_system_shapes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListDbSystemShapes"
        operation.name = "ListDbSystemShapes"
        operation.input = ListDbSystemShapesInput
        operation.output = ListDbSystemShapesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDbSystemShapes.new
      end)
      service.add_operation(:list_gi_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListGiVersions"
        operation.name = "ListGiVersions"
        operation.input = ListGiVersionsInput
        operation.output = ListGiVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGiVersions.new
      end)
      service.add_operation(:list_odb_networks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListOdbNetworks"
        operation.name = "ListOdbNetworks"
        operation.input = ListOdbNetworksInput
        operation.output = ListOdbNetworksOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOdbNetworks.new
      end)
      service.add_operation(:list_odb_peering_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListOdbPeeringConnections"
        operation.name = "ListOdbPeeringConnections"
        operation.input = ListOdbPeeringConnectionsInput
        operation.output = ListOdbPeeringConnectionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOdbPeeringConnections.new
      end)
      service.add_operation(:list_system_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListSystemVersions"
        operation.name = "ListSystemVersions"
        operation.input = ListSystemVersionsInput
        operation.output = ListSystemVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSystemVersions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#readonly" => {}}
      end)
      service.add_operation(:reboot_db_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#RebootDbNode"
        operation.name = "RebootDbNode"
        operation.input = RebootDbNodeInput
        operation.output = RebootDbNodeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_db_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#StartDbNode"
        operation.name = "StartDbNode"
        operation.input = StartDbNodeInput
        operation.output = StartDbNodeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:stop_db_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#StopDbNode"
        operation.name = "StopDbNode"
        operation.input = StopDbNodeInput
        operation.output = StopDbNodeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cloud_exadata_infrastructure, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateCloudExadataInfrastructure"
        operation.name = "UpdateCloudExadataInfrastructure"
        operation.input = UpdateCloudExadataInfrastructureInput
        operation.output = UpdateCloudExadataInfrastructureOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_odb_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateOdbNetwork"
        operation.name = "UpdateOdbNetwork"
        operation.input = UpdateOdbNetworkInput
        operation.output = UpdateOdbNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
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

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Odb
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptMarketplaceRegistrationInput = Shapes::StructureShape.new(name: 'AcceptMarketplaceRegistrationInput')
    AcceptMarketplaceRegistrationOutput = Shapes::StructureShape.new(name: 'AcceptMarketplaceRegistrationOutput')
    Access = Shapes::StringShape.new(name: 'Access')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociateIamRoleToResourceInput = Shapes::StructureShape.new(name: 'AssociateIamRoleToResourceInput')
    AssociateIamRoleToResourceInputResourceArnString = Shapes::StringShape.new(name: 'AssociateIamRoleToResourceInputResourceArnString')
    AssociateIamRoleToResourceOutput = Shapes::StructureShape.new(name: 'AssociateIamRoleToResourceOutput')
    AutonomousVirtualMachineList = Shapes::ListShape.new(name: 'AutonomousVirtualMachineList')
    AutonomousVirtualMachineSummary = Shapes::StructureShape.new(name: 'AutonomousVirtualMachineSummary')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CloudAutonomousVmCluster = Shapes::StructureShape.new(name: 'CloudAutonomousVmCluster')
    CloudAutonomousVmClusterList = Shapes::ListShape.new(name: 'CloudAutonomousVmClusterList')
    CloudAutonomousVmClusterResourceDetails = Shapes::StructureShape.new(name: 'CloudAutonomousVmClusterResourceDetails')
    CloudAutonomousVmClusterResourceDetailsList = Shapes::ListShape.new(name: 'CloudAutonomousVmClusterResourceDetailsList')
    CloudAutonomousVmClusterSummary = Shapes::StructureShape.new(name: 'CloudAutonomousVmClusterSummary')
    CloudExadataInfrastructure = Shapes::StructureShape.new(name: 'CloudExadataInfrastructure')
    CloudExadataInfrastructureList = Shapes::ListShape.new(name: 'CloudExadataInfrastructureList')
    CloudExadataInfrastructureSummary = Shapes::StructureShape.new(name: 'CloudExadataInfrastructureSummary')
    CloudExadataInfrastructureUnallocatedResources = Shapes::StructureShape.new(name: 'CloudExadataInfrastructureUnallocatedResources')
    CloudVmCluster = Shapes::StructureShape.new(name: 'CloudVmCluster')
    CloudVmClusterList = Shapes::ListShape.new(name: 'CloudVmClusterList')
    CloudVmClusterSummary = Shapes::StructureShape.new(name: 'CloudVmClusterSummary')
    ComputeModel = Shapes::StringShape.new(name: 'ComputeModel')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCloudAutonomousVmClusterInput = Shapes::StructureShape.new(name: 'CreateCloudAutonomousVmClusterInput')
    CreateCloudAutonomousVmClusterInputAutonomousDataStorageSizeInTBsDouble = Shapes::FloatShape.new(name: 'CreateCloudAutonomousVmClusterInputAutonomousDataStorageSizeInTBsDouble')
    CreateCloudAutonomousVmClusterInputClientTokenString = Shapes::StringShape.new(name: 'CreateCloudAutonomousVmClusterInputClientTokenString')
    CreateCloudAutonomousVmClusterInputCpuCoreCountPerNodeInteger = Shapes::IntegerShape.new(name: 'CreateCloudAutonomousVmClusterInputCpuCoreCountPerNodeInteger')
    CreateCloudAutonomousVmClusterInputDescriptionString = Shapes::StringShape.new(name: 'CreateCloudAutonomousVmClusterInputDescriptionString')
    CreateCloudAutonomousVmClusterInputMemoryPerOracleComputeUnitInGBsInteger = Shapes::IntegerShape.new(name: 'CreateCloudAutonomousVmClusterInputMemoryPerOracleComputeUnitInGBsInteger')
    CreateCloudAutonomousVmClusterInputScanListenerPortNonTlsInteger = Shapes::IntegerShape.new(name: 'CreateCloudAutonomousVmClusterInputScanListenerPortNonTlsInteger')
    CreateCloudAutonomousVmClusterInputScanListenerPortTlsInteger = Shapes::IntegerShape.new(name: 'CreateCloudAutonomousVmClusterInputScanListenerPortTlsInteger')
    CreateCloudAutonomousVmClusterInputTimeZoneString = Shapes::StringShape.new(name: 'CreateCloudAutonomousVmClusterInputTimeZoneString')
    CreateCloudAutonomousVmClusterInputTotalContainerDatabasesInteger = Shapes::IntegerShape.new(name: 'CreateCloudAutonomousVmClusterInputTotalContainerDatabasesInteger')
    CreateCloudAutonomousVmClusterOutput = Shapes::StructureShape.new(name: 'CreateCloudAutonomousVmClusterOutput')
    CreateCloudExadataInfrastructureInput = Shapes::StructureShape.new(name: 'CreateCloudExadataInfrastructureInput')
    CreateCloudExadataInfrastructureInputAvailabilityZoneIdString = Shapes::StringShape.new(name: 'CreateCloudExadataInfrastructureInputAvailabilityZoneIdString')
    CreateCloudExadataInfrastructureInputAvailabilityZoneString = Shapes::StringShape.new(name: 'CreateCloudExadataInfrastructureInputAvailabilityZoneString')
    CreateCloudExadataInfrastructureInputClientTokenString = Shapes::StringShape.new(name: 'CreateCloudExadataInfrastructureInputClientTokenString')
    CreateCloudExadataInfrastructureInputDatabaseServerTypeString = Shapes::StringShape.new(name: 'CreateCloudExadataInfrastructureInputDatabaseServerTypeString')
    CreateCloudExadataInfrastructureInputShapeString = Shapes::StringShape.new(name: 'CreateCloudExadataInfrastructureInputShapeString')
    CreateCloudExadataInfrastructureInputStorageServerTypeString = Shapes::StringShape.new(name: 'CreateCloudExadataInfrastructureInputStorageServerTypeString')
    CreateCloudExadataInfrastructureOutput = Shapes::StructureShape.new(name: 'CreateCloudExadataInfrastructureOutput')
    CreateCloudVmClusterInput = Shapes::StructureShape.new(name: 'CreateCloudVmClusterInput')
    CreateCloudVmClusterInputClientTokenString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputClientTokenString')
    CreateCloudVmClusterInputClusterNameString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputClusterNameString')
    CreateCloudVmClusterInputCpuCoreCountInteger = Shapes::IntegerShape.new(name: 'CreateCloudVmClusterInputCpuCoreCountInteger')
    CreateCloudVmClusterInputGiVersionString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputGiVersionString')
    CreateCloudVmClusterInputHostnameString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputHostnameString')
    CreateCloudVmClusterInputScanListenerPortTcpInteger = Shapes::IntegerShape.new(name: 'CreateCloudVmClusterInputScanListenerPortTcpInteger')
    CreateCloudVmClusterInputSystemVersionString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputSystemVersionString')
    CreateCloudVmClusterInputTimeZoneString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputTimeZoneString')
    CreateCloudVmClusterOutput = Shapes::StructureShape.new(name: 'CreateCloudVmClusterOutput')
    CreateOdbNetworkInput = Shapes::StructureShape.new(name: 'CreateOdbNetworkInput')
    CreateOdbNetworkInputAvailabilityZoneIdString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputAvailabilityZoneIdString')
    CreateOdbNetworkInputAvailabilityZoneString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputAvailabilityZoneString')
    CreateOdbNetworkInputBackupSubnetCidrString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputBackupSubnetCidrString')
    CreateOdbNetworkInputClientSubnetCidrString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputClientSubnetCidrString')
    CreateOdbNetworkInputClientTokenString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputClientTokenString')
    CreateOdbNetworkInputCustomDomainNameString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputCustomDomainNameString')
    CreateOdbNetworkInputDefaultDnsPrefixString = Shapes::StringShape.new(name: 'CreateOdbNetworkInputDefaultDnsPrefixString')
    CreateOdbNetworkOutput = Shapes::StructureShape.new(name: 'CreateOdbNetworkOutput')
    CreateOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'CreateOdbPeeringConnectionInput')
    CreateOdbPeeringConnectionInputClientTokenString = Shapes::StringShape.new(name: 'CreateOdbPeeringConnectionInputClientTokenString')
    CreateOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'CreateOdbPeeringConnectionOutput')
    CrossRegionS3RestoreSourcesAccess = Shapes::StructureShape.new(name: 'CrossRegionS3RestoreSourcesAccess')
    CrossRegionS3RestoreSourcesAccessList = Shapes::ListShape.new(name: 'CrossRegionS3RestoreSourcesAccessList')
    CustomerContact = Shapes::StructureShape.new(name: 'CustomerContact')
    CustomerContactEmailString = Shapes::StringShape.new(name: 'CustomerContactEmailString')
    CustomerContacts = Shapes::ListShape.new(name: 'CustomerContacts')
    DataCollectionOptions = Shapes::StructureShape.new(name: 'DataCollectionOptions')
    DayOfWeek = Shapes::StructureShape.new(name: 'DayOfWeek')
    DayOfWeekName = Shapes::StringShape.new(name: 'DayOfWeekName')
    DaysOfWeek = Shapes::ListShape.new(name: 'DaysOfWeek')
    DbIormConfig = Shapes::StructureShape.new(name: 'DbIormConfig')
    DbIormConfigList = Shapes::ListShape.new(name: 'DbIormConfigList')
    DbNode = Shapes::StructureShape.new(name: 'DbNode')
    DbNodeList = Shapes::ListShape.new(name: 'DbNodeList')
    DbNodeMaintenanceType = Shapes::StringShape.new(name: 'DbNodeMaintenanceType')
    DbNodeResourceStatus = Shapes::StringShape.new(name: 'DbNodeResourceStatus')
    DbNodeSummary = Shapes::StructureShape.new(name: 'DbNodeSummary')
    DbServer = Shapes::StructureShape.new(name: 'DbServer')
    DbServerList = Shapes::ListShape.new(name: 'DbServerList')
    DbServerPatchingDetails = Shapes::StructureShape.new(name: 'DbServerPatchingDetails')
    DbServerPatchingStatus = Shapes::StringShape.new(name: 'DbServerPatchingStatus')
    DbServerSummary = Shapes::StructureShape.new(name: 'DbServerSummary')
    DbSystemShapeList = Shapes::ListShape.new(name: 'DbSystemShapeList')
    DbSystemShapeSummary = Shapes::StructureShape.new(name: 'DbSystemShapeSummary')
    DeleteCloudAutonomousVmClusterInput = Shapes::StructureShape.new(name: 'DeleteCloudAutonomousVmClusterInput')
    DeleteCloudAutonomousVmClusterOutput = Shapes::StructureShape.new(name: 'DeleteCloudAutonomousVmClusterOutput')
    DeleteCloudExadataInfrastructureInput = Shapes::StructureShape.new(name: 'DeleteCloudExadataInfrastructureInput')
    DeleteCloudExadataInfrastructureOutput = Shapes::StructureShape.new(name: 'DeleteCloudExadataInfrastructureOutput')
    DeleteCloudVmClusterInput = Shapes::StructureShape.new(name: 'DeleteCloudVmClusterInput')
    DeleteCloudVmClusterOutput = Shapes::StructureShape.new(name: 'DeleteCloudVmClusterOutput')
    DeleteOdbNetworkInput = Shapes::StructureShape.new(name: 'DeleteOdbNetworkInput')
    DeleteOdbNetworkOutput = Shapes::StructureShape.new(name: 'DeleteOdbNetworkOutput')
    DeleteOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'DeleteOdbPeeringConnectionInput')
    DeleteOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'DeleteOdbPeeringConnectionOutput')
    DisassociateIamRoleFromResourceInput = Shapes::StructureShape.new(name: 'DisassociateIamRoleFromResourceInput')
    DisassociateIamRoleFromResourceInputResourceArnString = Shapes::StringShape.new(name: 'DisassociateIamRoleFromResourceInputResourceArnString')
    DisassociateIamRoleFromResourceOutput = Shapes::StructureShape.new(name: 'DisassociateIamRoleFromResourceOutput')
    DiskRedundancy = Shapes::StringShape.new(name: 'DiskRedundancy')
    Double = Shapes::FloatShape.new(name: 'Double')
    ExadataIormConfig = Shapes::StructureShape.new(name: 'ExadataIormConfig')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetCloudAutonomousVmClusterInput = Shapes::StructureShape.new(name: 'GetCloudAutonomousVmClusterInput')
    GetCloudAutonomousVmClusterOutput = Shapes::StructureShape.new(name: 'GetCloudAutonomousVmClusterOutput')
    GetCloudExadataInfrastructureInput = Shapes::StructureShape.new(name: 'GetCloudExadataInfrastructureInput')
    GetCloudExadataInfrastructureOutput = Shapes::StructureShape.new(name: 'GetCloudExadataInfrastructureOutput')
    GetCloudExadataInfrastructureUnallocatedResourcesInput = Shapes::StructureShape.new(name: 'GetCloudExadataInfrastructureUnallocatedResourcesInput')
    GetCloudExadataInfrastructureUnallocatedResourcesOutput = Shapes::StructureShape.new(name: 'GetCloudExadataInfrastructureUnallocatedResourcesOutput')
    GetCloudVmClusterInput = Shapes::StructureShape.new(name: 'GetCloudVmClusterInput')
    GetCloudVmClusterOutput = Shapes::StructureShape.new(name: 'GetCloudVmClusterOutput')
    GetDbNodeInput = Shapes::StructureShape.new(name: 'GetDbNodeInput')
    GetDbNodeOutput = Shapes::StructureShape.new(name: 'GetDbNodeOutput')
    GetDbServerInput = Shapes::StructureShape.new(name: 'GetDbServerInput')
    GetDbServerOutput = Shapes::StructureShape.new(name: 'GetDbServerOutput')
    GetOciOnboardingStatusInput = Shapes::StructureShape.new(name: 'GetOciOnboardingStatusInput')
    GetOciOnboardingStatusOutput = Shapes::StructureShape.new(name: 'GetOciOnboardingStatusOutput')
    GetOdbNetworkInput = Shapes::StructureShape.new(name: 'GetOdbNetworkInput')
    GetOdbNetworkOutput = Shapes::StructureShape.new(name: 'GetOdbNetworkOutput')
    GetOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'GetOdbPeeringConnectionInput')
    GetOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'GetOdbPeeringConnectionOutput')
    GiVersionList = Shapes::ListShape.new(name: 'GiVersionList')
    GiVersionSummary = Shapes::StructureShape.new(name: 'GiVersionSummary')
    HoursOfDay = Shapes::ListShape.new(name: 'HoursOfDay')
    IamRole = Shapes::StructureShape.new(name: 'IamRole')
    IamRoleList = Shapes::ListShape.new(name: 'IamRoleList')
    IamRoleStatus = Shapes::StringShape.new(name: 'IamRoleStatus')
    InitializeServiceInput = Shapes::StructureShape.new(name: 'InitializeServiceInput')
    InitializeServiceOutput = Shapes::StructureShape.new(name: 'InitializeServiceOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IormLifecycleState = Shapes::StringShape.new(name: 'IormLifecycleState')
    KmsAccess = Shapes::StructureShape.new(name: 'KmsAccess')
    LicenseModel = Shapes::StringShape.new(name: 'LicenseModel')
    ListAutonomousVirtualMachinesInput = Shapes::StructureShape.new(name: 'ListAutonomousVirtualMachinesInput')
    ListAutonomousVirtualMachinesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousVirtualMachinesInputMaxResultsInteger')
    ListAutonomousVirtualMachinesInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousVirtualMachinesInputNextTokenString')
    ListAutonomousVirtualMachinesOutput = Shapes::StructureShape.new(name: 'ListAutonomousVirtualMachinesOutput')
    ListCloudAutonomousVmClustersInput = Shapes::StructureShape.new(name: 'ListCloudAutonomousVmClustersInput')
    ListCloudAutonomousVmClustersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCloudAutonomousVmClustersInputMaxResultsInteger')
    ListCloudAutonomousVmClustersInputNextTokenString = Shapes::StringShape.new(name: 'ListCloudAutonomousVmClustersInputNextTokenString')
    ListCloudAutonomousVmClustersOutput = Shapes::StructureShape.new(name: 'ListCloudAutonomousVmClustersOutput')
    ListCloudExadataInfrastructuresInput = Shapes::StructureShape.new(name: 'ListCloudExadataInfrastructuresInput')
    ListCloudExadataInfrastructuresInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCloudExadataInfrastructuresInputMaxResultsInteger')
    ListCloudExadataInfrastructuresInputNextTokenString = Shapes::StringShape.new(name: 'ListCloudExadataInfrastructuresInputNextTokenString')
    ListCloudExadataInfrastructuresOutput = Shapes::StructureShape.new(name: 'ListCloudExadataInfrastructuresOutput')
    ListCloudVmClustersInput = Shapes::StructureShape.new(name: 'ListCloudVmClustersInput')
    ListCloudVmClustersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCloudVmClustersInputMaxResultsInteger')
    ListCloudVmClustersInputNextTokenString = Shapes::StringShape.new(name: 'ListCloudVmClustersInputNextTokenString')
    ListCloudVmClustersOutput = Shapes::StructureShape.new(name: 'ListCloudVmClustersOutput')
    ListDbNodesInput = Shapes::StructureShape.new(name: 'ListDbNodesInput')
    ListDbNodesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDbNodesInputMaxResultsInteger')
    ListDbNodesInputNextTokenString = Shapes::StringShape.new(name: 'ListDbNodesInputNextTokenString')
    ListDbNodesOutput = Shapes::StructureShape.new(name: 'ListDbNodesOutput')
    ListDbServersInput = Shapes::StructureShape.new(name: 'ListDbServersInput')
    ListDbServersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDbServersInputMaxResultsInteger')
    ListDbServersInputNextTokenString = Shapes::StringShape.new(name: 'ListDbServersInputNextTokenString')
    ListDbServersOutput = Shapes::StructureShape.new(name: 'ListDbServersOutput')
    ListDbSystemShapesInput = Shapes::StructureShape.new(name: 'ListDbSystemShapesInput')
    ListDbSystemShapesInputAvailabilityZoneIdString = Shapes::StringShape.new(name: 'ListDbSystemShapesInputAvailabilityZoneIdString')
    ListDbSystemShapesInputAvailabilityZoneString = Shapes::StringShape.new(name: 'ListDbSystemShapesInputAvailabilityZoneString')
    ListDbSystemShapesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDbSystemShapesInputMaxResultsInteger')
    ListDbSystemShapesInputNextTokenString = Shapes::StringShape.new(name: 'ListDbSystemShapesInputNextTokenString')
    ListDbSystemShapesOutput = Shapes::StructureShape.new(name: 'ListDbSystemShapesOutput')
    ListGiVersionsInput = Shapes::StructureShape.new(name: 'ListGiVersionsInput')
    ListGiVersionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListGiVersionsInputMaxResultsInteger')
    ListGiVersionsInputNextTokenString = Shapes::StringShape.new(name: 'ListGiVersionsInputNextTokenString')
    ListGiVersionsInputShapeString = Shapes::StringShape.new(name: 'ListGiVersionsInputShapeString')
    ListGiVersionsOutput = Shapes::StructureShape.new(name: 'ListGiVersionsOutput')
    ListOdbNetworksInput = Shapes::StructureShape.new(name: 'ListOdbNetworksInput')
    ListOdbNetworksInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOdbNetworksInputMaxResultsInteger')
    ListOdbNetworksInputNextTokenString = Shapes::StringShape.new(name: 'ListOdbNetworksInputNextTokenString')
    ListOdbNetworksOutput = Shapes::StructureShape.new(name: 'ListOdbNetworksOutput')
    ListOdbPeeringConnectionsInput = Shapes::StructureShape.new(name: 'ListOdbPeeringConnectionsInput')
    ListOdbPeeringConnectionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOdbPeeringConnectionsInputMaxResultsInteger')
    ListOdbPeeringConnectionsInputNextTokenString = Shapes::StringShape.new(name: 'ListOdbPeeringConnectionsInputNextTokenString')
    ListOdbPeeringConnectionsOutput = Shapes::StructureShape.new(name: 'ListOdbPeeringConnectionsOutput')
    ListSystemVersionsInput = Shapes::StructureShape.new(name: 'ListSystemVersionsInput')
    ListSystemVersionsInputGiVersionString = Shapes::StringShape.new(name: 'ListSystemVersionsInputGiVersionString')
    ListSystemVersionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSystemVersionsInputMaxResultsInteger')
    ListSystemVersionsInputNextTokenString = Shapes::StringShape.new(name: 'ListSystemVersionsInputNextTokenString')
    ListSystemVersionsInputShapeString = Shapes::StringShape.new(name: 'ListSystemVersionsInputShapeString')
    ListSystemVersionsOutput = Shapes::StructureShape.new(name: 'ListSystemVersionsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaintenanceWindow = Shapes::StructureShape.new(name: 'MaintenanceWindow')
    MaintenanceWindowCustomActionTimeoutInMinsInteger = Shapes::IntegerShape.new(name: 'MaintenanceWindowCustomActionTimeoutInMinsInteger')
    MaintenanceWindowLeadTimeInWeeksInteger = Shapes::IntegerShape.new(name: 'MaintenanceWindowLeadTimeInWeeksInteger')
    ManagedResourceStatus = Shapes::StringShape.new(name: 'ManagedResourceStatus')
    ManagedS3BackupAccess = Shapes::StructureShape.new(name: 'ManagedS3BackupAccess')
    ManagedServices = Shapes::StructureShape.new(name: 'ManagedServices')
    Month = Shapes::StructureShape.new(name: 'Month')
    MonthName = Shapes::StringShape.new(name: 'MonthName')
    Months = Shapes::ListShape.new(name: 'Months')
    Objective = Shapes::StringShape.new(name: 'Objective')
    OciDnsForwardingConfig = Shapes::StructureShape.new(name: 'OciDnsForwardingConfig')
    OciDnsForwardingConfigDomainNameString = Shapes::StringShape.new(name: 'OciDnsForwardingConfigDomainNameString')
    OciDnsForwardingConfigList = Shapes::ListShape.new(name: 'OciDnsForwardingConfigList')
    OciIdentityDomain = Shapes::StructureShape.new(name: 'OciIdentityDomain')
    OciOnboardingStatus = Shapes::StringShape.new(name: 'OciOnboardingStatus')
    OdbNetwork = Shapes::StructureShape.new(name: 'OdbNetwork')
    OdbNetworkAvailabilityZoneIdString = Shapes::StringShape.new(name: 'OdbNetworkAvailabilityZoneIdString')
    OdbNetworkAvailabilityZoneString = Shapes::StringShape.new(name: 'OdbNetworkAvailabilityZoneString')
    OdbNetworkBackupSubnetCidrString = Shapes::StringShape.new(name: 'OdbNetworkBackupSubnetCidrString')
    OdbNetworkClientSubnetCidrString = Shapes::StringShape.new(name: 'OdbNetworkClientSubnetCidrString')
    OdbNetworkCustomDomainNameString = Shapes::StringShape.new(name: 'OdbNetworkCustomDomainNameString')
    OdbNetworkDefaultDnsPrefixString = Shapes::StringShape.new(name: 'OdbNetworkDefaultDnsPrefixString')
    OdbNetworkList = Shapes::ListShape.new(name: 'OdbNetworkList')
    OdbNetworkOciNetworkAnchorIdString = Shapes::StringShape.new(name: 'OdbNetworkOciNetworkAnchorIdString')
    OdbNetworkOciVcnIdString = Shapes::StringShape.new(name: 'OdbNetworkOciVcnIdString')
    OdbNetworkSummary = Shapes::StructureShape.new(name: 'OdbNetworkSummary')
    OdbNetworkSummaryAvailabilityZoneIdString = Shapes::StringShape.new(name: 'OdbNetworkSummaryAvailabilityZoneIdString')
    OdbNetworkSummaryAvailabilityZoneString = Shapes::StringShape.new(name: 'OdbNetworkSummaryAvailabilityZoneString')
    OdbNetworkSummaryBackupSubnetCidrString = Shapes::StringShape.new(name: 'OdbNetworkSummaryBackupSubnetCidrString')
    OdbNetworkSummaryClientSubnetCidrString = Shapes::StringShape.new(name: 'OdbNetworkSummaryClientSubnetCidrString')
    OdbNetworkSummaryCustomDomainNameString = Shapes::StringShape.new(name: 'OdbNetworkSummaryCustomDomainNameString')
    OdbNetworkSummaryDefaultDnsPrefixString = Shapes::StringShape.new(name: 'OdbNetworkSummaryDefaultDnsPrefixString')
    OdbNetworkSummaryOciNetworkAnchorIdString = Shapes::StringShape.new(name: 'OdbNetworkSummaryOciNetworkAnchorIdString')
    OdbNetworkSummaryOciVcnIdString = Shapes::StringShape.new(name: 'OdbNetworkSummaryOciVcnIdString')
    OdbPeeringConnection = Shapes::StructureShape.new(name: 'OdbPeeringConnection')
    OdbPeeringConnectionList = Shapes::ListShape.new(name: 'OdbPeeringConnectionList')
    OdbPeeringConnectionSummary = Shapes::StructureShape.new(name: 'OdbPeeringConnectionSummary')
    PatchingModeType = Shapes::StringShape.new(name: 'PatchingModeType')
    PeeredCidr = Shapes::StringShape.new(name: 'PeeredCidr')
    PeeredCidrList = Shapes::ListShape.new(name: 'PeeredCidrList')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PreferenceType = Shapes::StringShape.new(name: 'PreferenceType')
    RebootDbNodeInput = Shapes::StructureShape.new(name: 'RebootDbNodeInput')
    RebootDbNodeOutput = Shapes::StructureShape.new(name: 'RebootDbNodeOutput')
    RequestTagMap = Shapes::MapShape.new(name: 'RequestTagMap')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceDisplayName = Shapes::StringShape.new(name: 'ResourceDisplayName')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdOrArn = Shapes::StringShape.new(name: 'ResourceIdOrArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ResponseTagMap = Shapes::MapShape.new(name: 'ResponseTagMap')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Access = Shapes::StructureShape.new(name: 'S3Access')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    ServiceNetworkEndpoint = Shapes::StructureShape.new(name: 'ServiceNetworkEndpoint')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShapeType = Shapes::StringShape.new(name: 'ShapeType')
    StartDbNodeInput = Shapes::StructureShape.new(name: 'StartDbNodeInput')
    StartDbNodeOutput = Shapes::StructureShape.new(name: 'StartDbNodeOutput')
    StopDbNodeInput = Shapes::StructureShape.new(name: 'StopDbNodeInput')
    StopDbNodeOutput = Shapes::StructureShape.new(name: 'StopDbNodeOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StsAccess = Shapes::StructureShape.new(name: 'StsAccess')
    SupportedAwsIntegration = Shapes::StringShape.new(name: 'SupportedAwsIntegration')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    SystemVersionList = Shapes::ListShape.new(name: 'SystemVersionList')
    SystemVersionSummary = Shapes::StructureShape.new(name: 'SystemVersionSummary')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCloudExadataInfrastructureInput = Shapes::StructureShape.new(name: 'UpdateCloudExadataInfrastructureInput')
    UpdateCloudExadataInfrastructureOutput = Shapes::StructureShape.new(name: 'UpdateCloudExadataInfrastructureOutput')
    UpdateOdbNetworkInput = Shapes::StructureShape.new(name: 'UpdateOdbNetworkInput')
    UpdateOdbNetworkOutput = Shapes::StructureShape.new(name: 'UpdateOdbNetworkOutput')
    UpdateOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'UpdateOdbPeeringConnectionInput')
    UpdateOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'UpdateOdbPeeringConnectionOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcEndpointType = Shapes::StringShape.new(name: 'VpcEndpointType')
    WeeksOfMonth = Shapes::ListShape.new(name: 'WeeksOfMonth')
    ZeroEtlAccess = Shapes::StructureShape.new(name: 'ZeroEtlAccess')

    AcceptMarketplaceRegistrationInput.add_member(:marketplace_registration_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "marketplaceRegistrationToken"))
    AcceptMarketplaceRegistrationInput.struct_class = Types::AcceptMarketplaceRegistrationInput

    AcceptMarketplaceRegistrationOutput.struct_class = Types::AcceptMarketplaceRegistrationOutput

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateIamRoleToResourceInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "iamRoleArn"))
    AssociateIamRoleToResourceInput.add_member(:aws_integration, Shapes::ShapeRef.new(shape: SupportedAwsIntegration, required: true, location_name: "awsIntegration"))
    AssociateIamRoleToResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AssociateIamRoleToResourceInputResourceArnString, required: true, location_name: "resourceArn"))
    AssociateIamRoleToResourceInput.struct_class = Types::AssociateIamRoleToResourceInput

    AssociateIamRoleToResourceOutput.struct_class = Types::AssociateIamRoleToResourceOutput

    AutonomousVirtualMachineList.member = Shapes::ShapeRef.new(shape: AutonomousVirtualMachineSummary)

    AutonomousVirtualMachineSummary.add_member(:autonomous_virtual_machine_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "autonomousVirtualMachineId"))
    AutonomousVirtualMachineSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    AutonomousVirtualMachineSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AutonomousVirtualMachineSummary.add_member(:vm_name, Shapes::ShapeRef.new(shape: String, location_name: "vmName"))
    AutonomousVirtualMachineSummary.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbServerId"))
    AutonomousVirtualMachineSummary.add_member(:db_server_display_name, Shapes::ShapeRef.new(shape: String, location_name: "dbServerDisplayName"))
    AutonomousVirtualMachineSummary.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    AutonomousVirtualMachineSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    AutonomousVirtualMachineSummary.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    AutonomousVirtualMachineSummary.add_member(:client_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "clientIpAddress"))
    AutonomousVirtualMachineSummary.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "cloudAutonomousVmClusterId"))
    AutonomousVirtualMachineSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    AutonomousVirtualMachineSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    AutonomousVirtualMachineSummary.struct_class = Types::AutonomousVirtualMachineSummary

    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmCluster.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudAutonomousVmCluster.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudAutonomousVmCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudAutonomousVmCluster.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CloudAutonomousVmCluster.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudAutonomousVmCluster.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudAutonomousVmCluster.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmCluster.add_member(:autonomous_data_storage_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "autonomousDataStoragePercentage"))
    CloudAutonomousVmCluster.add_member(:autonomous_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "autonomousDataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:available_autonomous_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "availableAutonomousDataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:available_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "availableContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:available_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "availableCpus"))
    CloudAutonomousVmCluster.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudAutonomousVmCluster.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    CloudAutonomousVmCluster.add_member(:cpu_core_count_per_node, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCountPerNode"))
    CloudAutonomousVmCluster.add_member(:cpu_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "cpuPercentage"))
    CloudAutonomousVmCluster.add_member(:data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInGBs"))
    CloudAutonomousVmCluster.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudAutonomousVmCluster.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    CloudAutonomousVmCluster.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CloudAutonomousVmCluster.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    CloudAutonomousVmCluster.add_member(:exadata_storage_in_t_bs_lowest_scaled_value, Shapes::ShapeRef.new(shape: Double, location_name: "exadataStorageInTBsLowestScaledValue"))
    CloudAutonomousVmCluster.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    CloudAutonomousVmCluster.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    CloudAutonomousVmCluster.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    CloudAutonomousVmCluster.add_member(:is_mtls_enabled_vm_cluster, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsEnabledVmCluster"))
    CloudAutonomousVmCluster.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CloudAutonomousVmCluster.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudAutonomousVmCluster.add_member(:max_acds_lowest_scaled_value, Shapes::ShapeRef.new(shape: Integer, location_name: "maxAcdsLowestScaledValue"))
    CloudAutonomousVmCluster.add_member(:memory_per_oracle_compute_unit_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memoryPerOracleComputeUnitInGBs"))
    CloudAutonomousVmCluster.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CloudAutonomousVmCluster.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeCount"))
    CloudAutonomousVmCluster.add_member(:non_provisionable_autonomous_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "nonProvisionableAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisionable_autonomous_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "provisionableAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisioned_autonomous_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "provisionedAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisioned_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "provisionedCpus"))
    CloudAutonomousVmCluster.add_member(:reclaimable_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "reclaimableCpus"))
    CloudAutonomousVmCluster.add_member(:reserved_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "reservedCpus"))
    CloudAutonomousVmCluster.add_member(:scan_listener_port_non_tls, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortNonTls"))
    CloudAutonomousVmCluster.add_member(:scan_listener_port_tls, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortTls"))
    CloudAutonomousVmCluster.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    CloudAutonomousVmCluster.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CloudAutonomousVmCluster.add_member(:time_database_ssl_certificate_expires, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDatabaseSslCertificateExpires"))
    CloudAutonomousVmCluster.add_member(:time_ords_certificate_expires, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOrdsCertificateExpires"))
    CloudAutonomousVmCluster.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    CloudAutonomousVmCluster.add_member(:total_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "totalContainerDatabases"))
    CloudAutonomousVmCluster.struct_class = Types::CloudAutonomousVmCluster

    CloudAutonomousVmClusterList.member = Shapes::ShapeRef.new(shape: CloudAutonomousVmClusterSummary)

    CloudAutonomousVmClusterResourceDetails.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmClusterResourceDetails.add_member(:unallocated_adb_storage_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "unallocatedAdbStorageInTBs"))
    CloudAutonomousVmClusterResourceDetails.struct_class = Types::CloudAutonomousVmClusterResourceDetails

    CloudAutonomousVmClusterResourceDetailsList.member = Shapes::ShapeRef.new(shape: CloudAutonomousVmClusterResourceDetails)

    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmClusterSummary.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudAutonomousVmClusterSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudAutonomousVmClusterSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudAutonomousVmClusterSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CloudAutonomousVmClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudAutonomousVmClusterSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmClusterSummary.add_member(:autonomous_data_storage_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "autonomousDataStoragePercentage"))
    CloudAutonomousVmClusterSummary.add_member(:autonomous_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "autonomousDataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:available_autonomous_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "availableAutonomousDataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:available_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "availableContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:available_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "availableCpus"))
    CloudAutonomousVmClusterSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_core_count_per_node, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCountPerNode"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "cpuPercentage"))
    CloudAutonomousVmClusterSummary.add_member(:data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    CloudAutonomousVmClusterSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CloudAutonomousVmClusterSummary.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    CloudAutonomousVmClusterSummary.add_member(:exadata_storage_in_t_bs_lowest_scaled_value, Shapes::ShapeRef.new(shape: Double, location_name: "exadataStorageInTBsLowestScaledValue"))
    CloudAutonomousVmClusterSummary.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    CloudAutonomousVmClusterSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    CloudAutonomousVmClusterSummary.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    CloudAutonomousVmClusterSummary.add_member(:is_mtls_enabled_vm_cluster, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsEnabledVmCluster"))
    CloudAutonomousVmClusterSummary.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CloudAutonomousVmClusterSummary.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudAutonomousVmClusterSummary.add_member(:max_acds_lowest_scaled_value, Shapes::ShapeRef.new(shape: Integer, location_name: "maxAcdsLowestScaledValue"))
    CloudAutonomousVmClusterSummary.add_member(:memory_per_oracle_compute_unit_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memoryPerOracleComputeUnitInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeCount"))
    CloudAutonomousVmClusterSummary.add_member(:non_provisionable_autonomous_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "nonProvisionableAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisionable_autonomous_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "provisionableAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisioned_autonomous_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "provisionedAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisioned_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "provisionedCpus"))
    CloudAutonomousVmClusterSummary.add_member(:reclaimable_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "reclaimableCpus"))
    CloudAutonomousVmClusterSummary.add_member(:reserved_cpus, Shapes::ShapeRef.new(shape: Float, location_name: "reservedCpus"))
    CloudAutonomousVmClusterSummary.add_member(:scan_listener_port_non_tls, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortNonTls"))
    CloudAutonomousVmClusterSummary.add_member(:scan_listener_port_tls, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortTls"))
    CloudAutonomousVmClusterSummary.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    CloudAutonomousVmClusterSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CloudAutonomousVmClusterSummary.add_member(:time_database_ssl_certificate_expires, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDatabaseSslCertificateExpires"))
    CloudAutonomousVmClusterSummary.add_member(:time_ords_certificate_expires, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOrdsCertificateExpires"))
    CloudAutonomousVmClusterSummary.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    CloudAutonomousVmClusterSummary.add_member(:total_container_databases, Shapes::ShapeRef.new(shape: Integer, location_name: "totalContainerDatabases"))
    CloudAutonomousVmClusterSummary.struct_class = Types::CloudAutonomousVmClusterSummary

    CloudExadataInfrastructure.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    CloudExadataInfrastructure.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CloudExadataInfrastructure.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudExadataInfrastructure.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudExadataInfrastructure.add_member(:cloud_exadata_infrastructure_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudExadataInfrastructureArn"))
    CloudExadataInfrastructure.add_member(:activated_storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activatedStorageCount"))
    CloudExadataInfrastructure.add_member(:additional_storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "additionalStorageCount"))
    CloudExadataInfrastructure.add_member(:available_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CloudExadataInfrastructure.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    CloudExadataInfrastructure.add_member(:compute_count, Shapes::ShapeRef.new(shape: Integer, location_name: "computeCount"))
    CloudExadataInfrastructure.add_member(:cpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCount"))
    CloudExadataInfrastructure.add_member(:customer_contacts_to_send_to_oci, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CloudExadataInfrastructure.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CloudExadataInfrastructure.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:db_server_version, Shapes::ShapeRef.new(shape: String, location_name: "dbServerVersion"))
    CloudExadataInfrastructure.add_member(:last_maintenance_run_id, Shapes::ShapeRef.new(shape: String, location_name: "lastMaintenanceRunId"))
    CloudExadataInfrastructure.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudExadataInfrastructure.add_member(:max_cpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCpuCount"))
    CloudExadataInfrastructure.add_member(:max_data_storage_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "maxDataStorageInTBs"))
    CloudExadataInfrastructure.add_member(:max_db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxDbNodeStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:max_memory_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxMemoryInGBs"))
    CloudExadataInfrastructure.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CloudExadataInfrastructure.add_member(:monthly_db_server_version, Shapes::ShapeRef.new(shape: String, location_name: "monthlyDbServerVersion"))
    CloudExadataInfrastructure.add_member(:monthly_storage_server_version, Shapes::ShapeRef.new(shape: String, location_name: "monthlyStorageServerVersion"))
    CloudExadataInfrastructure.add_member(:next_maintenance_run_id, Shapes::ShapeRef.new(shape: String, location_name: "nextMaintenanceRunId"))
    CloudExadataInfrastructure.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudExadataInfrastructure.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    CloudExadataInfrastructure.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    CloudExadataInfrastructure.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    CloudExadataInfrastructure.add_member(:storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "storageCount"))
    CloudExadataInfrastructure.add_member(:storage_server_version, Shapes::ShapeRef.new(shape: String, location_name: "storageServerVersion"))
    CloudExadataInfrastructure.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CloudExadataInfrastructure.add_member(:total_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "totalStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudExadataInfrastructure.add_member(:database_server_type, Shapes::ShapeRef.new(shape: String, location_name: "databaseServerType"))
    CloudExadataInfrastructure.add_member(:storage_server_type, Shapes::ShapeRef.new(shape: String, location_name: "storageServerType"))
    CloudExadataInfrastructure.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudExadataInfrastructure.struct_class = Types::CloudExadataInfrastructure

    CloudExadataInfrastructureList.member = Shapes::ShapeRef.new(shape: CloudExadataInfrastructureSummary)

    CloudExadataInfrastructureSummary.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    CloudExadataInfrastructureSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CloudExadataInfrastructureSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudExadataInfrastructureSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudExadataInfrastructureSummary.add_member(:cloud_exadata_infrastructure_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudExadataInfrastructureArn"))
    CloudExadataInfrastructureSummary.add_member(:activated_storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activatedStorageCount"))
    CloudExadataInfrastructureSummary.add_member(:additional_storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "additionalStorageCount"))
    CloudExadataInfrastructureSummary.add_member(:available_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CloudExadataInfrastructureSummary.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    CloudExadataInfrastructureSummary.add_member(:compute_count, Shapes::ShapeRef.new(shape: Integer, location_name: "computeCount"))
    CloudExadataInfrastructureSummary.add_member(:cpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCount"))
    CloudExadataInfrastructureSummary.add_member(:customer_contacts_to_send_to_oci, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CloudExadataInfrastructureSummary.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CloudExadataInfrastructureSummary.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:db_server_version, Shapes::ShapeRef.new(shape: String, location_name: "dbServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:last_maintenance_run_id, Shapes::ShapeRef.new(shape: String, location_name: "lastMaintenanceRunId"))
    CloudExadataInfrastructureSummary.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CloudExadataInfrastructureSummary.add_member(:max_cpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCpuCount"))
    CloudExadataInfrastructureSummary.add_member(:max_data_storage_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "maxDataStorageInTBs"))
    CloudExadataInfrastructureSummary.add_member(:max_db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxDbNodeStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:max_memory_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxMemoryInGBs"))
    CloudExadataInfrastructureSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:monthly_db_server_version, Shapes::ShapeRef.new(shape: String, location_name: "monthlyDbServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:monthly_storage_server_version, Shapes::ShapeRef.new(shape: String, location_name: "monthlyStorageServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:next_maintenance_run_id, Shapes::ShapeRef.new(shape: String, location_name: "nextMaintenanceRunId"))
    CloudExadataInfrastructureSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudExadataInfrastructureSummary.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    CloudExadataInfrastructureSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    CloudExadataInfrastructureSummary.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    CloudExadataInfrastructureSummary.add_member(:storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "storageCount"))
    CloudExadataInfrastructureSummary.add_member(:storage_server_version, Shapes::ShapeRef.new(shape: String, location_name: "storageServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CloudExadataInfrastructureSummary.add_member(:total_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "totalStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudExadataInfrastructureSummary.add_member(:database_server_type, Shapes::ShapeRef.new(shape: String, location_name: "databaseServerType"))
    CloudExadataInfrastructureSummary.add_member(:storage_server_type, Shapes::ShapeRef.new(shape: String, location_name: "storageServerType"))
    CloudExadataInfrastructureSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudExadataInfrastructureSummary.struct_class = Types::CloudExadataInfrastructureSummary

    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_autonomous_vm_clusters, Shapes::ShapeRef.new(shape: CloudAutonomousVmClusterResourceDetailsList, location_name: "cloudAutonomousVmClusters"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_exadata_infrastructure_display_name, Shapes::ShapeRef.new(shape: String, location_name: "cloudExadataInfrastructureDisplayName"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:exadata_storage_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "exadataStorageInTBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:local_storage_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "localStorageInGBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:memory_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memoryInGBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:ocpus, Shapes::ShapeRef.new(shape: Integer, location_name: "ocpus"))
    CloudExadataInfrastructureUnallocatedResources.struct_class = Types::CloudExadataInfrastructureUnallocatedResources

    CloudVmCluster.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    CloudVmCluster.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CloudVmCluster.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudVmCluster.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudVmCluster.add_member(:cloud_vm_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudVmClusterArn"))
    CloudVmCluster.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, location_name: "cloudExadataInfrastructureId"))
    CloudVmCluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    CloudVmCluster.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    CloudVmCluster.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CloudVmCluster.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CloudVmCluster.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudVmCluster.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    CloudVmCluster.add_member(:disk_redundancy, Shapes::ShapeRef.new(shape: DiskRedundancy, location_name: "diskRedundancy"))
    CloudVmCluster.add_member(:gi_version, Shapes::ShapeRef.new(shape: String, location_name: "giVersion"))
    CloudVmCluster.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    CloudVmCluster.add_member(:iorm_config_cache, Shapes::ShapeRef.new(shape: ExadataIormConfig, location_name: "iormConfigCache"))
    CloudVmCluster.add_member(:is_local_backup_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalBackupEnabled"))
    CloudVmCluster.add_member(:is_sparse_diskgroup_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSparseDiskgroupEnabled"))
    CloudVmCluster.add_member(:last_update_history_entry_id, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdateHistoryEntryId"))
    CloudVmCluster.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CloudVmCluster.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "listenerPort"))
    CloudVmCluster.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CloudVmCluster.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeCount"))
    CloudVmCluster.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    CloudVmCluster.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudVmCluster.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    CloudVmCluster.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    CloudVmCluster.add_member(:scan_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsName"))
    CloudVmCluster.add_member(:scan_dns_record_id, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsRecordId"))
    CloudVmCluster.add_member(:scan_ip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "scanIpIds"))
    CloudVmCluster.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    CloudVmCluster.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "sshPublicKeys"))
    CloudVmCluster.add_member(:storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "storageSizeInGBs"))
    CloudVmCluster.add_member(:system_version, Shapes::ShapeRef.new(shape: String, location_name: "systemVersion"))
    CloudVmCluster.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CloudVmCluster.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    CloudVmCluster.add_member(:vip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vipIds"))
    CloudVmCluster.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudVmCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudVmCluster.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudVmCluster.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
    CloudVmCluster.struct_class = Types::CloudVmCluster

    CloudVmClusterList.member = Shapes::ShapeRef.new(shape: CloudVmClusterSummary)

    CloudVmClusterSummary.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    CloudVmClusterSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CloudVmClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudVmClusterSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudVmClusterSummary.add_member(:cloud_vm_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudVmClusterArn"))
    CloudVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, location_name: "cloudExadataInfrastructureId"))
    CloudVmClusterSummary.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    CloudVmClusterSummary.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    CloudVmClusterSummary.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CloudVmClusterSummary.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CloudVmClusterSummary.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CloudVmClusterSummary.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    CloudVmClusterSummary.add_member(:disk_redundancy, Shapes::ShapeRef.new(shape: DiskRedundancy, location_name: "diskRedundancy"))
    CloudVmClusterSummary.add_member(:gi_version, Shapes::ShapeRef.new(shape: String, location_name: "giVersion"))
    CloudVmClusterSummary.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    CloudVmClusterSummary.add_member(:iorm_config_cache, Shapes::ShapeRef.new(shape: ExadataIormConfig, location_name: "iormConfigCache"))
    CloudVmClusterSummary.add_member(:is_local_backup_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalBackupEnabled"))
    CloudVmClusterSummary.add_member(:is_sparse_diskgroup_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSparseDiskgroupEnabled"))
    CloudVmClusterSummary.add_member(:last_update_history_entry_id, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdateHistoryEntryId"))
    CloudVmClusterSummary.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CloudVmClusterSummary.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "listenerPort"))
    CloudVmClusterSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CloudVmClusterSummary.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeCount"))
    CloudVmClusterSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    CloudVmClusterSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudVmClusterSummary.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    CloudVmClusterSummary.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    CloudVmClusterSummary.add_member(:scan_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsName"))
    CloudVmClusterSummary.add_member(:scan_dns_record_id, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsRecordId"))
    CloudVmClusterSummary.add_member(:scan_ip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "scanIpIds"))
    CloudVmClusterSummary.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    CloudVmClusterSummary.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "sshPublicKeys"))
    CloudVmClusterSummary.add_member(:storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "storageSizeInGBs"))
    CloudVmClusterSummary.add_member(:system_version, Shapes::ShapeRef.new(shape: String, location_name: "systemVersion"))
    CloudVmClusterSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CloudVmClusterSummary.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    CloudVmClusterSummary.add_member(:vip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vipIds"))
    CloudVmClusterSummary.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudVmClusterSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudVmClusterSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudVmClusterSummary.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
    CloudVmClusterSummary.struct_class = Types::CloudVmClusterSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCloudAutonomousVmClusterInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    CreateCloudAutonomousVmClusterInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    CreateCloudAutonomousVmClusterInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, required: true, location_name: "displayName"))
    CreateCloudAutonomousVmClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCloudAutonomousVmClusterInput.add_member(:autonomous_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputAutonomousDataStorageSizeInTBsDouble, required: true, location_name: "autonomousDataStorageSizeInTBs"))
    CreateCloudAutonomousVmClusterInput.add_member(:cpu_core_count_per_node, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputCpuCoreCountPerNodeInteger, required: true, location_name: "cpuCoreCountPerNode"))
    CreateCloudAutonomousVmClusterInput.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    CreateCloudAutonomousVmClusterInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputDescriptionString, location_name: "description"))
    CreateCloudAutonomousVmClusterInput.add_member(:is_mtls_enabled_vm_cluster, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsEnabledVmCluster"))
    CreateCloudAutonomousVmClusterInput.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CreateCloudAutonomousVmClusterInput.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CreateCloudAutonomousVmClusterInput.add_member(:memory_per_oracle_compute_unit_in_g_bs, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputMemoryPerOracleComputeUnitInGBsInteger, required: true, location_name: "memoryPerOracleComputeUnitInGBs"))
    CreateCloudAutonomousVmClusterInput.add_member(:scan_listener_port_non_tls, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputScanListenerPortNonTlsInteger, location_name: "scanListenerPortNonTls"))
    CreateCloudAutonomousVmClusterInput.add_member(:scan_listener_port_tls, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputScanListenerPortTlsInteger, location_name: "scanListenerPortTls"))
    CreateCloudAutonomousVmClusterInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateCloudAutonomousVmClusterInput.add_member(:time_zone, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputTimeZoneString, location_name: "timeZone"))
    CreateCloudAutonomousVmClusterInput.add_member(:total_container_databases, Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInputTotalContainerDatabasesInteger, required: true, location_name: "totalContainerDatabases"))
    CreateCloudAutonomousVmClusterInput.struct_class = Types::CreateCloudAutonomousVmClusterInput

    CreateCloudAutonomousVmClusterOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateCloudAutonomousVmClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateCloudAutonomousVmClusterOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateCloudAutonomousVmClusterOutput.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudAutonomousVmClusterId"))
    CreateCloudAutonomousVmClusterOutput.struct_class = Types::CreateCloudAutonomousVmClusterOutput

    CreateCloudExadataInfrastructureInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, required: true, location_name: "displayName"))
    CreateCloudExadataInfrastructureInput.add_member(:shape, Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInputShapeString, required: true, location_name: "shape"))
    CreateCloudExadataInfrastructureInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInputAvailabilityZoneString, location_name: "availabilityZone"))
    CreateCloudExadataInfrastructureInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInputAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    CreateCloudExadataInfrastructureInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateCloudExadataInfrastructureInput.add_member(:compute_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "computeCount"))
    CreateCloudExadataInfrastructureInput.add_member(:customer_contacts_to_send_to_oci, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CreateCloudExadataInfrastructureInput.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CreateCloudExadataInfrastructureInput.add_member(:storage_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "storageCount"))
    CreateCloudExadataInfrastructureInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCloudExadataInfrastructureInput.add_member(:database_server_type, Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInputDatabaseServerTypeString, location_name: "databaseServerType"))
    CreateCloudExadataInfrastructureInput.add_member(:storage_server_type, Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInputStorageServerTypeString, location_name: "storageServerType"))
    CreateCloudExadataInfrastructureInput.struct_class = Types::CreateCloudExadataInfrastructureInput

    CreateCloudExadataInfrastructureOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateCloudExadataInfrastructureOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateCloudExadataInfrastructureOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudExadataInfrastructureId"))
    CreateCloudExadataInfrastructureOutput.struct_class = Types::CreateCloudExadataInfrastructureOutput

    CreateCloudVmClusterInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    CreateCloudVmClusterInput.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputCpuCoreCountInteger, required: true, location_name: "cpuCoreCount"))
    CreateCloudVmClusterInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, required: true, location_name: "displayName"))
    CreateCloudVmClusterInput.add_member(:gi_version, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputGiVersionString, required: true, location_name: "giVersion"))
    CreateCloudVmClusterInput.add_member(:hostname, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputHostnameString, required: true, location_name: "hostname"))
    CreateCloudVmClusterInput.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "sshPublicKeys"))
    CreateCloudVmClusterInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    CreateCloudVmClusterInput.add_member(:cluster_name, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputClusterNameString, location_name: "clusterName"))
    CreateCloudVmClusterInput.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CreateCloudVmClusterInput.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    CreateCloudVmClusterInput.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    CreateCloudVmClusterInput.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    CreateCloudVmClusterInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateCloudVmClusterInput.add_member(:is_local_backup_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalBackupEnabled"))
    CreateCloudVmClusterInput.add_member(:is_sparse_diskgroup_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSparseDiskgroupEnabled"))
    CreateCloudVmClusterInput.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CreateCloudVmClusterInput.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    CreateCloudVmClusterInput.add_member(:system_version, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputSystemVersionString, location_name: "systemVersion"))
    CreateCloudVmClusterInput.add_member(:time_zone, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputTimeZoneString, location_name: "timeZone"))
    CreateCloudVmClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCloudVmClusterInput.add_member(:scan_listener_port_tcp, Shapes::ShapeRef.new(shape: CreateCloudVmClusterInputScanListenerPortTcpInteger, location_name: "scanListenerPortTcp"))
    CreateCloudVmClusterInput.struct_class = Types::CreateCloudVmClusterInput

    CreateCloudVmClusterOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateCloudVmClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateCloudVmClusterOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateCloudVmClusterOutput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudVmClusterId"))
    CreateCloudVmClusterOutput.struct_class = Types::CreateCloudVmClusterOutput

    CreateOdbNetworkInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, required: true, location_name: "displayName"))
    CreateOdbNetworkInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputAvailabilityZoneString, location_name: "availabilityZone"))
    CreateOdbNetworkInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    CreateOdbNetworkInput.add_member(:client_subnet_cidr, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputClientSubnetCidrString, required: true, location_name: "clientSubnetCidr"))
    CreateOdbNetworkInput.add_member(:backup_subnet_cidr, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputBackupSubnetCidrString, location_name: "backupSubnetCidr"))
    CreateOdbNetworkInput.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputCustomDomainNameString, location_name: "customDomainName"))
    CreateOdbNetworkInput.add_member(:default_dns_prefix, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputDefaultDnsPrefixString, location_name: "defaultDnsPrefix"))
    CreateOdbNetworkInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateOdbNetworkInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOdbNetworkInput.add_member(:s3_access, Shapes::ShapeRef.new(shape: Access, location_name: "s3Access"))
    CreateOdbNetworkInput.add_member(:zero_etl_access, Shapes::ShapeRef.new(shape: Access, location_name: "zeroEtlAccess"))
    CreateOdbNetworkInput.add_member(:sts_access, Shapes::ShapeRef.new(shape: Access, location_name: "stsAccess"))
    CreateOdbNetworkInput.add_member(:kms_access, Shapes::ShapeRef.new(shape: Access, location_name: "kmsAccess"))
    CreateOdbNetworkInput.add_member(:s3_policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "s3PolicyDocument"))
    CreateOdbNetworkInput.add_member(:sts_policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "stsPolicyDocument"))
    CreateOdbNetworkInput.add_member(:kms_policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "kmsPolicyDocument"))
    CreateOdbNetworkInput.add_member(:cross_region_s3_restore_sources_to_enable, Shapes::ShapeRef.new(shape: StringList, location_name: "crossRegionS3RestoreSourcesToEnable"))
    CreateOdbNetworkInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateOdbNetworkInput.struct_class = Types::CreateOdbNetworkInput

    CreateOdbNetworkOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateOdbNetworkOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateOdbNetworkOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateOdbNetworkOutput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "odbNetworkId"))
    CreateOdbNetworkOutput.struct_class = Types::CreateOdbNetworkOutput

    CreateOdbPeeringConnectionInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    CreateOdbPeeringConnectionInput.add_member(:peer_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "peerNetworkId"))
    CreateOdbPeeringConnectionInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CreateOdbPeeringConnectionInput.add_member(:peer_network_cidrs_to_be_added, Shapes::ShapeRef.new(shape: PeeredCidrList, location_name: "peerNetworkCidrsToBeAdded"))
    CreateOdbPeeringConnectionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateOdbPeeringConnectionInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOdbPeeringConnectionInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateOdbPeeringConnectionInput.struct_class = Types::CreateOdbPeeringConnectionInput

    CreateOdbPeeringConnectionOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateOdbPeeringConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateOdbPeeringConnectionOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateOdbPeeringConnectionOutput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "odbPeeringConnectionId"))
    CreateOdbPeeringConnectionOutput.struct_class = Types::CreateOdbPeeringConnectionOutput

    CrossRegionS3RestoreSourcesAccess.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    CrossRegionS3RestoreSourcesAccess.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    CrossRegionS3RestoreSourcesAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    CrossRegionS3RestoreSourcesAccess.struct_class = Types::CrossRegionS3RestoreSourcesAccess

    CrossRegionS3RestoreSourcesAccessList.member = Shapes::ShapeRef.new(shape: CrossRegionS3RestoreSourcesAccess)

    CustomerContact.add_member(:email, Shapes::ShapeRef.new(shape: CustomerContactEmailString, location_name: "email"))
    CustomerContact.struct_class = Types::CustomerContact

    CustomerContacts.member = Shapes::ShapeRef.new(shape: CustomerContact)

    DataCollectionOptions.add_member(:is_diagnostics_events_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDiagnosticsEventsEnabled"))
    DataCollectionOptions.add_member(:is_health_monitoring_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isHealthMonitoringEnabled"))
    DataCollectionOptions.add_member(:is_incident_logs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isIncidentLogsEnabled"))
    DataCollectionOptions.struct_class = Types::DataCollectionOptions

    DayOfWeek.add_member(:name, Shapes::ShapeRef.new(shape: DayOfWeekName, location_name: "name"))
    DayOfWeek.struct_class = Types::DayOfWeek

    DaysOfWeek.member = Shapes::ShapeRef.new(shape: DayOfWeek)

    DbIormConfig.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "dbName"))
    DbIormConfig.add_member(:flash_cache_limit, Shapes::ShapeRef.new(shape: String, location_name: "flashCacheLimit"))
    DbIormConfig.add_member(:share, Shapes::ShapeRef.new(shape: Integer, location_name: "share"))
    DbIormConfig.struct_class = Types::DbIormConfig

    DbIormConfigList.member = Shapes::ShapeRef.new(shape: DbIormConfig)

    DbNode.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbNodeId"))
    DbNode.add_member(:db_node_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "dbNodeArn"))
    DbNode.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    DbNode.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DbNode.add_member(:additional_details, Shapes::ShapeRef.new(shape: String, location_name: "additionalDetails"))
    DbNode.add_member(:backup_ip_id, Shapes::ShapeRef.new(shape: String, location_name: "backupIpId"))
    DbNode.add_member(:backup_vnic_2_id, Shapes::ShapeRef.new(shape: String, location_name: "backupVnic2Id"))
    DbNode.add_member(:backup_vnic_id, Shapes::ShapeRef.new(shape: String, location_name: "backupVnicId"))
    DbNode.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    DbNode.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbNode.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbServerId"))
    DbNode.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "dbSystemId"))
    DbNode.add_member(:fault_domain, Shapes::ShapeRef.new(shape: String, location_name: "faultDomain"))
    DbNode.add_member(:host_ip_id, Shapes::ShapeRef.new(shape: String, location_name: "hostIpId"))
    DbNode.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    DbNode.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    DbNode.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    DbNode.add_member(:maintenance_type, Shapes::ShapeRef.new(shape: DbNodeMaintenanceType, location_name: "maintenanceType"))
    DbNode.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    DbNode.add_member(:software_storage_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "softwareStorageSizeInGB"))
    DbNode.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    DbNode.add_member(:time_maintenance_window_end, Shapes::ShapeRef.new(shape: String, location_name: "timeMaintenanceWindowEnd"))
    DbNode.add_member(:time_maintenance_window_start, Shapes::ShapeRef.new(shape: String, location_name: "timeMaintenanceWindowStart"))
    DbNode.add_member(:total_cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalCpuCoreCount"))
    DbNode.add_member(:vnic2_id, Shapes::ShapeRef.new(shape: String, location_name: "vnic2Id"))
    DbNode.add_member(:vnic_id, Shapes::ShapeRef.new(shape: String, location_name: "vnicId"))
    DbNode.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "privateIpAddress"))
    DbNode.add_member(:floating_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "floatingIpAddress"))
    DbNode.struct_class = Types::DbNode

    DbNodeList.member = Shapes::ShapeRef.new(shape: DbNodeSummary)

    DbNodeSummary.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbNodeId"))
    DbNodeSummary.add_member(:db_node_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "dbNodeArn"))
    DbNodeSummary.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    DbNodeSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DbNodeSummary.add_member(:additional_details, Shapes::ShapeRef.new(shape: String, location_name: "additionalDetails"))
    DbNodeSummary.add_member(:backup_ip_id, Shapes::ShapeRef.new(shape: String, location_name: "backupIpId"))
    DbNodeSummary.add_member(:backup_vnic_2_id, Shapes::ShapeRef.new(shape: String, location_name: "backupVnic2Id"))
    DbNodeSummary.add_member(:backup_vnic_id, Shapes::ShapeRef.new(shape: String, location_name: "backupVnicId"))
    DbNodeSummary.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    DbNodeSummary.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbNodeSummary.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbServerId"))
    DbNodeSummary.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "dbSystemId"))
    DbNodeSummary.add_member(:fault_domain, Shapes::ShapeRef.new(shape: String, location_name: "faultDomain"))
    DbNodeSummary.add_member(:host_ip_id, Shapes::ShapeRef.new(shape: String, location_name: "hostIpId"))
    DbNodeSummary.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    DbNodeSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    DbNodeSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    DbNodeSummary.add_member(:maintenance_type, Shapes::ShapeRef.new(shape: DbNodeMaintenanceType, location_name: "maintenanceType"))
    DbNodeSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    DbNodeSummary.add_member(:software_storage_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "softwareStorageSizeInGB"))
    DbNodeSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    DbNodeSummary.add_member(:time_maintenance_window_end, Shapes::ShapeRef.new(shape: String, location_name: "timeMaintenanceWindowEnd"))
    DbNodeSummary.add_member(:time_maintenance_window_start, Shapes::ShapeRef.new(shape: String, location_name: "timeMaintenanceWindowStart"))
    DbNodeSummary.add_member(:total_cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalCpuCoreCount"))
    DbNodeSummary.add_member(:vnic2_id, Shapes::ShapeRef.new(shape: String, location_name: "vnic2Id"))
    DbNodeSummary.add_member(:vnic_id, Shapes::ShapeRef.new(shape: String, location_name: "vnicId"))
    DbNodeSummary.struct_class = Types::DbNodeSummary

    DbServer.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbServerId"))
    DbServer.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    DbServer.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DbServer.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    DbServer.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbServer.add_member(:db_server_patching_details, Shapes::ShapeRef.new(shape: DbServerPatchingDetails, location_name: "dbServerPatchingDetails"))
    DbServer.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    DbServer.add_member(:exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, location_name: "exadataInfrastructureId"))
    DbServer.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    DbServer.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    DbServer.add_member(:max_cpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCpuCount"))
    DbServer.add_member(:max_db_node_storage_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxDbNodeStorageInGBs"))
    DbServer.add_member(:max_memory_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxMemoryInGBs"))
    DbServer.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    DbServer.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    DbServer.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    DbServer.add_member(:vm_cluster_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vmClusterIds"))
    DbServer.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    DbServer.add_member(:autonomous_vm_cluster_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "autonomousVmClusterIds"))
    DbServer.add_member(:autonomous_virtual_machine_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "autonomousVirtualMachineIds"))
    DbServer.struct_class = Types::DbServer

    DbServerList.member = Shapes::ShapeRef.new(shape: DbServerSummary)

    DbServerPatchingDetails.add_member(:estimated_patch_duration, Shapes::ShapeRef.new(shape: Integer, location_name: "estimatedPatchDuration"))
    DbServerPatchingDetails.add_member(:patching_status, Shapes::ShapeRef.new(shape: DbServerPatchingStatus, location_name: "patchingStatus"))
    DbServerPatchingDetails.add_member(:time_patching_ended, Shapes::ShapeRef.new(shape: String, location_name: "timePatchingEnded"))
    DbServerPatchingDetails.add_member(:time_patching_started, Shapes::ShapeRef.new(shape: String, location_name: "timePatchingStarted"))
    DbServerPatchingDetails.struct_class = Types::DbServerPatchingDetails

    DbServerSummary.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dbServerId"))
    DbServerSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    DbServerSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DbServerSummary.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    DbServerSummary.add_member(:db_node_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dbNodeStorageSizeInGBs"))
    DbServerSummary.add_member(:db_server_patching_details, Shapes::ShapeRef.new(shape: DbServerPatchingDetails, location_name: "dbServerPatchingDetails"))
    DbServerSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    DbServerSummary.add_member(:exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, location_name: "exadataInfrastructureId"))
    DbServerSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    DbServerSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    DbServerSummary.add_member(:max_cpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCpuCount"))
    DbServerSummary.add_member(:max_db_node_storage_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxDbNodeStorageInGBs"))
    DbServerSummary.add_member(:max_memory_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxMemoryInGBs"))
    DbServerSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    DbServerSummary.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    DbServerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    DbServerSummary.add_member(:vm_cluster_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vmClusterIds"))
    DbServerSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    DbServerSummary.add_member(:autonomous_vm_cluster_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "autonomousVmClusterIds"))
    DbServerSummary.add_member(:autonomous_virtual_machine_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "autonomousVirtualMachineIds"))
    DbServerSummary.struct_class = Types::DbServerSummary

    DbSystemShapeList.member = Shapes::ShapeRef.new(shape: DbSystemShapeSummary)

    DbSystemShapeSummary.add_member(:available_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "availableCoreCount"))
    DbSystemShapeSummary.add_member(:available_core_count_per_node, Shapes::ShapeRef.new(shape: Integer, location_name: "availableCoreCountPerNode"))
    DbSystemShapeSummary.add_member(:available_data_storage_in_t_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableDataStorageInTBs"))
    DbSystemShapeSummary.add_member(:available_data_storage_per_server_in_t_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableDataStoragePerServerInTBs"))
    DbSystemShapeSummary.add_member(:available_db_node_per_node_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableDbNodePerNodeInGBs"))
    DbSystemShapeSummary.add_member(:available_db_node_storage_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableDbNodeStorageInGBs"))
    DbSystemShapeSummary.add_member(:available_memory_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableMemoryInGBs"))
    DbSystemShapeSummary.add_member(:available_memory_per_node_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableMemoryPerNodeInGBs"))
    DbSystemShapeSummary.add_member(:core_count_increment, Shapes::ShapeRef.new(shape: Integer, location_name: "coreCountIncrement"))
    DbSystemShapeSummary.add_member(:max_storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maxStorageCount"))
    DbSystemShapeSummary.add_member(:maximum_node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maximumNodeCount"))
    DbSystemShapeSummary.add_member(:min_core_count_per_node, Shapes::ShapeRef.new(shape: Integer, location_name: "minCoreCountPerNode"))
    DbSystemShapeSummary.add_member(:min_data_storage_in_t_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "minDataStorageInTBs"))
    DbSystemShapeSummary.add_member(:min_db_node_storage_per_node_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "minDbNodeStoragePerNodeInGBs"))
    DbSystemShapeSummary.add_member(:min_memory_per_node_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "minMemoryPerNodeInGBs"))
    DbSystemShapeSummary.add_member(:min_storage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "minStorageCount"))
    DbSystemShapeSummary.add_member(:minimum_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "minimumCoreCount"))
    DbSystemShapeSummary.add_member(:minimum_node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "minimumNodeCount"))
    DbSystemShapeSummary.add_member(:runtime_minimum_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runtimeMinimumCoreCount"))
    DbSystemShapeSummary.add_member(:shape_family, Shapes::ShapeRef.new(shape: String, location_name: "shapeFamily"))
    DbSystemShapeSummary.add_member(:shape_type, Shapes::ShapeRef.new(shape: ShapeType, location_name: "shapeType"))
    DbSystemShapeSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DbSystemShapeSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    DbSystemShapeSummary.add_member(:are_server_types_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "areServerTypesSupported"))
    DbSystemShapeSummary.struct_class = Types::DbSystemShapeSummary

    DeleteCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    DeleteCloudAutonomousVmClusterInput.struct_class = Types::DeleteCloudAutonomousVmClusterInput

    DeleteCloudAutonomousVmClusterOutput.struct_class = Types::DeleteCloudAutonomousVmClusterOutput

    DeleteCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    DeleteCloudExadataInfrastructureInput.struct_class = Types::DeleteCloudExadataInfrastructureInput

    DeleteCloudExadataInfrastructureOutput.struct_class = Types::DeleteCloudExadataInfrastructureOutput

    DeleteCloudVmClusterInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    DeleteCloudVmClusterInput.struct_class = Types::DeleteCloudVmClusterInput

    DeleteCloudVmClusterOutput.struct_class = Types::DeleteCloudVmClusterOutput

    DeleteOdbNetworkInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    DeleteOdbNetworkInput.add_member(:delete_associated_resources, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deleteAssociatedResources"))
    DeleteOdbNetworkInput.struct_class = Types::DeleteOdbNetworkInput

    DeleteOdbNetworkOutput.struct_class = Types::DeleteOdbNetworkOutput

    DeleteOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbPeeringConnectionId"))
    DeleteOdbPeeringConnectionInput.struct_class = Types::DeleteOdbPeeringConnectionInput

    DeleteOdbPeeringConnectionOutput.struct_class = Types::DeleteOdbPeeringConnectionOutput

    DisassociateIamRoleFromResourceInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "iamRoleArn"))
    DisassociateIamRoleFromResourceInput.add_member(:aws_integration, Shapes::ShapeRef.new(shape: SupportedAwsIntegration, required: true, location_name: "awsIntegration"))
    DisassociateIamRoleFromResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: DisassociateIamRoleFromResourceInputResourceArnString, required: true, location_name: "resourceArn"))
    DisassociateIamRoleFromResourceInput.struct_class = Types::DisassociateIamRoleFromResourceInput

    DisassociateIamRoleFromResourceOutput.struct_class = Types::DisassociateIamRoleFromResourceOutput

    ExadataIormConfig.add_member(:db_plans, Shapes::ShapeRef.new(shape: DbIormConfigList, location_name: "dbPlans"))
    ExadataIormConfig.add_member(:lifecycle_details, Shapes::ShapeRef.new(shape: String, location_name: "lifecycleDetails"))
    ExadataIormConfig.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: IormLifecycleState, location_name: "lifecycleState"))
    ExadataIormConfig.add_member(:objective, Shapes::ShapeRef.new(shape: Objective, location_name: "objective"))
    ExadataIormConfig.struct_class = Types::ExadataIormConfig

    GetCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    GetCloudAutonomousVmClusterInput.struct_class = Types::GetCloudAutonomousVmClusterInput

    GetCloudAutonomousVmClusterOutput.add_member(:cloud_autonomous_vm_cluster, Shapes::ShapeRef.new(shape: CloudAutonomousVmCluster, location_name: "cloudAutonomousVmCluster"))
    GetCloudAutonomousVmClusterOutput.struct_class = Types::GetCloudAutonomousVmClusterOutput

    GetCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    GetCloudExadataInfrastructureInput.struct_class = Types::GetCloudExadataInfrastructureInput

    GetCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure, Shapes::ShapeRef.new(shape: CloudExadataInfrastructure, location_name: "cloudExadataInfrastructure"))
    GetCloudExadataInfrastructureOutput.struct_class = Types::GetCloudExadataInfrastructureOutput

    GetCloudExadataInfrastructureUnallocatedResourcesInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    GetCloudExadataInfrastructureUnallocatedResourcesInput.add_member(:db_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dbServers"))
    GetCloudExadataInfrastructureUnallocatedResourcesInput.struct_class = Types::GetCloudExadataInfrastructureUnallocatedResourcesInput

    GetCloudExadataInfrastructureUnallocatedResourcesOutput.add_member(:cloud_exadata_infrastructure_unallocated_resources, Shapes::ShapeRef.new(shape: CloudExadataInfrastructureUnallocatedResources, location_name: "cloudExadataInfrastructureUnallocatedResources"))
    GetCloudExadataInfrastructureUnallocatedResourcesOutput.struct_class = Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput

    GetCloudVmClusterInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    GetCloudVmClusterInput.struct_class = Types::GetCloudVmClusterInput

    GetCloudVmClusterOutput.add_member(:cloud_vm_cluster, Shapes::ShapeRef.new(shape: CloudVmCluster, location_name: "cloudVmCluster"))
    GetCloudVmClusterOutput.struct_class = Types::GetCloudVmClusterOutput

    GetDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    GetDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    GetDbNodeInput.struct_class = Types::GetDbNodeInput

    GetDbNodeOutput.add_member(:db_node, Shapes::ShapeRef.new(shape: DbNode, location_name: "dbNode"))
    GetDbNodeOutput.struct_class = Types::GetDbNodeOutput

    GetDbServerInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    GetDbServerInput.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbServerId"))
    GetDbServerInput.struct_class = Types::GetDbServerInput

    GetDbServerOutput.add_member(:db_server, Shapes::ShapeRef.new(shape: DbServer, location_name: "dbServer"))
    GetDbServerOutput.struct_class = Types::GetDbServerOutput

    GetOciOnboardingStatusInput.struct_class = Types::GetOciOnboardingStatusInput

    GetOciOnboardingStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: OciOnboardingStatus, location_name: "status"))
    GetOciOnboardingStatusOutput.add_member(:existing_tenancy_activation_link, Shapes::ShapeRef.new(shape: String, location_name: "existingTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:new_tenancy_activation_link, Shapes::ShapeRef.new(shape: String, location_name: "newTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:oci_identity_domain, Shapes::ShapeRef.new(shape: OciIdentityDomain, location_name: "ociIdentityDomain"))
    GetOciOnboardingStatusOutput.struct_class = Types::GetOciOnboardingStatusOutput

    GetOdbNetworkInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    GetOdbNetworkInput.struct_class = Types::GetOdbNetworkInput

    GetOdbNetworkOutput.add_member(:odb_network, Shapes::ShapeRef.new(shape: OdbNetwork, location_name: "odbNetwork"))
    GetOdbNetworkOutput.struct_class = Types::GetOdbNetworkOutput

    GetOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbPeeringConnectionId"))
    GetOdbPeeringConnectionInput.struct_class = Types::GetOdbPeeringConnectionInput

    GetOdbPeeringConnectionOutput.add_member(:odb_peering_connection, Shapes::ShapeRef.new(shape: OdbPeeringConnection, location_name: "odbPeeringConnection"))
    GetOdbPeeringConnectionOutput.struct_class = Types::GetOdbPeeringConnectionOutput

    GiVersionList.member = Shapes::ShapeRef.new(shape: GiVersionSummary)

    GiVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    GiVersionSummary.struct_class = Types::GiVersionSummary

    HoursOfDay.member = Shapes::ShapeRef.new(shape: Integer)

    IamRole.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleArn"))
    IamRole.add_member(:status, Shapes::ShapeRef.new(shape: IamRoleStatus, location_name: "status"))
    IamRole.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    IamRole.add_member(:aws_integration, Shapes::ShapeRef.new(shape: SupportedAwsIntegration, location_name: "awsIntegration"))
    IamRole.struct_class = Types::IamRole

    IamRoleList.member = Shapes::ShapeRef.new(shape: IamRole)

    InitializeServiceInput.add_member(:oci_identity_domain, Shapes::ShapeRef.new(shape: Boolean, location_name: "ociIdentityDomain"))
    InitializeServiceInput.struct_class = Types::InitializeServiceInput

    InitializeServiceOutput.struct_class = Types::InitializeServiceOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    KmsAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    KmsAccess.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    KmsAccess.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    KmsAccess.add_member(:kms_policy_document, Shapes::ShapeRef.new(shape: String, location_name: "kmsPolicyDocument"))
    KmsAccess.struct_class = Types::KmsAccess

    ListAutonomousVirtualMachinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousVirtualMachinesInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousVirtualMachinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousVirtualMachinesInputNextTokenString, location_name: "nextToken"))
    ListAutonomousVirtualMachinesInput.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    ListAutonomousVirtualMachinesInput.struct_class = Types::ListAutonomousVirtualMachinesInput

    ListAutonomousVirtualMachinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousVirtualMachinesOutput.add_member(:autonomous_virtual_machines, Shapes::ShapeRef.new(shape: AutonomousVirtualMachineList, required: true, location_name: "autonomousVirtualMachines"))
    ListAutonomousVirtualMachinesOutput.struct_class = Types::ListAutonomousVirtualMachinesOutput

    ListCloudAutonomousVmClustersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCloudAutonomousVmClustersInputMaxResultsInteger, location_name: "maxResults"))
    ListCloudAutonomousVmClustersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListCloudAutonomousVmClustersInputNextTokenString, location_name: "nextToken"))
    ListCloudAutonomousVmClustersInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    ListCloudAutonomousVmClustersInput.struct_class = Types::ListCloudAutonomousVmClustersInput

    ListCloudAutonomousVmClustersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCloudAutonomousVmClustersOutput.add_member(:cloud_autonomous_vm_clusters, Shapes::ShapeRef.new(shape: CloudAutonomousVmClusterList, required: true, location_name: "cloudAutonomousVmClusters"))
    ListCloudAutonomousVmClustersOutput.struct_class = Types::ListCloudAutonomousVmClustersOutput

    ListCloudExadataInfrastructuresInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCloudExadataInfrastructuresInputMaxResultsInteger, location_name: "maxResults"))
    ListCloudExadataInfrastructuresInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListCloudExadataInfrastructuresInputNextTokenString, location_name: "nextToken"))
    ListCloudExadataInfrastructuresInput.struct_class = Types::ListCloudExadataInfrastructuresInput

    ListCloudExadataInfrastructuresOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCloudExadataInfrastructuresOutput.add_member(:cloud_exadata_infrastructures, Shapes::ShapeRef.new(shape: CloudExadataInfrastructureList, required: true, location_name: "cloudExadataInfrastructures"))
    ListCloudExadataInfrastructuresOutput.struct_class = Types::ListCloudExadataInfrastructuresOutput

    ListCloudVmClustersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCloudVmClustersInputMaxResultsInteger, location_name: "maxResults"))
    ListCloudVmClustersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListCloudVmClustersInputNextTokenString, location_name: "nextToken"))
    ListCloudVmClustersInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    ListCloudVmClustersInput.struct_class = Types::ListCloudVmClustersInput

    ListCloudVmClustersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCloudVmClustersOutput.add_member(:cloud_vm_clusters, Shapes::ShapeRef.new(shape: CloudVmClusterList, required: true, location_name: "cloudVmClusters"))
    ListCloudVmClustersOutput.struct_class = Types::ListCloudVmClustersOutput

    ListDbNodesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDbNodesInputMaxResultsInteger, location_name: "maxResults"))
    ListDbNodesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDbNodesInputNextTokenString, location_name: "nextToken"))
    ListDbNodesInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    ListDbNodesInput.struct_class = Types::ListDbNodesInput

    ListDbNodesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDbNodesOutput.add_member(:db_nodes, Shapes::ShapeRef.new(shape: DbNodeList, required: true, location_name: "dbNodes"))
    ListDbNodesOutput.struct_class = Types::ListDbNodesOutput

    ListDbServersInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    ListDbServersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDbServersInputMaxResultsInteger, location_name: "maxResults"))
    ListDbServersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDbServersInputNextTokenString, location_name: "nextToken"))
    ListDbServersInput.struct_class = Types::ListDbServersInput

    ListDbServersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDbServersOutput.add_member(:db_servers, Shapes::ShapeRef.new(shape: DbServerList, required: true, location_name: "dbServers"))
    ListDbServersOutput.struct_class = Types::ListDbServersOutput

    ListDbSystemShapesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDbSystemShapesInputMaxResultsInteger, location_name: "maxResults"))
    ListDbSystemShapesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDbSystemShapesInputNextTokenString, location_name: "nextToken"))
    ListDbSystemShapesInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ListDbSystemShapesInputAvailabilityZoneString, location_name: "availabilityZone"))
    ListDbSystemShapesInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: ListDbSystemShapesInputAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    ListDbSystemShapesInput.struct_class = Types::ListDbSystemShapesInput

    ListDbSystemShapesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDbSystemShapesOutput.add_member(:db_system_shapes, Shapes::ShapeRef.new(shape: DbSystemShapeList, required: true, location_name: "dbSystemShapes"))
    ListDbSystemShapesOutput.struct_class = Types::ListDbSystemShapesOutput

    ListGiVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListGiVersionsInputMaxResultsInteger, location_name: "maxResults"))
    ListGiVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListGiVersionsInputNextTokenString, location_name: "nextToken"))
    ListGiVersionsInput.add_member(:shape, Shapes::ShapeRef.new(shape: ListGiVersionsInputShapeString, location_name: "shape"))
    ListGiVersionsInput.struct_class = Types::ListGiVersionsInput

    ListGiVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGiVersionsOutput.add_member(:gi_versions, Shapes::ShapeRef.new(shape: GiVersionList, required: true, location_name: "giVersions"))
    ListGiVersionsOutput.struct_class = Types::ListGiVersionsOutput

    ListOdbNetworksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOdbNetworksInputMaxResultsInteger, location_name: "maxResults"))
    ListOdbNetworksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOdbNetworksInputNextTokenString, location_name: "nextToken"))
    ListOdbNetworksInput.struct_class = Types::ListOdbNetworksInput

    ListOdbNetworksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOdbNetworksOutput.add_member(:odb_networks, Shapes::ShapeRef.new(shape: OdbNetworkList, required: true, location_name: "odbNetworks"))
    ListOdbNetworksOutput.struct_class = Types::ListOdbNetworksOutput

    ListOdbPeeringConnectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOdbPeeringConnectionsInputMaxResultsInteger, location_name: "maxResults"))
    ListOdbPeeringConnectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOdbPeeringConnectionsInputNextTokenString, location_name: "nextToken"))
    ListOdbPeeringConnectionsInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    ListOdbPeeringConnectionsInput.struct_class = Types::ListOdbPeeringConnectionsInput

    ListOdbPeeringConnectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOdbPeeringConnectionsOutput.add_member(:odb_peering_connections, Shapes::ShapeRef.new(shape: OdbPeeringConnectionList, required: true, location_name: "odbPeeringConnections"))
    ListOdbPeeringConnectionsOutput.struct_class = Types::ListOdbPeeringConnectionsOutput

    ListSystemVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSystemVersionsInputMaxResultsInteger, location_name: "maxResults"))
    ListSystemVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListSystemVersionsInputNextTokenString, location_name: "nextToken"))
    ListSystemVersionsInput.add_member(:gi_version, Shapes::ShapeRef.new(shape: ListSystemVersionsInputGiVersionString, required: true, location_name: "giVersion"))
    ListSystemVersionsInput.add_member(:shape, Shapes::ShapeRef.new(shape: ListSystemVersionsInputShapeString, required: true, location_name: "shape"))
    ListSystemVersionsInput.struct_class = Types::ListSystemVersionsInput

    ListSystemVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSystemVersionsOutput.add_member(:system_versions, Shapes::ShapeRef.new(shape: SystemVersionList, required: true, location_name: "systemVersions"))
    ListSystemVersionsOutput.struct_class = Types::ListSystemVersionsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MaintenanceWindow.add_member(:custom_action_timeout_in_mins, Shapes::ShapeRef.new(shape: MaintenanceWindowCustomActionTimeoutInMinsInteger, location_name: "customActionTimeoutInMins"))
    MaintenanceWindow.add_member(:days_of_week, Shapes::ShapeRef.new(shape: DaysOfWeek, location_name: "daysOfWeek"))
    MaintenanceWindow.add_member(:hours_of_day, Shapes::ShapeRef.new(shape: HoursOfDay, location_name: "hoursOfDay"))
    MaintenanceWindow.add_member(:is_custom_action_timeout_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCustomActionTimeoutEnabled"))
    MaintenanceWindow.add_member(:lead_time_in_weeks, Shapes::ShapeRef.new(shape: MaintenanceWindowLeadTimeInWeeksInteger, location_name: "leadTimeInWeeks"))
    MaintenanceWindow.add_member(:months, Shapes::ShapeRef.new(shape: Months, location_name: "months"))
    MaintenanceWindow.add_member(:patching_mode, Shapes::ShapeRef.new(shape: PatchingModeType, location_name: "patchingMode"))
    MaintenanceWindow.add_member(:preference, Shapes::ShapeRef.new(shape: PreferenceType, location_name: "preference"))
    MaintenanceWindow.add_member(:skip_ru, Shapes::ShapeRef.new(shape: Boolean, location_name: "skipRu"))
    MaintenanceWindow.add_member(:weeks_of_month, Shapes::ShapeRef.new(shape: WeeksOfMonth, location_name: "weeksOfMonth"))
    MaintenanceWindow.struct_class = Types::MaintenanceWindow

    ManagedS3BackupAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    ManagedS3BackupAccess.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    ManagedS3BackupAccess.struct_class = Types::ManagedS3BackupAccess

    ManagedServices.add_member(:service_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "serviceNetworkArn"))
    ManagedServices.add_member(:resource_gateway_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceGatewayArn"))
    ManagedServices.add_member(:managed_services_ipv_4_cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "managedServicesIpv4Cidrs"))
    ManagedServices.add_member(:service_network_endpoint, Shapes::ShapeRef.new(shape: ServiceNetworkEndpoint, location_name: "serviceNetworkEndpoint"))
    ManagedServices.add_member(:managed_s3_backup_access, Shapes::ShapeRef.new(shape: ManagedS3BackupAccess, location_name: "managedS3BackupAccess"))
    ManagedServices.add_member(:zero_etl_access, Shapes::ShapeRef.new(shape: ZeroEtlAccess, location_name: "zeroEtlAccess"))
    ManagedServices.add_member(:s3_access, Shapes::ShapeRef.new(shape: S3Access, location_name: "s3Access"))
    ManagedServices.add_member(:sts_access, Shapes::ShapeRef.new(shape: StsAccess, location_name: "stsAccess"))
    ManagedServices.add_member(:kms_access, Shapes::ShapeRef.new(shape: KmsAccess, location_name: "kmsAccess"))
    ManagedServices.add_member(:cross_region_s3_restore_sources_access, Shapes::ShapeRef.new(shape: CrossRegionS3RestoreSourcesAccessList, location_name: "crossRegionS3RestoreSourcesAccess"))
    ManagedServices.struct_class = Types::ManagedServices

    Month.add_member(:name, Shapes::ShapeRef.new(shape: MonthName, location_name: "name"))
    Month.struct_class = Types::Month

    Months.member = Shapes::ShapeRef.new(shape: Month)

    OciDnsForwardingConfig.add_member(:domain_name, Shapes::ShapeRef.new(shape: OciDnsForwardingConfigDomainNameString, location_name: "domainName"))
    OciDnsForwardingConfig.add_member(:oci_dns_listener_ip, Shapes::ShapeRef.new(shape: String, location_name: "ociDnsListenerIp"))
    OciDnsForwardingConfig.struct_class = Types::OciDnsForwardingConfig

    OciDnsForwardingConfigList.member = Shapes::ShapeRef.new(shape: OciDnsForwardingConfig)

    OciIdentityDomain.add_member(:oci_identity_domain_id, Shapes::ShapeRef.new(shape: String, location_name: "ociIdentityDomainId"))
    OciIdentityDomain.add_member(:oci_identity_domain_resource_url, Shapes::ShapeRef.new(shape: String, location_name: "ociIdentityDomainResourceUrl"))
    OciIdentityDomain.add_member(:oci_identity_domain_url, Shapes::ShapeRef.new(shape: String, location_name: "ociIdentityDomainUrl"))
    OciIdentityDomain.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    OciIdentityDomain.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    OciIdentityDomain.add_member(:account_setup_cloud_formation_url, Shapes::ShapeRef.new(shape: String, location_name: "accountSetupCloudFormationUrl"))
    OciIdentityDomain.struct_class = Types::OciIdentityDomain

    OdbNetwork.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    OdbNetwork.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    OdbNetwork.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    OdbNetwork.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    OdbNetwork.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "odbNetworkArn"))
    OdbNetwork.add_member(:availability_zone, Shapes::ShapeRef.new(shape: OdbNetworkAvailabilityZoneString, location_name: "availabilityZone"))
    OdbNetwork.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: OdbNetworkAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    OdbNetwork.add_member(:client_subnet_cidr, Shapes::ShapeRef.new(shape: OdbNetworkClientSubnetCidrString, location_name: "clientSubnetCidr"))
    OdbNetwork.add_member(:backup_subnet_cidr, Shapes::ShapeRef.new(shape: OdbNetworkBackupSubnetCidrString, location_name: "backupSubnetCidr"))
    OdbNetwork.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: OdbNetworkCustomDomainNameString, location_name: "customDomainName"))
    OdbNetwork.add_member(:default_dns_prefix, Shapes::ShapeRef.new(shape: OdbNetworkDefaultDnsPrefixString, location_name: "defaultDnsPrefix"))
    OdbNetwork.add_member(:peered_cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "peeredCidrs"))
    OdbNetwork.add_member(:oci_network_anchor_id, Shapes::ShapeRef.new(shape: OdbNetworkOciNetworkAnchorIdString, location_name: "ociNetworkAnchorId"))
    OdbNetwork.add_member(:oci_network_anchor_url, Shapes::ShapeRef.new(shape: String, location_name: "ociNetworkAnchorUrl"))
    OdbNetwork.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    OdbNetwork.add_member(:oci_vcn_id, Shapes::ShapeRef.new(shape: OdbNetworkOciVcnIdString, location_name: "ociVcnId"))
    OdbNetwork.add_member(:oci_vcn_url, Shapes::ShapeRef.new(shape: String, location_name: "ociVcnUrl"))
    OdbNetwork.add_member(:oci_dns_forwarding_configs, Shapes::ShapeRef.new(shape: OciDnsForwardingConfigList, location_name: "ociDnsForwardingConfigs"))
    OdbNetwork.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    OdbNetwork.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    OdbNetwork.add_member(:managed_services, Shapes::ShapeRef.new(shape: ManagedServices, location_name: "managedServices"))
    OdbNetwork.struct_class = Types::OdbNetwork

    OdbNetworkList.member = Shapes::ShapeRef.new(shape: OdbNetworkSummary)

    OdbNetworkSummary.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    OdbNetworkSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    OdbNetworkSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    OdbNetworkSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    OdbNetworkSummary.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "odbNetworkArn"))
    OdbNetworkSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: OdbNetworkSummaryAvailabilityZoneString, location_name: "availabilityZone"))
    OdbNetworkSummary.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: OdbNetworkSummaryAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    OdbNetworkSummary.add_member(:client_subnet_cidr, Shapes::ShapeRef.new(shape: OdbNetworkSummaryClientSubnetCidrString, location_name: "clientSubnetCidr"))
    OdbNetworkSummary.add_member(:backup_subnet_cidr, Shapes::ShapeRef.new(shape: OdbNetworkSummaryBackupSubnetCidrString, location_name: "backupSubnetCidr"))
    OdbNetworkSummary.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: OdbNetworkSummaryCustomDomainNameString, location_name: "customDomainName"))
    OdbNetworkSummary.add_member(:default_dns_prefix, Shapes::ShapeRef.new(shape: OdbNetworkSummaryDefaultDnsPrefixString, location_name: "defaultDnsPrefix"))
    OdbNetworkSummary.add_member(:peered_cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "peeredCidrs"))
    OdbNetworkSummary.add_member(:oci_network_anchor_id, Shapes::ShapeRef.new(shape: OdbNetworkSummaryOciNetworkAnchorIdString, location_name: "ociNetworkAnchorId"))
    OdbNetworkSummary.add_member(:oci_network_anchor_url, Shapes::ShapeRef.new(shape: String, location_name: "ociNetworkAnchorUrl"))
    OdbNetworkSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    OdbNetworkSummary.add_member(:oci_vcn_id, Shapes::ShapeRef.new(shape: OdbNetworkSummaryOciVcnIdString, location_name: "ociVcnId"))
    OdbNetworkSummary.add_member(:oci_vcn_url, Shapes::ShapeRef.new(shape: String, location_name: "ociVcnUrl"))
    OdbNetworkSummary.add_member(:oci_dns_forwarding_configs, Shapes::ShapeRef.new(shape: OciDnsForwardingConfigList, location_name: "ociDnsForwardingConfigs"))
    OdbNetworkSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    OdbNetworkSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    OdbNetworkSummary.add_member(:managed_services, Shapes::ShapeRef.new(shape: ManagedServices, location_name: "managedServices"))
    OdbNetworkSummary.struct_class = Types::OdbNetworkSummary

    OdbPeeringConnection.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbPeeringConnectionId"))
    OdbPeeringConnection.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    OdbPeeringConnection.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    OdbPeeringConnection.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    OdbPeeringConnection.add_member(:odb_peering_connection_arn, Shapes::ShapeRef.new(shape: String, location_name: "odbPeeringConnectionArn"))
    OdbPeeringConnection.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "odbNetworkArn"))
    OdbPeeringConnection.add_member(:peer_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "peerNetworkArn"))
    OdbPeeringConnection.add_member(:odb_peering_connection_type, Shapes::ShapeRef.new(shape: String, location_name: "odbPeeringConnectionType"))
    OdbPeeringConnection.add_member(:peer_network_cidrs, Shapes::ShapeRef.new(shape: PeeredCidrList, location_name: "peerNetworkCidrs"))
    OdbPeeringConnection.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    OdbPeeringConnection.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    OdbPeeringConnection.struct_class = Types::OdbPeeringConnection

    OdbPeeringConnectionList.member = Shapes::ShapeRef.new(shape: OdbPeeringConnectionSummary)

    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbPeeringConnectionId"))
    OdbPeeringConnectionSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    OdbPeeringConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    OdbPeeringConnectionSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_arn, Shapes::ShapeRef.new(shape: String, location_name: "odbPeeringConnectionArn"))
    OdbPeeringConnectionSummary.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "odbNetworkArn"))
    OdbPeeringConnectionSummary.add_member(:peer_network_arn, Shapes::ShapeRef.new(shape: String, location_name: "peerNetworkArn"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_type, Shapes::ShapeRef.new(shape: String, location_name: "odbPeeringConnectionType"))
    OdbPeeringConnectionSummary.add_member(:peer_network_cidrs, Shapes::ShapeRef.new(shape: PeeredCidrList, location_name: "peerNetworkCidrs"))
    OdbPeeringConnectionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    OdbPeeringConnectionSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    OdbPeeringConnectionSummary.struct_class = Types::OdbPeeringConnectionSummary

    PeeredCidrList.member = Shapes::ShapeRef.new(shape: PeeredCidr)

    RebootDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    RebootDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    RebootDbNodeInput.struct_class = Types::RebootDbNodeInput

    RebootDbNodeOutput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dbNodeId"))
    RebootDbNodeOutput.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    RebootDbNodeOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RebootDbNodeOutput.struct_class = Types::RebootDbNodeOutput

    RequestTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    S3Access.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    S3Access.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    S3Access.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    S3Access.add_member(:s3_policy_document, Shapes::ShapeRef.new(shape: String, location_name: "s3PolicyDocument"))
    S3Access.struct_class = Types::S3Access

    SensitiveStringList.member = Shapes::ShapeRef.new(shape: SensitiveString)

    ServiceNetworkEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcEndpointId"))
    ServiceNetworkEndpoint.add_member(:vpc_endpoint_type, Shapes::ShapeRef.new(shape: VpcEndpointType, location_name: "vpcEndpointType"))
    ServiceNetworkEndpoint.struct_class = Types::ServiceNetworkEndpoint

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    StartDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    StartDbNodeInput.struct_class = Types::StartDbNodeInput

    StartDbNodeOutput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dbNodeId"))
    StartDbNodeOutput.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    StartDbNodeOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StartDbNodeOutput.struct_class = Types::StartDbNodeOutput

    StopDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    StopDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    StopDbNodeInput.struct_class = Types::StopDbNodeInput

    StopDbNodeOutput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dbNodeId"))
    StopDbNodeOutput.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    StopDbNodeOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StopDbNodeOutput.struct_class = Types::StopDbNodeOutput

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StsAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    StsAccess.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    StsAccess.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    StsAccess.add_member(:sts_policy_document, Shapes::ShapeRef.new(shape: String, location_name: "stsPolicyDocument"))
    StsAccess.struct_class = Types::StsAccess

    SystemVersionList.member = Shapes::ShapeRef.new(shape: SystemVersionSummary)

    SystemVersionSummary.add_member(:gi_version, Shapes::ShapeRef.new(shape: String, location_name: "giVersion"))
    SystemVersionSummary.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    SystemVersionSummary.add_member(:system_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "systemVersions"))
    SystemVersionSummary.struct_class = Types::SystemVersionSummary

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    UpdateCloudExadataInfrastructureInput.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    UpdateCloudExadataInfrastructureInput.struct_class = Types::UpdateCloudExadataInfrastructureInput

    UpdateCloudExadataInfrastructureOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudExadataInfrastructureId"))
    UpdateCloudExadataInfrastructureOutput.struct_class = Types::UpdateCloudExadataInfrastructureOutput

    UpdateOdbNetworkInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    UpdateOdbNetworkInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    UpdateOdbNetworkInput.add_member(:peered_cidrs_to_be_added, Shapes::ShapeRef.new(shape: StringList, location_name: "peeredCidrsToBeAdded"))
    UpdateOdbNetworkInput.add_member(:peered_cidrs_to_be_removed, Shapes::ShapeRef.new(shape: StringList, location_name: "peeredCidrsToBeRemoved"))
    UpdateOdbNetworkInput.add_member(:s3_access, Shapes::ShapeRef.new(shape: Access, location_name: "s3Access"))
    UpdateOdbNetworkInput.add_member(:zero_etl_access, Shapes::ShapeRef.new(shape: Access, location_name: "zeroEtlAccess"))
    UpdateOdbNetworkInput.add_member(:sts_access, Shapes::ShapeRef.new(shape: Access, location_name: "stsAccess"))
    UpdateOdbNetworkInput.add_member(:kms_access, Shapes::ShapeRef.new(shape: Access, location_name: "kmsAccess"))
    UpdateOdbNetworkInput.add_member(:s3_policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "s3PolicyDocument"))
    UpdateOdbNetworkInput.add_member(:sts_policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "stsPolicyDocument"))
    UpdateOdbNetworkInput.add_member(:kms_policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "kmsPolicyDocument"))
    UpdateOdbNetworkInput.add_member(:cross_region_s3_restore_sources_to_enable, Shapes::ShapeRef.new(shape: StringList, location_name: "crossRegionS3RestoreSourcesToEnable"))
    UpdateOdbNetworkInput.add_member(:cross_region_s3_restore_sources_to_disable, Shapes::ShapeRef.new(shape: StringList, location_name: "crossRegionS3RestoreSourcesToDisable"))
    UpdateOdbNetworkInput.struct_class = Types::UpdateOdbNetworkInput

    UpdateOdbNetworkOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateOdbNetworkOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateOdbNetworkOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateOdbNetworkOutput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "odbNetworkId"))
    UpdateOdbNetworkOutput.struct_class = Types::UpdateOdbNetworkOutput

    UpdateOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbPeeringConnectionId"))
    UpdateOdbPeeringConnectionInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    UpdateOdbPeeringConnectionInput.add_member(:peer_network_cidrs_to_be_added, Shapes::ShapeRef.new(shape: PeeredCidrList, location_name: "peerNetworkCidrsToBeAdded"))
    UpdateOdbPeeringConnectionInput.add_member(:peer_network_cidrs_to_be_removed, Shapes::ShapeRef.new(shape: PeeredCidrList, location_name: "peerNetworkCidrsToBeRemoved"))
    UpdateOdbPeeringConnectionInput.struct_class = Types::UpdateOdbPeeringConnectionInput

    UpdateOdbPeeringConnectionOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateOdbPeeringConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateOdbPeeringConnectionOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateOdbPeeringConnectionOutput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "odbPeeringConnectionId"))
    UpdateOdbPeeringConnectionOutput.struct_class = Types::UpdateOdbPeeringConnectionOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WeeksOfMonth.member = Shapes::ShapeRef.new(shape: Integer)

    ZeroEtlAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    ZeroEtlAccess.add_member(:cidr, Shapes::ShapeRef.new(shape: String, location_name: "cidr"))
    ZeroEtlAccess.struct_class = Types::ZeroEtlAccess


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-08-20"

      api.metadata = {
        "apiVersion" => "2024-08-20",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "odb",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "odb",
        "serviceId" => "odb",
        "signatureVersion" => "v4",
        "signingName" => "odb",
        "targetPrefix" => "Odb",
        "uid" => "odb-2024-08-20",
      }

      api.add_operation(:accept_marketplace_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptMarketplaceRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptMarketplaceRegistrationInput)
        o.output = Shapes::ShapeRef.new(shape: AcceptMarketplaceRegistrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_iam_role_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateIamRoleToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateIamRoleToResourceInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateIamRoleToResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_cloud_autonomous_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudAutonomousVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudAutonomousVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_cloud_exadata_infrastructure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudExadataInfrastructure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudExadataInfrastructureOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_cloud_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_odb_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOdbNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOdbNetworkInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOdbNetworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_odb_peering_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOdbPeeringConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOdbPeeringConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOdbPeeringConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_cloud_autonomous_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudAutonomousVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudAutonomousVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCloudAutonomousVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_cloud_exadata_infrastructure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudExadataInfrastructure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudExadataInfrastructureInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCloudExadataInfrastructureOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_cloud_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCloudVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_odb_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOdbNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOdbNetworkInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteOdbNetworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_odb_peering_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOdbPeeringConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOdbPeeringConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteOdbPeeringConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_iam_role_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateIamRoleFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateIamRoleFromResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateIamRoleFromResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cloud_autonomous_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudAutonomousVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCloudAutonomousVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: GetCloudAutonomousVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cloud_exadata_infrastructure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudExadataInfrastructure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCloudExadataInfrastructureInput)
        o.output = Shapes::ShapeRef.new(shape: GetCloudExadataInfrastructureOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cloud_exadata_infrastructure_unallocated_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudExadataInfrastructureUnallocatedResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCloudExadataInfrastructureUnallocatedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: GetCloudExadataInfrastructureUnallocatedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cloud_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCloudVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: GetCloudVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_db_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDbNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDbNodeInput)
        o.output = Shapes::ShapeRef.new(shape: GetDbNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_db_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDbServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDbServerInput)
        o.output = Shapes::ShapeRef.new(shape: GetDbServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_oci_onboarding_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOciOnboardingStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOciOnboardingStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetOciOnboardingStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_odb_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOdbNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOdbNetworkInput)
        o.output = Shapes::ShapeRef.new(shape: GetOdbNetworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_odb_peering_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOdbPeeringConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOdbPeeringConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetOdbPeeringConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:initialize_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitializeService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InitializeServiceInput)
        o.output = Shapes::ShapeRef.new(shape: InitializeServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_autonomous_virtual_machines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousVirtualMachines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousVirtualMachinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousVirtualMachinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cloud_autonomous_vm_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudAutonomousVmClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCloudAutonomousVmClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListCloudAutonomousVmClustersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cloud_exadata_infrastructures, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudExadataInfrastructures"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCloudExadataInfrastructuresInput)
        o.output = Shapes::ShapeRef.new(shape: ListCloudExadataInfrastructuresOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cloud_vm_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudVmClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCloudVmClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListCloudVmClustersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_db_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbNodesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbNodesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_db_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbServersInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbServersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_db_system_shapes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbSystemShapes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbSystemShapesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbSystemShapesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gi_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGiVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGiVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGiVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_odb_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOdbNetworks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOdbNetworksInput)
        o.output = Shapes::ShapeRef.new(shape: ListOdbNetworksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_odb_peering_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOdbPeeringConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOdbPeeringConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListOdbPeeringConnectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_system_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSystemVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSystemVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSystemVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reboot_db_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDbNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDbNodeInput)
        o.output = Shapes::ShapeRef.new(shape: RebootDbNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_db_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDbNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDbNodeInput)
        o.output = Shapes::ShapeRef.new(shape: StartDbNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_db_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDbNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDbNodeInput)
        o.output = Shapes::ShapeRef.new(shape: StopDbNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_cloud_exadata_infrastructure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCloudExadataInfrastructure"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCloudExadataInfrastructureInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCloudExadataInfrastructureOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_odb_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOdbNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOdbNetworkInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateOdbNetworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_odb_peering_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOdbPeeringConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOdbPeeringConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateOdbPeeringConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end

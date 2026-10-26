# frozen_string_literal: true

# This is generated code!

module Aws::Odb
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptMarketplaceRegistrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AcceptMarketplaceRegistrationInput", name: "AcceptMarketplaceRegistrationInput")
    AcceptMarketplaceRegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AcceptMarketplaceRegistrationOutput", name: "AcceptMarketplaceRegistrationOutput")
    Access = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#Access", name: "Access")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdminPasswordSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#AdminPasswordSource", name: "AdminPasswordSource")
    AdminPasswordSourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#AdminPasswordSourceConfiguration", name: "AdminPasswordSourceConfiguration")
    AdminPasswordSourceConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#AdminPasswordSourceConfigurationInput", name: "AdminPasswordSourceConfigurationInput")
    AdminPasswordSourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AdminPasswordSourceSummary", name: "AdminPasswordSourceSummary")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AssociateIamRoleToResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AssociateIamRoleToResourceInput", name: "AssociateIamRoleToResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource", "ids" => {"exadbVmClusterId" => "resourceArn"}}]})
    AssociateIamRoleToResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AssociateIamRoleToResourceOutput", name: "AssociateIamRoleToResourceOutput")
    AssociateVirtualMachinesToExadbVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AssociateVirtualMachinesToExadbVmClusterInput", name: "AssociateVirtualMachinesToExadbVmClusterInput")
    AssociateVirtualMachinesToExadbVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AssociateVirtualMachinesToExadbVmClusterOutput", name: "AssociateVirtualMachinesToExadbVmClusterOutput")
    AutonomousDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabase", name: "AutonomousDatabase")
    AutonomousDatabaseApex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseApex", name: "AutonomousDatabaseApex")
    AutonomousDatabaseBackup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseBackup", name: "AutonomousDatabaseBackup")
    AutonomousDatabaseBackupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousDatabaseBackupList", name: "AutonomousDatabaseBackupList")
    AutonomousDatabaseBackupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#AutonomousDatabaseBackupStatus", name: "AutonomousDatabaseBackupStatus")
    AutonomousDatabaseBackupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseBackupSummary", name: "AutonomousDatabaseBackupSummary")
    AutonomousDatabaseBackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#AutonomousDatabaseBackupType", name: "AutonomousDatabaseBackupType")
    AutonomousDatabaseCharacterSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousDatabaseCharacterSetList", name: "AutonomousDatabaseCharacterSetList")
    AutonomousDatabaseCharacterSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseCharacterSetSummary", name: "AutonomousDatabaseCharacterSetSummary")
    AutonomousDatabaseConnectionStrings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseConnectionStrings", name: "AutonomousDatabaseConnectionStrings")
    AutonomousDatabaseConnectionUrls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseConnectionUrls", name: "AutonomousDatabaseConnectionUrls")
    AutonomousDatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousDatabaseList", name: "AutonomousDatabaseList")
    AutonomousDatabasePeerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousDatabasePeerList", name: "AutonomousDatabasePeerList")
    AutonomousDatabasePeerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabasePeerSummary", name: "AutonomousDatabasePeerSummary")
    AutonomousDatabaseResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#AutonomousDatabaseResourceStatus", name: "AutonomousDatabaseResourceStatus")
    AutonomousDatabaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseSummary", name: "AutonomousDatabaseSummary")
    AutonomousDatabaseVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousDatabaseVersionList", name: "AutonomousDatabaseVersionList")
    AutonomousDatabaseVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseVersionSummary", name: "AutonomousDatabaseVersionSummary")
    AutonomousDatabaseWalletDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousDatabaseWalletDetails", name: "AutonomousDatabaseWalletDetails")
    AutonomousDatabaseWalletFile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.odb#AutonomousDatabaseWalletFile", name: "AutonomousDatabaseWalletFile", traits: {"smithy.api#mediaType" => "application/zip", "smithy.api#sensitive" => {}})
    AutonomousDatabaseWalletStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#AutonomousDatabaseWalletStatus", name: "AutonomousDatabaseWalletStatus")
    AutonomousMaintenanceScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#AutonomousMaintenanceScheduleType", name: "AutonomousMaintenanceScheduleType")
    AutonomousVirtualMachineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#AutonomousVirtualMachineList", name: "AutonomousVirtualMachineList")
    AutonomousVirtualMachineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AutonomousVirtualMachineSummary", name: "AutonomousVirtualMachineSummary")
    AwsEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AwsEncryptionKeyConfiguration", name: "AwsEncryptionKeyConfiguration")
    AwsEncryptionKeyConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#AwsEncryptionKeyConfigurationInput", name: "AwsEncryptionKeyConfigurationInput")
    CloneToRefreshableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CloneToRefreshableConfiguration", name: "CloneToRefreshableConfiguration")
    CloneType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#CloneType", name: "CloneType")
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
    ClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ClusterName", name: "ClusterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]*$"})
    ComputeModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ComputeModel", name: "ComputeModel")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAutonomousDatabaseBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateAutonomousDatabaseBackupInput", name: "CreateAutonomousDatabaseBackupInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    CreateAutonomousDatabaseBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateAutonomousDatabaseBackupOutput", name: "CreateAutonomousDatabaseBackupOutput")
    CreateAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateAutonomousDatabaseInput", name: "CreateAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    CreateAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateAutonomousDatabaseOutput", name: "CreateAutonomousDatabaseOutput")
    CreateAutonomousDatabaseWalletInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateAutonomousDatabaseWalletInput", name: "CreateAutonomousDatabaseWalletInput")
    CreateAutonomousDatabaseWalletOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateAutonomousDatabaseWalletOutput", name: "CreateAutonomousDatabaseWalletOutput")
    CreateCloudAutonomousVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudAutonomousVmClusterInput", name: "CreateCloudAutonomousVmClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}, {"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    CreateCloudAutonomousVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudAutonomousVmClusterOutput", name: "CreateCloudAutonomousVmClusterOutput")
    CreateCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudExadataInfrastructureInput", name: "CreateCloudExadataInfrastructureInput")
    CreateCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudExadataInfrastructureOutput", name: "CreateCloudExadataInfrastructureOutput")
    CreateCloudVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudVmClusterInput", name: "CreateCloudVmClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}, {"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    CreateCloudVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateCloudVmClusterOutput", name: "CreateCloudVmClusterOutput")
    CreateExadbVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateExadbVmClusterInput", name: "CreateExadbVmClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#ExascaleDbStorageVaultResource"}, {"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    CreateExadbVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateExadbVmClusterOutput", name: "CreateExadbVmClusterOutput")
    CreateExascaleDbStorageVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateExascaleDbStorageVaultInput", name: "CreateExascaleDbStorageVaultInput")
    CreateExascaleDbStorageVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateExascaleDbStorageVaultOutput", name: "CreateExascaleDbStorageVaultOutput")
    CreateOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbNetworkInput", name: "CreateOdbNetworkInput")
    CreateOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbNetworkOutput", name: "CreateOdbNetworkOutput")
    CreateOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbPeeringConnectionInput", name: "CreateOdbPeeringConnectionInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    CreateOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CreateOdbPeeringConnectionOutput", name: "CreateOdbPeeringConnectionOutput")
    CrossRegionDataGuardConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CrossRegionDataGuardConfiguration", name: "CrossRegionDataGuardConfiguration")
    CrossRegionDisasterRecoveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CrossRegionDisasterRecoveryConfiguration", name: "CrossRegionDisasterRecoveryConfiguration")
    CrossRegionS3RestoreSourcesAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CrossRegionS3RestoreSourcesAccess", name: "CrossRegionS3RestoreSourcesAccess")
    CrossRegionS3RestoreSourcesAccessList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CrossRegionS3RestoreSourcesAccessList", name: "CrossRegionS3RestoreSourcesAccessList")
    CustomerContact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CustomerContact", name: "CustomerContact")
    CustomerContacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#CustomerContacts", name: "CustomerContacts")
    CustomerManagedAwsSecretConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CustomerManagedAwsSecretConfiguration", name: "CustomerManagedAwsSecretConfiguration")
    CustomerManagedAwsSecretConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#CustomerManagedAwsSecretConfigurationInput", name: "CustomerManagedAwsSecretConfigurationInput")
    DataCollectionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DataCollectionOptions", name: "DataCollectionOptions")
    DataGuardRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DataGuardRole", name: "DataGuardRole")
    DataSafeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DataSafeStatus", name: "DataSafeStatus")
    DatabaseCloneConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DatabaseCloneConfiguration", name: "DatabaseCloneConfiguration")
    DatabaseConnectionStringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.odb#DatabaseConnectionStringMap", name: "DatabaseConnectionStringMap")
    DatabaseConnectionStringProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DatabaseConnectionStringProfile", name: "DatabaseConnectionStringProfile")
    DatabaseConnectionStringProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DatabaseConnectionStringProfileList", name: "DatabaseConnectionStringProfileList")
    DatabaseEdition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DatabaseEdition", name: "DatabaseEdition")
    DatabaseManagementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DatabaseManagementStatus", name: "DatabaseManagementStatus")
    DatabaseStandbySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DatabaseStandbySummary", name: "DatabaseStandbySummary")
    DatabaseTool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DatabaseTool", name: "DatabaseTool")
    DatabaseToolList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#DatabaseToolList", name: "DatabaseToolList")
    DatabaseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DatabaseType", name: "DatabaseType")
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
    DbWorkload = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DbWorkload", name: "DbWorkload")
    DeleteAutonomousDatabaseBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteAutonomousDatabaseBackupInput", name: "DeleteAutonomousDatabaseBackupInput")
    DeleteAutonomousDatabaseBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteAutonomousDatabaseBackupOutput", name: "DeleteAutonomousDatabaseBackupOutput")
    DeleteAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteAutonomousDatabaseInput", name: "DeleteAutonomousDatabaseInput")
    DeleteAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteAutonomousDatabaseOutput", name: "DeleteAutonomousDatabaseOutput")
    DeleteCloudAutonomousVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudAutonomousVmClusterInput", name: "DeleteCloudAutonomousVmClusterInput")
    DeleteCloudAutonomousVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudAutonomousVmClusterOutput", name: "DeleteCloudAutonomousVmClusterOutput")
    DeleteCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudExadataInfrastructureInput", name: "DeleteCloudExadataInfrastructureInput")
    DeleteCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudExadataInfrastructureOutput", name: "DeleteCloudExadataInfrastructureOutput")
    DeleteCloudVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudVmClusterInput", name: "DeleteCloudVmClusterInput")
    DeleteCloudVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteCloudVmClusterOutput", name: "DeleteCloudVmClusterOutput")
    DeleteExadbVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteExadbVmClusterInput", name: "DeleteExadbVmClusterInput")
    DeleteExadbVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteExadbVmClusterOutput", name: "DeleteExadbVmClusterOutput")
    DeleteExascaleDbStorageVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteExascaleDbStorageVaultInput", name: "DeleteExascaleDbStorageVaultInput")
    DeleteExascaleDbStorageVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteExascaleDbStorageVaultOutput", name: "DeleteExascaleDbStorageVaultOutput")
    DeleteOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbNetworkInput", name: "DeleteOdbNetworkInput")
    DeleteOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbNetworkOutput", name: "DeleteOdbNetworkOutput")
    DeleteOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbPeeringConnectionInput", name: "DeleteOdbPeeringConnectionInput")
    DeleteOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DeleteOdbPeeringConnectionOutput", name: "DeleteOdbPeeringConnectionOutput")
    DisassociateIamRoleFromResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DisassociateIamRoleFromResourceInput", name: "DisassociateIamRoleFromResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource", "ids" => {"exadbVmClusterId" => "resourceArn"}}]})
    DisassociateIamRoleFromResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DisassociateIamRoleFromResourceOutput", name: "DisassociateIamRoleFromResourceOutput")
    DisassociateVirtualMachinesFromExadbVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DisassociateVirtualMachinesFromExadbVmClusterInput", name: "DisassociateVirtualMachinesFromExadbVmClusterInput")
    DisassociateVirtualMachinesFromExadbVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DisassociateVirtualMachinesFromExadbVmClusterOutput", name: "DisassociateVirtualMachinesFromExadbVmClusterOutput")
    DisasterRecoveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#DisasterRecoveryConfiguration", name: "DisasterRecoveryConfiguration")
    DisasterRecoveryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DisasterRecoveryType", name: "DisasterRecoveryType")
    DiskRedundancy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#DiskRedundancy", name: "DiskRedundancy")
    EncryptionKeyConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#EncryptionKeyConfiguration", name: "EncryptionKeyConfiguration")
    EncryptionKeyConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#EncryptionKeyConfigurationInput", name: "EncryptionKeyConfigurationInput")
    EncryptionKeyProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#EncryptionKeyProvider", name: "EncryptionKeyProvider")
    EncryptionKeyProviderInput = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#EncryptionKeyProviderInput", name: "EncryptionKeyProviderInput")
    EncryptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#EncryptionSummary", name: "EncryptionSummary")
    ExadataIormConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExadataIormConfig", name: "ExadataIormConfig")
    ExadbVmCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExadbVmCluster", name: "ExadbVmCluster")
    ExadbVmClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ExadbVmClusterList", name: "ExadbVmClusterList")
    ExadbVmClusterStorageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExadbVmClusterStorageDetails", name: "ExadbVmClusterStorageDetails")
    ExadbVmClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExadbVmClusterSummary", name: "ExadbVmClusterSummary")
    ExascaleDbStorageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExascaleDbStorageDetails", name: "ExascaleDbStorageDetails")
    ExascaleDbStorageVault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExascaleDbStorageVault", name: "ExascaleDbStorageVault")
    ExascaleDbStorageVaultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ExascaleDbStorageVaultList", name: "ExascaleDbStorageVaultList")
    ExascaleDbStorageVaultSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ExascaleDbStorageVaultSummary", name: "ExascaleDbStorageVaultSummary")
    ExternalIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ExternalIdType", name: "ExternalIdType")
    FailoverAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#FailoverAutonomousDatabaseInput", name: "FailoverAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    FailoverAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#FailoverAutonomousDatabaseOutput", name: "FailoverAutonomousDatabaseOutput")
    FlexComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#FlexComponentList", name: "FlexComponentList")
    FlexComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#FlexComponentSummary", name: "FlexComponentSummary")
    GeneralInputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#GeneralInputString", name: "GeneralInputString", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\/.=-]+$"})
    GetAutonomousDatabaseBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetAutonomousDatabaseBackupInput", name: "GetAutonomousDatabaseBackupInput")
    GetAutonomousDatabaseBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetAutonomousDatabaseBackupOutput", name: "GetAutonomousDatabaseBackupOutput")
    GetAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetAutonomousDatabaseInput", name: "GetAutonomousDatabaseInput")
    GetAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetAutonomousDatabaseOutput", name: "GetAutonomousDatabaseOutput")
    GetAutonomousDatabaseWalletDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetAutonomousDatabaseWalletDetailsInput", name: "GetAutonomousDatabaseWalletDetailsInput")
    GetAutonomousDatabaseWalletDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetAutonomousDatabaseWalletDetailsOutput", name: "GetAutonomousDatabaseWalletDetailsOutput")
    GetCloudAutonomousVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudAutonomousVmClusterInput", name: "GetCloudAutonomousVmClusterInput")
    GetCloudAutonomousVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudAutonomousVmClusterOutput", name: "GetCloudAutonomousVmClusterOutput")
    GetCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureInput", name: "GetCloudExadataInfrastructureInput")
    GetCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureOutput", name: "GetCloudExadataInfrastructureOutput")
    GetCloudExadataInfrastructureUnallocatedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureUnallocatedResourcesInput", name: "GetCloudExadataInfrastructureUnallocatedResourcesInput")
    GetCloudExadataInfrastructureUnallocatedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudExadataInfrastructureUnallocatedResourcesOutput", name: "GetCloudExadataInfrastructureUnallocatedResourcesOutput")
    GetCloudVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudVmClusterInput", name: "GetCloudVmClusterInput")
    GetCloudVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetCloudVmClusterOutput", name: "GetCloudVmClusterOutput")
    GetDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbNodeInput", name: "GetDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource"}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource"}]})
    GetDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbNodeOutput", name: "GetDbNodeOutput")
    GetDbServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbServerInput", name: "GetDbServerInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}]})
    GetDbServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetDbServerOutput", name: "GetDbServerOutput")
    GetExadbVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetExadbVmClusterInput", name: "GetExadbVmClusterInput")
    GetExadbVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetExadbVmClusterOutput", name: "GetExadbVmClusterOutput")
    GetExascaleDbStorageVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetExascaleDbStorageVaultInput", name: "GetExascaleDbStorageVaultInput")
    GetExascaleDbStorageVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetExascaleDbStorageVaultOutput", name: "GetExascaleDbStorageVaultOutput")
    GetOciOnboardingStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOciOnboardingStatusInput", name: "GetOciOnboardingStatusInput")
    GetOciOnboardingStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOciOnboardingStatusOutput", name: "GetOciOnboardingStatusOutput")
    GetOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbNetworkInput", name: "GetOdbNetworkInput")
    GetOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbNetworkOutput", name: "GetOdbNetworkOutput")
    GetOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbPeeringConnectionInput", name: "GetOdbPeeringConnectionInput")
    GetOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GetOdbPeeringConnectionOutput", name: "GetOdbPeeringConnectionOutput")
    GiMinorVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#GiMinorVersionList", name: "GiMinorVersionList")
    GiMinorVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GiMinorVersionSummary", name: "GiMinorVersionSummary")
    GiVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#GiVersionList", name: "GiVersionList")
    GiVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#GiVersionSummary", name: "GiVersionSummary")
    GridImageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#GridImageType", name: "GridImageType")
    HardwareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#HardwareType", name: "HardwareType")
    Hostname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#Hostname", name: "Hostname", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"})
    HoursOfDay = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#HoursOfDay", name: "HoursOfDay")
    IamRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#IamRole", name: "IamRole")
    IamRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#IamRoleList", name: "IamRoleList")
    IamRoleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#IamRoleStatus", name: "IamRoleStatus")
    InitializeServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#InitializeServiceInput", name: "InitializeServiceInput")
    InitializeServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#InitializeServiceOutput", name: "InitializeServiceOutput")
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#IntegerList", name: "IntegerList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IormLifecycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#IormLifecycleState", name: "IormLifecycleState")
    KmsAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#KmsAccess", name: "KmsAccess")
    KmsKeyIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#KmsKeyIdOrArn", name: "KmsKeyIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_:./-]+$"})
    LicenseModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#LicenseModel", name: "LicenseModel")
    ListAutonomousDatabaseBackupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseBackupsInput", name: "ListAutonomousDatabaseBackupsInput")
    ListAutonomousDatabaseBackupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseBackupsOutput", name: "ListAutonomousDatabaseBackupsOutput")
    ListAutonomousDatabaseCharacterSetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseCharacterSetsInput", name: "ListAutonomousDatabaseCharacterSetsInput")
    ListAutonomousDatabaseCharacterSetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseCharacterSetsOutput", name: "ListAutonomousDatabaseCharacterSetsOutput")
    ListAutonomousDatabaseClonesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseClonesInput", name: "ListAutonomousDatabaseClonesInput")
    ListAutonomousDatabaseClonesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseClonesOutput", name: "ListAutonomousDatabaseClonesOutput")
    ListAutonomousDatabasePeersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabasePeersInput", name: "ListAutonomousDatabasePeersInput")
    ListAutonomousDatabasePeersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabasePeersOutput", name: "ListAutonomousDatabasePeersOutput")
    ListAutonomousDatabaseVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseVersionsInput", name: "ListAutonomousDatabaseVersionsInput")
    ListAutonomousDatabaseVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabaseVersionsOutput", name: "ListAutonomousDatabaseVersionsOutput")
    ListAutonomousDatabasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabasesInput", name: "ListAutonomousDatabasesInput")
    ListAutonomousDatabasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousDatabasesOutput", name: "ListAutonomousDatabasesOutput")
    ListAutonomousVirtualMachinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousVirtualMachinesInput", name: "ListAutonomousVirtualMachinesInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource"}]})
    ListAutonomousVirtualMachinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListAutonomousVirtualMachinesOutput", name: "ListAutonomousVirtualMachinesOutput")
    ListCloudAutonomousVmClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudAutonomousVmClustersInput", name: "ListCloudAutonomousVmClustersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}]})
    ListCloudAutonomousVmClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudAutonomousVmClustersOutput", name: "ListCloudAutonomousVmClustersOutput")
    ListCloudExadataInfrastructuresInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudExadataInfrastructuresInput", name: "ListCloudExadataInfrastructuresInput")
    ListCloudExadataInfrastructuresOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudExadataInfrastructuresOutput", name: "ListCloudExadataInfrastructuresOutput")
    ListCloudVmClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudVmClustersInput", name: "ListCloudVmClustersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}]})
    ListCloudVmClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListCloudVmClustersOutput", name: "ListCloudVmClustersOutput")
    ListDbNodesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbNodesInput", name: "ListDbNodesInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource"}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource"}]})
    ListDbNodesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbNodesOutput", name: "ListDbNodesOutput")
    ListDbServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbServersInput", name: "ListDbServersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource"}]})
    ListDbServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbServersOutput", name: "ListDbServersOutput")
    ListDbSystemShapesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbSystemShapesInput", name: "ListDbSystemShapesInput")
    ListDbSystemShapesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListDbSystemShapesOutput", name: "ListDbSystemShapesOutput")
    ListExadbVmClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListExadbVmClustersInput", name: "ListExadbVmClustersInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#ExascaleDbStorageVaultResource"}]})
    ListExadbVmClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListExadbVmClustersOutput", name: "ListExadbVmClustersOutput")
    ListExascaleDbStorageVaultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListExascaleDbStorageVaultsInput", name: "ListExascaleDbStorageVaultsInput")
    ListExascaleDbStorageVaultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListExascaleDbStorageVaultsOutput", name: "ListExascaleDbStorageVaultsOutput")
    ListFlexComponentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListFlexComponentsInput", name: "ListFlexComponentsInput")
    ListFlexComponentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListFlexComponentsOutput", name: "ListFlexComponentsOutput")
    ListGiMinorVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListGiMinorVersionsInput", name: "ListGiMinorVersionsInput")
    ListGiMinorVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListGiMinorVersionsOutput", name: "ListGiMinorVersionsOutput")
    ListGiVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListGiVersionsInput", name: "ListGiVersionsInput")
    ListGiVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListGiVersionsOutput", name: "ListGiVersionsOutput")
    ListOdbNetworksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbNetworksInput", name: "ListOdbNetworksInput")
    ListOdbNetworksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbNetworksOutput", name: "ListOdbNetworksOutput")
    ListOdbPeeringConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbPeeringConnectionsInput", name: "ListOdbPeeringConnectionsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#OdbNetworkResource"}]})
    ListOdbPeeringConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListOdbPeeringConnectionsOutput", name: "ListOdbPeeringConnectionsOutput")
    ListSystemVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListSystemVersionsInput", name: "ListSystemVersionsInput")
    ListSystemVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListSystemVersionsOutput", name: "ListSystemVersionsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbPeeringConnectionResource", "ids" => {"odbPeeringConnectionId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#AutonomousDatabaseBackupResource", "ids" => {"autonomousDatabaseBackupId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#AutonomousDatabaseResource", "ids" => {"autonomousDatabaseId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExascaleDbStorageVaultResource", "ids" => {"exascaleDbStorageVaultId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource", "ids" => {"exadbVmClusterId" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LongTermBackupSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#LongTermBackupSchedule", name: "LongTermBackupSchedule")
    MaintenanceWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#MaintenanceWindow", name: "MaintenanceWindow")
    ManagedResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ManagedResourceStatus", name: "ManagedResourceStatus")
    ManagedS3BackupAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ManagedS3BackupAccess", name: "ManagedS3BackupAccess")
    ManagedServices = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ManagedServices", name: "ManagedServices")
    Month = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#Month", name: "Month")
    MonthName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#MonthName", name: "MonthName")
    Months = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#Months", name: "Months")
    NetServicesArchitecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#NetServicesArchitecture", name: "NetServicesArchitecture")
    Objective = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#Objective", name: "Objective")
    OciAwsIntegration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#OciAwsIntegration", name: "OciAwsIntegration")
    OciDnsForwardingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OciDnsForwardingConfig", name: "OciDnsForwardingConfig")
    OciDnsForwardingConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OciDnsForwardingConfigList", name: "OciDnsForwardingConfigList")
    OciEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OciEncryptionKeyConfiguration", name: "OciEncryptionKeyConfiguration")
    OciIamRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OciIamRole", name: "OciIamRole")
    OciIamRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OciIamRoleList", name: "OciIamRoleList", traits: {"smithy.api#length" => {"max" => 10}})
    OciIamRoleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#OciIamRoleStatus", name: "OciIamRoleStatus")
    OciIdentityDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OciIdentityDomain", name: "OciIdentityDomain")
    OciOnboardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#OciOnboardingStatus", name: "OciOnboardingStatus")
    OdbNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbNetwork", name: "OdbNetwork")
    OdbNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OdbNetworkList", name: "OdbNetworkList")
    OdbNetworkSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbNetworkSummary", name: "OdbNetworkSummary")
    OdbPeeringConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbPeeringConnection", name: "OdbPeeringConnection")
    OdbPeeringConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#OdbPeeringConnectionList", name: "OdbPeeringConnectionList")
    OdbPeeringConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OdbPeeringConnectionSummary", name: "OdbPeeringConnectionSummary")
    OkvEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#OkvEncryptionKeyConfiguration", name: "OkvEncryptionKeyConfiguration")
    OpenMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#OpenMode", name: "OpenMode")
    OperationsInsightsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#OperationsInsightsStatus", name: "OperationsInsightsStatus")
    PatchingModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#PatchingModeType", name: "PatchingModeType")
    PeerNetworkRouteTableId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#PeerNetworkRouteTableId", name: "PeerNetworkRouteTableId", traits: {"smithy.api#pattern" => "^rtb-[a-z0-9]{8,17}$"})
    PeerNetworkRouteTableIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#PeerNetworkRouteTableIdList", name: "PeerNetworkRouteTableIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    PeeredCidr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#PeeredCidr", name: "PeeredCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^(?:(?:\\d|[01]?\\d\\d|2[0-4]\\d|25[0-5])\\.){3}(?:25[0-5]|2[0-4]\\d|[01]?\\d\\d|\\d)\\/(?:[1-2][0-9]|3[0-2]|[1-9])$"})
    PeeredCidrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#PeeredCidrList", name: "PeeredCidrList")
    PermissionLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#PermissionLevel", name: "PermissionLevel")
    PointInTimeRestoreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#PointInTimeRestoreConfiguration", name: "PointInTimeRestoreConfiguration")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 3, "max" => 20480}})
    PreferenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#PreferenceType", name: "PreferenceType")
    RebootAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RebootAutonomousDatabaseInput", name: "RebootAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    RebootAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RebootAutonomousDatabaseOutput", name: "RebootAutonomousDatabaseOutput")
    RebootDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RebootDbNodeInput", name: "RebootDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource"}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource"}]})
    RebootDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RebootDbNodeOutput", name: "RebootDbNodeOutput")
    RefreshableMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#RefreshableMode", name: "RefreshableMode")
    RefreshableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#RefreshableStatus", name: "RefreshableStatus")
    RepeatCadence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#RepeatCadence", name: "RepeatCadence")
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.odb#RequestTagMap", name: "RequestTagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):[a-z0-9-]+:[a-z0-9-]*:[0-9]+:[a-z0-9-]+/[a-z0-9-_]{6,64}$"})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ResourceArnList", name: "ResourceArnList")
    ResourceDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceDisplayName", name: "ResourceDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_~.-]+$"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ResourceIdList", name: "ResourceIdList")
    ResourceIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#ResourceIdOrArn", name: "ResourceIdOrArn", traits: {"smithy.api#length" => {"min" => 6, "max" => 2048}, "smithy.api#pattern" => "^(arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):[a-z0-9-]+:[a-z0-9-]*:[0-9]+:[a-z0-9-]+/[a-zA-Z0-9_~.-]{6,64}|[a-zA-Z0-9_~.-]{6,64})$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePoolSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ResourcePoolSummary", name: "ResourcePoolSummary")
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ResourceStatus", name: "ResourceStatus")
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.odb#ResponseTagMap", name: "ResponseTagMap", traits: {"smithy.api#length" => {"max" => 200}})
    RestoreAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RestoreAutonomousDatabaseInput", name: "RestoreAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    RestoreAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RestoreAutonomousDatabaseOutput", name: "RestoreAutonomousDatabaseOutput")
    RestoreFromBackupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#RestoreFromBackupConfiguration", name: "RestoreFromBackupConfiguration")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):iam::[0-9]{12}:role/.+$"})
    S3Access = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#S3Access", name: "S3Access")
    ScheduledOperationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ScheduledOperationDetails", name: "ScheduledOperationDetails")
    ScheduledOperationDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ScheduledOperationDetailsList", name: "ScheduledOperationDetailsList")
    SecretIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#SecretIdOrArn", name: "SecretIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    SensitiveStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#SensitiveStringList", name: "SensitiveStringList")
    ServiceNetworkEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ServiceNetworkEndpoint", name: "ServiceNetworkEndpoint")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShapeAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ShapeAttribute", name: "ShapeAttribute")
    ShapeAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ShapeAttributeList", name: "ShapeAttributeList")
    ShapeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ShapeType", name: "ShapeType")
    ShrinkAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ShrinkAutonomousDatabaseInput", name: "ShrinkAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    ShrinkAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ShrinkAutonomousDatabaseOutput", name: "ShrinkAutonomousDatabaseOutput")
    SourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#SourceConfiguration", name: "SourceConfiguration")
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#SourceType", name: "SourceType")
    StandbyAllowlistedIpsSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#StandbyAllowlistedIpsSource", name: "StandbyAllowlistedIpsSource")
    StartAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StartAutonomousDatabaseInput", name: "StartAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    StartAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StartAutonomousDatabaseOutput", name: "StartAutonomousDatabaseOutput")
    StartDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StartDbNodeInput", name: "StartDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource"}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource"}]})
    StartDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StartDbNodeOutput", name: "StartDbNodeOutput")
    StopAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StopAutonomousDatabaseInput", name: "StopAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    StopAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StopAutonomousDatabaseOutput", name: "StopAutonomousDatabaseOutput")
    StopDbNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StopDbNodeInput", name: "StopDbNodeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudVmClusterResource"}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource"}]})
    StopDbNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StopDbNodeOutput", name: "StopDbNodeOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#StringList", name: "StringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StsAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#StsAccess", name: "StsAccess")
    SubscriptionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#SubscriptionError", name: "SubscriptionError")
    SubscriptionErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#SubscriptionErrors", name: "SubscriptionErrors")
    SupportedAwsIntegration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#SupportedAwsIntegration", name: "SupportedAwsIntegration")
    SwitchoverAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#SwitchoverAutonomousDatabaseInput", name: "SwitchoverAutonomousDatabaseInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#AutonomousDatabaseResource"}]})
    SwitchoverAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#SwitchoverAutonomousDatabaseOutput", name: "SwitchoverAutonomousDatabaseOutput")
    SystemVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#SystemVersionList", name: "SystemVersionList")
    SystemVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#SystemVersionSummary", name: "SystemVersionSummary")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbPeeringConnectionResource", "ids" => {"odbPeeringConnectionId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#AutonomousDatabaseBackupResource", "ids" => {"autonomousDatabaseBackupId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#AutonomousDatabaseResource", "ids" => {"autonomousDatabaseId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExascaleDbStorageVaultResource", "ids" => {"exascaleDbStorageVaultId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource", "ids" => {"exadbVmClusterId" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.odb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransportableTablespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#TransportableTablespace", name: "TransportableTablespace")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.odb#CloudExadataInfrastructureResource", "ids" => {"cloudExadataInfrastructureId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbNetworkResource", "ids" => {"odbNetworkId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudVmClusterResource", "ids" => {"cloudVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#CloudAutonomousVmClusterResource", "ids" => {"cloudAutonomousVmClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#OdbPeeringConnectionResource", "ids" => {"odbPeeringConnectionId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#DbNodeResource", "ids" => {"dbNodeId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#AutonomousDatabaseBackupResource", "ids" => {"autonomousDatabaseBackupId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#AutonomousDatabaseResource", "ids" => {"autonomousDatabaseId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExascaleDbStorageVaultResource", "ids" => {"exascaleDbStorageVaultId" => "resourceArn"}}, {"resource" => "com.amazonaws.odb#ExadbVmClusterResource", "ids" => {"exadbVmClusterId" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#UpdateAction", name: "UpdateAction")
    UpdateAutonomousDatabaseBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateAutonomousDatabaseBackupInput", name: "UpdateAutonomousDatabaseBackupInput")
    UpdateAutonomousDatabaseBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateAutonomousDatabaseBackupOutput", name: "UpdateAutonomousDatabaseBackupOutput")
    UpdateAutonomousDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateAutonomousDatabaseInput", name: "UpdateAutonomousDatabaseInput")
    UpdateAutonomousDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateAutonomousDatabaseOutput", name: "UpdateAutonomousDatabaseOutput")
    UpdateCloudExadataInfrastructureInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateCloudExadataInfrastructureInput", name: "UpdateCloudExadataInfrastructureInput")
    UpdateCloudExadataInfrastructureOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateCloudExadataInfrastructureOutput", name: "UpdateCloudExadataInfrastructureOutput")
    UpdateExadbVmClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateExadbVmClusterInput", name: "UpdateExadbVmClusterInput")
    UpdateExadbVmClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateExadbVmClusterOutput", name: "UpdateExadbVmClusterOutput")
    UpdateExascaleDbStorageVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateExascaleDbStorageVaultInput", name: "UpdateExascaleDbStorageVaultInput")
    UpdateExascaleDbStorageVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateExascaleDbStorageVaultOutput", name: "UpdateExascaleDbStorageVaultOutput")
    UpdateOdbNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateOdbNetworkInput", name: "UpdateOdbNetworkInput")
    UpdateOdbNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateOdbNetworkOutput", name: "UpdateOdbNetworkOutput")
    UpdateOdbPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateOdbPeeringConnectionInput", name: "UpdateOdbPeeringConnectionInput")
    UpdateOdbPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#UpdateOdbPeeringConnectionOutput", name: "UpdateOdbPeeringConnectionOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#ValidationExceptionReason", name: "ValidationExceptionReason")
    VpcEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#VpcEndpointType", name: "VpcEndpointType")
    WalletPasswordSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#WalletPasswordSource", name: "WalletPasswordSource")
    WalletPasswordSourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#WalletPasswordSourceConfiguration", name: "WalletPasswordSourceConfiguration")
    WalletPasswordSourceConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.odb#WalletPasswordSourceConfigurationInput", name: "WalletPasswordSourceConfigurationInput")
    WalletPasswordSourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#WalletPasswordSourceSummary", name: "WalletPasswordSourceSummary")
    WalletType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#WalletType", name: "WalletType")
    WeeksOfMonth = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.odb#WeeksOfMonth", name: "WeeksOfMonth")
    ZeroEtlAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.odb#ZeroEtlAccess", name: "ZeroEtlAccess")
    CharacterSetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.odb#characterSetType", name: "CharacterSetType")

    AcceptMarketplaceRegistrationInput.add_member(:marketplace_registration_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "marketplaceRegistrationToken", traits: {"smithy.api#required" => {}}))
    AcceptMarketplaceRegistrationInput.type = Types::AcceptMarketplaceRegistrationInput
    AcceptMarketplaceRegistrationOutput.type = Types::AcceptMarketplaceRegistrationOutput
    Access.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Access.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AdminPasswordSource.add_member(:customer_managed_aws_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_AWS_SECRET", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_AWS_SECRET"}))
    AdminPasswordSource.add_member(:api_request_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_REQUEST_PARAMETER", traits: {"smithy.api#enumValue" => "API_REQUEST_PARAMETER"}))
    AdminPasswordSourceConfiguration.add_member(:customer_managed_aws_secret, Types::AdminPasswordSourceConfiguration::CustomerManagedAwsSecret, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedAwsSecretConfiguration, name: "customerManagedAwsSecret"))
    AdminPasswordSourceConfiguration.add_member(:unknown, Types::AdminPasswordSourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AdminPasswordSourceConfiguration.type = Types::AdminPasswordSourceConfiguration
    AdminPasswordSourceConfigurationInput.add_member(:customer_managed_aws_secret, Types::AdminPasswordSourceConfigurationInput::CustomerManagedAwsSecret, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedAwsSecretConfigurationInput, name: "customerManagedAwsSecret"))
    AdminPasswordSourceConfigurationInput.add_member(:unknown, Types::AdminPasswordSourceConfigurationInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AdminPasswordSourceConfigurationInput.type = Types::AdminPasswordSourceConfigurationInput
    AdminPasswordSourceSummary.add_member(:admin_password_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSource, name: "adminPasswordSource"))
    AdminPasswordSourceSummary.add_member(:admin_password_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSourceConfiguration, name: "adminPasswordSourceConfiguration"))
    AdminPasswordSourceSummary.type = Types::AdminPasswordSourceSummary
    AssociateIamRoleToResourceInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn", traits: {"smithy.api#required" => {}}))
    AssociateIamRoleToResourceInput.add_member(:aws_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedAwsIntegration, name: "awsIntegration", traits: {"smithy.api#required" => {}}))
    AssociateIamRoleToResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov|aws-iso-[a-z]?|aws-iso):odb:[a-z0-9-]+:\\d{12}:(?:cloud-vm-cluster|cloud-autonomous-vm-cluster|exadb-vm-cluster)/[a-z0-9-_]+$", "smithy.api#required" => {}}))
    AssociateIamRoleToResourceInput.type = Types::AssociateIamRoleToResourceInput
    AssociateIamRoleToResourceOutput.type = Types::AssociateIamRoleToResourceOutput
    AssociateVirtualMachinesToExadbVmClusterInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    AssociateVirtualMachinesToExadbVmClusterInput.add_member(:desired_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "desiredNodeCount", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    AssociateVirtualMachinesToExadbVmClusterInput.type = Types::AssociateVirtualMachinesToExadbVmClusterInput
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    AssociateVirtualMachinesToExadbVmClusterOutput.type = Types::AssociateVirtualMachinesToExadbVmClusterOutput
    AutonomousDatabase.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId"))
    AutonomousDatabase.add_member(:autonomous_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "autonomousDatabaseArn"))
    AutonomousDatabase.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    AutonomousDatabase.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    AutonomousDatabase.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    AutonomousDatabase.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    AutonomousDatabase.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    AutonomousDatabase.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName"))
    AutonomousDatabase.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceId"))
    AutonomousDatabase.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    AutonomousDatabase.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AutonomousDatabase.add_member(:database_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseType, name: "databaseType"))
    AutonomousDatabase.add_member(:db_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbVersion"))
    AutonomousDatabase.add_member(:db_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: DbWorkload, name: "dbWorkload"))
    AutonomousDatabase.add_member(:character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "characterSet"))
    AutonomousDatabase.add_member(:ncharacter_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ncharacterSet"))
    AutonomousDatabase.add_member(:database_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEdition, name: "databaseEdition"))
    AutonomousDatabase.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    AutonomousDatabase.add_member(:open_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMode, name: "openMode"))
    AutonomousDatabase.add_member(:permission_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionLevel, name: "permissionLevel"))
    AutonomousDatabase.add_member(:is_mtls_connection_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsConnectionRequired"))
    AutonomousDatabase.add_member(:autonomous_maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousMaintenanceScheduleType, name: "autonomousMaintenanceScheduleType"))
    AutonomousDatabase.add_member(:net_services_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: NetServicesArchitecture, name: "netServicesArchitecture"))
    AutonomousDatabase.add_member(:available_upgrade_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "availableUpgradeVersions"))
    AutonomousDatabase.add_member(:byol_compute_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "byolComputeCountLimit"))
    AutonomousDatabase.add_member(:connection_string_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseConnectionStrings, name: "connectionStringDetails"))
    AutonomousDatabase.add_member(:service_console_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceConsoleUrl"))
    AutonomousDatabase.add_member(:sql_web_developer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sqlWebDeveloperUrl"))
    AutonomousDatabase.add_member(:customer_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContacts"))
    AutonomousDatabase.add_member(:apex_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseApex, name: "apexDetails"))
    AutonomousDatabase.add_member(:standby_db, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseStandbySummary, name: "standbyDb"))
    AutonomousDatabase.add_member(:local_standby_db, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseStandbySummary, name: "localStandbyDb"))
    AutonomousDatabase.add_member(:data_safe_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSafeStatus, name: "dataSafeStatus"))
    AutonomousDatabase.add_member(:database_management_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseManagementStatus, name: "databaseManagementStatus"))
    AutonomousDatabase.add_member(:operations_insights_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationsInsightsStatus, name: "operationsInsightsStatus"))
    AutonomousDatabase.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    AutonomousDatabase.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    AutonomousDatabase.add_member(:maintenance_target_component, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "maintenanceTargetComponent"))
    AutonomousDatabase.add_member(:connection_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseConnectionUrls, name: "connectionUrls"))
    AutonomousDatabase.add_member(:db_tools_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseToolList, name: "dbToolsDetails"))
    AutonomousDatabase.add_member(:scheduled_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledOperationDetailsList, name: "scheduledOperations"))
    AutonomousDatabase.add_member(:resource_pool_leader_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourcePoolLeaderId"))
    AutonomousDatabase.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "computeCount"))
    AutonomousDatabase.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    AutonomousDatabase.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    AutonomousDatabase.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memoryPerOracleComputeUnitInGBs"))
    AutonomousDatabase.add_member(:provisionable_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "provisionableCpus"))
    AutonomousDatabase.add_member(:is_auto_scaling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingEnabled"))
    AutonomousDatabase.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    AutonomousDatabase.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataStorageSizeInGBs"))
    AutonomousDatabase.add_member(:used_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "usedDataStorageSizeInTBs"))
    AutonomousDatabase.add_member(:used_data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "usedDataStorageSizeInGBs"))
    AutonomousDatabase.add_member(:actual_used_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "actualUsedDataStorageSizeInTBs"))
    AutonomousDatabase.add_member(:allocated_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "allocatedStorageSizeInTBs"))
    AutonomousDatabase.add_member(:in_memory_area_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inMemoryAreaInGBs"))
    AutonomousDatabase.add_member(:is_auto_scaling_for_storage_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingForStorageEnabled"))
    AutonomousDatabase.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "odbNetworkId"))
    AutonomousDatabase.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    AutonomousDatabase.add_member(:private_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpoint"))
    AutonomousDatabase.add_member(:private_endpoint_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointIp"))
    AutonomousDatabase.add_member(:private_endpoint_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointLabel"))
    AutonomousDatabase.add_member(:allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "allowlistedIps"))
    AutonomousDatabase.add_member(:standby_allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "standbyAllowlistedIps"))
    AutonomousDatabase.add_member(:standby_allowlisted_ips_source, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyAllowlistedIpsSource, name: "standbyAllowlistedIpsSource"))
    AutonomousDatabase.add_member(:is_local_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalDataGuardEnabled"))
    AutonomousDatabase.add_member(:is_remote_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRemoteDataGuardEnabled"))
    AutonomousDatabase.add_member(:local_disaster_recovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoveryType, name: "localDisasterRecoveryType"))
    AutonomousDatabase.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGuardRole, name: "role"))
    AutonomousDatabase.add_member(:peer_db_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "peerDbIds"))
    AutonomousDatabase.add_member(:failed_data_recovery_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "failedDataRecoveryInSeconds"))
    AutonomousDatabase.add_member(:local_adg_auto_failover_max_data_loss_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "localAdgAutoFailoverMaxDataLossLimit"))
    AutonomousDatabase.add_member(:remote_disaster_recovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoveryConfiguration, name: "remoteDisasterRecoveryConfiguration"))
    AutonomousDatabase.add_member(:is_refreshable_clone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRefreshableClone"))
    AutonomousDatabase.add_member(:refreshable_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshableMode, name: "refreshableMode"))
    AutonomousDatabase.add_member(:refreshable_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshableStatus, name: "refreshableStatus"))
    AutonomousDatabase.add_member(:auto_refresh_frequency_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshFrequencyInSeconds"))
    AutonomousDatabase.add_member(:auto_refresh_point_lag_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshPointLagInSeconds"))
    AutonomousDatabase.add_member(:is_reconnect_clone_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isReconnectCloneEnabled"))
    AutonomousDatabase.add_member(:clone_table_space_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "cloneTableSpaceList"))
    AutonomousDatabase.add_member(:backup_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "backupRetentionPeriodInDays"))
    AutonomousDatabase.add_member(:long_term_backup_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermBackupSchedule, name: "longTermBackupSchedule"))
    AutonomousDatabase.add_member(:is_backup_retention_locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBackupRetentionLocked"))
    AutonomousDatabase.add_member(:total_backup_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "totalBackupStorageSizeInGBs"))
    AutonomousDatabase.add_member(:resource_pool_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePoolSummary, name: "resourcePoolSummary"))
    AutonomousDatabase.add_member(:encryption_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSummary, name: "encryptionSummary"))
    AutonomousDatabase.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_last_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastBackup", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_maintenance_begin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeMaintenanceBegin", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_maintenance_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeMaintenanceEnd", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_local_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeLocalDataGuardEnabled", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_data_guard_role_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDataGuardRoleChanged", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_last_switchover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastSwitchover", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_last_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastFailover", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_last_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastRefresh", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_last_refresh_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastRefreshPoint", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_next_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfNextRefresh", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_of_auto_refresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfAutoRefreshStart", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_deletion_of_free_autonomous_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDeletionOfFreeAutonomousDatabase", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_reclamation_of_free_autonomous_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeReclamationOfFreeAutonomousDatabase", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_disaster_recovery_role_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDisasterRecoveryRoleChanged", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_until_reconnect_clone_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeUntilReconnectCloneEnabled", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:next_long_term_backup_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextLongTermBackupTimeStamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:time_undeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeUndeleted", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabase.add_member(:admin_password_source_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSourceSummary, name: "adminPasswordSourceSummary"))
    AutonomousDatabase.type = Types::AutonomousDatabase
    AutonomousDatabaseApex.add_member(:apex_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apexVersion"))
    AutonomousDatabaseApex.add_member(:ords_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ordsVersion"))
    AutonomousDatabaseApex.type = Types::AutonomousDatabaseApex
    AutonomousDatabaseBackup.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseBackupId"))
    AutonomousDatabaseBackup.add_member(:autonomous_database_backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "autonomousDatabaseBackupArn"))
    AutonomousDatabaseBackup.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseId"))
    AutonomousDatabaseBackup.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    AutonomousDatabaseBackup.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    AutonomousDatabaseBackup.add_member(:db_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbVersion"))
    AutonomousDatabaseBackup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupStatus, name: "status"))
    AutonomousDatabaseBackup.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AutonomousDatabaseBackup.add_member(:is_automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutomatic"))
    AutonomousDatabaseBackup.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriodInDays"))
    AutonomousDatabaseBackup.add_member(:size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "sizeInTBs"))
    AutonomousDatabaseBackup.add_member(:time_available_till, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeAvailableTill", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseBackup.add_member(:time_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeStarted", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseBackup.add_member(:time_ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeEnded", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseBackup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupType, name: "type"))
    AutonomousDatabaseBackup.type = Types::AutonomousDatabaseBackup
    AutonomousDatabaseBackupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupSummary, name: "member"))
    AutonomousDatabaseBackupStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AutonomousDatabaseBackupStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AutonomousDatabaseBackupStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AutonomousDatabaseBackupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AutonomousDatabaseBackupStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutonomousDatabaseBackupSummary.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseBackupId"))
    AutonomousDatabaseBackupSummary.add_member(:autonomous_database_backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "autonomousDatabaseBackupArn"))
    AutonomousDatabaseBackupSummary.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseId"))
    AutonomousDatabaseBackupSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    AutonomousDatabaseBackupSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    AutonomousDatabaseBackupSummary.add_member(:db_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbVersion"))
    AutonomousDatabaseBackupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupStatus, name: "status"))
    AutonomousDatabaseBackupSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AutonomousDatabaseBackupSummary.add_member(:is_automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutomatic"))
    AutonomousDatabaseBackupSummary.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriodInDays"))
    AutonomousDatabaseBackupSummary.add_member(:size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "sizeInTBs"))
    AutonomousDatabaseBackupSummary.add_member(:time_available_till, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeAvailableTill", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseBackupSummary.add_member(:time_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeStarted", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseBackupSummary.add_member(:time_ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeEnded", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseBackupSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupType, name: "type"))
    AutonomousDatabaseBackupSummary.type = Types::AutonomousDatabaseBackupSummary
    AutonomousDatabaseBackupType.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    AutonomousDatabaseBackupType.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    AutonomousDatabaseBackupType.add_member(:longterm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONGTERM", traits: {"smithy.api#enumValue" => "LONGTERM"}))
    AutonomousDatabaseBackupType.add_member(:virtual_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIRTUAL_FULL", traits: {"smithy.api#enumValue" => "VIRTUAL_FULL"}))
    AutonomousDatabaseBackupType.add_member(:cumulative_incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUMULATIVE_INCREMENTAL", traits: {"smithy.api#enumValue" => "CUMULATIVE_INCREMENTAL"}))
    AutonomousDatabaseBackupType.add_member(:roll_forward_image_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLL_FORWARD_IMAGE_COPY", traits: {"smithy.api#enumValue" => "ROLL_FORWARD_IMAGE_COPY"}))
    AutonomousDatabaseCharacterSetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseCharacterSetSummary, name: "member"))
    AutonomousDatabaseCharacterSetSummary.add_member(:character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "characterSet"))
    AutonomousDatabaseCharacterSetSummary.type = Types::AutonomousDatabaseCharacterSetSummary
    AutonomousDatabaseConnectionStrings.add_member(:all_connection_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConnectionStringMap, name: "allConnectionStrings"))
    AutonomousDatabaseConnectionStrings.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dedicated"))
    AutonomousDatabaseConnectionStrings.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "high"))
    AutonomousDatabaseConnectionStrings.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "medium"))
    AutonomousDatabaseConnectionStrings.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "low"))
    AutonomousDatabaseConnectionStrings.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConnectionStringProfileList, name: "profiles"))
    AutonomousDatabaseConnectionStrings.type = Types::AutonomousDatabaseConnectionStrings
    AutonomousDatabaseConnectionUrls.add_member(:apex_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apexUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:database_transforms_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "databaseTransformsUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:graph_studio_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "graphStudioUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:machine_learning_notebook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "machineLearningNotebookUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:machine_learning_user_management_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "machineLearningUserManagementUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:mongo_db_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mongoDbUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:ords_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ordsUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:spatial_studio_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spatialStudioUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:sql_dev_web_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sqlDevWebUrl"))
    AutonomousDatabaseConnectionUrls.type = Types::AutonomousDatabaseConnectionUrls
    AutonomousDatabaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseSummary, name: "member"))
    AutonomousDatabasePeerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabasePeerSummary, name: "member"))
    AutonomousDatabasePeerSummary.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseId"))
    AutonomousDatabasePeerSummary.add_member(:autonomous_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "autonomousDatabaseArn"))
    AutonomousDatabasePeerSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    AutonomousDatabasePeerSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    AutonomousDatabasePeerSummary.type = Types::AutonomousDatabasePeerSummary
    AutonomousDatabaseResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AutonomousDatabaseResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutonomousDatabaseResourceStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    AutonomousDatabaseResourceStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    AutonomousDatabaseResourceStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    AutonomousDatabaseResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AutonomousDatabaseResourceStatus.add_member(:maintenance_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "MAINTENANCE_IN_PROGRESS"}))
    AutonomousDatabaseResourceStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    AutonomousDatabaseResourceStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    AutonomousDatabaseResourceStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    AutonomousDatabaseResourceStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    AutonomousDatabaseResourceStatus.add_member(:restore_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "RESTORE_IN_PROGRESS"}))
    AutonomousDatabaseResourceStatus.add_member(:restore_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_FAILED", traits: {"smithy.api#enumValue" => "RESTORE_FAILED"}))
    AutonomousDatabaseResourceStatus.add_member(:backup_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_IN_PROGRESS", traits: {"smithy.api#enumValue" => "BACKUP_IN_PROGRESS"}))
    AutonomousDatabaseResourceStatus.add_member(:scale_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCALE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "SCALE_IN_PROGRESS"}))
    AutonomousDatabaseResourceStatus.add_member(:available_needs_attention, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE_NEEDS_ATTENTION", traits: {"smithy.api#enumValue" => "AVAILABLE_NEEDS_ATTENTION"}))
    AutonomousDatabaseResourceStatus.add_member(:restarting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTARTING", traits: {"smithy.api#enumValue" => "RESTARTING"}))
    AutonomousDatabaseResourceStatus.add_member(:recreating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECREATING", traits: {"smithy.api#enumValue" => "RECREATING"}))
    AutonomousDatabaseResourceStatus.add_member(:role_change_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_CHANGE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLE_CHANGE_IN_PROGRESS"}))
    AutonomousDatabaseResourceStatus.add_member(:upgrading, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADING", traits: {"smithy.api#enumValue" => "UPGRADING"}))
    AutonomousDatabaseResourceStatus.add_member(:inaccessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACCESSIBLE", traits: {"smithy.api#enumValue" => "INACCESSIBLE"}))
    AutonomousDatabaseResourceStatus.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    AutonomousDatabaseSummary.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId"))
    AutonomousDatabaseSummary.add_member(:autonomous_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "autonomousDatabaseArn"))
    AutonomousDatabaseSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    AutonomousDatabaseSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    AutonomousDatabaseSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    AutonomousDatabaseSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    AutonomousDatabaseSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    AutonomousDatabaseSummary.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName"))
    AutonomousDatabaseSummary.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceId"))
    AutonomousDatabaseSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    AutonomousDatabaseSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AutonomousDatabaseSummary.add_member(:database_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseType, name: "databaseType"))
    AutonomousDatabaseSummary.add_member(:db_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbVersion"))
    AutonomousDatabaseSummary.add_member(:db_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: DbWorkload, name: "dbWorkload"))
    AutonomousDatabaseSummary.add_member(:character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "characterSet"))
    AutonomousDatabaseSummary.add_member(:ncharacter_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ncharacterSet"))
    AutonomousDatabaseSummary.add_member(:database_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEdition, name: "databaseEdition"))
    AutonomousDatabaseSummary.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    AutonomousDatabaseSummary.add_member(:open_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMode, name: "openMode"))
    AutonomousDatabaseSummary.add_member(:permission_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionLevel, name: "permissionLevel"))
    AutonomousDatabaseSummary.add_member(:is_mtls_connection_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsConnectionRequired"))
    AutonomousDatabaseSummary.add_member(:autonomous_maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousMaintenanceScheduleType, name: "autonomousMaintenanceScheduleType"))
    AutonomousDatabaseSummary.add_member(:net_services_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: NetServicesArchitecture, name: "netServicesArchitecture"))
    AutonomousDatabaseSummary.add_member(:available_upgrade_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "availableUpgradeVersions"))
    AutonomousDatabaseSummary.add_member(:byol_compute_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "byolComputeCountLimit"))
    AutonomousDatabaseSummary.add_member(:connection_string_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseConnectionStrings, name: "connectionStringDetails"))
    AutonomousDatabaseSummary.add_member(:service_console_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceConsoleUrl"))
    AutonomousDatabaseSummary.add_member(:sql_web_developer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sqlWebDeveloperUrl"))
    AutonomousDatabaseSummary.add_member(:customer_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContacts"))
    AutonomousDatabaseSummary.add_member(:apex_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseApex, name: "apexDetails"))
    AutonomousDatabaseSummary.add_member(:standby_db, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseStandbySummary, name: "standbyDb"))
    AutonomousDatabaseSummary.add_member(:local_standby_db, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseStandbySummary, name: "localStandbyDb"))
    AutonomousDatabaseSummary.add_member(:data_safe_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSafeStatus, name: "dataSafeStatus"))
    AutonomousDatabaseSummary.add_member(:database_management_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseManagementStatus, name: "databaseManagementStatus"))
    AutonomousDatabaseSummary.add_member(:operations_insights_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationsInsightsStatus, name: "operationsInsightsStatus"))
    AutonomousDatabaseSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    AutonomousDatabaseSummary.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    AutonomousDatabaseSummary.add_member(:maintenance_target_component, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "maintenanceTargetComponent"))
    AutonomousDatabaseSummary.add_member(:connection_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseConnectionUrls, name: "connectionUrls"))
    AutonomousDatabaseSummary.add_member(:db_tools_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseToolList, name: "dbToolsDetails"))
    AutonomousDatabaseSummary.add_member(:scheduled_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledOperationDetailsList, name: "scheduledOperations"))
    AutonomousDatabaseSummary.add_member(:resource_pool_leader_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourcePoolLeaderId"))
    AutonomousDatabaseSummary.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "computeCount"))
    AutonomousDatabaseSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    AutonomousDatabaseSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    AutonomousDatabaseSummary.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memoryPerOracleComputeUnitInGBs"))
    AutonomousDatabaseSummary.add_member(:provisionable_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "provisionableCpus"))
    AutonomousDatabaseSummary.add_member(:is_auto_scaling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingEnabled"))
    AutonomousDatabaseSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataStorageSizeInGBs"))
    AutonomousDatabaseSummary.add_member(:used_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "usedDataStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:used_data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "usedDataStorageSizeInGBs"))
    AutonomousDatabaseSummary.add_member(:actual_used_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "actualUsedDataStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:allocated_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "allocatedStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:in_memory_area_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inMemoryAreaInGBs"))
    AutonomousDatabaseSummary.add_member(:is_auto_scaling_for_storage_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingForStorageEnabled"))
    AutonomousDatabaseSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "odbNetworkId"))
    AutonomousDatabaseSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    AutonomousDatabaseSummary.add_member(:private_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpoint"))
    AutonomousDatabaseSummary.add_member(:private_endpoint_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointIp"))
    AutonomousDatabaseSummary.add_member(:private_endpoint_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointLabel"))
    AutonomousDatabaseSummary.add_member(:allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "allowlistedIps"))
    AutonomousDatabaseSummary.add_member(:standby_allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "standbyAllowlistedIps"))
    AutonomousDatabaseSummary.add_member(:standby_allowlisted_ips_source, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyAllowlistedIpsSource, name: "standbyAllowlistedIpsSource"))
    AutonomousDatabaseSummary.add_member(:is_local_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalDataGuardEnabled"))
    AutonomousDatabaseSummary.add_member(:is_remote_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRemoteDataGuardEnabled"))
    AutonomousDatabaseSummary.add_member(:local_disaster_recovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoveryType, name: "localDisasterRecoveryType"))
    AutonomousDatabaseSummary.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGuardRole, name: "role"))
    AutonomousDatabaseSummary.add_member(:peer_db_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "peerDbIds"))
    AutonomousDatabaseSummary.add_member(:failed_data_recovery_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "failedDataRecoveryInSeconds"))
    AutonomousDatabaseSummary.add_member(:local_adg_auto_failover_max_data_loss_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "localAdgAutoFailoverMaxDataLossLimit"))
    AutonomousDatabaseSummary.add_member(:remote_disaster_recovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoveryConfiguration, name: "remoteDisasterRecoveryConfiguration"))
    AutonomousDatabaseSummary.add_member(:is_refreshable_clone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRefreshableClone"))
    AutonomousDatabaseSummary.add_member(:refreshable_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshableMode, name: "refreshableMode"))
    AutonomousDatabaseSummary.add_member(:refreshable_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshableStatus, name: "refreshableStatus"))
    AutonomousDatabaseSummary.add_member(:auto_refresh_frequency_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshFrequencyInSeconds"))
    AutonomousDatabaseSummary.add_member(:auto_refresh_point_lag_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshPointLagInSeconds"))
    AutonomousDatabaseSummary.add_member(:is_reconnect_clone_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isReconnectCloneEnabled"))
    AutonomousDatabaseSummary.add_member(:clone_table_space_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "cloneTableSpaceList"))
    AutonomousDatabaseSummary.add_member(:backup_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "backupRetentionPeriodInDays"))
    AutonomousDatabaseSummary.add_member(:long_term_backup_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermBackupSchedule, name: "longTermBackupSchedule"))
    AutonomousDatabaseSummary.add_member(:is_backup_retention_locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBackupRetentionLocked"))
    AutonomousDatabaseSummary.add_member(:total_backup_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "totalBackupStorageSizeInGBs"))
    AutonomousDatabaseSummary.add_member(:resource_pool_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePoolSummary, name: "resourcePoolSummary"))
    AutonomousDatabaseSummary.add_member(:encryption_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSummary, name: "encryptionSummary"))
    AutonomousDatabaseSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_last_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastBackup", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_maintenance_begin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeMaintenanceBegin", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_maintenance_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeMaintenanceEnd", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_local_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeLocalDataGuardEnabled", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_data_guard_role_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDataGuardRoleChanged", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_last_switchover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastSwitchover", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_last_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastFailover", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_last_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastRefresh", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_last_refresh_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfLastRefreshPoint", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_next_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfNextRefresh", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_of_auto_refresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfAutoRefreshStart", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_deletion_of_free_autonomous_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDeletionOfFreeAutonomousDatabase", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_reclamation_of_free_autonomous_database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeReclamationOfFreeAutonomousDatabase", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_disaster_recovery_role_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDisasterRecoveryRoleChanged", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_until_reconnect_clone_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeUntilReconnectCloneEnabled", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:next_long_term_backup_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextLongTermBackupTimeStamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:time_undeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeUndeleted", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseSummary.add_member(:admin_password_source_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSourceSummary, name: "adminPasswordSourceSummary"))
    AutonomousDatabaseSummary.type = Types::AutonomousDatabaseSummary
    AutonomousDatabaseVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseVersionSummary, name: "member"))
    AutonomousDatabaseVersionSummary.add_member(:db_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: DbWorkload, name: "dbWorkload"))
    AutonomousDatabaseVersionSummary.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "details"))
    AutonomousDatabaseVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version"))
    AutonomousDatabaseVersionSummary.type = Types::AutonomousDatabaseVersionSummary
    AutonomousDatabaseWalletDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseWalletStatus, name: "status"))
    AutonomousDatabaseWalletDetails.add_member(:time_rotated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeRotated", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AutonomousDatabaseWalletDetails.add_member(:password_source_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: WalletPasswordSourceSummary, name: "passwordSourceSummary"))
    AutonomousDatabaseWalletDetails.type = Types::AutonomousDatabaseWalletDetails
    AutonomousDatabaseWalletStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AutonomousDatabaseWalletStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AutonomousMaintenanceScheduleType.add_member(:early, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EARLY", traits: {"smithy.api#enumValue" => "EARLY"}))
    AutonomousMaintenanceScheduleType.add_member(:regular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGULAR", traits: {"smithy.api#enumValue" => "REGULAR"}))
    AutonomousVirtualMachineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousVirtualMachineSummary, name: "member"))
    AutonomousVirtualMachineSummary.add_member(:autonomous_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousVirtualMachineId"))
    AutonomousVirtualMachineSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    AutonomousVirtualMachineSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AutonomousVirtualMachineSummary.add_member(:vm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vmName"))
    AutonomousVirtualMachineSummary.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbServerId"))
    AutonomousVirtualMachineSummary.add_member(:db_server_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbServerDisplayName"))
    AutonomousVirtualMachineSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    AutonomousVirtualMachineSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    AutonomousVirtualMachineSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    AutonomousVirtualMachineSummary.add_member(:client_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientIpAddress"))
    AutonomousVirtualMachineSummary.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudAutonomousVmClusterId"))
    AutonomousVirtualMachineSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    AutonomousVirtualMachineSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    AutonomousVirtualMachineSummary.type = Types::AutonomousVirtualMachineSummary
    AwsEncryptionKeyConfiguration.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn"))
    AwsEncryptionKeyConfiguration.add_member(:external_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdType, name: "externalIdType"))
    AwsEncryptionKeyConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdOrArn, name: "kmsKeyId"))
    AwsEncryptionKeyConfiguration.type = Types::AwsEncryptionKeyConfiguration
    AwsEncryptionKeyConfigurationInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn"))
    AwsEncryptionKeyConfigurationInput.add_member(:external_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdType, name: "externalIdType"))
    AwsEncryptionKeyConfigurationInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdOrArn, name: "kmsKeyId"))
    AwsEncryptionKeyConfigurationInput.type = Types::AwsEncryptionKeyConfigurationInput
    CloneToRefreshableConfiguration.add_member(:source_autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "sourceAutonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    CloneToRefreshableConfiguration.add_member(:refreshable_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshableMode, name: "refreshableMode"))
    CloneToRefreshableConfiguration.add_member(:auto_refresh_frequency_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshFrequencyInSeconds", traits: {"smithy.api#range" => {"min" => 3600, "max" => 604800}}))
    CloneToRefreshableConfiguration.add_member(:auto_refresh_point_lag_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshPointLagInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}}))
    CloneToRefreshableConfiguration.add_member(:time_of_auto_refresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfAutoRefreshStart", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloneToRefreshableConfiguration.add_member(:open_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMode, name: "openMode"))
    CloneToRefreshableConfiguration.add_member(:clone_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneType, name: "cloneType"))
    CloneToRefreshableConfiguration.type = Types::CloneToRefreshableConfiguration
    CloneType.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    CloneType.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA", traits: {"smithy.api#enumValue" => "METADATA"}))
    CloneType.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudAutonomousVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmCluster.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    CloudAutonomousVmCluster.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    CloudAutonomousVmCluster.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    CloudAutonomousVmCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    CloudAutonomousVmCluster.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    CloudAutonomousVmCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CloudAutonomousVmCluster.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CloudAutonomousVmCluster.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmCluster.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "cloudExadataInfrastructureArn"))
    CloudAutonomousVmCluster.add_member(:autonomous_data_storage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "autonomousDataStoragePercentage"))
    CloudAutonomousVmCluster.add_member(:autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "autonomousDataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:available_autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "availableAutonomousDataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:available_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:available_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "availableCpus"))
    CloudAutonomousVmCluster.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    CloudAutonomousVmCluster.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    CloudAutonomousVmCluster.add_member(:cpu_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCountPerNode"))
    CloudAutonomousVmCluster.add_member(:cpu_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "cpuPercentage"))
    CloudAutonomousVmCluster.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInGBs"))
    CloudAutonomousVmCluster.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CloudAutonomousVmCluster.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CloudAutonomousVmCluster.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    CloudAutonomousVmCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CloudAutonomousVmCluster.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    CloudAutonomousVmCluster.add_member(:exadata_storage_in_t_bs_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "exadataStorageInTBsLowestScaledValue"))
    CloudAutonomousVmCluster.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    CloudAutonomousVmCluster.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    CloudAutonomousVmCluster.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    CloudAutonomousVmCluster.add_member(:is_mtls_enabled_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsEnabledVmCluster"))
    CloudAutonomousVmCluster.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CloudAutonomousVmCluster.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    CloudAutonomousVmCluster.add_member(:max_acds_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxAcdsLowestScaledValue"))
    CloudAutonomousVmCluster.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memoryPerOracleComputeUnitInGBs"))
    CloudAutonomousVmCluster.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CloudAutonomousVmCluster.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount"))
    CloudAutonomousVmCluster.add_member(:non_provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nonProvisionableAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "provisionableAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisioned_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "provisionedAutonomousContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:provisioned_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "provisionedCpus"))
    CloudAutonomousVmCluster.add_member(:reclaimable_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "reclaimableCpus"))
    CloudAutonomousVmCluster.add_member(:reserved_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "reservedCpus"))
    CloudAutonomousVmCluster.add_member(:scan_listener_port_non_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortNonTls"))
    CloudAutonomousVmCluster.add_member(:scan_listener_port_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTls"))
    CloudAutonomousVmCluster.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    CloudAutonomousVmCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmCluster.add_member(:time_database_ssl_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDatabaseSslCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmCluster.add_member(:time_ords_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOrdsCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmCluster.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    CloudAutonomousVmCluster.add_member(:total_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalContainerDatabases"))
    CloudAutonomousVmCluster.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleList, name: "iamRoles"))
    CloudAutonomousVmCluster.type = Types::CloudAutonomousVmCluster
    CloudAutonomousVmClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterSummary, name: "member"))
    CloudAutonomousVmClusterResourceDetails.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmClusterResourceDetails.add_member(:unallocated_adb_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "unallocatedAdbStorageInTBs"))
    CloudAutonomousVmClusterResourceDetails.type = Types::CloudAutonomousVmClusterResourceDetails
    CloudAutonomousVmClusterResourceDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterResourceDetails, name: "member"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudAutonomousVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmClusterSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    CloudAutonomousVmClusterSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    CloudAutonomousVmClusterSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    CloudAutonomousVmClusterSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    CloudAutonomousVmClusterSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    CloudAutonomousVmClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CloudAutonomousVmClusterSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "cloudExadataInfrastructureArn"))
    CloudAutonomousVmClusterSummary.add_member(:autonomous_data_storage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "autonomousDataStoragePercentage"))
    CloudAutonomousVmClusterSummary.add_member(:autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "autonomousDataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:available_autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "availableAutonomousDataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:available_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:available_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "availableCpus"))
    CloudAutonomousVmClusterSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCountPerNode"))
    CloudAutonomousVmClusterSummary.add_member(:cpu_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "cpuPercentage"))
    CloudAutonomousVmClusterSummary.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CloudAutonomousVmClusterSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    CloudAutonomousVmClusterSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CloudAutonomousVmClusterSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    CloudAutonomousVmClusterSummary.add_member(:exadata_storage_in_t_bs_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "exadataStorageInTBsLowestScaledValue"))
    CloudAutonomousVmClusterSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    CloudAutonomousVmClusterSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    CloudAutonomousVmClusterSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    CloudAutonomousVmClusterSummary.add_member(:is_mtls_enabled_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsEnabledVmCluster"))
    CloudAutonomousVmClusterSummary.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CloudAutonomousVmClusterSummary.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    CloudAutonomousVmClusterSummary.add_member(:max_acds_lowest_scaled_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxAcdsLowestScaledValue"))
    CloudAutonomousVmClusterSummary.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memoryPerOracleComputeUnitInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CloudAutonomousVmClusterSummary.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount"))
    CloudAutonomousVmClusterSummary.add_member(:non_provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nonProvisionableAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisionable_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "provisionableAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisioned_autonomous_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "provisionedAutonomousContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:provisioned_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "provisionedCpus"))
    CloudAutonomousVmClusterSummary.add_member(:reclaimable_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "reclaimableCpus"))
    CloudAutonomousVmClusterSummary.add_member(:reserved_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "reservedCpus"))
    CloudAutonomousVmClusterSummary.add_member(:scan_listener_port_non_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortNonTls"))
    CloudAutonomousVmClusterSummary.add_member(:scan_listener_port_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTls"))
    CloudAutonomousVmClusterSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    CloudAutonomousVmClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmClusterSummary.add_member(:time_database_ssl_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDatabaseSslCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmClusterSummary.add_member(:time_ords_certificate_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOrdsCertificateExpires", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudAutonomousVmClusterSummary.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    CloudAutonomousVmClusterSummary.add_member(:total_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalContainerDatabases"))
    CloudAutonomousVmClusterSummary.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleList, name: "iamRoles"))
    CloudAutonomousVmClusterSummary.type = Types::CloudAutonomousVmClusterSummary
    CloudExadataInfrastructure.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CloudExadataInfrastructure.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CloudExadataInfrastructure.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CloudExadataInfrastructure.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CloudExadataInfrastructure.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureArn"))
    CloudExadataInfrastructure.add_member(:activated_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "activatedStorageCount"))
    CloudExadataInfrastructure.add_member(:additional_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "additionalStorageCount"))
    CloudExadataInfrastructure.add_member(:available_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    CloudExadataInfrastructure.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    CloudExadataInfrastructure.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "computeCount"))
    CloudExadataInfrastructure.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCount"))
    CloudExadataInfrastructure.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContactsToSendToOCI"))
    CloudExadataInfrastructure.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CloudExadataInfrastructure.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbServerVersion"))
    CloudExadataInfrastructure.add_member(:last_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastMaintenanceRunId"))
    CloudExadataInfrastructure.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    CloudExadataInfrastructure.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCpuCount"))
    CloudExadataInfrastructure.add_member(:max_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxDataStorageInTBs"))
    CloudExadataInfrastructure.add_member(:max_db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxDbNodeStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxMemoryInGBs"))
    CloudExadataInfrastructure.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CloudExadataInfrastructure.add_member(:monthly_db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyDbServerVersion"))
    CloudExadataInfrastructure.add_member(:monthly_storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyStorageServerVersion"))
    CloudExadataInfrastructure.add_member(:next_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextMaintenanceRunId"))
    CloudExadataInfrastructure.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    CloudExadataInfrastructure.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    CloudExadataInfrastructure.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    CloudExadataInfrastructure.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    CloudExadataInfrastructure.add_member(:storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageCount"))
    CloudExadataInfrastructure.add_member(:storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "storageServerVersion"))
    CloudExadataInfrastructure.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudExadataInfrastructure.add_member(:total_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalStorageSizeInGBs"))
    CloudExadataInfrastructure.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    CloudExadataInfrastructure.add_member(:database_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "databaseServerType"))
    CloudExadataInfrastructure.add_member(:storage_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "storageServerType"))
    CloudExadataInfrastructure.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    CloudExadataInfrastructure.type = Types::CloudExadataInfrastructure
    CloudExadataInfrastructureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructureSummary, name: "member"))
    CloudExadataInfrastructureSummary.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CloudExadataInfrastructureSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CloudExadataInfrastructureSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CloudExadataInfrastructureSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CloudExadataInfrastructureSummary.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureArn"))
    CloudExadataInfrastructureSummary.add_member(:activated_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "activatedStorageCount"))
    CloudExadataInfrastructureSummary.add_member(:additional_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "additionalStorageCount"))
    CloudExadataInfrastructureSummary.add_member(:available_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    CloudExadataInfrastructureSummary.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    CloudExadataInfrastructureSummary.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "computeCount"))
    CloudExadataInfrastructureSummary.add_member(:cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCount"))
    CloudExadataInfrastructureSummary.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContactsToSendToOCI"))
    CloudExadataInfrastructureSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CloudExadataInfrastructureSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:last_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastMaintenanceRunId"))
    CloudExadataInfrastructureSummary.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    CloudExadataInfrastructureSummary.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCpuCount"))
    CloudExadataInfrastructureSummary.add_member(:max_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxDataStorageInTBs"))
    CloudExadataInfrastructureSummary.add_member(:max_db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxDbNodeStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxMemoryInGBs"))
    CloudExadataInfrastructureSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:monthly_db_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyDbServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:monthly_storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyStorageServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:next_maintenance_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextMaintenanceRunId"))
    CloudExadataInfrastructureSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    CloudExadataInfrastructureSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    CloudExadataInfrastructureSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    CloudExadataInfrastructureSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    CloudExadataInfrastructureSummary.add_member(:storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageCount"))
    CloudExadataInfrastructureSummary.add_member(:storage_server_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "storageServerVersion"))
    CloudExadataInfrastructureSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudExadataInfrastructureSummary.add_member(:total_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalStorageSizeInGBs"))
    CloudExadataInfrastructureSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    CloudExadataInfrastructureSummary.add_member(:database_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "databaseServerType"))
    CloudExadataInfrastructureSummary.add_member(:storage_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "storageServerType"))
    CloudExadataInfrastructureSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    CloudExadataInfrastructureSummary.type = Types::CloudExadataInfrastructureSummary
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_autonomous_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterResourceDetailsList, name: "cloudAutonomousVmClusters"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_exadata_infrastructure_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureDisplayName"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:exadata_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "exadataStorageInTBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:local_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "localStorageInGBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memoryInGBs"))
    CloudExadataInfrastructureUnallocatedResources.add_member(:ocpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ocpus"))
    CloudExadataInfrastructureUnallocatedResources.type = Types::CloudExadataInfrastructureUnallocatedResources
    CloudVmCluster.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudVmCluster.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CloudVmCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CloudVmCluster.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CloudVmCluster.add_member(:cloud_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudVmClusterArn"))
    CloudVmCluster.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureId"))
    CloudVmCluster.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "cloudExadataInfrastructureArn"))
    CloudVmCluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterName"))
    CloudVmCluster.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    CloudVmCluster.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    CloudVmCluster.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CloudVmCluster.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CloudVmCluster.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    CloudVmCluster.add_member(:disk_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskRedundancy, name: "diskRedundancy"))
    CloudVmCluster.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion"))
    CloudVmCluster.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    CloudVmCluster.add_member(:iorm_config_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadataIormConfig, name: "iormConfigCache"))
    CloudVmCluster.add_member(:is_local_backup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalBackupEnabled"))
    CloudVmCluster.add_member(:is_sparse_diskgroup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isSparseDiskgroupEnabled"))
    CloudVmCluster.add_member(:last_update_history_entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastUpdateHistoryEntryId"))
    CloudVmCluster.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CloudVmCluster.add_member(:listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "listenerPort"))
    CloudVmCluster.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CloudVmCluster.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount"))
    CloudVmCluster.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    CloudVmCluster.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    CloudVmCluster.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    CloudVmCluster.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    CloudVmCluster.add_member(:scan_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsName"))
    CloudVmCluster.add_member(:scan_dns_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsRecordId"))
    CloudVmCluster.add_member(:scan_ip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "scanIpIds"))
    CloudVmCluster.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    CloudVmCluster.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringList, name: "sshPublicKeys"))
    CloudVmCluster.add_member(:storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageSizeInGBs"))
    CloudVmCluster.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion"))
    CloudVmCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudVmCluster.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    CloudVmCluster.add_member(:vip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "vipIds"))
    CloudVmCluster.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    CloudVmCluster.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    CloudVmCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    CloudVmCluster.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    CloudVmCluster.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleList, name: "iamRoles"))
    CloudVmCluster.type = Types::CloudVmCluster
    CloudVmClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudVmClusterSummary, name: "member"))
    CloudVmClusterSummary.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId", traits: {"smithy.api#required" => {}}))
    CloudVmClusterSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CloudVmClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CloudVmClusterSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CloudVmClusterSummary.add_member(:cloud_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudVmClusterArn"))
    CloudVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureId"))
    CloudVmClusterSummary.add_member(:cloud_exadata_infrastructure_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "cloudExadataInfrastructureArn"))
    CloudVmClusterSummary.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterName"))
    CloudVmClusterSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    CloudVmClusterSummary.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    CloudVmClusterSummary.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CloudVmClusterSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CloudVmClusterSummary.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    CloudVmClusterSummary.add_member(:disk_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskRedundancy, name: "diskRedundancy"))
    CloudVmClusterSummary.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion"))
    CloudVmClusterSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    CloudVmClusterSummary.add_member(:iorm_config_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadataIormConfig, name: "iormConfigCache"))
    CloudVmClusterSummary.add_member(:is_local_backup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalBackupEnabled"))
    CloudVmClusterSummary.add_member(:is_sparse_diskgroup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isSparseDiskgroupEnabled"))
    CloudVmClusterSummary.add_member(:last_update_history_entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastUpdateHistoryEntryId"))
    CloudVmClusterSummary.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CloudVmClusterSummary.add_member(:listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "listenerPort"))
    CloudVmClusterSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CloudVmClusterSummary.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount"))
    CloudVmClusterSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    CloudVmClusterSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    CloudVmClusterSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    CloudVmClusterSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    CloudVmClusterSummary.add_member(:scan_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsName"))
    CloudVmClusterSummary.add_member(:scan_dns_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsRecordId"))
    CloudVmClusterSummary.add_member(:scan_ip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "scanIpIds"))
    CloudVmClusterSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    CloudVmClusterSummary.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringList, name: "sshPublicKeys"))
    CloudVmClusterSummary.add_member(:storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageSizeInGBs"))
    CloudVmClusterSummary.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion"))
    CloudVmClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CloudVmClusterSummary.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    CloudVmClusterSummary.add_member(:vip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "vipIds"))
    CloudVmClusterSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    CloudVmClusterSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    CloudVmClusterSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    CloudVmClusterSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    CloudVmClusterSummary.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleList, name: "iamRoles"))
    CloudVmClusterSummary.type = Types::CloudVmClusterSummary
    ComputeModel.add_member(:ecpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECPU", traits: {"smithy.api#enumValue" => "ECPU"}))
    ComputeModel.add_member(:ocpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OCPU", traits: {"smithy.api#enumValue" => "OCPU"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAutonomousDatabaseBackupInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    CreateAutonomousDatabaseBackupInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    CreateAutonomousDatabaseBackupInput.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 90, "max" => 3650}}))
    CreateAutonomousDatabaseBackupInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateAutonomousDatabaseBackupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateAutonomousDatabaseBackupInput.type = Types::CreateAutonomousDatabaseBackupInput
    CreateAutonomousDatabaseBackupOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateAutonomousDatabaseBackupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateAutonomousDatabaseBackupOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateAutonomousDatabaseBackupOutput.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseBackupId", traits: {"smithy.api#required" => {}}))
    CreateAutonomousDatabaseBackupOutput.type = Types::CreateAutonomousDatabaseBackupOutput
    CreateAutonomousDatabaseInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    CreateAutonomousDatabaseInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    CreateAutonomousDatabaseInput.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}}))
    CreateAutonomousDatabaseInput.add_member(:admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "adminPassword", traits: {"smithy.api#length" => {"min" => 12, "max" => 30}}))
    CreateAutonomousDatabaseInput.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "computeCount", traits: {"smithy.api#range" => {"min" => 0.1, "max" => 512}}))
    CreateAutonomousDatabaseInput.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataStorageSizeInTBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 384}}))
    CreateAutonomousDatabaseInput.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataStorageSizeInGBs", traits: {"smithy.api#range" => {"min" => 20, "max" => 393216}}))
    CreateAutonomousDatabaseInput.add_member(:db_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: DbWorkload, name: "dbWorkload"))
    CreateAutonomousDatabaseInput.add_member(:is_auto_scaling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingEnabled"))
    CreateAutonomousDatabaseInput.add_member(:is_auto_scaling_for_storage_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingForStorageEnabled"))
    CreateAutonomousDatabaseInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CreateAutonomousDatabaseInput.add_member(:character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "characterSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateAutonomousDatabaseInput.add_member(:ncharacter_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ncharacterSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateAutonomousDatabaseInput.add_member(:db_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateAutonomousDatabaseInput.add_member(:database_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEdition, name: "databaseEdition"))
    CreateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips_source, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyAllowlistedIpsSource, name: "standbyAllowlistedIpsSource"))
    CreateAutonomousDatabaseInput.add_member(:autonomous_maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousMaintenanceScheduleType, name: "autonomousMaintenanceScheduleType"))
    CreateAutonomousDatabaseInput.add_member(:backup_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "backupRetentionPeriodInDays"))
    CreateAutonomousDatabaseInput.add_member(:byol_compute_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "byolComputeCountLimit", traits: {"smithy.api#range" => {"min" => 2}}))
    CreateAutonomousDatabaseInput.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}}))
    CreateAutonomousDatabaseInput.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContactsToSendToOCI"))
    CreateAutonomousDatabaseInput.add_member(:private_endpoint_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointIp"))
    CreateAutonomousDatabaseInput.add_member(:private_endpoint_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointLabel"))
    CreateAutonomousDatabaseInput.add_member(:resource_pool_leader_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "resourcePoolLeaderId"))
    CreateAutonomousDatabaseInput.add_member(:resource_pool_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePoolSummary, name: "resourcePoolSummary"))
    CreateAutonomousDatabaseInput.add_member(:scheduled_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledOperationDetailsList, name: "scheduledOperations"))
    CreateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "standbyAllowlistedIps"))
    CreateAutonomousDatabaseInput.add_member(:allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "allowlistedIps"))
    CreateAutonomousDatabaseInput.add_member(:transportable_tablespace, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportableTablespace, name: "transportableTablespace"))
    CreateAutonomousDatabaseInput.add_member(:is_backup_retention_locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBackupRetentionLocked"))
    CreateAutonomousDatabaseInput.add_member(:is_local_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalDataGuardEnabled"))
    CreateAutonomousDatabaseInput.add_member(:is_mtls_connection_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsConnectionRequired"))
    CreateAutonomousDatabaseInput.add_member(:db_tools_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseToolList, name: "dbToolsDetails"))
    CreateAutonomousDatabaseInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "source"))
    CreateAutonomousDatabaseInput.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    CreateAutonomousDatabaseInput.add_member(:encryption_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyProviderInput, name: "encryptionKeyProvider"))
    CreateAutonomousDatabaseInput.add_member(:encryption_key_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyConfigurationInput, name: "encryptionKeyConfiguration"))
    CreateAutonomousDatabaseInput.add_member(:admin_password_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSource, name: "adminPasswordSource"))
    CreateAutonomousDatabaseInput.add_member(:admin_password_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSourceConfigurationInput, name: "adminPasswordSourceConfiguration"))
    CreateAutonomousDatabaseInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateAutonomousDatabaseInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateAutonomousDatabaseInput.type = Types::CreateAutonomousDatabaseInput
    CreateAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    CreateAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    CreateAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateAutonomousDatabaseOutput.type = Types::CreateAutonomousDatabaseOutput
    CreateAutonomousDatabaseWalletInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    CreateAutonomousDatabaseWalletInput.add_member(:wallet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WalletType, name: "walletType"))
    CreateAutonomousDatabaseWalletInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "password", traits: {"smithy.api#length" => {"min" => 8}}))
    CreateAutonomousDatabaseWalletInput.add_member(:password_source, ::Smithy::Schema::Shapes::MemberShape.new(target: WalletPasswordSource, name: "passwordSource"))
    CreateAutonomousDatabaseWalletInput.add_member(:password_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WalletPasswordSourceConfigurationInput, name: "passwordSourceConfiguration"))
    CreateAutonomousDatabaseWalletInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateAutonomousDatabaseWalletInput.type = Types::CreateAutonomousDatabaseWalletInput
    CreateAutonomousDatabaseWalletOutput.add_member(:autonomous_database_wallet_file, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseWalletFile, name: "autonomousDatabaseWalletFile", traits: {"smithy.api#required" => {}}))
    CreateAutonomousDatabaseWalletOutput.type = Types::CreateAutonomousDatabaseWalletOutput
    CreateCloudAutonomousVmClusterInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateCloudAutonomousVmClusterInput.add_member(:autonomous_data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "autonomousDataStorageSizeInTBs", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:cpu_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCountPerNode", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    CreateCloudAutonomousVmClusterInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}}))
    CreateCloudAutonomousVmClusterInput.add_member(:is_mtls_enabled_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsEnabledVmCluster"))
    CreateCloudAutonomousVmClusterInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CreateCloudAutonomousVmClusterInput.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    CreateCloudAutonomousVmClusterInput.add_member(:memory_per_oracle_compute_unit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memoryPerOracleComputeUnitInGBs", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.add_member(:scan_listener_port_non_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortNonTls", traits: {"smithy.api#default" => 1521, "smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateCloudAutonomousVmClusterInput.add_member(:scan_listener_port_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTls", traits: {"smithy.api#default" => 2484, "smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateCloudAutonomousVmClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateCloudAutonomousVmClusterInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudAutonomousVmClusterInput.add_member(:total_container_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalContainerDatabases", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterInput.type = Types::CreateCloudAutonomousVmClusterInput
    CreateCloudAutonomousVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateCloudAutonomousVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateCloudAutonomousVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateCloudAutonomousVmClusterOutput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudAutonomousVmClusterId", traits: {"smithy.api#required" => {}}))
    CreateCloudAutonomousVmClusterOutput.type = Types::CreateCloudAutonomousVmClusterOutput
    CreateCloudExadataInfrastructureInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateCloudExadataInfrastructureInput.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "computeCount", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContactsToSendToOCI"))
    CreateCloudExadataInfrastructureInput.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    CreateCloudExadataInfrastructureInput.add_member(:storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageCount", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateCloudExadataInfrastructureInput.add_member(:database_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "databaseServerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.add_member(:storage_server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "storageServerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudExadataInfrastructureInput.type = Types::CreateCloudExadataInfrastructureInput
    CreateCloudExadataInfrastructureOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateCloudExadataInfrastructureOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateCloudExadataInfrastructureOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CreateCloudExadataInfrastructureOutput.type = Types::CreateCloudExadataInfrastructureOutput
    CreateCloudVmClusterInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}, "smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Hostname, name: "hostname", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "sshPublicKeys", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterInput.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName"))
    CreateCloudVmClusterInput.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    CreateCloudVmClusterInput.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dataStorageSizeInTBs"))
    CreateCloudVmClusterInput.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    CreateCloudVmClusterInput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    CreateCloudVmClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateCloudVmClusterInput.add_member(:is_local_backup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalBackupEnabled"))
    CreateCloudVmClusterInput.add_member(:is_sparse_diskgroup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isSparseDiskgroupEnabled"))
    CreateCloudVmClusterInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CreateCloudVmClusterInput.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    CreateCloudVmClusterInput.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudVmClusterInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateCloudVmClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateCloudVmClusterInput.add_member(:scan_listener_port_tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcp", traits: {"smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateCloudVmClusterInput.type = Types::CreateCloudVmClusterInput
    CreateCloudVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateCloudVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateCloudVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateCloudVmClusterOutput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudVmClusterId", traits: {"smithy.api#required" => {}}))
    CreateCloudVmClusterOutput.type = Types::CreateCloudVmClusterOutput
    CreateExadbVmClusterInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:enabled_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "enabledEcpuCount", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:grid_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "gridImageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Hostname, name: "hostname", traits: {"smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "sshPublicKeys", traits: {"smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:total_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalEcpuCount", traits: {"smithy.api#range" => {"min" => 2}, "smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:vm_file_system_storage_total_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "vmFileSystemStorageTotalSizeInGBs", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateExadbVmClusterInput.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName"))
    CreateExadbVmClusterInput.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    CreateExadbVmClusterInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    CreateExadbVmClusterInput.add_member(:scan_listener_port_tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcp", traits: {"smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateExadbVmClusterInput.add_member(:scan_listener_port_tcp_ssl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcpSsl", traits: {"smithy.api#range" => {"min" => 1024, "max" => 8999}}))
    CreateExadbVmClusterInput.add_member(:shape_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttribute, name: "shapeAttribute"))
    CreateExadbVmClusterInput.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateExadbVmClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateExadbVmClusterInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateExadbVmClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateExadbVmClusterInput.type = Types::CreateExadbVmClusterInput
    CreateExadbVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateExadbVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateExadbVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    CreateExadbVmClusterOutput.type = Types::CreateExadbVmClusterOutput
    CreateExascaleDbStorageVaultInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateExascaleDbStorageVaultInput.add_member(:high_capacity_database_storage_total_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "highCapacityDatabaseStorageTotalSizeInGBs", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateExascaleDbStorageVaultInput.add_member(:additional_flash_cache_in_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "additionalFlashCacheInPercent", traits: {"smithy.api#range" => {"min" => 0}}))
    CreateExascaleDbStorageVaultInput.add_member(:autoscale_limit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoscaleLimitInGBs", traits: {"smithy.api#range" => {"min" => 0}}))
    CreateExascaleDbStorageVaultInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateExascaleDbStorageVaultInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateExascaleDbStorageVaultInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}}))
    CreateExascaleDbStorageVaultInput.add_member(:is_autoscale_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoscaleEnabled"))
    CreateExascaleDbStorageVaultInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateExascaleDbStorageVaultInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateExascaleDbStorageVaultInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateExascaleDbStorageVaultInput.type = Types::CreateExascaleDbStorageVaultInput
    CreateExascaleDbStorageVaultOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateExascaleDbStorageVaultOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateExascaleDbStorageVaultOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateExascaleDbStorageVaultOutput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    CreateExascaleDbStorageVaultOutput.type = Types::CreateExascaleDbStorageVaultOutput
    CreateOdbNetworkInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateOdbNetworkInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateOdbNetworkInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateOdbNetworkInput.add_member(:client_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 43}, "smithy.api#required" => {}}))
    CreateOdbNetworkInput.add_member(:backup_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 43}}))
    CreateOdbNetworkInput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "customDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    CreateOdbNetworkInput.add_member(:default_dns_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultDnsPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*$"}))
    CreateOdbNetworkInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateOdbNetworkInput.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "s3Access"))
    CreateOdbNetworkInput.add_member(:zero_etl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "zeroEtlAccess"))
    CreateOdbNetworkInput.add_member(:sts_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "stsAccess"))
    CreateOdbNetworkInput.add_member(:kms_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "kmsAccess"))
    CreateOdbNetworkInput.add_member(:s3_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "s3PolicyDocument"))
    CreateOdbNetworkInput.add_member(:sts_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "stsPolicyDocument"))
    CreateOdbNetworkInput.add_member(:kms_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "kmsPolicyDocument"))
    CreateOdbNetworkInput.add_member(:cross_region_s3_restore_sources_to_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "crossRegionS3RestoreSourcesToEnable"))
    CreateOdbNetworkInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateOdbNetworkInput.type = Types::CreateOdbNetworkInput
    CreateOdbNetworkOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateOdbNetworkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateOdbNetworkOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateOdbNetworkOutput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateOdbNetworkOutput.type = Types::CreateOdbNetworkOutput
    CreateOdbPeeringConnectionInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    CreateOdbPeeringConnectionInput.add_member(:peer_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "peerNetworkId", traits: {"smithy.api#required" => {}}))
    CreateOdbPeeringConnectionInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    CreateOdbPeeringConnectionInput.add_member(:peer_network_cidrs_to_be_added, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeredCidrList, name: "peerNetworkCidrsToBeAdded"))
    CreateOdbPeeringConnectionInput.add_member(:peer_network_route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PeerNetworkRouteTableIdList, name: "peerNetworkRouteTableIds"))
    CreateOdbPeeringConnectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralInputString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 8, "max" => 64}}))
    CreateOdbPeeringConnectionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateOdbPeeringConnectionInput.type = Types::CreateOdbPeeringConnectionInput
    CreateOdbPeeringConnectionOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    CreateOdbPeeringConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    CreateOdbPeeringConnectionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CreateOdbPeeringConnectionOutput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    CreateOdbPeeringConnectionOutput.type = Types::CreateOdbPeeringConnectionOutput
    CrossRegionDataGuardConfiguration.add_member(:source_autonomous_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sourceAutonomousDatabaseArn", traits: {"smithy.api#required" => {}}))
    CrossRegionDataGuardConfiguration.type = Types::CrossRegionDataGuardConfiguration
    CrossRegionDisasterRecoveryConfiguration.add_member(:source_autonomous_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sourceAutonomousDatabaseArn", traits: {"smithy.api#required" => {}}))
    CrossRegionDisasterRecoveryConfiguration.add_member(:remote_disaster_recovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoveryType, name: "remoteDisasterRecoveryType", traits: {"smithy.api#required" => {}}))
    CrossRegionDisasterRecoveryConfiguration.add_member(:is_replicate_automatic_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isReplicateAutomaticBackups"))
    CrossRegionDisasterRecoveryConfiguration.type = Types::CrossRegionDisasterRecoveryConfiguration
    CrossRegionS3RestoreSourcesAccess.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    CrossRegionS3RestoreSourcesAccess.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv4Addresses"))
    CrossRegionS3RestoreSourcesAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status"))
    CrossRegionS3RestoreSourcesAccess.type = Types::CrossRegionS3RestoreSourcesAccess
    CrossRegionS3RestoreSourcesAccessList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionS3RestoreSourcesAccess, name: "member"))
    CustomerContact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "email", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}}))
    CustomerContact.type = Types::CustomerContact
    CustomerContacts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContact, name: "member"))
    CustomerManagedAwsSecretConfiguration.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn"))
    CustomerManagedAwsSecretConfiguration.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdOrArn, name: "secretId"))
    CustomerManagedAwsSecretConfiguration.add_member(:external_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdType, name: "externalIdType"))
    CustomerManagedAwsSecretConfiguration.type = Types::CustomerManagedAwsSecretConfiguration
    CustomerManagedAwsSecretConfigurationInput.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdOrArn, name: "secretId"))
    CustomerManagedAwsSecretConfigurationInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn"))
    CustomerManagedAwsSecretConfigurationInput.add_member(:external_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdType, name: "externalIdType"))
    CustomerManagedAwsSecretConfigurationInput.type = Types::CustomerManagedAwsSecretConfigurationInput
    DataCollectionOptions.add_member(:is_diagnostics_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDiagnosticsEventsEnabled"))
    DataCollectionOptions.add_member(:is_health_monitoring_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isHealthMonitoringEnabled"))
    DataCollectionOptions.add_member(:is_incident_logs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isIncidentLogsEnabled"))
    DataCollectionOptions.type = Types::DataCollectionOptions
    DataGuardRole.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    DataGuardRole.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    DataGuardRole.add_member(:disabled_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED_STANDBY", traits: {"smithy.api#enumValue" => "DISABLED_STANDBY"}))
    DataGuardRole.add_member(:backup_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_COPY", traits: {"smithy.api#enumValue" => "BACKUP_COPY"}))
    DataGuardRole.add_member(:snapshot_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT_STANDBY", traits: {"smithy.api#enumValue" => "SNAPSHOT_STANDBY"}))
    DataSafeStatus.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    DataSafeStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    DataSafeStatus.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    DataSafeStatus.add_member(:not_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REGISTERED", traits: {"smithy.api#enumValue" => "NOT_REGISTERED"}))
    DataSafeStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DatabaseCloneConfiguration.add_member(:source_autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "sourceAutonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    DatabaseCloneConfiguration.add_member(:clone_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneType, name: "cloneType", traits: {"smithy.api#required" => {}}))
    DatabaseCloneConfiguration.type = Types::DatabaseCloneConfiguration
    DatabaseConnectionStringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    DatabaseConnectionStringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    DatabaseConnectionStringProfile.add_member(:consumer_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "consumerGroup"))
    DatabaseConnectionStringProfile.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    DatabaseConnectionStringProfile.add_member(:host_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostFormat"))
    DatabaseConnectionStringProfile.add_member(:is_regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRegional"))
    DatabaseConnectionStringProfile.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "protocol"))
    DatabaseConnectionStringProfile.add_member(:session_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionMode"))
    DatabaseConnectionStringProfile.add_member(:syntax_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "syntaxFormat"))
    DatabaseConnectionStringProfile.add_member(:tls_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tlsAuthentication"))
    DatabaseConnectionStringProfile.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    DatabaseConnectionStringProfile.type = Types::DatabaseConnectionStringProfile
    DatabaseConnectionStringProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConnectionStringProfile, name: "member"))
    DatabaseEdition.add_member(:standard_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_EDITION", traits: {"smithy.api#enumValue" => "STANDARD_EDITION"}))
    DatabaseEdition.add_member(:enterprise_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE_EDITION", traits: {"smithy.api#enumValue" => "ENTERPRISE_EDITION"}))
    DatabaseManagementStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    DatabaseManagementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DatabaseManagementStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    DatabaseManagementStatus.add_member(:not_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ENABLED", traits: {"smithy.api#enumValue" => "NOT_ENABLED"}))
    DatabaseManagementStatus.add_member(:failed_enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_ENABLING", traits: {"smithy.api#enumValue" => "FAILED_ENABLING"}))
    DatabaseManagementStatus.add_member(:failed_disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_DISABLING", traits: {"smithy.api#enumValue" => "FAILED_DISABLING"}))
    DatabaseStandbySummary.add_member(:availability_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityDomain"))
    DatabaseStandbySummary.add_member(:lag_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lagTimeInSeconds"))
    DatabaseStandbySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    DatabaseStandbySummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DatabaseStandbySummary.add_member(:maintenance_target_component, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "maintenanceTargetComponent"))
    DatabaseStandbySummary.add_member(:time_data_guard_role_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDataGuardRoleChanged", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DatabaseStandbySummary.add_member(:time_disaster_recovery_role_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeDisasterRecoveryRoleChanged", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DatabaseStandbySummary.add_member(:time_maintenance_begin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeMaintenanceBegin", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DatabaseStandbySummary.add_member(:time_maintenance_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeMaintenanceEnd", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DatabaseStandbySummary.type = Types::DatabaseStandbySummary
    DatabaseTool.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isEnabled"))
    DatabaseTool.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    DatabaseTool.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "computeCount"))
    DatabaseTool.add_member(:max_idle_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxIdleTimeInMinutes"))
    DatabaseTool.type = Types::DatabaseTool
    DatabaseToolList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTool, name: "member"))
    DatabaseType.add_member(:regular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGULAR", traits: {"smithy.api#enumValue" => "REGULAR"}))
    DatabaseType.add_member(:clone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLONE", traits: {"smithy.api#enumValue" => "CLONE"}))
    DayOfWeek.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeekName, name: "name"))
    DayOfWeek.type = Types::DayOfWeek
    DayOfWeekName.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeekName.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeekName.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeekName.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeekName.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeekName.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeekName.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DaysOfWeek.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "member"))
    DbIormConfig.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName"))
    DbIormConfig.add_member(:flash_cache_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "flashCacheLimit"))
    DbIormConfig.add_member(:share, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "share"))
    DbIormConfig.type = Types::DbIormConfig
    DbIormConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbIormConfig, name: "member"))
    DbNode.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbNodeId"))
    DbNode.add_member(:db_node_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "dbNodeArn"))
    DbNode.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, name: "status"))
    DbNode.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DbNode.add_member(:additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "additionalDetails"))
    DbNode.add_member(:backup_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupIpId"))
    DbNode.add_member(:backup_vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupVnic2Id"))
    DbNode.add_member(:backup_vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupVnicId"))
    DbNode.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    DbNode.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    DbNode.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbServerId"))
    DbNode.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbSystemId"))
    DbNode.add_member(:fault_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "faultDomain"))
    DbNode.add_member(:host_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostIpId"))
    DbNode.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    DbNode.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    DbNode.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    DbNode.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeMaintenanceType, name: "maintenanceType"))
    DbNode.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    DbNode.add_member(:software_storage_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "softwareStorageSizeInGB"))
    DbNode.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbNode.add_member(:time_maintenance_window_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeMaintenanceWindowEnd"))
    DbNode.add_member(:time_maintenance_window_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeMaintenanceWindowStart"))
    DbNode.add_member(:total_cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalCpuCoreCount"))
    DbNode.add_member(:vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnic2Id"))
    DbNode.add_member(:vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnicId"))
    DbNode.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateIpAddress"))
    DbNode.add_member(:floating_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "floatingIpAddress"))
    DbNode.type = Types::DbNode
    DbNodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeSummary, name: "member"))
    DbNodeMaintenanceType.add_member(:vmdb_reboot_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VMDB_REBOOT_MIGRATION", traits: {"smithy.api#enumValue" => "VMDB_REBOOT_MIGRATION"}))
    DbNodeResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DbNodeResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DbNodeResourceStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    DbNodeResourceStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    DbNodeResourceStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    DbNodeResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DbNodeResourceStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    DbNodeResourceStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DbNodeResourceStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    DbNodeSummary.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbNodeId"))
    DbNodeSummary.add_member(:db_node_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "dbNodeArn"))
    DbNodeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, name: "status"))
    DbNodeSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DbNodeSummary.add_member(:additional_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "additionalDetails"))
    DbNodeSummary.add_member(:backup_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupIpId"))
    DbNodeSummary.add_member(:backup_vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupVnic2Id"))
    DbNodeSummary.add_member(:backup_vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupVnicId"))
    DbNodeSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    DbNodeSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    DbNodeSummary.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbServerId"))
    DbNodeSummary.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbSystemId"))
    DbNodeSummary.add_member(:fault_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "faultDomain"))
    DbNodeSummary.add_member(:host_ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostIpId"))
    DbNodeSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostname"))
    DbNodeSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    DbNodeSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    DbNodeSummary.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeMaintenanceType, name: "maintenanceType"))
    DbNodeSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    DbNodeSummary.add_member(:software_storage_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "softwareStorageSizeInGB"))
    DbNodeSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbNodeSummary.add_member(:time_maintenance_window_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeMaintenanceWindowEnd"))
    DbNodeSummary.add_member(:time_maintenance_window_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeMaintenanceWindowStart"))
    DbNodeSummary.add_member(:total_cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalCpuCoreCount"))
    DbNodeSummary.add_member(:vnic2_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnic2Id"))
    DbNodeSummary.add_member(:vnic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnicId"))
    DbNodeSummary.type = Types::DbNodeSummary
    DbServer.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbServerId"))
    DbServer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    DbServer.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DbServer.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    DbServer.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    DbServer.add_member(:db_server_patching_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerPatchingDetails, name: "dbServerPatchingDetails"))
    DbServer.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    DbServer.add_member(:exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exadataInfrastructureId"))
    DbServer.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    DbServer.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    DbServer.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCpuCount"))
    DbServer.add_member(:max_db_node_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxDbNodeStorageInGBs"))
    DbServer.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxMemoryInGBs"))
    DbServer.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    DbServer.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    DbServer.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbServer.add_member(:vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "vmClusterIds"))
    DbServer.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    DbServer.add_member(:autonomous_vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "autonomousVmClusterIds"))
    DbServer.add_member(:autonomous_virtual_machine_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "autonomousVirtualMachineIds"))
    DbServer.type = Types::DbServer
    DbServerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerSummary, name: "member"))
    DbServerPatchingDetails.add_member(:estimated_patch_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "estimatedPatchDuration"))
    DbServerPatchingDetails.add_member(:patching_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerPatchingStatus, name: "patchingStatus"))
    DbServerPatchingDetails.add_member(:time_patching_ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timePatchingEnded"))
    DbServerPatchingDetails.add_member(:time_patching_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timePatchingStarted"))
    DbServerPatchingDetails.type = Types::DbServerPatchingDetails
    DbServerPatchingStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    DbServerPatchingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DbServerPatchingStatus.add_member(:maintenance_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "MAINTENANCE_IN_PROGRESS"}))
    DbServerPatchingStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    DbServerSummary.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbServerId"))
    DbServerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    DbServerSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DbServerSummary.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount"))
    DbServerSummary.add_member(:db_node_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dbNodeStorageSizeInGBs"))
    DbServerSummary.add_member(:db_server_patching_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerPatchingDetails, name: "dbServerPatchingDetails"))
    DbServerSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    DbServerSummary.add_member(:exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exadataInfrastructureId"))
    DbServerSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    DbServerSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    DbServerSummary.add_member(:max_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCpuCount"))
    DbServerSummary.add_member(:max_db_node_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxDbNodeStorageInGBs"))
    DbServerSummary.add_member(:max_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxMemoryInGBs"))
    DbServerSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    DbServerSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    DbServerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbServerSummary.add_member(:vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "vmClusterIds"))
    DbServerSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    DbServerSummary.add_member(:autonomous_vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "autonomousVmClusterIds"))
    DbServerSummary.add_member(:autonomous_virtual_machine_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "autonomousVirtualMachineIds"))
    DbServerSummary.type = Types::DbServerSummary
    DbSystemShapeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbSystemShapeSummary, name: "member"))
    DbSystemShapeSummary.add_member(:available_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableCoreCount"))
    DbSystemShapeSummary.add_member(:available_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableCoreCountPerNode"))
    DbSystemShapeSummary.add_member(:available_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableDataStorageInTBs"))
    DbSystemShapeSummary.add_member(:available_data_storage_per_server_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableDataStoragePerServerInTBs"))
    DbSystemShapeSummary.add_member(:available_db_node_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableDbNodePerNodeInGBs"))
    DbSystemShapeSummary.add_member(:available_db_node_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableDbNodeStorageInGBs"))
    DbSystemShapeSummary.add_member(:available_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableMemoryInGBs"))
    DbSystemShapeSummary.add_member(:available_memory_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableMemoryPerNodeInGBs"))
    DbSystemShapeSummary.add_member(:core_count_increment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "coreCountIncrement"))
    DbSystemShapeSummary.add_member(:max_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxStorageCount"))
    DbSystemShapeSummary.add_member(:maximum_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maximumNodeCount"))
    DbSystemShapeSummary.add_member(:min_core_count_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minCoreCountPerNode"))
    DbSystemShapeSummary.add_member(:min_data_storage_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minDataStorageInTBs"))
    DbSystemShapeSummary.add_member(:min_db_node_storage_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minDbNodeStoragePerNodeInGBs"))
    DbSystemShapeSummary.add_member(:min_memory_per_node_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minMemoryPerNodeInGBs"))
    DbSystemShapeSummary.add_member(:min_storage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minStorageCount"))
    DbSystemShapeSummary.add_member(:minimum_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimumCoreCount"))
    DbSystemShapeSummary.add_member(:minimum_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimumNodeCount"))
    DbSystemShapeSummary.add_member(:runtime_minimum_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "runtimeMinimumCoreCount"))
    DbSystemShapeSummary.add_member(:shape_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shapeFamily"))
    DbSystemShapeSummary.add_member(:shape_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeType, name: "shapeType"))
    DbSystemShapeSummary.add_member(:shape_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttributeList, name: "shapeAttributes"))
    DbSystemShapeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    DbSystemShapeSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    DbSystemShapeSummary.add_member(:are_server_types_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "areServerTypesSupported"))
    DbSystemShapeSummary.type = Types::DbSystemShapeSummary
    DbWorkload.add_member(:oltp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OLTP", traits: {"smithy.api#enumValue" => "OLTP"}))
    DbWorkload.add_member(:ajd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AJD", traits: {"smithy.api#enumValue" => "AJD"}))
    DbWorkload.add_member(:apex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APEX", traits: {"smithy.api#enumValue" => "APEX"}))
    DbWorkload.add_member(:lh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LH", traits: {"smithy.api#enumValue" => "LH"}))
    DeleteAutonomousDatabaseBackupInput.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseBackupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutonomousDatabaseBackupInput.type = Types::DeleteAutonomousDatabaseBackupInput
    DeleteAutonomousDatabaseBackupOutput.type = Types::DeleteAutonomousDatabaseBackupOutput
    DeleteAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutonomousDatabaseInput.type = Types::DeleteAutonomousDatabaseInput
    DeleteAutonomousDatabaseOutput.type = Types::DeleteAutonomousDatabaseOutput
    DeleteCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudAutonomousVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudAutonomousVmClusterInput.type = Types::DeleteCloudAutonomousVmClusterInput
    DeleteCloudAutonomousVmClusterOutput.type = Types::DeleteCloudAutonomousVmClusterOutput
    DeleteCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudExadataInfrastructureInput.type = Types::DeleteCloudExadataInfrastructureInput
    DeleteCloudExadataInfrastructureOutput.type = Types::DeleteCloudExadataInfrastructureOutput
    DeleteCloudVmClusterInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudVmClusterInput.type = Types::DeleteCloudVmClusterInput
    DeleteCloudVmClusterOutput.type = Types::DeleteCloudVmClusterOutput
    DeleteExadbVmClusterInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    DeleteExadbVmClusterInput.type = Types::DeleteExadbVmClusterInput
    DeleteExadbVmClusterOutput.type = Types::DeleteExadbVmClusterOutput
    DeleteExascaleDbStorageVaultInput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    DeleteExascaleDbStorageVaultInput.type = Types::DeleteExascaleDbStorageVaultInput
    DeleteExascaleDbStorageVaultOutput.type = Types::DeleteExascaleDbStorageVaultOutput
    DeleteOdbNetworkInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOdbNetworkInput.add_member(:delete_associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deleteAssociatedResources", traits: {"smithy.api#required" => {}}))
    DeleteOdbNetworkInput.type = Types::DeleteOdbNetworkInput
    DeleteOdbNetworkOutput.type = Types::DeleteOdbNetworkOutput
    DeleteOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbPeeringConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOdbPeeringConnectionInput.type = Types::DeleteOdbPeeringConnectionInput
    DeleteOdbPeeringConnectionOutput.type = Types::DeleteOdbPeeringConnectionOutput
    DisassociateIamRoleFromResourceInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn", traits: {"smithy.api#required" => {}}))
    DisassociateIamRoleFromResourceInput.add_member(:aws_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedAwsIntegration, name: "awsIntegration", traits: {"smithy.api#required" => {}}))
    DisassociateIamRoleFromResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov|aws-iso-[a-z]?|aws-iso):odb:[a-z0-9-]+:\\d{12}:(?:cloud-vm-cluster|cloud-autonomous-vm-cluster|exadb-vm-cluster)/[a-z0-9-_]+$", "smithy.api#required" => {}}))
    DisassociateIamRoleFromResourceInput.type = Types::DisassociateIamRoleFromResourceInput
    DisassociateIamRoleFromResourceOutput.type = Types::DisassociateIamRoleFromResourceOutput
    DisassociateVirtualMachinesFromExadbVmClusterInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    DisassociateVirtualMachinesFromExadbVmClusterInput.add_member(:db_node_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "dbNodeIds", traits: {"smithy.api#required" => {}}))
    DisassociateVirtualMachinesFromExadbVmClusterInput.type = Types::DisassociateVirtualMachinesFromExadbVmClusterInput
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.type = Types::DisassociateVirtualMachinesFromExadbVmClusterOutput
    DisasterRecoveryConfiguration.add_member(:disaster_recovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoveryType, name: "disasterRecoveryType"))
    DisasterRecoveryConfiguration.add_member(:is_replicate_automatic_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isReplicateAutomaticBackups"))
    DisasterRecoveryConfiguration.add_member(:is_snapshot_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isSnapshotStandby"))
    DisasterRecoveryConfiguration.add_member(:time_snapshot_standby_enabled_till, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeSnapshotStandbyEnabledTill", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DisasterRecoveryConfiguration.type = Types::DisasterRecoveryConfiguration
    DisasterRecoveryType.add_member(:adg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADG", traits: {"smithy.api#enumValue" => "ADG"}))
    DisasterRecoveryType.add_member(:backup_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_BASED", traits: {"smithy.api#enumValue" => "BACKUP_BASED"}))
    DiskRedundancy.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    DiskRedundancy.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMAL", traits: {"smithy.api#enumValue" => "NORMAL"}))
    EncryptionKeyConfiguration.add_member(:aws_encryption_key, Types::EncryptionKeyConfiguration::AwsEncryptionKey, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEncryptionKeyConfiguration, name: "awsEncryptionKey"))
    EncryptionKeyConfiguration.add_member(:oci_encryption_key, Types::EncryptionKeyConfiguration::OciEncryptionKey, ::Smithy::Schema::Shapes::MemberShape.new(target: OciEncryptionKeyConfiguration, name: "ociEncryptionKey"))
    EncryptionKeyConfiguration.add_member(:okv_encryption_key, Types::EncryptionKeyConfiguration::OkvEncryptionKey, ::Smithy::Schema::Shapes::MemberShape.new(target: OkvEncryptionKeyConfiguration, name: "okvEncryptionKey"))
    EncryptionKeyConfiguration.add_member(:unknown, Types::EncryptionKeyConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EncryptionKeyConfiguration.type = Types::EncryptionKeyConfiguration
    EncryptionKeyConfigurationInput.add_member(:aws_encryption_key, Types::EncryptionKeyConfigurationInput::AwsEncryptionKey, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEncryptionKeyConfigurationInput, name: "awsEncryptionKey"))
    EncryptionKeyConfigurationInput.add_member(:unknown, Types::EncryptionKeyConfigurationInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EncryptionKeyConfigurationInput.type = Types::EncryptionKeyConfigurationInput
    EncryptionKeyProvider.add_member(:oracle_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORACLE_MANAGED", traits: {"smithy.api#enumValue" => "ORACLE_MANAGED"}))
    EncryptionKeyProvider.add_member(:aws_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_KMS", traits: {"smithy.api#enumValue" => "AWS_KMS"}))
    EncryptionKeyProvider.add_member(:okv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OKV", traits: {"smithy.api#enumValue" => "OKV"}))
    EncryptionKeyProvider.add_member(:oci, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OCI", traits: {"smithy.api#enumValue" => "OCI"}))
    EncryptionKeyProviderInput.add_member(:oracle_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORACLE_MANAGED", traits: {"smithy.api#enumValue" => "ORACLE_MANAGED"}))
    EncryptionKeyProviderInput.add_member(:aws_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_KMS", traits: {"smithy.api#enumValue" => "AWS_KMS"}))
    EncryptionSummary.add_member(:encryption_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyProvider, name: "encryptionKeyProvider"))
    EncryptionSummary.add_member(:encryption_key_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyConfiguration, name: "encryptionKeyConfiguration"))
    EncryptionSummary.type = Types::EncryptionSummary
    ExadataIormConfig.add_member(:db_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: DbIormConfigList, name: "dbPlans"))
    ExadataIormConfig.add_member(:lifecycle_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lifecycleDetails"))
    ExadataIormConfig.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: IormLifecycleState, name: "lifecycleState"))
    ExadataIormConfig.add_member(:objective, ::Smithy::Schema::Shapes::MemberShape.new(target: Objective, name: "objective"))
    ExadataIormConfig.type = Types::ExadataIormConfig
    ExadbVmCluster.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    ExadbVmCluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName"))
    ExadbVmCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExadbVmCluster.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    ExadbVmCluster.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    ExadbVmCluster.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    ExadbVmCluster.add_member(:enabled_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "enabledEcpuCount"))
    ExadbVmCluster.add_member(:exadb_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "exadbVmClusterArn"))
    ExadbVmCluster.add_member(:exascale_db_storage_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "exascaleDbStorageVaultArn"))
    ExadbVmCluster.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId"))
    ExadbVmCluster.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion"))
    ExadbVmCluster.add_member(:grid_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "gridImageId"))
    ExadbVmCluster.add_member(:grid_image_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GridImageType, name: "gridImageType"))
    ExadbVmCluster.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Hostname, name: "hostname"))
    ExadbVmCluster.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleList, name: "iamRoles"))
    ExadbVmCluster.add_member(:iorm_config_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadataIormConfig, name: "iormConfigCache"))
    ExadbVmCluster.add_member(:last_update_history_entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastUpdateHistoryEntryId"))
    ExadbVmCluster.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    ExadbVmCluster.add_member(:listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "listenerPort"))
    ExadbVmCluster.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    ExadbVmCluster.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount"))
    ExadbVmCluster.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    ExadbVmCluster.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    ExadbVmCluster.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    ExadbVmCluster.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    ExadbVmCluster.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    ExadbVmCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    ExadbVmCluster.add_member(:scan_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsName"))
    ExadbVmCluster.add_member(:scan_dns_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsRecordId"))
    ExadbVmCluster.add_member(:scan_ip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "scanIpIds"))
    ExadbVmCluster.add_member(:scan_listener_port_tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcp"))
    ExadbVmCluster.add_member(:scan_listener_port_tcp_ssl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcpSsl"))
    ExadbVmCluster.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    ExadbVmCluster.add_member(:shape_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttribute, name: "shapeAttribute"))
    ExadbVmCluster.add_member(:snapshot_file_system_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterStorageDetails, name: "snapshotFileSystemStorage"))
    ExadbVmCluster.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "sshPublicKeys"))
    ExadbVmCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    ExadbVmCluster.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    ExadbVmCluster.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion"))
    ExadbVmCluster.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    ExadbVmCluster.add_member(:total_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalEcpuCount"))
    ExadbVmCluster.add_member(:total_file_system_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterStorageDetails, name: "totalFileSystemStorage"))
    ExadbVmCluster.add_member(:vip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "vipIds"))
    ExadbVmCluster.add_member(:vm_file_system_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterStorageDetails, name: "vmFileSystemStorage"))
    ExadbVmCluster.type = Types::ExadbVmCluster
    ExadbVmClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterSummary, name: "member"))
    ExadbVmClusterStorageDetails.add_member(:total_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalSizeInGBs"))
    ExadbVmClusterStorageDetails.type = Types::ExadbVmClusterStorageDetails
    ExadbVmClusterSummary.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    ExadbVmClusterSummary.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName"))
    ExadbVmClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExadbVmClusterSummary.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    ExadbVmClusterSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    ExadbVmClusterSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    ExadbVmClusterSummary.add_member(:enabled_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "enabledEcpuCount"))
    ExadbVmClusterSummary.add_member(:exadb_vm_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "exadbVmClusterArn"))
    ExadbVmClusterSummary.add_member(:exascale_db_storage_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "exascaleDbStorageVaultArn"))
    ExadbVmClusterSummary.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId"))
    ExadbVmClusterSummary.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion"))
    ExadbVmClusterSummary.add_member(:grid_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "gridImageId"))
    ExadbVmClusterSummary.add_member(:grid_image_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GridImageType, name: "gridImageType"))
    ExadbVmClusterSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Hostname, name: "hostname"))
    ExadbVmClusterSummary.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleList, name: "iamRoles"))
    ExadbVmClusterSummary.add_member(:iorm_config_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadataIormConfig, name: "iormConfigCache"))
    ExadbVmClusterSummary.add_member(:last_update_history_entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastUpdateHistoryEntryId"))
    ExadbVmClusterSummary.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    ExadbVmClusterSummary.add_member(:listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "listenerPort"))
    ExadbVmClusterSummary.add_member(:memory_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInGBs"))
    ExadbVmClusterSummary.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "nodeCount"))
    ExadbVmClusterSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    ExadbVmClusterSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    ExadbVmClusterSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    ExadbVmClusterSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "odbNetworkArn"))
    ExadbVmClusterSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    ExadbVmClusterSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    ExadbVmClusterSummary.add_member(:scan_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsName"))
    ExadbVmClusterSummary.add_member(:scan_dns_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scanDnsRecordId"))
    ExadbVmClusterSummary.add_member(:scan_ip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "scanIpIds"))
    ExadbVmClusterSummary.add_member(:scan_listener_port_tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcp"))
    ExadbVmClusterSummary.add_member(:scan_listener_port_tcp_ssl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scanListenerPortTcpSsl"))
    ExadbVmClusterSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    ExadbVmClusterSummary.add_member(:shape_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttribute, name: "shapeAttribute"))
    ExadbVmClusterSummary.add_member(:snapshot_file_system_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterStorageDetails, name: "snapshotFileSystemStorage"))
    ExadbVmClusterSummary.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "sshPublicKeys"))
    ExadbVmClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    ExadbVmClusterSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    ExadbVmClusterSummary.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion"))
    ExadbVmClusterSummary.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    ExadbVmClusterSummary.add_member(:total_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalEcpuCount"))
    ExadbVmClusterSummary.add_member(:total_file_system_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterStorageDetails, name: "totalFileSystemStorage"))
    ExadbVmClusterSummary.add_member(:vip_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "vipIds"))
    ExadbVmClusterSummary.add_member(:vm_file_system_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterStorageDetails, name: "vmFileSystemStorage"))
    ExadbVmClusterSummary.type = Types::ExadbVmClusterSummary
    ExascaleDbStorageDetails.add_member(:available_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableSizeInGBs"))
    ExascaleDbStorageDetails.add_member(:total_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalSizeInGBs"))
    ExascaleDbStorageDetails.type = Types::ExascaleDbStorageDetails
    ExascaleDbStorageVault.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    ExascaleDbStorageVault.add_member(:additional_flash_cache_in_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "additionalFlashCacheInPercent"))
    ExascaleDbStorageVault.add_member(:attached_shape_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttributeList, name: "attachedShapeAttributes"))
    ExascaleDbStorageVault.add_member(:autoscale_limit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoscaleLimitInGBs"))
    ExascaleDbStorageVault.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    ExascaleDbStorageVault.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    ExascaleDbStorageVault.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExascaleDbStorageVault.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ExascaleDbStorageVault.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    ExascaleDbStorageVault.add_member(:vm_cluster_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "vmClusterArns"))
    ExascaleDbStorageVault.add_member(:vm_cluster_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "vmClusterCount"))
    ExascaleDbStorageVault.add_member(:vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "vmClusterIds"))
    ExascaleDbStorageVault.add_member(:exascale_db_storage_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "exascaleDbStorageVaultArn"))
    ExascaleDbStorageVault.add_member(:high_capacity_database_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExascaleDbStorageDetails, name: "highCapacityDatabaseStorage"))
    ExascaleDbStorageVault.add_member(:is_autoscale_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoscaleEnabled"))
    ExascaleDbStorageVault.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    ExascaleDbStorageVault.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    ExascaleDbStorageVault.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    ExascaleDbStorageVault.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    ExascaleDbStorageVault.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    ExascaleDbStorageVault.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    ExascaleDbStorageVault.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    ExascaleDbStorageVault.type = Types::ExascaleDbStorageVault
    ExascaleDbStorageVaultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExascaleDbStorageVaultSummary, name: "member"))
    ExascaleDbStorageVaultSummary.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    ExascaleDbStorageVaultSummary.add_member(:additional_flash_cache_in_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "additionalFlashCacheInPercent"))
    ExascaleDbStorageVaultSummary.add_member(:attached_shape_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttributeList, name: "attachedShapeAttributes"))
    ExascaleDbStorageVaultSummary.add_member(:autoscale_limit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoscaleLimitInGBs"))
    ExascaleDbStorageVaultSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    ExascaleDbStorageVaultSummary.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    ExascaleDbStorageVaultSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExascaleDbStorageVaultSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ExascaleDbStorageVaultSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    ExascaleDbStorageVaultSummary.add_member(:vm_cluster_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "vmClusterArns"))
    ExascaleDbStorageVaultSummary.add_member(:vm_cluster_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "vmClusterCount"))
    ExascaleDbStorageVaultSummary.add_member(:vm_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "vmClusterIds"))
    ExascaleDbStorageVaultSummary.add_member(:exascale_db_storage_vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "exascaleDbStorageVaultArn"))
    ExascaleDbStorageVaultSummary.add_member(:high_capacity_database_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExascaleDbStorageDetails, name: "highCapacityDatabaseStorage"))
    ExascaleDbStorageVaultSummary.add_member(:is_autoscale_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoscaleEnabled"))
    ExascaleDbStorageVaultSummary.add_member(:ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ocid"))
    ExascaleDbStorageVaultSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    ExascaleDbStorageVaultSummary.add_member(:oci_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociUrl"))
    ExascaleDbStorageVaultSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    ExascaleDbStorageVaultSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    ExascaleDbStorageVaultSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    ExascaleDbStorageVaultSummary.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeZone"))
    ExascaleDbStorageVaultSummary.type = Types::ExascaleDbStorageVaultSummary
    ExternalIdType.add_member(:database_ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE_OCID", traits: {"smithy.api#enumValue" => "database_ocid"}))
    ExternalIdType.add_member(:compartment_ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPARTMENT_OCID", traits: {"smithy.api#enumValue" => "compartment_ocid"}))
    ExternalIdType.add_member(:tenant_ocid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANT_OCID", traits: {"smithy.api#enumValue" => "tenant_ocid"}))
    FailoverAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    FailoverAutonomousDatabaseInput.add_member(:peer_db_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "peerDbArn"))
    FailoverAutonomousDatabaseInput.type = Types::FailoverAutonomousDatabaseInput
    FailoverAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    FailoverAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    FailoverAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    FailoverAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    FailoverAutonomousDatabaseOutput.type = Types::FailoverAutonomousDatabaseOutput
    FlexComponentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlexComponentSummary, name: "member"))
    FlexComponentSummary.add_member(:available_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableCoreCount"))
    FlexComponentSummary.add_member(:available_db_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableDbStorageInGBs"))
    FlexComponentSummary.add_member(:available_local_storage_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableLocalStorageInGBs"))
    FlexComponentSummary.add_member(:available_memory_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableMemoryInGBs"))
    FlexComponentSummary.add_member(:compute_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeModel, name: "computeModel"))
    FlexComponentSummary.add_member(:description_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "descriptionSummary"))
    FlexComponentSummary.add_member(:hardware_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HardwareType, name: "hardwareType"))
    FlexComponentSummary.add_member(:minimum_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimumCoreCount"))
    FlexComponentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    FlexComponentSummary.add_member(:runtime_minimum_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "runtimeMinimumCoreCount"))
    FlexComponentSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    FlexComponentSummary.type = Types::FlexComponentSummary
    GetAutonomousDatabaseBackupInput.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseBackupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutonomousDatabaseBackupInput.type = Types::GetAutonomousDatabaseBackupInput
    GetAutonomousDatabaseBackupOutput.add_member(:autonomous_database_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackup, name: "autonomousDatabaseBackup"))
    GetAutonomousDatabaseBackupOutput.type = Types::GetAutonomousDatabaseBackupOutput
    GetAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutonomousDatabaseInput.type = Types::GetAutonomousDatabaseInput
    GetAutonomousDatabaseOutput.add_member(:autonomous_database, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabase, name: "autonomousDatabase", traits: {"smithy.api#required" => {}}))
    GetAutonomousDatabaseOutput.type = Types::GetAutonomousDatabaseOutput
    GetAutonomousDatabaseWalletDetailsInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    GetAutonomousDatabaseWalletDetailsInput.type = Types::GetAutonomousDatabaseWalletDetailsInput
    GetAutonomousDatabaseWalletDetailsOutput.add_member(:autonomous_database_wallet_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseWalletDetails, name: "autonomousDatabaseWalletDetails", traits: {"smithy.api#required" => {}}))
    GetAutonomousDatabaseWalletDetailsOutput.type = Types::GetAutonomousDatabaseWalletDetailsOutput
    GetCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudAutonomousVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudAutonomousVmClusterInput.type = Types::GetCloudAutonomousVmClusterInput
    GetCloudAutonomousVmClusterOutput.add_member(:cloud_autonomous_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmCluster, name: "cloudAutonomousVmCluster"))
    GetCloudAutonomousVmClusterOutput.type = Types::GetCloudAutonomousVmClusterOutput
    GetCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudExadataInfrastructureInput.type = Types::GetCloudExadataInfrastructureInput
    GetCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructure, name: "cloudExadataInfrastructure"))
    GetCloudExadataInfrastructureOutput.type = Types::GetCloudExadataInfrastructureOutput
    GetCloudExadataInfrastructureUnallocatedResourcesInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudExadataInfrastructureUnallocatedResourcesInput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dbServers"))
    GetCloudExadataInfrastructureUnallocatedResourcesInput.type = Types::GetCloudExadataInfrastructureUnallocatedResourcesInput
    GetCloudExadataInfrastructureUnallocatedResourcesOutput.add_member(:cloud_exadata_infrastructure_unallocated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructureUnallocatedResources, name: "cloudExadataInfrastructureUnallocatedResources"))
    GetCloudExadataInfrastructureUnallocatedResourcesOutput.type = Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput
    GetCloudVmClusterInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudVmClusterInput.type = Types::GetCloudVmClusterInput
    GetCloudVmClusterOutput.add_member(:cloud_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudVmCluster, name: "cloudVmCluster"))
    GetCloudVmClusterOutput.type = Types::GetCloudVmClusterOutput
    GetDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId"))
    GetDbNodeInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "exadbVmClusterId"))
    GetDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbNodeInput.type = Types::GetDbNodeInput
    GetDbNodeOutput.add_member(:db_node, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNode, name: "dbNode"))
    GetDbNodeOutput.type = Types::GetDbNodeOutput
    GetDbServerInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbServerInput.add_member(:db_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbServerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDbServerInput.type = Types::GetDbServerInput
    GetDbServerOutput.add_member(:db_server, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServer, name: "dbServer"))
    GetDbServerOutput.type = Types::GetDbServerOutput
    GetExadbVmClusterInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    GetExadbVmClusterInput.type = Types::GetExadbVmClusterInput
    GetExadbVmClusterOutput.add_member(:exadb_vm_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmCluster, name: "exadbVmCluster", traits: {"smithy.api#required" => {}}))
    GetExadbVmClusterOutput.type = Types::GetExadbVmClusterOutput
    GetExascaleDbStorageVaultInput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    GetExascaleDbStorageVaultInput.type = Types::GetExascaleDbStorageVaultInput
    GetExascaleDbStorageVaultOutput.add_member(:exascale_db_storage_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ExascaleDbStorageVault, name: "exascaleDbStorageVault", traits: {"smithy.api#required" => {}}))
    GetExascaleDbStorageVaultOutput.type = Types::GetExascaleDbStorageVaultOutput
    GetOciOnboardingStatusInput.type = Types::GetOciOnboardingStatusInput
    GetOciOnboardingStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OciOnboardingStatus, name: "status"))
    GetOciOnboardingStatusOutput.add_member(:existing_tenancy_activation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "existingTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:new_tenancy_activation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "newTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:oci_identity_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: OciIdentityDomain, name: "ociIdentityDomain"))
    GetOciOnboardingStatusOutput.add_member(:autonomous_database_oci_integration_iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: OciIamRoleList, name: "autonomousDatabaseOciIntegrationIamRoles"))
    GetOciOnboardingStatusOutput.add_member(:linked_oci_tenancy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "linkedOciTenancyId"))
    GetOciOnboardingStatusOutput.add_member(:linked_oci_compartment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "linkedOciCompartmentId"))
    GetOciOnboardingStatusOutput.add_member(:subscription_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionErrors, name: "subscriptionErrors"))
    GetOciOnboardingStatusOutput.type = Types::GetOciOnboardingStatusOutput
    GetOdbNetworkInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOdbNetworkInput.type = Types::GetOdbNetworkInput
    GetOdbNetworkOutput.add_member(:odb_network, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbNetwork, name: "odbNetwork"))
    GetOdbNetworkOutput.type = Types::GetOdbNetworkOutput
    GetOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbPeeringConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOdbPeeringConnectionInput.type = Types::GetOdbPeeringConnectionInput
    GetOdbPeeringConnectionOutput.add_member(:odb_peering_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbPeeringConnection, name: "odbPeeringConnection"))
    GetOdbPeeringConnectionOutput.type = Types::GetOdbPeeringConnectionOutput
    GiMinorVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GiMinorVersionSummary, name: "member"))
    GiMinorVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    GiMinorVersionSummary.add_member(:grid_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "gridImageId"))
    GiMinorVersionSummary.type = Types::GiMinorVersionSummary
    GiVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GiVersionSummary, name: "member"))
    GiVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version"))
    GiVersionSummary.type = Types::GiVersionSummary
    GridImageType.add_member(:release_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_UPDATE", traits: {"smithy.api#enumValue" => "RELEASE_UPDATE"}))
    GridImageType.add_member(:custom_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_IMAGE", traits: {"smithy.api#enumValue" => "CUSTOM_IMAGE"}))
    HardwareType.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE", traits: {"smithy.api#enumValue" => "COMPUTE"}))
    HardwareType.add_member(:cell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CELL", traits: {"smithy.api#enumValue" => "CELL"}))
    HoursOfDay.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    IamRole.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn"))
    IamRole.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleStatus, name: "status"))
    IamRole.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    IamRole.add_member(:aws_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedAwsIntegration, name: "awsIntegration"))
    IamRole.type = Types::IamRole
    IamRoleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRole, name: "member"))
    IamRoleStatus.add_member(:associating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATING", traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    IamRoleStatus.add_member(:disassociating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISASSOCIATING", traits: {"smithy.api#enumValue" => "DISASSOCIATING"}))
    IamRoleStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IamRoleStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    IamRoleStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    IamRoleStatus.add_member(:partially_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIALLY_CONNECTED", traits: {"smithy.api#enumValue" => "PARTIALLY_CONNECTED"}))
    IamRoleStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    InitializeServiceInput.add_member(:oci_identity_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ociIdentityDomain", traits: {"smithy.api#default" => true}))
    InitializeServiceInput.add_member(:autonomous_database_oci_aws_secrets_manager_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "autonomousDatabaseOciAwsSecretsManagerIntegration"))
    InitializeServiceInput.type = Types::InitializeServiceInput
    InitializeServiceOutput.type = Types::InitializeServiceOutput
    IntegerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IormLifecycleState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    IormLifecycleState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    IormLifecycleState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    IormLifecycleState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IormLifecycleState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    KmsAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status"))
    KmsAccess.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv4Addresses"))
    KmsAccess.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName"))
    KmsAccess.add_member(:kms_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsPolicyDocument"))
    KmsAccess.type = Types::KmsAccess
    LicenseModel.add_member(:bring_your_own_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRING_YOUR_OWN_LICENSE", traits: {"smithy.api#enumValue" => "BRING_YOUR_OWN_LICENSE"}))
    LicenseModel.add_member(:license_included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_INCLUDED", traits: {"smithy.api#enumValue" => "LICENSE_INCLUDED"}))
    ListAutonomousDatabaseBackupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousDatabaseBackupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousDatabaseBackupsInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutonomousDatabaseBackupsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupStatus, name: "status"))
    ListAutonomousDatabaseBackupsInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupType, name: "type"))
    ListAutonomousDatabaseBackupsInput.type = Types::ListAutonomousDatabaseBackupsInput
    ListAutonomousDatabaseBackupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousDatabaseBackupsOutput.add_member(:autonomous_database_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseBackupList, name: "autonomousDatabaseBackups", traits: {"smithy.api#required" => {}}))
    ListAutonomousDatabaseBackupsOutput.type = Types::ListAutonomousDatabaseBackupsOutput
    ListAutonomousDatabaseCharacterSetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousDatabaseCharacterSetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousDatabaseCharacterSetsInput.add_member(:character_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterSetType, name: "characterSetType"))
    ListAutonomousDatabaseCharacterSetsInput.type = Types::ListAutonomousDatabaseCharacterSetsInput
    ListAutonomousDatabaseCharacterSetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousDatabaseCharacterSetsOutput.add_member(:autonomous_database_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseCharacterSetList, name: "autonomousDatabaseCharacterSets", traits: {"smithy.api#required" => {}}))
    ListAutonomousDatabaseCharacterSetsOutput.type = Types::ListAutonomousDatabaseCharacterSetsOutput
    ListAutonomousDatabaseClonesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousDatabaseClonesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousDatabaseClonesInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutonomousDatabaseClonesInput.type = Types::ListAutonomousDatabaseClonesInput
    ListAutonomousDatabaseClonesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousDatabaseClonesOutput.add_member(:autonomous_database_clones, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseList, name: "autonomousDatabaseClones", traits: {"smithy.api#required" => {}}))
    ListAutonomousDatabaseClonesOutput.type = Types::ListAutonomousDatabaseClonesOutput
    ListAutonomousDatabasePeersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousDatabasePeersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousDatabasePeersInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutonomousDatabasePeersInput.type = Types::ListAutonomousDatabasePeersInput
    ListAutonomousDatabasePeersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousDatabasePeersOutput.add_member(:autonomous_database_peers, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabasePeerList, name: "autonomousDatabasePeers", traits: {"smithy.api#required" => {}}))
    ListAutonomousDatabasePeersOutput.type = Types::ListAutonomousDatabasePeersOutput
    ListAutonomousDatabaseVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousDatabaseVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousDatabaseVersionsInput.add_member(:db_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: DbWorkload, name: "dbWorkload"))
    ListAutonomousDatabaseVersionsInput.type = Types::ListAutonomousDatabaseVersionsInput
    ListAutonomousDatabaseVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousDatabaseVersionsOutput.add_member(:autonomous_database_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseVersionList, name: "autonomousDatabaseVersions", traits: {"smithy.api#required" => {}}))
    ListAutonomousDatabaseVersionsOutput.type = Types::ListAutonomousDatabaseVersionsOutput
    ListAutonomousDatabasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousDatabasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousDatabasesInput.type = Types::ListAutonomousDatabasesInput
    ListAutonomousDatabasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousDatabasesOutput.add_member(:autonomous_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseList, name: "autonomousDatabases", traits: {"smithy.api#required" => {}}))
    ListAutonomousDatabasesOutput.type = Types::ListAutonomousDatabasesOutput
    ListAutonomousVirtualMachinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAutonomousVirtualMachinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListAutonomousVirtualMachinesInput.add_member(:cloud_autonomous_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudAutonomousVmClusterId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutonomousVirtualMachinesInput.type = Types::ListAutonomousVirtualMachinesInput
    ListAutonomousVirtualMachinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutonomousVirtualMachinesOutput.add_member(:autonomous_virtual_machines, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousVirtualMachineList, name: "autonomousVirtualMachines", traits: {"smithy.api#required" => {}}))
    ListAutonomousVirtualMachinesOutput.type = Types::ListAutonomousVirtualMachinesOutput
    ListCloudAutonomousVmClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListCloudAutonomousVmClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListCloudAutonomousVmClustersInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId"))
    ListCloudAutonomousVmClustersInput.type = Types::ListCloudAutonomousVmClustersInput
    ListCloudAutonomousVmClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCloudAutonomousVmClustersOutput.add_member(:cloud_autonomous_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudAutonomousVmClusterList, name: "cloudAutonomousVmClusters", traits: {"smithy.api#required" => {}}))
    ListCloudAutonomousVmClustersOutput.type = Types::ListCloudAutonomousVmClustersOutput
    ListCloudExadataInfrastructuresInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListCloudExadataInfrastructuresInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListCloudExadataInfrastructuresInput.type = Types::ListCloudExadataInfrastructuresInput
    ListCloudExadataInfrastructuresOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCloudExadataInfrastructuresOutput.add_member(:cloud_exadata_infrastructures, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudExadataInfrastructureList, name: "cloudExadataInfrastructures", traits: {"smithy.api#required" => {}}))
    ListCloudExadataInfrastructuresOutput.type = Types::ListCloudExadataInfrastructuresOutput
    ListCloudVmClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListCloudVmClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListCloudVmClustersInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId"))
    ListCloudVmClustersInput.type = Types::ListCloudVmClustersInput
    ListCloudVmClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCloudVmClustersOutput.add_member(:cloud_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudVmClusterList, name: "cloudVmClusters", traits: {"smithy.api#required" => {}}))
    ListCloudVmClustersOutput.type = Types::ListCloudVmClustersOutput
    ListDbNodesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListDbNodesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListDbNodesInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId"))
    ListDbNodesInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "exadbVmClusterId"))
    ListDbNodesInput.type = Types::ListDbNodesInput
    ListDbNodesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDbNodesOutput.add_member(:db_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeList, name: "dbNodes", traits: {"smithy.api#required" => {}}))
    ListDbNodesOutput.type = Types::ListDbNodesOutput
    ListDbServersInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDbServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListDbServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListDbServersInput.type = Types::ListDbServersInput
    ListDbServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDbServersOutput.add_member(:db_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: DbServerList, name: "dbServers", traits: {"smithy.api#required" => {}}))
    ListDbServersOutput.type = Types::ListDbServersOutput
    ListDbSystemShapesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListDbSystemShapesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListDbSystemShapesInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListDbSystemShapesInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListDbSystemShapesInput.add_member(:shape_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shapeFamily", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListDbSystemShapesInput.type = Types::ListDbSystemShapesInput
    ListDbSystemShapesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDbSystemShapesOutput.add_member(:db_system_shapes, ::Smithy::Schema::Shapes::MemberShape.new(target: DbSystemShapeList, name: "dbSystemShapes", traits: {"smithy.api#required" => {}}))
    ListDbSystemShapesOutput.type = Types::ListDbSystemShapesOutput
    ListExadbVmClustersInput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#httpQuery" => "exascaleDbStorageVaultId"}))
    ListExadbVmClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListExadbVmClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListExadbVmClustersInput.type = Types::ListExadbVmClustersInput
    ListExadbVmClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListExadbVmClustersOutput.add_member(:exadb_vm_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExadbVmClusterList, name: "exadbVmClusters", traits: {"smithy.api#required" => {}}))
    ListExadbVmClustersOutput.type = Types::ListExadbVmClustersOutput
    ListExascaleDbStorageVaultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListExascaleDbStorageVaultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListExascaleDbStorageVaultsInput.type = Types::ListExascaleDbStorageVaultsInput
    ListExascaleDbStorageVaultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListExascaleDbStorageVaultsOutput.add_member(:exascale_db_storage_vaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ExascaleDbStorageVaultList, name: "exascaleDbStorageVaults", traits: {"smithy.api#required" => {}}))
    ListExascaleDbStorageVaultsOutput.type = Types::ListExascaleDbStorageVaultsOutput
    ListFlexComponentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListFlexComponentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListFlexComponentsInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    ListFlexComponentsInput.type = Types::ListFlexComponentsInput
    ListFlexComponentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListFlexComponentsOutput.add_member(:flex_components, ::Smithy::Schema::Shapes::MemberShape.new(target: FlexComponentList, name: "flexComponents", traits: {"smithy.api#required" => {}}))
    ListFlexComponentsOutput.type = Types::ListFlexComponentsOutput
    ListGiMinorVersionsInput.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ListGiMinorVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListGiMinorVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListGiMinorVersionsInput.add_member(:shape_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shapeFamily", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListGiMinorVersionsInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListGiMinorVersionsInput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListGiMinorVersionsInput.type = Types::ListGiMinorVersionsInput
    ListGiMinorVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListGiMinorVersionsOutput.add_member(:gi_minor_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: GiMinorVersionList, name: "giMinorVersions", traits: {"smithy.api#required" => {}}))
    ListGiMinorVersionsOutput.type = Types::ListGiMinorVersionsOutput
    ListGiVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListGiVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListGiVersionsInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListGiVersionsInput.type = Types::ListGiVersionsInput
    ListGiVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListGiVersionsOutput.add_member(:gi_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: GiVersionList, name: "giVersions", traits: {"smithy.api#required" => {}}))
    ListGiVersionsOutput.type = Types::ListGiVersionsOutput
    ListOdbNetworksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListOdbNetworksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListOdbNetworksInput.type = Types::ListOdbNetworksInput
    ListOdbNetworksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListOdbNetworksOutput.add_member(:odb_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbNetworkList, name: "odbNetworks", traits: {"smithy.api#required" => {}}))
    ListOdbNetworksOutput.type = Types::ListOdbNetworksOutput
    ListOdbPeeringConnectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListOdbPeeringConnectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListOdbPeeringConnectionsInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId"))
    ListOdbPeeringConnectionsInput.type = Types::ListOdbPeeringConnectionsInput
    ListOdbPeeringConnectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListOdbPeeringConnectionsOutput.add_member(:odb_peering_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbPeeringConnectionList, name: "odbPeeringConnections", traits: {"smithy.api#required" => {}}))
    ListOdbPeeringConnectionsOutput.type = Types::ListOdbPeeringConnectionsOutput
    ListSystemVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSystemVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 8192}}))
    ListSystemVersionsInput.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    ListSystemVersionsInput.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ListSystemVersionsInput.type = Types::ListSystemVersionsInput
    ListSystemVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSystemVersionsOutput.add_member(:system_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemVersionList, name: "systemVersions", traits: {"smithy.api#required" => {}}))
    ListSystemVersionsOutput.type = Types::ListSystemVersionsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LongTermBackupSchedule.add_member(:is_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDisabled"))
    LongTermBackupSchedule.add_member(:repeat_cadence, ::Smithy::Schema::Shapes::MemberShape.new(target: RepeatCadence, name: "repeatCadence"))
    LongTermBackupSchedule.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 90, "max" => 3650}}))
    LongTermBackupSchedule.add_member(:time_of_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfBackup", traits: {"smithy.api#timestampFormat" => "date-time"}))
    LongTermBackupSchedule.type = Types::LongTermBackupSchedule
    MaintenanceWindow.add_member(:custom_action_timeout_in_mins, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "customActionTimeoutInMins", traits: {"smithy.api#range" => {"min" => 15, "max" => 120}}))
    MaintenanceWindow.add_member(:days_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysOfWeek, name: "daysOfWeek"))
    MaintenanceWindow.add_member(:hours_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HoursOfDay, name: "hoursOfDay"))
    MaintenanceWindow.add_member(:is_custom_action_timeout_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isCustomActionTimeoutEnabled"))
    MaintenanceWindow.add_member(:lead_time_in_weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "leadTimeInWeeks", traits: {"smithy.api#range" => {"min" => 1, "max" => 4}}))
    MaintenanceWindow.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: Months, name: "months"))
    MaintenanceWindow.add_member(:patching_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchingModeType, name: "patchingMode"))
    MaintenanceWindow.add_member(:preference, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceType, name: "preference"))
    MaintenanceWindow.add_member(:skip_ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "skipRu"))
    MaintenanceWindow.add_member(:weeks_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeksOfMonth, name: "weeksOfMonth"))
    MaintenanceWindow.type = Types::MaintenanceWindow
    ManagedResourceStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedResourceStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ManagedResourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ManagedResourceStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ManagedS3BackupAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status"))
    ManagedS3BackupAccess.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv4Addresses"))
    ManagedS3BackupAccess.type = Types::ManagedS3BackupAccess
    ManagedServices.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "serviceNetworkArn"))
    ManagedServices.add_member(:resource_gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceGatewayArn"))
    ManagedServices.add_member(:managed_services_ipv4_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "managedServicesIpv4Cidrs"))
    ManagedServices.add_member(:service_network_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkEndpoint, name: "serviceNetworkEndpoint"))
    ManagedServices.add_member(:managed_s3_backup_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedS3BackupAccess, name: "managedS3BackupAccess"))
    ManagedServices.add_member(:zero_etl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroEtlAccess, name: "zeroEtlAccess"))
    ManagedServices.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Access, name: "s3Access"))
    ManagedServices.add_member(:sts_access, ::Smithy::Schema::Shapes::MemberShape.new(target: StsAccess, name: "stsAccess"))
    ManagedServices.add_member(:kms_access, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsAccess, name: "kmsAccess"))
    ManagedServices.add_member(:cross_region_s3_restore_sources_access, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionS3RestoreSourcesAccessList, name: "crossRegionS3RestoreSourcesAccess"))
    ManagedServices.type = Types::ManagedServices
    Month.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthName, name: "name"))
    Month.type = Types::Month
    MonthName.add_member(:january, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JANUARY", traits: {"smithy.api#enumValue" => "JANUARY"}))
    MonthName.add_member(:february, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEBRUARY", traits: {"smithy.api#enumValue" => "FEBRUARY"}))
    MonthName.add_member(:march, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARCH", traits: {"smithy.api#enumValue" => "MARCH"}))
    MonthName.add_member(:april, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APRIL", traits: {"smithy.api#enumValue" => "APRIL"}))
    MonthName.add_member(:may, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAY", traits: {"smithy.api#enumValue" => "MAY"}))
    MonthName.add_member(:june, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JUNE", traits: {"smithy.api#enumValue" => "JUNE"}))
    MonthName.add_member(:july, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JULY", traits: {"smithy.api#enumValue" => "JULY"}))
    MonthName.add_member(:august, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUGUST", traits: {"smithy.api#enumValue" => "AUGUST"}))
    MonthName.add_member(:september, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEPTEMBER", traits: {"smithy.api#enumValue" => "SEPTEMBER"}))
    MonthName.add_member(:october, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OCTOBER", traits: {"smithy.api#enumValue" => "OCTOBER"}))
    MonthName.add_member(:november, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOVEMBER", traits: {"smithy.api#enumValue" => "NOVEMBER"}))
    MonthName.add_member(:december, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECEMBER", traits: {"smithy.api#enumValue" => "DECEMBER"}))
    Months.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, name: "member"))
    NetServicesArchitecture.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEDICATED", traits: {"smithy.api#enumValue" => "DEDICATED"}))
    NetServicesArchitecture.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    Objective.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    Objective.add_member(:balanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BALANCED", traits: {"smithy.api#enumValue" => "BALANCED"}))
    Objective.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    Objective.add_member(:high_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH_THROUGHPUT", traits: {"smithy.api#enumValue" => "HIGH_THROUGHPUT"}))
    Objective.add_member(:low_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW_LATENCY", traits: {"smithy.api#enumValue" => "LOW_LATENCY"}))
    OciAwsIntegration.add_member(:kms_tde, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KmsTde", traits: {"smithy.api#enumValue" => "KmsTde"}))
    OciAwsIntegration.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecretsManager", traits: {"smithy.api#enumValue" => "SecretsManager"}))
    OciDnsForwardingConfig.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OciDnsForwardingConfig.add_member(:oci_dns_listener_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociDnsListenerIp"))
    OciDnsForwardingConfig.type = Types::OciDnsForwardingConfig
    OciDnsForwardingConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OciDnsForwardingConfig, name: "member"))
    OciEncryptionKeyConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    OciEncryptionKeyConfiguration.add_member(:vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vaultId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    OciEncryptionKeyConfiguration.type = Types::OciEncryptionKeyConfiguration
    OciIamRole.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "iamRoleArn"))
    OciIamRole.add_member(:aws_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: OciAwsIntegration, name: "awsIntegration"))
    OciIamRole.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OciIamRoleStatus, name: "status"))
    OciIamRole.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    OciIamRole.type = Types::OciIamRole
    OciIamRoleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OciIamRole, name: "member"))
    OciIamRoleStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    OciIamRoleStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    OciIamRoleStatus.add_member(:provision_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISION_FAILED", traits: {"smithy.api#enumValue" => "PROVISION_FAILED"}))
    OciIamRoleStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    OciIamRoleStatus.add_member(:terminate_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_FAILED", traits: {"smithy.api#enumValue" => "TERMINATE_FAILED"}))
    OciIdentityDomain.add_member(:oci_identity_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociIdentityDomainId"))
    OciIdentityDomain.add_member(:oci_identity_domain_resource_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociIdentityDomainResourceUrl"))
    OciIdentityDomain.add_member(:oci_identity_domain_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociIdentityDomainUrl"))
    OciIdentityDomain.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    OciIdentityDomain.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    OciIdentityDomain.add_member(:account_setup_cloud_formation_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountSetupCloudFormationUrl"))
    OciIdentityDomain.type = Types::OciIdentityDomain
    OciOnboardingStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    OciOnboardingStatus.add_member(:pending_link_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_LINK_GENERATION", traits: {"smithy.api#enumValue" => "PENDING_LINK_GENERATION"}))
    OciOnboardingStatus.add_member(:pending_customer_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CUSTOMER_ACTION", traits: {"smithy.api#enumValue" => "PENDING_CUSTOMER_ACTION"}))
    OciOnboardingStatus.add_member(:pending_initialization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_INITIALIZATION", traits: {"smithy.api#enumValue" => "PENDING_INITIALIZATION"}))
    OciOnboardingStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    OciOnboardingStatus.add_member(:active_in_home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_IN_HOME_REGION", traits: {"smithy.api#enumValue" => "ACTIVE_IN_HOME_REGION"}))
    OciOnboardingStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    OciOnboardingStatus.add_member(:active_limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_LIMITED", traits: {"smithy.api#enumValue" => "ACTIVE_LIMITED"}))
    OciOnboardingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OciOnboardingStatus.add_member(:public_offer_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_OFFER_UNSUPPORTED", traits: {"smithy.api#enumValue" => "PUBLIC_OFFER_UNSUPPORTED"}))
    OciOnboardingStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    OciOnboardingStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    OdbNetwork.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    OdbNetwork.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    OdbNetwork.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    OdbNetwork.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    OdbNetwork.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbNetworkArn"))
    OdbNetwork.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:client_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:backup_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "customDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:default_dns_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultDnsPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:peered_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "peeredCidrs"))
    OdbNetwork.add_member(:oci_network_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociNetworkAnchorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:oci_network_anchor_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociNetworkAnchorUrl"))
    OdbNetwork.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    OdbNetwork.add_member(:oci_vcn_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociVcnId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetwork.add_member(:oci_vcn_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociVcnUrl"))
    OdbNetwork.add_member(:oci_dns_forwarding_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: OciDnsForwardingConfigList, name: "ociDnsForwardingConfigs"))
    OdbNetwork.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbNetwork.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    OdbNetwork.add_member(:managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedServices, name: "managedServices"))
    OdbNetwork.add_member(:ec2_placement_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "ec2PlacementGroupIds"))
    OdbNetwork.type = Types::OdbNetwork
    OdbNetworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbNetworkSummary, name: "member"))
    OdbNetworkSummary.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    OdbNetworkSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    OdbNetworkSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    OdbNetworkSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    OdbNetworkSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbNetworkArn"))
    OdbNetworkSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:client_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:backup_subnet_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "backupSubnetCidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "customDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:default_dns_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultDnsPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:peered_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "peeredCidrs"))
    OdbNetworkSummary.add_member(:oci_network_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociNetworkAnchorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:oci_network_anchor_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociNetworkAnchorUrl"))
    OdbNetworkSummary.add_member(:oci_resource_anchor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociResourceAnchorName"))
    OdbNetworkSummary.add_member(:oci_vcn_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociVcnId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OdbNetworkSummary.add_member(:oci_vcn_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ociVcnUrl"))
    OdbNetworkSummary.add_member(:oci_dns_forwarding_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: OciDnsForwardingConfigList, name: "ociDnsForwardingConfigs"))
    OdbNetworkSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbNetworkSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    OdbNetworkSummary.add_member(:managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedServices, name: "managedServices"))
    OdbNetworkSummary.add_member(:ec2_placement_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "ec2PlacementGroupIds"))
    OdbNetworkSummary.type = Types::OdbNetworkSummary
    OdbPeeringConnection.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    OdbPeeringConnection.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    OdbPeeringConnection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    OdbPeeringConnection.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    OdbPeeringConnection.add_member(:odb_peering_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbPeeringConnectionArn"))
    OdbPeeringConnection.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbNetworkArn"))
    OdbPeeringConnection.add_member(:peer_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "peerNetworkArn"))
    OdbPeeringConnection.add_member(:odb_peering_connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbPeeringConnectionType"))
    OdbPeeringConnection.add_member(:peer_network_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeredCidrList, name: "peerNetworkCidrs"))
    OdbPeeringConnection.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbPeeringConnection.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    OdbPeeringConnection.type = Types::OdbPeeringConnection
    OdbPeeringConnectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OdbPeeringConnectionSummary, name: "member"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    OdbPeeringConnectionSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    OdbPeeringConnectionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    OdbPeeringConnectionSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbPeeringConnectionArn"))
    OdbPeeringConnectionSummary.add_member(:odb_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbNetworkArn"))
    OdbPeeringConnectionSummary.add_member(:peer_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "peerNetworkArn"))
    OdbPeeringConnectionSummary.add_member(:odb_peering_connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbPeeringConnectionType"))
    OdbPeeringConnectionSummary.add_member(:peer_network_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeredCidrList, name: "peerNetworkCidrs"))
    OdbPeeringConnectionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OdbPeeringConnectionSummary.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "percentProgress"))
    OdbPeeringConnectionSummary.type = Types::OdbPeeringConnectionSummary
    OkvEncryptionKeyConfiguration.add_member(:certificate_directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "certificateDirectoryName", traits: {"smithy.api#required" => {}}))
    OkvEncryptionKeyConfiguration.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "certificateId"))
    OkvEncryptionKeyConfiguration.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "directoryName", traits: {"smithy.api#required" => {}}))
    OkvEncryptionKeyConfiguration.add_member(:okv_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "okvKmsKey", traits: {"smithy.api#required" => {}}))
    OkvEncryptionKeyConfiguration.add_member(:okv_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "okvUri", traits: {"smithy.api#required" => {}}))
    OkvEncryptionKeyConfiguration.type = Types::OkvEncryptionKeyConfiguration
    OpenMode.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    OpenMode.add_member(:read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_WRITE", traits: {"smithy.api#enumValue" => "READ_WRITE"}))
    OperationsInsightsStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    OperationsInsightsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OperationsInsightsStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    OperationsInsightsStatus.add_member(:not_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ENABLED", traits: {"smithy.api#enumValue" => "NOT_ENABLED"}))
    OperationsInsightsStatus.add_member(:failed_enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_ENABLING", traits: {"smithy.api#enumValue" => "FAILED_ENABLING"}))
    OperationsInsightsStatus.add_member(:failed_disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_DISABLING", traits: {"smithy.api#enumValue" => "FAILED_DISABLING"}))
    PatchingModeType.add_member(:rolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLING", traits: {"smithy.api#enumValue" => "ROLLING"}))
    PatchingModeType.add_member(:nonrolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONROLLING", traits: {"smithy.api#enumValue" => "NONROLLING"}))
    PeerNetworkRouteTableIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PeerNetworkRouteTableId, name: "member"))
    PeeredCidrList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeredCidr, name: "member"))
    PermissionLevel.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTRICTED", traits: {"smithy.api#enumValue" => "RESTRICTED"}))
    PermissionLevel.add_member(:unrestricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNRESTRICTED", traits: {"smithy.api#enumValue" => "UNRESTRICTED"}))
    PointInTimeRestoreConfiguration.add_member(:source_autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "sourceAutonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    PointInTimeRestoreConfiguration.add_member(:clone_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneType, name: "cloneType", traits: {"smithy.api#required" => {}}))
    PointInTimeRestoreConfiguration.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PointInTimeRestoreConfiguration.add_member(:use_latest_available_backup_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useLatestAvailableBackupTimestamp"))
    PointInTimeRestoreConfiguration.add_member(:clone_table_space_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "cloneTableSpaceList"))
    PointInTimeRestoreConfiguration.type = Types::PointInTimeRestoreConfiguration
    PreferenceType.add_member(:no_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PREFERENCE", traits: {"smithy.api#enumValue" => "NO_PREFERENCE"}))
    PreferenceType.add_member(:custom_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_PREFERENCE", traits: {"smithy.api#enumValue" => "CUSTOM_PREFERENCE"}))
    RebootAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    RebootAutonomousDatabaseInput.add_member(:is_online_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isOnlineReboot"))
    RebootAutonomousDatabaseInput.type = Types::RebootAutonomousDatabaseInput
    RebootAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    RebootAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    RebootAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    RebootAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    RebootAutonomousDatabaseOutput.type = Types::RebootAutonomousDatabaseOutput
    RebootDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId"))
    RebootDbNodeInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "exadbVmClusterId"))
    RebootDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RebootDbNodeInput.type = Types::RebootDbNodeInput
    RebootDbNodeOutput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbNodeId", traits: {"smithy.api#required" => {}}))
    RebootDbNodeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, name: "status"))
    RebootDbNodeOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    RebootDbNodeOutput.type = Types::RebootDbNodeOutput
    RefreshableMode.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    RefreshableMode.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    RefreshableStatus.add_member(:refreshing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESHING", traits: {"smithy.api#enumValue" => "REFRESHING"}))
    RefreshableStatus.add_member(:not_refreshing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REFRESHING", traits: {"smithy.api#enumValue" => "NOT_REFRESHING"}))
    RepeatCadence.add_member(:one_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_TIME", traits: {"smithy.api#enumValue" => "ONE_TIME"}))
    RepeatCadence.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "WEEKLY"}))
    RepeatCadence.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    RepeatCadence.add_member(:yearly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARLY", traits: {"smithy.api#enumValue" => "YEARLY"}))
    RequestTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    RequestTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePoolSummary.add_member(:is_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDisabled"))
    ResourcePoolSummary.add_member(:pool_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "poolSize"))
    ResourcePoolSummary.add_member(:pool_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "poolStorageSizeInTBs"))
    ResourcePoolSummary.add_member(:available_storage_capacity_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "availableStorageCapacityInTBs"))
    ResourcePoolSummary.add_member(:total_compute_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalComputeCapacity"))
    ResourcePoolSummary.add_member(:available_compute_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "availableComputeCapacity"))
    ResourcePoolSummary.type = Types::ResourcePoolSummary
    ResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    ResourceStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ResourceStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResourceStatus.add_member(:maintenance_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "MAINTENANCE_IN_PROGRESS"}))
    ResponseTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    ResponseTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    RestoreAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    RestoreAutonomousDatabaseInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RestoreAutonomousDatabaseInput.type = Types::RestoreAutonomousDatabaseInput
    RestoreAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    RestoreAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    RestoreAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    RestoreAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    RestoreAutonomousDatabaseOutput.type = Types::RestoreAutonomousDatabaseOutput
    RestoreFromBackupConfiguration.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseBackupId", traits: {"smithy.api#required" => {}}))
    RestoreFromBackupConfiguration.add_member(:clone_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneType, name: "cloneType", traits: {"smithy.api#required" => {}}))
    RestoreFromBackupConfiguration.add_member(:clone_table_space_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "cloneTableSpaceList"))
    RestoreFromBackupConfiguration.type = Types::RestoreFromBackupConfiguration
    S3Access.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status"))
    S3Access.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv4Addresses"))
    S3Access.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName"))
    S3Access.add_member(:s3_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3PolicyDocument"))
    S3Access.type = Types::S3Access
    ScheduledOperationDetails.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "dayOfWeek", traits: {"smithy.api#required" => {}}))
    ScheduledOperationDetails.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledStartTime"))
    ScheduledOperationDetails.add_member(:scheduled_stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scheduledStopTime"))
    ScheduledOperationDetails.type = Types::ScheduledOperationDetails
    ScheduledOperationDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledOperationDetails, name: "member"))
    SensitiveStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "member"))
    ServiceNetworkEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcEndpointId"))
    ServiceNetworkEndpoint.add_member(:vpc_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointType, name: "vpcEndpointType"))
    ServiceNetworkEndpoint.type = Types::ServiceNetworkEndpoint
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShapeAttribute.add_member(:smart_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMART_STORAGE", traits: {"smithy.api#enumValue" => "SMART_STORAGE"}))
    ShapeAttribute.add_member(:block_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK_STORAGE", traits: {"smithy.api#enumValue" => "BLOCK_STORAGE"}))
    ShapeAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShapeAttribute, name: "member"))
    ShapeType.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "AMD"}))
    ShapeType.add_member(:intel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEL", traits: {"smithy.api#enumValue" => "INTEL"}))
    ShapeType.add_member(:intel_flex_x9, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEL_FLEX_X9", traits: {"smithy.api#enumValue" => "INTEL_FLEX_X9"}))
    ShapeType.add_member(:ampere_flex_a1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMPERE_FLEX_A1", traits: {"smithy.api#enumValue" => "AMPERE_FLEX_A1"}))
    ShrinkAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    ShrinkAutonomousDatabaseInput.type = Types::ShrinkAutonomousDatabaseInput
    ShrinkAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    ShrinkAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    ShrinkAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    ShrinkAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    ShrinkAutonomousDatabaseOutput.type = Types::ShrinkAutonomousDatabaseOutput
    SourceConfiguration.add_member(:database_clone, Types::SourceConfiguration::DatabaseClone, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseCloneConfiguration, name: "databaseClone"))
    SourceConfiguration.add_member(:restore_from_backup, Types::SourceConfiguration::RestoreFromBackup, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreFromBackupConfiguration, name: "restoreFromBackup"))
    SourceConfiguration.add_member(:point_in_time_restore, Types::SourceConfiguration::PointInTimeRestore, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRestoreConfiguration, name: "pointInTimeRestore"))
    SourceConfiguration.add_member(:cross_region_data_guard, Types::SourceConfiguration::CrossRegionDataGuard, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionDataGuardConfiguration, name: "crossRegionDataGuard"))
    SourceConfiguration.add_member(:cross_region_disaster_recovery, Types::SourceConfiguration::CrossRegionDisasterRecovery, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionDisasterRecoveryConfiguration, name: "crossRegionDisasterRecovery"))
    SourceConfiguration.add_member(:clone_to_refreshable, Types::SourceConfiguration::CloneToRefreshable, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneToRefreshableConfiguration, name: "cloneToRefreshable"))
    SourceConfiguration.add_member(:unknown, Types::SourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    SourceType.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    SourceType.add_member(:backup_from_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_FROM_ID", traits: {"smithy.api#enumValue" => "BACKUP_FROM_ID"}))
    SourceType.add_member(:backup_from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_FROM_TIMESTAMP", traits: {"smithy.api#enumValue" => "BACKUP_FROM_TIMESTAMP"}))
    SourceType.add_member(:cross_region_dataguard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_REGION_DATAGUARD", traits: {"smithy.api#enumValue" => "CROSS_REGION_DATAGUARD"}))
    SourceType.add_member(:cross_region_disaster_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_REGION_DISASTER_RECOVERY", traits: {"smithy.api#enumValue" => "CROSS_REGION_DISASTER_RECOVERY"}))
    SourceType.add_member(:clone_to_refreshable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLONE_TO_REFRESHABLE", traits: {"smithy.api#enumValue" => "CLONE_TO_REFRESHABLE"}))
    StandbyAllowlistedIpsSource.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    StandbyAllowlistedIpsSource.add_member(:separate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEPARATE", traits: {"smithy.api#enumValue" => "SEPARATE"}))
    StandbyAllowlistedIpsSource.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    StartAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    StartAutonomousDatabaseInput.type = Types::StartAutonomousDatabaseInput
    StartAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    StartAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    StartAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    StartAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    StartAutonomousDatabaseOutput.type = Types::StartAutonomousDatabaseOutput
    StartDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId"))
    StartDbNodeInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "exadbVmClusterId"))
    StartDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDbNodeInput.type = Types::StartDbNodeInput
    StartDbNodeOutput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbNodeId", traits: {"smithy.api#required" => {}}))
    StartDbNodeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, name: "status"))
    StartDbNodeOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    StartDbNodeOutput.type = Types::StartDbNodeOutput
    StopAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    StopAutonomousDatabaseInput.type = Types::StopAutonomousDatabaseInput
    StopAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    StopAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    StopAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    StopAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    StopAutonomousDatabaseOutput.type = Types::StopAutonomousDatabaseOutput
    StopDbNodeInput.add_member(:cloud_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "cloudVmClusterId"))
    StopDbNodeInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "exadbVmClusterId"))
    StopDbNodeInput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dbNodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDbNodeInput.type = Types::StopDbNodeInput
    StopDbNodeOutput.add_member(:db_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbNodeId", traits: {"smithy.api#required" => {}}))
    StopDbNodeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbNodeResourceStatus, name: "status"))
    StopDbNodeOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    StopDbNodeOutput.type = Types::StopDbNodeOutput
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    StsAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status"))
    StsAccess.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ipv4Addresses"))
    StsAccess.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName"))
    StsAccess.add_member(:sts_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stsPolicyDocument"))
    StsAccess.type = Types::StsAccess
    SubscriptionError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    SubscriptionError.type = Types::SubscriptionError
    SubscriptionErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionError, name: "member"))
    SupportedAwsIntegration.add_member(:kms_tde, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KmsTde", traits: {"smithy.api#enumValue" => "KmsTde"}))
    SwitchoverAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    SwitchoverAutonomousDatabaseInput.add_member(:peer_db_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "peerDbArn"))
    SwitchoverAutonomousDatabaseInput.type = Types::SwitchoverAutonomousDatabaseInput
    SwitchoverAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    SwitchoverAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    SwitchoverAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    SwitchoverAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    SwitchoverAutonomousDatabaseOutput.type = Types::SwitchoverAutonomousDatabaseOutput
    SystemVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemVersionSummary, name: "member"))
    SystemVersionSummary.add_member(:gi_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "giVersion"))
    SystemVersionSummary.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "shape"))
    SystemVersionSummary.add_member(:system_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "systemVersions"))
    SystemVersionSummary.type = Types::SystemVersionSummary
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TransportableTablespace.add_member(:tts_bundle_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ttsBundleUrl"))
    TransportableTablespace.type = Types::TransportableTablespace
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAction.add_member(:rolling_apply, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLING_APPLY", traits: {"smithy.api#enumValue" => "ROLLING_APPLY"}))
    UpdateAction.add_member(:non_rolling_apply, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_ROLLING_APPLY", traits: {"smithy.api#enumValue" => "NON_ROLLING_APPLY"}))
    UpdateAction.add_member(:precheck, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRECHECK", traits: {"smithy.api#enumValue" => "PRECHECK"}))
    UpdateAction.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    UpdateAutonomousDatabaseBackupInput.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "autonomousDatabaseBackupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAutonomousDatabaseBackupInput.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 90, "max" => 3650}}))
    UpdateAutonomousDatabaseBackupInput.type = Types::UpdateAutonomousDatabaseBackupInput
    UpdateAutonomousDatabaseBackupOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateAutonomousDatabaseBackupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    UpdateAutonomousDatabaseBackupOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateAutonomousDatabaseBackupOutput.add_member(:autonomous_database_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseBackupId", traits: {"smithy.api#required" => {}}))
    UpdateAutonomousDatabaseBackupOutput.type = Types::UpdateAutonomousDatabaseBackupOutput
    UpdateAutonomousDatabaseInput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    UpdateAutonomousDatabaseInput.add_member(:admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "adminPassword", traits: {"smithy.api#length" => {"min" => 12, "max" => 30}}))
    UpdateAutonomousDatabaseInput.add_member(:compute_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "computeCount", traits: {"smithy.api#range" => {"min" => 0.1, "max" => 512}}))
    UpdateAutonomousDatabaseInput.add_member(:cpu_core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cpuCoreCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}}))
    UpdateAutonomousDatabaseInput.add_member(:data_storage_size_in_t_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataStorageSizeInTBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 384}}))
    UpdateAutonomousDatabaseInput.add_member(:data_storage_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataStorageSizeInGBs", traits: {"smithy.api#range" => {"min" => 20, "max" => 393216}}))
    UpdateAutonomousDatabaseInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    UpdateAutonomousDatabaseInput.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}}))
    UpdateAutonomousDatabaseInput.add_member(:db_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    UpdateAutonomousDatabaseInput.add_member(:db_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: DbWorkload, name: "dbWorkload"))
    UpdateAutonomousDatabaseInput.add_member(:db_tools_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseToolList, name: "dbToolsDetails"))
    UpdateAutonomousDatabaseInput.add_member(:database_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEdition, name: "databaseEdition"))
    UpdateAutonomousDatabaseInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    UpdateAutonomousDatabaseInput.add_member(:is_auto_scaling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingEnabled"))
    UpdateAutonomousDatabaseInput.add_member(:is_auto_scaling_for_storage_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoScalingForStorageEnabled"))
    UpdateAutonomousDatabaseInput.add_member(:is_backup_retention_locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBackupRetentionLocked"))
    UpdateAutonomousDatabaseInput.add_member(:is_local_data_guard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLocalDataGuardEnabled"))
    UpdateAutonomousDatabaseInput.add_member(:is_mtls_connection_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMtlsConnectionRequired"))
    UpdateAutonomousDatabaseInput.add_member(:is_refreshable_clone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRefreshableClone"))
    UpdateAutonomousDatabaseInput.add_member(:is_disconnect_peer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDisconnectPeer"))
    UpdateAutonomousDatabaseInput.add_member(:backup_retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "backupRetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}}))
    UpdateAutonomousDatabaseInput.add_member(:byol_compute_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "byolComputeCountLimit", traits: {"smithy.api#range" => {"min" => 2}}))
    UpdateAutonomousDatabaseInput.add_member(:local_adg_auto_failover_max_data_loss_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "localAdgAutoFailoverMaxDataLossLimit", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}}))
    UpdateAutonomousDatabaseInput.add_member(:autonomous_maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousMaintenanceScheduleType, name: "autonomousMaintenanceScheduleType"))
    UpdateAutonomousDatabaseInput.add_member(:customer_contacts_to_send_to_oci, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContacts, name: "customerContactsToSendToOCI"))
    UpdateAutonomousDatabaseInput.add_member(:scheduled_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledOperationDetailsList, name: "scheduledOperations"))
    UpdateAutonomousDatabaseInput.add_member(:long_term_backup_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: LongTermBackupSchedule, name: "longTermBackupSchedule"))
    UpdateAutonomousDatabaseInput.add_member(:open_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMode, name: "openMode"))
    UpdateAutonomousDatabaseInput.add_member(:permission_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionLevel, name: "permissionLevel"))
    UpdateAutonomousDatabaseInput.add_member(:refreshable_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshableMode, name: "refreshableMode"))
    UpdateAutonomousDatabaseInput.add_member(:private_endpoint_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointIp"))
    UpdateAutonomousDatabaseInput.add_member(:private_endpoint_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateEndpointLabel"))
    UpdateAutonomousDatabaseInput.add_member(:peer_db_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "peerDbId"))
    UpdateAutonomousDatabaseInput.add_member(:resource_pool_leader_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "resourcePoolLeaderId"))
    UpdateAutonomousDatabaseInput.add_member(:resource_pool_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePoolSummary, name: "resourcePoolSummary"))
    UpdateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips_source, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyAllowlistedIpsSource, name: "standbyAllowlistedIpsSource"))
    UpdateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "standbyAllowlistedIps"))
    UpdateAutonomousDatabaseInput.add_member(:allowlisted_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "allowlistedIps"))
    UpdateAutonomousDatabaseInput.add_member(:auto_refresh_frequency_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshFrequencyInSeconds", traits: {"smithy.api#range" => {"min" => 3600, "max" => 604800}}))
    UpdateAutonomousDatabaseInput.add_member(:auto_refresh_point_lag_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoRefreshPointLagInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}}))
    UpdateAutonomousDatabaseInput.add_member(:time_of_auto_refresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfAutoRefreshStart", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateAutonomousDatabaseInput.add_member(:encryption_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyProviderInput, name: "encryptionKeyProvider"))
    UpdateAutonomousDatabaseInput.add_member(:encryption_key_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyConfigurationInput, name: "encryptionKeyConfiguration"))
    UpdateAutonomousDatabaseInput.add_member(:admin_password_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSource, name: "adminPasswordSource"))
    UpdateAutonomousDatabaseInput.add_member(:admin_password_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPasswordSourceConfigurationInput, name: "adminPasswordSourceConfiguration"))
    UpdateAutonomousDatabaseInput.type = Types::UpdateAutonomousDatabaseInput
    UpdateAutonomousDatabaseOutput.add_member(:autonomous_database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "autonomousDatabaseId", traits: {"smithy.api#required" => {}}))
    UpdateAutonomousDatabaseOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateAutonomousDatabaseOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousDatabaseResourceStatus, name: "status"))
    UpdateAutonomousDatabaseOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateAutonomousDatabaseOutput.type = Types::UpdateAutonomousDatabaseOutput
    UpdateCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "cloudExadataInfrastructureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCloudExadataInfrastructureInput.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "maintenanceWindow"))
    UpdateCloudExadataInfrastructureInput.type = Types::UpdateCloudExadataInfrastructureInput
    UpdateCloudExadataInfrastructureOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudExadataInfrastructureId", traits: {"smithy.api#required" => {}}))
    UpdateCloudExadataInfrastructureOutput.type = Types::UpdateCloudExadataInfrastructureOutput
    UpdateExadbVmClusterInput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    UpdateExadbVmClusterInput.add_member(:data_collection_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionOptions, name: "dataCollectionOptions"))
    UpdateExadbVmClusterInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    UpdateExadbVmClusterInput.add_member(:enabled_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "enabledEcpuCount", traits: {"smithy.api#range" => {"min" => 0}}))
    UpdateExadbVmClusterInput.add_member(:grid_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "gridImageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    UpdateExadbVmClusterInput.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    UpdateExadbVmClusterInput.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "sshPublicKeys"))
    UpdateExadbVmClusterInput.add_member(:system_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    UpdateExadbVmClusterInput.add_member(:total_ecpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalEcpuCount", traits: {"smithy.api#range" => {"min" => 2}}))
    UpdateExadbVmClusterInput.add_member(:update_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAction, name: "updateAction"))
    UpdateExadbVmClusterInput.add_member(:vm_file_system_storage_total_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "vmFileSystemStorageTotalSizeInGBs", traits: {"smithy.api#range" => {"min" => 0}}))
    UpdateExadbVmClusterInput.type = Types::UpdateExadbVmClusterInput
    UpdateExadbVmClusterOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateExadbVmClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    UpdateExadbVmClusterOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exadbVmClusterId", traits: {"smithy.api#required" => {}}))
    UpdateExadbVmClusterOutput.type = Types::UpdateExadbVmClusterOutput
    UpdateExascaleDbStorageVaultInput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    UpdateExascaleDbStorageVaultInput.add_member(:additional_flash_cache_in_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "additionalFlashCacheInPercent", traits: {"smithy.api#range" => {"min" => 0}}))
    UpdateExascaleDbStorageVaultInput.add_member(:autoscale_limit_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "autoscaleLimitInGBs", traits: {"smithy.api#range" => {"min" => 0}}))
    UpdateExascaleDbStorageVaultInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}}))
    UpdateExascaleDbStorageVaultInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    UpdateExascaleDbStorageVaultInput.add_member(:high_capacity_database_storage_total_size_in_g_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "highCapacityDatabaseStorageTotalSizeInGBs", traits: {"smithy.api#range" => {"min" => 0}}))
    UpdateExascaleDbStorageVaultInput.add_member(:is_autoscale_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoscaleEnabled"))
    UpdateExascaleDbStorageVaultInput.type = Types::UpdateExascaleDbStorageVaultInput
    UpdateExascaleDbStorageVaultOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateExascaleDbStorageVaultOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    UpdateExascaleDbStorageVaultOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateExascaleDbStorageVaultOutput.add_member(:exascale_db_storage_vault_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exascaleDbStorageVaultId", traits: {"smithy.api#required" => {}}))
    UpdateExascaleDbStorageVaultOutput.type = Types::UpdateExascaleDbStorageVaultOutput
    UpdateOdbNetworkInput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbNetworkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOdbNetworkInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    UpdateOdbNetworkInput.add_member(:peered_cidrs_to_be_added, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "peeredCidrsToBeAdded"))
    UpdateOdbNetworkInput.add_member(:peered_cidrs_to_be_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "peeredCidrsToBeRemoved"))
    UpdateOdbNetworkInput.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "s3Access"))
    UpdateOdbNetworkInput.add_member(:zero_etl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "zeroEtlAccess"))
    UpdateOdbNetworkInput.add_member(:sts_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "stsAccess"))
    UpdateOdbNetworkInput.add_member(:kms_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "kmsAccess"))
    UpdateOdbNetworkInput.add_member(:s3_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "s3PolicyDocument"))
    UpdateOdbNetworkInput.add_member(:sts_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "stsPolicyDocument"))
    UpdateOdbNetworkInput.add_member(:kms_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "kmsPolicyDocument"))
    UpdateOdbNetworkInput.add_member(:cross_region_s3_restore_sources_to_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "crossRegionS3RestoreSourcesToEnable"))
    UpdateOdbNetworkInput.add_member(:cross_region_s3_restore_sources_to_disable, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "crossRegionS3RestoreSourcesToDisable"))
    UpdateOdbNetworkInput.type = Types::UpdateOdbNetworkInput
    UpdateOdbNetworkOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateOdbNetworkOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    UpdateOdbNetworkOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateOdbNetworkOutput.add_member(:odb_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbNetworkId", traits: {"smithy.api#required" => {}}))
    UpdateOdbNetworkOutput.type = Types::UpdateOdbNetworkOutput
    UpdateOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "odbPeeringConnectionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOdbPeeringConnectionInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDisplayName, name: "displayName"))
    UpdateOdbPeeringConnectionInput.add_member(:peer_network_cidrs_to_be_added, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeredCidrList, name: "peerNetworkCidrsToBeAdded"))
    UpdateOdbPeeringConnectionInput.add_member(:peer_network_cidrs_to_be_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: PeeredCidrList, name: "peerNetworkCidrsToBeRemoved"))
    UpdateOdbPeeringConnectionInput.type = Types::UpdateOdbPeeringConnectionInput
    UpdateOdbPeeringConnectionOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    UpdateOdbPeeringConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    UpdateOdbPeeringConnectionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateOdbPeeringConnectionOutput.add_member(:odb_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "odbPeeringConnectionId", traits: {"smithy.api#required" => {}}))
    UpdateOdbPeeringConnectionOutput.type = Types::UpdateOdbPeeringConnectionOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    VpcEndpointType.add_member(:servicenetwork, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICENETWORK", traits: {"smithy.api#enumValue" => "SERVICENETWORK"}))
    WalletPasswordSource.add_member(:customer_managed_aws_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_AWS_SECRET", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_AWS_SECRET"}))
    WalletPasswordSource.add_member(:api_request_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_REQUEST_PARAMETER", traits: {"smithy.api#enumValue" => "API_REQUEST_PARAMETER"}))
    WalletPasswordSourceConfiguration.add_member(:customer_managed_aws_secret, Types::WalletPasswordSourceConfiguration::CustomerManagedAwsSecret, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedAwsSecretConfiguration, name: "customerManagedAwsSecret"))
    WalletPasswordSourceConfiguration.add_member(:unknown, Types::WalletPasswordSourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    WalletPasswordSourceConfiguration.type = Types::WalletPasswordSourceConfiguration
    WalletPasswordSourceConfigurationInput.add_member(:customer_managed_aws_secret, Types::WalletPasswordSourceConfigurationInput::CustomerManagedAwsSecret, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedAwsSecretConfigurationInput, name: "customerManagedAwsSecret"))
    WalletPasswordSourceConfigurationInput.add_member(:unknown, Types::WalletPasswordSourceConfigurationInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    WalletPasswordSourceConfigurationInput.type = Types::WalletPasswordSourceConfigurationInput
    WalletPasswordSourceSummary.add_member(:password_source, ::Smithy::Schema::Shapes::MemberShape.new(target: WalletPasswordSource, name: "passwordSource"))
    WalletPasswordSourceSummary.add_member(:password_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WalletPasswordSourceConfiguration, name: "passwordSourceConfiguration"))
    WalletPasswordSourceSummary.type = Types::WalletPasswordSourceSummary
    WalletType.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    WalletType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    WeeksOfMonth.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    ZeroEtlAccess.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status"))
    ZeroEtlAccess.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cidr"))
    ZeroEtlAccess.type = Types::ZeroEtlAccess
    CharacterSetType.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    CharacterSetType.add_member(:national, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NATIONAL", traits: {"smithy.api#enumValue" => "NATIONAL"}))

    Odb = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.odb#Odb"
      service.name = "Odb"
      service.version = "2024-08-20"
      service.traits = {"aws.api#service" => {"sdkId" => "odb", "arnNamespace" => "odb"}, "aws.auth#sigv4" => {"name" => "odb"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "odb", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://odb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://odb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://odb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://odb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
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
      service.add_operation(:associate_iam_role_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#AssociateIamRoleToResource"
        operation.name = "AssociateIamRoleToResource"
        operation.input = AssociateIamRoleToResourceInput
        operation.output = AssociateIamRoleToResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:associate_virtual_machines_to_exadb_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#AssociateVirtualMachinesToExadbVmCluster"
        operation.name = "AssociateVirtualMachinesToExadbVmCluster"
        operation.input = AssociateVirtualMachinesToExadbVmClusterInput
        operation.output = AssociateVirtualMachinesToExadbVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateAutonomousDatabase"
        operation.name = "CreateAutonomousDatabase"
        operation.input = CreateAutonomousDatabaseInput
        operation.output = CreateAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_autonomous_database_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateAutonomousDatabaseBackup"
        operation.name = "CreateAutonomousDatabaseBackup"
        operation.input = CreateAutonomousDatabaseBackupInput
        operation.output = CreateAutonomousDatabaseBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_autonomous_database_wallet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateAutonomousDatabaseWallet"
        operation.name = "CreateAutonomousDatabaseWallet"
        operation.input = CreateAutonomousDatabaseWalletInput
        operation.output = CreateAutonomousDatabaseWalletOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
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
      service.add_operation(:create_exadb_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateExadbVmCluster"
        operation.name = "CreateExadbVmCluster"
        operation.input = CreateExadbVmClusterInput
        operation.output = CreateExadbVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_exascale_db_storage_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#CreateExascaleDbStorageVault"
        operation.name = "CreateExascaleDbStorageVault"
        operation.input = CreateExascaleDbStorageVaultInput
        operation.output = CreateExascaleDbStorageVaultOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
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
      service.add_operation(:delete_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteAutonomousDatabase"
        operation.name = "DeleteAutonomousDatabase"
        operation.input = DeleteAutonomousDatabaseInput
        operation.output = DeleteAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_autonomous_database_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteAutonomousDatabaseBackup"
        operation.name = "DeleteAutonomousDatabaseBackup"
        operation.input = DeleteAutonomousDatabaseBackupInput
        operation.output = DeleteAutonomousDatabaseBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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
      service.add_operation(:delete_exadb_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteExadbVmCluster"
        operation.name = "DeleteExadbVmCluster"
        operation.input = DeleteExadbVmClusterInput
        operation.output = DeleteExadbVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_exascale_db_storage_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DeleteExascaleDbStorageVault"
        operation.name = "DeleteExascaleDbStorageVault"
        operation.input = DeleteExascaleDbStorageVaultInput
        operation.output = DeleteExascaleDbStorageVaultOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
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
      service.add_operation(:disassociate_iam_role_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DisassociateIamRoleFromResource"
        operation.name = "DisassociateIamRoleFromResource"
        operation.input = DisassociateIamRoleFromResourceInput
        operation.output = DisassociateIamRoleFromResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_virtual_machines_from_exadb_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#DisassociateVirtualMachinesFromExadbVmCluster"
        operation.name = "DisassociateVirtualMachinesFromExadbVmCluster"
        operation.input = DisassociateVirtualMachinesFromExadbVmClusterInput
        operation.output = DisassociateVirtualMachinesFromExadbVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:failover_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#FailoverAutonomousDatabase"
        operation.name = "FailoverAutonomousDatabase"
        operation.input = FailoverAutonomousDatabaseInput
        operation.output = FailoverAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetAutonomousDatabase"
        operation.name = "GetAutonomousDatabase"
        operation.input = GetAutonomousDatabaseInput
        operation.output = GetAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_autonomous_database_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetAutonomousDatabaseBackup"
        operation.name = "GetAutonomousDatabaseBackup"
        operation.input = GetAutonomousDatabaseBackupInput
        operation.output = GetAutonomousDatabaseBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_autonomous_database_wallet_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetAutonomousDatabaseWalletDetails"
        operation.name = "GetAutonomousDatabaseWalletDetails"
        operation.input = GetAutonomousDatabaseWalletDetailsInput
        operation.output = GetAutonomousDatabaseWalletDetailsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
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
      service.add_operation(:get_exadb_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetExadbVmCluster"
        operation.name = "GetExadbVmCluster"
        operation.input = GetExadbVmClusterInput
        operation.output = GetExadbVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_exascale_db_storage_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#GetExascaleDbStorageVault"
        operation.name = "GetExascaleDbStorageVault"
        operation.input = GetExascaleDbStorageVaultInput
        operation.output = GetExascaleDbStorageVaultOutput
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
      service.add_operation(:list_autonomous_database_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousDatabaseBackups"
        operation.name = "ListAutonomousDatabaseBackups"
        operation.input = ListAutonomousDatabaseBackupsInput
        operation.output = ListAutonomousDatabaseBackupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousDatabaseBackups.new
      end)
      service.add_operation(:list_autonomous_database_character_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousDatabaseCharacterSets"
        operation.name = "ListAutonomousDatabaseCharacterSets"
        operation.input = ListAutonomousDatabaseCharacterSetsInput
        operation.output = ListAutonomousDatabaseCharacterSetsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousDatabaseCharacterSets.new
      end)
      service.add_operation(:list_autonomous_database_clones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousDatabaseClones"
        operation.name = "ListAutonomousDatabaseClones"
        operation.input = ListAutonomousDatabaseClonesInput
        operation.output = ListAutonomousDatabaseClonesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousDatabaseClones.new
      end)
      service.add_operation(:list_autonomous_database_peers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousDatabasePeers"
        operation.name = "ListAutonomousDatabasePeers"
        operation.input = ListAutonomousDatabasePeersInput
        operation.output = ListAutonomousDatabasePeersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousDatabasePeers.new
      end)
      service.add_operation(:list_autonomous_database_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousDatabaseVersions"
        operation.name = "ListAutonomousDatabaseVersions"
        operation.input = ListAutonomousDatabaseVersionsInput
        operation.output = ListAutonomousDatabaseVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousDatabaseVersions.new
      end)
      service.add_operation(:list_autonomous_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListAutonomousDatabases"
        operation.name = "ListAutonomousDatabases"
        operation.input = ListAutonomousDatabasesInput
        operation.output = ListAutonomousDatabasesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutonomousDatabases.new
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
      service.add_operation(:list_exadb_vm_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListExadbVmClusters"
        operation.name = "ListExadbVmClusters"
        operation.input = ListExadbVmClustersInput
        operation.output = ListExadbVmClustersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExadbVmClusters.new
      end)
      service.add_operation(:list_exascale_db_storage_vaults, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListExascaleDbStorageVaults"
        operation.name = "ListExascaleDbStorageVaults"
        operation.input = ListExascaleDbStorageVaultsInput
        operation.output = ListExascaleDbStorageVaultsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExascaleDbStorageVaults.new
      end)
      service.add_operation(:list_flex_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListFlexComponents"
        operation.name = "ListFlexComponents"
        operation.input = ListFlexComponentsInput
        operation.output = ListFlexComponentsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFlexComponents.new
      end)
      service.add_operation(:list_gi_minor_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ListGiMinorVersions"
        operation.name = "ListGiMinorVersions"
        operation.input = ListGiMinorVersionsInput
        operation.output = ListGiMinorVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGiMinorVersions.new
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
      service.add_operation(:reboot_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#RebootAutonomousDatabase"
        operation.name = "RebootAutonomousDatabase"
        operation.input = RebootAutonomousDatabaseInput
        operation.output = RebootAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
        operation.traits = {}
      end)
      service.add_operation(:restore_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#RestoreAutonomousDatabase"
        operation.name = "RestoreAutonomousDatabase"
        operation.input = RestoreAutonomousDatabaseInput
        operation.output = RestoreAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:shrink_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#ShrinkAutonomousDatabase"
        operation.name = "ShrinkAutonomousDatabase"
        operation.input = ShrinkAutonomousDatabaseInput
        operation.output = ShrinkAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#StartAutonomousDatabase"
        operation.name = "StartAutonomousDatabase"
        operation.input = StartAutonomousDatabaseInput
        operation.output = StartAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
        operation.traits = {}
      end)
      service.add_operation(:stop_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#StopAutonomousDatabase"
        operation.name = "StopAutonomousDatabase"
        operation.input = StopAutonomousDatabaseInput
        operation.output = StopAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
        operation.traits = {}
      end)
      service.add_operation(:switchover_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#SwitchoverAutonomousDatabase"
        operation.name = "SwitchoverAutonomousDatabase"
        operation.input = SwitchoverAutonomousDatabaseInput
        operation.output = SwitchoverAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
      service.add_operation(:update_autonomous_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateAutonomousDatabase"
        operation.name = "UpdateAutonomousDatabase"
        operation.input = UpdateAutonomousDatabaseInput
        operation.output = UpdateAutonomousDatabaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_autonomous_database_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateAutonomousDatabaseBackup"
        operation.name = "UpdateAutonomousDatabaseBackup"
        operation.input = UpdateAutonomousDatabaseBackupInput
        operation.output = UpdateAutonomousDatabaseBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
      service.add_operation(:update_exadb_vm_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateExadbVmCluster"
        operation.name = "UpdateExadbVmCluster"
        operation.input = UpdateExadbVmClusterInput
        operation.output = UpdateExadbVmClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_exascale_db_storage_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateExascaleDbStorageVault"
        operation.name = "UpdateExascaleDbStorageVault"
        operation.input = UpdateExascaleDbStorageVaultInput
        operation.output = UpdateExascaleDbStorageVaultOutput
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
      service.add_operation(:update_odb_peering_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.odb#UpdateOdbPeeringConnection"
        operation.name = "UpdateOdbPeeringConnection"
        operation.input = UpdateOdbPeeringConnectionInput
        operation.output = UpdateOdbPeeringConnectionOutput
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

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
    AdminPasswordSource = Shapes::StringShape.new(name: 'AdminPasswordSource')
    AdminPasswordSourceConfiguration = Shapes::UnionShape.new(name: 'AdminPasswordSourceConfiguration')
    AdminPasswordSourceConfigurationInput = Shapes::UnionShape.new(name: 'AdminPasswordSourceConfigurationInput')
    AdminPasswordSourceSummary = Shapes::StructureShape.new(name: 'AdminPasswordSourceSummary')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateIamRoleToResourceInput = Shapes::StructureShape.new(name: 'AssociateIamRoleToResourceInput')
    AssociateIamRoleToResourceInputResourceArnString = Shapes::StringShape.new(name: 'AssociateIamRoleToResourceInputResourceArnString')
    AssociateIamRoleToResourceOutput = Shapes::StructureShape.new(name: 'AssociateIamRoleToResourceOutput')
    AssociateVirtualMachinesToExadbVmClusterInput = Shapes::StructureShape.new(name: 'AssociateVirtualMachinesToExadbVmClusterInput')
    AssociateVirtualMachinesToExadbVmClusterInputDesiredNodeCountInteger = Shapes::IntegerShape.new(name: 'AssociateVirtualMachinesToExadbVmClusterInputDesiredNodeCountInteger')
    AssociateVirtualMachinesToExadbVmClusterOutput = Shapes::StructureShape.new(name: 'AssociateVirtualMachinesToExadbVmClusterOutput')
    AutonomousDatabase = Shapes::StructureShape.new(name: 'AutonomousDatabase')
    AutonomousDatabaseApex = Shapes::StructureShape.new(name: 'AutonomousDatabaseApex')
    AutonomousDatabaseBackup = Shapes::StructureShape.new(name: 'AutonomousDatabaseBackup')
    AutonomousDatabaseBackupList = Shapes::ListShape.new(name: 'AutonomousDatabaseBackupList')
    AutonomousDatabaseBackupStatus = Shapes::StringShape.new(name: 'AutonomousDatabaseBackupStatus')
    AutonomousDatabaseBackupSummary = Shapes::StructureShape.new(name: 'AutonomousDatabaseBackupSummary')
    AutonomousDatabaseBackupType = Shapes::StringShape.new(name: 'AutonomousDatabaseBackupType')
    AutonomousDatabaseCharacterSetList = Shapes::ListShape.new(name: 'AutonomousDatabaseCharacterSetList')
    AutonomousDatabaseCharacterSetSummary = Shapes::StructureShape.new(name: 'AutonomousDatabaseCharacterSetSummary')
    AutonomousDatabaseConnectionStrings = Shapes::StructureShape.new(name: 'AutonomousDatabaseConnectionStrings')
    AutonomousDatabaseConnectionUrls = Shapes::StructureShape.new(name: 'AutonomousDatabaseConnectionUrls')
    AutonomousDatabaseList = Shapes::ListShape.new(name: 'AutonomousDatabaseList')
    AutonomousDatabasePeerList = Shapes::ListShape.new(name: 'AutonomousDatabasePeerList')
    AutonomousDatabasePeerSummary = Shapes::StructureShape.new(name: 'AutonomousDatabasePeerSummary')
    AutonomousDatabaseResourceStatus = Shapes::StringShape.new(name: 'AutonomousDatabaseResourceStatus')
    AutonomousDatabaseSummary = Shapes::StructureShape.new(name: 'AutonomousDatabaseSummary')
    AutonomousDatabaseVersionList = Shapes::ListShape.new(name: 'AutonomousDatabaseVersionList')
    AutonomousDatabaseVersionSummary = Shapes::StructureShape.new(name: 'AutonomousDatabaseVersionSummary')
    AutonomousDatabaseWalletDetails = Shapes::StructureShape.new(name: 'AutonomousDatabaseWalletDetails')
    AutonomousDatabaseWalletFile = Shapes::BlobShape.new(name: 'AutonomousDatabaseWalletFile')
    AutonomousDatabaseWalletStatus = Shapes::StringShape.new(name: 'AutonomousDatabaseWalletStatus')
    AutonomousMaintenanceScheduleType = Shapes::StringShape.new(name: 'AutonomousMaintenanceScheduleType')
    AutonomousVirtualMachineList = Shapes::ListShape.new(name: 'AutonomousVirtualMachineList')
    AutonomousVirtualMachineSummary = Shapes::StructureShape.new(name: 'AutonomousVirtualMachineSummary')
    AwsEncryptionKeyConfiguration = Shapes::StructureShape.new(name: 'AwsEncryptionKeyConfiguration')
    AwsEncryptionKeyConfigurationInput = Shapes::StructureShape.new(name: 'AwsEncryptionKeyConfigurationInput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CloneToRefreshableConfiguration = Shapes::StructureShape.new(name: 'CloneToRefreshableConfiguration')
    CloneToRefreshableConfigurationAutoRefreshFrequencyInSecondsInteger = Shapes::IntegerShape.new(name: 'CloneToRefreshableConfigurationAutoRefreshFrequencyInSecondsInteger')
    CloneToRefreshableConfigurationAutoRefreshPointLagInSecondsInteger = Shapes::IntegerShape.new(name: 'CloneToRefreshableConfigurationAutoRefreshPointLagInSecondsInteger')
    CloneType = Shapes::StringShape.new(name: 'CloneType')
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
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    ComputeModel = Shapes::StringShape.new(name: 'ComputeModel')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAutonomousDatabaseBackupInput = Shapes::StructureShape.new(name: 'CreateAutonomousDatabaseBackupInput')
    CreateAutonomousDatabaseBackupInputClientTokenString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseBackupInputClientTokenString')
    CreateAutonomousDatabaseBackupInputRetentionPeriodInDaysInteger = Shapes::IntegerShape.new(name: 'CreateAutonomousDatabaseBackupInputRetentionPeriodInDaysInteger')
    CreateAutonomousDatabaseBackupOutput = Shapes::StructureShape.new(name: 'CreateAutonomousDatabaseBackupOutput')
    CreateAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'CreateAutonomousDatabaseInput')
    CreateAutonomousDatabaseInputAdminPasswordString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseInputAdminPasswordString')
    CreateAutonomousDatabaseInputByolComputeCountLimitDouble = Shapes::FloatShape.new(name: 'CreateAutonomousDatabaseInputByolComputeCountLimitDouble')
    CreateAutonomousDatabaseInputCharacterSetString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseInputCharacterSetString')
    CreateAutonomousDatabaseInputClientTokenString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseInputClientTokenString')
    CreateAutonomousDatabaseInputComputeCountDouble = Shapes::FloatShape.new(name: 'CreateAutonomousDatabaseInputComputeCountDouble')
    CreateAutonomousDatabaseInputCpuCoreCountInteger = Shapes::IntegerShape.new(name: 'CreateAutonomousDatabaseInputCpuCoreCountInteger')
    CreateAutonomousDatabaseInputDataStorageSizeInGBsInteger = Shapes::IntegerShape.new(name: 'CreateAutonomousDatabaseInputDataStorageSizeInGBsInteger')
    CreateAutonomousDatabaseInputDataStorageSizeInTBsInteger = Shapes::IntegerShape.new(name: 'CreateAutonomousDatabaseInputDataStorageSizeInTBsInteger')
    CreateAutonomousDatabaseInputDbNameString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseInputDbNameString')
    CreateAutonomousDatabaseInputDbVersionString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseInputDbVersionString')
    CreateAutonomousDatabaseInputNcharacterSetString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseInputNcharacterSetString')
    CreateAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'CreateAutonomousDatabaseOutput')
    CreateAutonomousDatabaseWalletInput = Shapes::StructureShape.new(name: 'CreateAutonomousDatabaseWalletInput')
    CreateAutonomousDatabaseWalletInputClientTokenString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseWalletInputClientTokenString')
    CreateAutonomousDatabaseWalletInputPasswordString = Shapes::StringShape.new(name: 'CreateAutonomousDatabaseWalletInputPasswordString')
    CreateAutonomousDatabaseWalletOutput = Shapes::StructureShape.new(name: 'CreateAutonomousDatabaseWalletOutput')
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
    CreateCloudVmClusterInputCpuCoreCountInteger = Shapes::IntegerShape.new(name: 'CreateCloudVmClusterInputCpuCoreCountInteger')
    CreateCloudVmClusterInputGiVersionString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputGiVersionString')
    CreateCloudVmClusterInputScanListenerPortTcpInteger = Shapes::IntegerShape.new(name: 'CreateCloudVmClusterInputScanListenerPortTcpInteger')
    CreateCloudVmClusterInputSystemVersionString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputSystemVersionString')
    CreateCloudVmClusterInputTimeZoneString = Shapes::StringShape.new(name: 'CreateCloudVmClusterInputTimeZoneString')
    CreateCloudVmClusterOutput = Shapes::StructureShape.new(name: 'CreateCloudVmClusterOutput')
    CreateExadbVmClusterInput = Shapes::StructureShape.new(name: 'CreateExadbVmClusterInput')
    CreateExadbVmClusterInputClientTokenString = Shapes::StringShape.new(name: 'CreateExadbVmClusterInputClientTokenString')
    CreateExadbVmClusterInputEnabledEcpuCountInteger = Shapes::IntegerShape.new(name: 'CreateExadbVmClusterInputEnabledEcpuCountInteger')
    CreateExadbVmClusterInputGridImageIdString = Shapes::StringShape.new(name: 'CreateExadbVmClusterInputGridImageIdString')
    CreateExadbVmClusterInputNodeCountInteger = Shapes::IntegerShape.new(name: 'CreateExadbVmClusterInputNodeCountInteger')
    CreateExadbVmClusterInputScanListenerPortTcpInteger = Shapes::IntegerShape.new(name: 'CreateExadbVmClusterInputScanListenerPortTcpInteger')
    CreateExadbVmClusterInputScanListenerPortTcpSslInteger = Shapes::IntegerShape.new(name: 'CreateExadbVmClusterInputScanListenerPortTcpSslInteger')
    CreateExadbVmClusterInputShapeString = Shapes::StringShape.new(name: 'CreateExadbVmClusterInputShapeString')
    CreateExadbVmClusterInputSystemVersionString = Shapes::StringShape.new(name: 'CreateExadbVmClusterInputSystemVersionString')
    CreateExadbVmClusterInputTimeZoneString = Shapes::StringShape.new(name: 'CreateExadbVmClusterInputTimeZoneString')
    CreateExadbVmClusterInputTotalEcpuCountInteger = Shapes::IntegerShape.new(name: 'CreateExadbVmClusterInputTotalEcpuCountInteger')
    CreateExadbVmClusterInputVmFileSystemStorageTotalSizeInGBsInteger = Shapes::IntegerShape.new(name: 'CreateExadbVmClusterInputVmFileSystemStorageTotalSizeInGBsInteger')
    CreateExadbVmClusterOutput = Shapes::StructureShape.new(name: 'CreateExadbVmClusterOutput')
    CreateExascaleDbStorageVaultInput = Shapes::StructureShape.new(name: 'CreateExascaleDbStorageVaultInput')
    CreateExascaleDbStorageVaultInputAdditionalFlashCacheInPercentInteger = Shapes::IntegerShape.new(name: 'CreateExascaleDbStorageVaultInputAdditionalFlashCacheInPercentInteger')
    CreateExascaleDbStorageVaultInputAutoscaleLimitInGBsInteger = Shapes::IntegerShape.new(name: 'CreateExascaleDbStorageVaultInputAutoscaleLimitInGBsInteger')
    CreateExascaleDbStorageVaultInputAvailabilityZoneIdString = Shapes::StringShape.new(name: 'CreateExascaleDbStorageVaultInputAvailabilityZoneIdString')
    CreateExascaleDbStorageVaultInputAvailabilityZoneString = Shapes::StringShape.new(name: 'CreateExascaleDbStorageVaultInputAvailabilityZoneString')
    CreateExascaleDbStorageVaultInputClientTokenString = Shapes::StringShape.new(name: 'CreateExascaleDbStorageVaultInputClientTokenString')
    CreateExascaleDbStorageVaultInputDescriptionString = Shapes::StringShape.new(name: 'CreateExascaleDbStorageVaultInputDescriptionString')
    CreateExascaleDbStorageVaultInputHighCapacityDatabaseStorageTotalSizeInGBsInteger = Shapes::IntegerShape.new(name: 'CreateExascaleDbStorageVaultInputHighCapacityDatabaseStorageTotalSizeInGBsInteger')
    CreateExascaleDbStorageVaultInputTimeZoneString = Shapes::StringShape.new(name: 'CreateExascaleDbStorageVaultInputTimeZoneString')
    CreateExascaleDbStorageVaultOutput = Shapes::StructureShape.new(name: 'CreateExascaleDbStorageVaultOutput')
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
    CrossRegionDataGuardConfiguration = Shapes::StructureShape.new(name: 'CrossRegionDataGuardConfiguration')
    CrossRegionDisasterRecoveryConfiguration = Shapes::StructureShape.new(name: 'CrossRegionDisasterRecoveryConfiguration')
    CrossRegionS3RestoreSourcesAccess = Shapes::StructureShape.new(name: 'CrossRegionS3RestoreSourcesAccess')
    CrossRegionS3RestoreSourcesAccessList = Shapes::ListShape.new(name: 'CrossRegionS3RestoreSourcesAccessList')
    CustomerContact = Shapes::StructureShape.new(name: 'CustomerContact')
    CustomerContactEmailString = Shapes::StringShape.new(name: 'CustomerContactEmailString')
    CustomerContacts = Shapes::ListShape.new(name: 'CustomerContacts')
    CustomerManagedAwsSecretConfiguration = Shapes::StructureShape.new(name: 'CustomerManagedAwsSecretConfiguration')
    CustomerManagedAwsSecretConfigurationInput = Shapes::StructureShape.new(name: 'CustomerManagedAwsSecretConfigurationInput')
    DataCollectionOptions = Shapes::StructureShape.new(name: 'DataCollectionOptions')
    DataGuardRole = Shapes::StringShape.new(name: 'DataGuardRole')
    DataSafeStatus = Shapes::StringShape.new(name: 'DataSafeStatus')
    DatabaseCloneConfiguration = Shapes::StructureShape.new(name: 'DatabaseCloneConfiguration')
    DatabaseConnectionStringMap = Shapes::MapShape.new(name: 'DatabaseConnectionStringMap')
    DatabaseConnectionStringProfile = Shapes::StructureShape.new(name: 'DatabaseConnectionStringProfile')
    DatabaseConnectionStringProfileList = Shapes::ListShape.new(name: 'DatabaseConnectionStringProfileList')
    DatabaseEdition = Shapes::StringShape.new(name: 'DatabaseEdition')
    DatabaseManagementStatus = Shapes::StringShape.new(name: 'DatabaseManagementStatus')
    DatabaseStandbySummary = Shapes::StructureShape.new(name: 'DatabaseStandbySummary')
    DatabaseTool = Shapes::StructureShape.new(name: 'DatabaseTool')
    DatabaseToolList = Shapes::ListShape.new(name: 'DatabaseToolList')
    DatabaseType = Shapes::StringShape.new(name: 'DatabaseType')
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
    DbWorkload = Shapes::StringShape.new(name: 'DbWorkload')
    DeleteAutonomousDatabaseBackupInput = Shapes::StructureShape.new(name: 'DeleteAutonomousDatabaseBackupInput')
    DeleteAutonomousDatabaseBackupOutput = Shapes::StructureShape.new(name: 'DeleteAutonomousDatabaseBackupOutput')
    DeleteAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'DeleteAutonomousDatabaseInput')
    DeleteAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'DeleteAutonomousDatabaseOutput')
    DeleteCloudAutonomousVmClusterInput = Shapes::StructureShape.new(name: 'DeleteCloudAutonomousVmClusterInput')
    DeleteCloudAutonomousVmClusterOutput = Shapes::StructureShape.new(name: 'DeleteCloudAutonomousVmClusterOutput')
    DeleteCloudExadataInfrastructureInput = Shapes::StructureShape.new(name: 'DeleteCloudExadataInfrastructureInput')
    DeleteCloudExadataInfrastructureOutput = Shapes::StructureShape.new(name: 'DeleteCloudExadataInfrastructureOutput')
    DeleteCloudVmClusterInput = Shapes::StructureShape.new(name: 'DeleteCloudVmClusterInput')
    DeleteCloudVmClusterOutput = Shapes::StructureShape.new(name: 'DeleteCloudVmClusterOutput')
    DeleteExadbVmClusterInput = Shapes::StructureShape.new(name: 'DeleteExadbVmClusterInput')
    DeleteExadbVmClusterOutput = Shapes::StructureShape.new(name: 'DeleteExadbVmClusterOutput')
    DeleteExascaleDbStorageVaultInput = Shapes::StructureShape.new(name: 'DeleteExascaleDbStorageVaultInput')
    DeleteExascaleDbStorageVaultOutput = Shapes::StructureShape.new(name: 'DeleteExascaleDbStorageVaultOutput')
    DeleteOdbNetworkInput = Shapes::StructureShape.new(name: 'DeleteOdbNetworkInput')
    DeleteOdbNetworkOutput = Shapes::StructureShape.new(name: 'DeleteOdbNetworkOutput')
    DeleteOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'DeleteOdbPeeringConnectionInput')
    DeleteOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'DeleteOdbPeeringConnectionOutput')
    DisassociateIamRoleFromResourceInput = Shapes::StructureShape.new(name: 'DisassociateIamRoleFromResourceInput')
    DisassociateIamRoleFromResourceInputResourceArnString = Shapes::StringShape.new(name: 'DisassociateIamRoleFromResourceInputResourceArnString')
    DisassociateIamRoleFromResourceOutput = Shapes::StructureShape.new(name: 'DisassociateIamRoleFromResourceOutput')
    DisassociateVirtualMachinesFromExadbVmClusterInput = Shapes::StructureShape.new(name: 'DisassociateVirtualMachinesFromExadbVmClusterInput')
    DisassociateVirtualMachinesFromExadbVmClusterOutput = Shapes::StructureShape.new(name: 'DisassociateVirtualMachinesFromExadbVmClusterOutput')
    DisasterRecoveryConfiguration = Shapes::StructureShape.new(name: 'DisasterRecoveryConfiguration')
    DisasterRecoveryType = Shapes::StringShape.new(name: 'DisasterRecoveryType')
    DiskRedundancy = Shapes::StringShape.new(name: 'DiskRedundancy')
    Double = Shapes::FloatShape.new(name: 'Double')
    EncryptionKeyConfiguration = Shapes::UnionShape.new(name: 'EncryptionKeyConfiguration')
    EncryptionKeyConfigurationInput = Shapes::UnionShape.new(name: 'EncryptionKeyConfigurationInput')
    EncryptionKeyProvider = Shapes::StringShape.new(name: 'EncryptionKeyProvider')
    EncryptionKeyProviderInput = Shapes::StringShape.new(name: 'EncryptionKeyProviderInput')
    EncryptionSummary = Shapes::StructureShape.new(name: 'EncryptionSummary')
    ExadataIormConfig = Shapes::StructureShape.new(name: 'ExadataIormConfig')
    ExadbVmCluster = Shapes::StructureShape.new(name: 'ExadbVmCluster')
    ExadbVmClusterList = Shapes::ListShape.new(name: 'ExadbVmClusterList')
    ExadbVmClusterStorageDetails = Shapes::StructureShape.new(name: 'ExadbVmClusterStorageDetails')
    ExadbVmClusterSummary = Shapes::StructureShape.new(name: 'ExadbVmClusterSummary')
    ExascaleDbStorageDetails = Shapes::StructureShape.new(name: 'ExascaleDbStorageDetails')
    ExascaleDbStorageVault = Shapes::StructureShape.new(name: 'ExascaleDbStorageVault')
    ExascaleDbStorageVaultList = Shapes::ListShape.new(name: 'ExascaleDbStorageVaultList')
    ExascaleDbStorageVaultSummary = Shapes::StructureShape.new(name: 'ExascaleDbStorageVaultSummary')
    ExternalIdType = Shapes::StringShape.new(name: 'ExternalIdType')
    FailoverAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'FailoverAutonomousDatabaseInput')
    FailoverAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'FailoverAutonomousDatabaseOutput')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetAutonomousDatabaseBackupInput = Shapes::StructureShape.new(name: 'GetAutonomousDatabaseBackupInput')
    GetAutonomousDatabaseBackupOutput = Shapes::StructureShape.new(name: 'GetAutonomousDatabaseBackupOutput')
    GetAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'GetAutonomousDatabaseInput')
    GetAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'GetAutonomousDatabaseOutput')
    GetAutonomousDatabaseWalletDetailsInput = Shapes::StructureShape.new(name: 'GetAutonomousDatabaseWalletDetailsInput')
    GetAutonomousDatabaseWalletDetailsOutput = Shapes::StructureShape.new(name: 'GetAutonomousDatabaseWalletDetailsOutput')
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
    GetExadbVmClusterInput = Shapes::StructureShape.new(name: 'GetExadbVmClusterInput')
    GetExadbVmClusterOutput = Shapes::StructureShape.new(name: 'GetExadbVmClusterOutput')
    GetExascaleDbStorageVaultInput = Shapes::StructureShape.new(name: 'GetExascaleDbStorageVaultInput')
    GetExascaleDbStorageVaultOutput = Shapes::StructureShape.new(name: 'GetExascaleDbStorageVaultOutput')
    GetOciOnboardingStatusInput = Shapes::StructureShape.new(name: 'GetOciOnboardingStatusInput')
    GetOciOnboardingStatusOutput = Shapes::StructureShape.new(name: 'GetOciOnboardingStatusOutput')
    GetOdbNetworkInput = Shapes::StructureShape.new(name: 'GetOdbNetworkInput')
    GetOdbNetworkOutput = Shapes::StructureShape.new(name: 'GetOdbNetworkOutput')
    GetOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'GetOdbPeeringConnectionInput')
    GetOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'GetOdbPeeringConnectionOutput')
    GiMinorVersionList = Shapes::ListShape.new(name: 'GiMinorVersionList')
    GiMinorVersionSummary = Shapes::StructureShape.new(name: 'GiMinorVersionSummary')
    GiVersionList = Shapes::ListShape.new(name: 'GiVersionList')
    GiVersionSummary = Shapes::StructureShape.new(name: 'GiVersionSummary')
    GridImageType = Shapes::StringShape.new(name: 'GridImageType')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
    HoursOfDay = Shapes::ListShape.new(name: 'HoursOfDay')
    IamRole = Shapes::StructureShape.new(name: 'IamRole')
    IamRoleList = Shapes::ListShape.new(name: 'IamRoleList')
    IamRoleStatus = Shapes::StringShape.new(name: 'IamRoleStatus')
    InitializeServiceInput = Shapes::StructureShape.new(name: 'InitializeServiceInput')
    InitializeServiceOutput = Shapes::StructureShape.new(name: 'InitializeServiceOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IormLifecycleState = Shapes::StringShape.new(name: 'IormLifecycleState')
    KmsAccess = Shapes::StructureShape.new(name: 'KmsAccess')
    KmsKeyIdOrArn = Shapes::StringShape.new(name: 'KmsKeyIdOrArn')
    LicenseModel = Shapes::StringShape.new(name: 'LicenseModel')
    ListAutonomousDatabaseBackupsInput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseBackupsInput')
    ListAutonomousDatabaseBackupsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousDatabaseBackupsInputMaxResultsInteger')
    ListAutonomousDatabaseBackupsInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousDatabaseBackupsInputNextTokenString')
    ListAutonomousDatabaseBackupsOutput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseBackupsOutput')
    ListAutonomousDatabaseCharacterSetsInput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseCharacterSetsInput')
    ListAutonomousDatabaseCharacterSetsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousDatabaseCharacterSetsInputMaxResultsInteger')
    ListAutonomousDatabaseCharacterSetsInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousDatabaseCharacterSetsInputNextTokenString')
    ListAutonomousDatabaseCharacterSetsOutput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseCharacterSetsOutput')
    ListAutonomousDatabaseClonesInput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseClonesInput')
    ListAutonomousDatabaseClonesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousDatabaseClonesInputMaxResultsInteger')
    ListAutonomousDatabaseClonesInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousDatabaseClonesInputNextTokenString')
    ListAutonomousDatabaseClonesOutput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseClonesOutput')
    ListAutonomousDatabasePeersInput = Shapes::StructureShape.new(name: 'ListAutonomousDatabasePeersInput')
    ListAutonomousDatabasePeersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousDatabasePeersInputMaxResultsInteger')
    ListAutonomousDatabasePeersInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousDatabasePeersInputNextTokenString')
    ListAutonomousDatabasePeersOutput = Shapes::StructureShape.new(name: 'ListAutonomousDatabasePeersOutput')
    ListAutonomousDatabaseVersionsInput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseVersionsInput')
    ListAutonomousDatabaseVersionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousDatabaseVersionsInputMaxResultsInteger')
    ListAutonomousDatabaseVersionsInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousDatabaseVersionsInputNextTokenString')
    ListAutonomousDatabaseVersionsOutput = Shapes::StructureShape.new(name: 'ListAutonomousDatabaseVersionsOutput')
    ListAutonomousDatabasesInput = Shapes::StructureShape.new(name: 'ListAutonomousDatabasesInput')
    ListAutonomousDatabasesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAutonomousDatabasesInputMaxResultsInteger')
    ListAutonomousDatabasesInputNextTokenString = Shapes::StringShape.new(name: 'ListAutonomousDatabasesInputNextTokenString')
    ListAutonomousDatabasesOutput = Shapes::StructureShape.new(name: 'ListAutonomousDatabasesOutput')
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
    ListDbSystemShapesInputShapeFamilyString = Shapes::StringShape.new(name: 'ListDbSystemShapesInputShapeFamilyString')
    ListDbSystemShapesOutput = Shapes::StructureShape.new(name: 'ListDbSystemShapesOutput')
    ListExadbVmClustersInput = Shapes::StructureShape.new(name: 'ListExadbVmClustersInput')
    ListExadbVmClustersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListExadbVmClustersInputMaxResultsInteger')
    ListExadbVmClustersInputNextTokenString = Shapes::StringShape.new(name: 'ListExadbVmClustersInputNextTokenString')
    ListExadbVmClustersOutput = Shapes::StructureShape.new(name: 'ListExadbVmClustersOutput')
    ListExascaleDbStorageVaultsInput = Shapes::StructureShape.new(name: 'ListExascaleDbStorageVaultsInput')
    ListExascaleDbStorageVaultsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListExascaleDbStorageVaultsInputMaxResultsInteger')
    ListExascaleDbStorageVaultsInputNextTokenString = Shapes::StringShape.new(name: 'ListExascaleDbStorageVaultsInputNextTokenString')
    ListExascaleDbStorageVaultsOutput = Shapes::StructureShape.new(name: 'ListExascaleDbStorageVaultsOutput')
    ListGiMinorVersionsInput = Shapes::StructureShape.new(name: 'ListGiMinorVersionsInput')
    ListGiMinorVersionsInputAvailabilityZoneIdString = Shapes::StringShape.new(name: 'ListGiMinorVersionsInputAvailabilityZoneIdString')
    ListGiMinorVersionsInputAvailabilityZoneString = Shapes::StringShape.new(name: 'ListGiMinorVersionsInputAvailabilityZoneString')
    ListGiMinorVersionsInputGiVersionString = Shapes::StringShape.new(name: 'ListGiMinorVersionsInputGiVersionString')
    ListGiMinorVersionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListGiMinorVersionsInputMaxResultsInteger')
    ListGiMinorVersionsInputNextTokenString = Shapes::StringShape.new(name: 'ListGiMinorVersionsInputNextTokenString')
    ListGiMinorVersionsInputShapeFamilyString = Shapes::StringShape.new(name: 'ListGiMinorVersionsInputShapeFamilyString')
    ListGiMinorVersionsOutput = Shapes::StructureShape.new(name: 'ListGiMinorVersionsOutput')
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
    LongTermBackupSchedule = Shapes::StructureShape.new(name: 'LongTermBackupSchedule')
    LongTermBackupScheduleRetentionPeriodInDaysInteger = Shapes::IntegerShape.new(name: 'LongTermBackupScheduleRetentionPeriodInDaysInteger')
    MaintenanceWindow = Shapes::StructureShape.new(name: 'MaintenanceWindow')
    MaintenanceWindowCustomActionTimeoutInMinsInteger = Shapes::IntegerShape.new(name: 'MaintenanceWindowCustomActionTimeoutInMinsInteger')
    MaintenanceWindowLeadTimeInWeeksInteger = Shapes::IntegerShape.new(name: 'MaintenanceWindowLeadTimeInWeeksInteger')
    ManagedResourceStatus = Shapes::StringShape.new(name: 'ManagedResourceStatus')
    ManagedS3BackupAccess = Shapes::StructureShape.new(name: 'ManagedS3BackupAccess')
    ManagedServices = Shapes::StructureShape.new(name: 'ManagedServices')
    Month = Shapes::StructureShape.new(name: 'Month')
    MonthName = Shapes::StringShape.new(name: 'MonthName')
    Months = Shapes::ListShape.new(name: 'Months')
    NetServicesArchitecture = Shapes::StringShape.new(name: 'NetServicesArchitecture')
    Objective = Shapes::StringShape.new(name: 'Objective')
    OciAwsIntegration = Shapes::StringShape.new(name: 'OciAwsIntegration')
    OciDnsForwardingConfig = Shapes::StructureShape.new(name: 'OciDnsForwardingConfig')
    OciDnsForwardingConfigDomainNameString = Shapes::StringShape.new(name: 'OciDnsForwardingConfigDomainNameString')
    OciDnsForwardingConfigList = Shapes::ListShape.new(name: 'OciDnsForwardingConfigList')
    OciEncryptionKeyConfiguration = Shapes::StructureShape.new(name: 'OciEncryptionKeyConfiguration')
    OciEncryptionKeyConfigurationKmsKeyIdString = Shapes::StringShape.new(name: 'OciEncryptionKeyConfigurationKmsKeyIdString')
    OciEncryptionKeyConfigurationVaultIdString = Shapes::StringShape.new(name: 'OciEncryptionKeyConfigurationVaultIdString')
    OciIamRole = Shapes::StructureShape.new(name: 'OciIamRole')
    OciIamRoleList = Shapes::ListShape.new(name: 'OciIamRoleList')
    OciIamRoleStatus = Shapes::StringShape.new(name: 'OciIamRoleStatus')
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
    OkvEncryptionKeyConfiguration = Shapes::StructureShape.new(name: 'OkvEncryptionKeyConfiguration')
    OpenMode = Shapes::StringShape.new(name: 'OpenMode')
    OperationsInsightsStatus = Shapes::StringShape.new(name: 'OperationsInsightsStatus')
    PatchingModeType = Shapes::StringShape.new(name: 'PatchingModeType')
    PeerNetworkRouteTableId = Shapes::StringShape.new(name: 'PeerNetworkRouteTableId')
    PeerNetworkRouteTableIdList = Shapes::ListShape.new(name: 'PeerNetworkRouteTableIdList')
    PeeredCidr = Shapes::StringShape.new(name: 'PeeredCidr')
    PeeredCidrList = Shapes::ListShape.new(name: 'PeeredCidrList')
    PermissionLevel = Shapes::StringShape.new(name: 'PermissionLevel')
    PointInTimeRestoreConfiguration = Shapes::StructureShape.new(name: 'PointInTimeRestoreConfiguration')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PreferenceType = Shapes::StringShape.new(name: 'PreferenceType')
    RebootAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'RebootAutonomousDatabaseInput')
    RebootAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'RebootAutonomousDatabaseOutput')
    RebootDbNodeInput = Shapes::StructureShape.new(name: 'RebootDbNodeInput')
    RebootDbNodeOutput = Shapes::StructureShape.new(name: 'RebootDbNodeOutput')
    RefreshableMode = Shapes::StringShape.new(name: 'RefreshableMode')
    RefreshableStatus = Shapes::StringShape.new(name: 'RefreshableStatus')
    RepeatCadence = Shapes::StringShape.new(name: 'RepeatCadence')
    RequestTagMap = Shapes::MapShape.new(name: 'RequestTagMap')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceDisplayName = Shapes::StringShape.new(name: 'ResourceDisplayName')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceIdOrArn = Shapes::StringShape.new(name: 'ResourceIdOrArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePoolSummary = Shapes::StructureShape.new(name: 'ResourcePoolSummary')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ResponseTagMap = Shapes::MapShape.new(name: 'ResponseTagMap')
    RestoreAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'RestoreAutonomousDatabaseInput')
    RestoreAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'RestoreAutonomousDatabaseOutput')
    RestoreFromBackupConfiguration = Shapes::StructureShape.new(name: 'RestoreFromBackupConfiguration')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Access = Shapes::StructureShape.new(name: 'S3Access')
    ScheduledOperationDetails = Shapes::StructureShape.new(name: 'ScheduledOperationDetails')
    ScheduledOperationDetailsList = Shapes::ListShape.new(name: 'ScheduledOperationDetailsList')
    SecretIdOrArn = Shapes::StringShape.new(name: 'SecretIdOrArn')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    ServiceNetworkEndpoint = Shapes::StructureShape.new(name: 'ServiceNetworkEndpoint')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShapeAttribute = Shapes::StringShape.new(name: 'ShapeAttribute')
    ShapeAttributeList = Shapes::ListShape.new(name: 'ShapeAttributeList')
    ShapeType = Shapes::StringShape.new(name: 'ShapeType')
    ShrinkAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'ShrinkAutonomousDatabaseInput')
    ShrinkAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'ShrinkAutonomousDatabaseOutput')
    SourceConfiguration = Shapes::UnionShape.new(name: 'SourceConfiguration')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StandbyAllowlistedIpsSource = Shapes::StringShape.new(name: 'StandbyAllowlistedIpsSource')
    StartAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'StartAutonomousDatabaseInput')
    StartAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'StartAutonomousDatabaseOutput')
    StartDbNodeInput = Shapes::StructureShape.new(name: 'StartDbNodeInput')
    StartDbNodeOutput = Shapes::StructureShape.new(name: 'StartDbNodeOutput')
    StopAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'StopAutonomousDatabaseInput')
    StopAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'StopAutonomousDatabaseOutput')
    StopDbNodeInput = Shapes::StructureShape.new(name: 'StopDbNodeInput')
    StopDbNodeOutput = Shapes::StructureShape.new(name: 'StopDbNodeOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StsAccess = Shapes::StructureShape.new(name: 'StsAccess')
    SubscriptionError = Shapes::StructureShape.new(name: 'SubscriptionError')
    SubscriptionErrors = Shapes::ListShape.new(name: 'SubscriptionErrors')
    SupportedAwsIntegration = Shapes::StringShape.new(name: 'SupportedAwsIntegration')
    SwitchoverAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'SwitchoverAutonomousDatabaseInput')
    SwitchoverAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'SwitchoverAutonomousDatabaseOutput')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    SystemVersionList = Shapes::ListShape.new(name: 'SystemVersionList')
    SystemVersionSummary = Shapes::StructureShape.new(name: 'SystemVersionSummary')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TransportableTablespace = Shapes::StructureShape.new(name: 'TransportableTablespace')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAction = Shapes::StringShape.new(name: 'UpdateAction')
    UpdateAutonomousDatabaseBackupInput = Shapes::StructureShape.new(name: 'UpdateAutonomousDatabaseBackupInput')
    UpdateAutonomousDatabaseBackupInputRetentionPeriodInDaysInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseBackupInputRetentionPeriodInDaysInteger')
    UpdateAutonomousDatabaseBackupOutput = Shapes::StructureShape.new(name: 'UpdateAutonomousDatabaseBackupOutput')
    UpdateAutonomousDatabaseInput = Shapes::StructureShape.new(name: 'UpdateAutonomousDatabaseInput')
    UpdateAutonomousDatabaseInputAdminPasswordString = Shapes::StringShape.new(name: 'UpdateAutonomousDatabaseInputAdminPasswordString')
    UpdateAutonomousDatabaseInputAutoRefreshFrequencyInSecondsInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputAutoRefreshFrequencyInSecondsInteger')
    UpdateAutonomousDatabaseInputAutoRefreshPointLagInSecondsInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputAutoRefreshPointLagInSecondsInteger')
    UpdateAutonomousDatabaseInputBackupRetentionPeriodInDaysInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputBackupRetentionPeriodInDaysInteger')
    UpdateAutonomousDatabaseInputByolComputeCountLimitDouble = Shapes::FloatShape.new(name: 'UpdateAutonomousDatabaseInputByolComputeCountLimitDouble')
    UpdateAutonomousDatabaseInputComputeCountDouble = Shapes::FloatShape.new(name: 'UpdateAutonomousDatabaseInputComputeCountDouble')
    UpdateAutonomousDatabaseInputCpuCoreCountInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputCpuCoreCountInteger')
    UpdateAutonomousDatabaseInputDataStorageSizeInGBsInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputDataStorageSizeInGBsInteger')
    UpdateAutonomousDatabaseInputDataStorageSizeInTBsInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputDataStorageSizeInTBsInteger')
    UpdateAutonomousDatabaseInputDbNameString = Shapes::StringShape.new(name: 'UpdateAutonomousDatabaseInputDbNameString')
    UpdateAutonomousDatabaseInputDbVersionString = Shapes::StringShape.new(name: 'UpdateAutonomousDatabaseInputDbVersionString')
    UpdateAutonomousDatabaseInputLocalAdgAutoFailoverMaxDataLossLimitInteger = Shapes::IntegerShape.new(name: 'UpdateAutonomousDatabaseInputLocalAdgAutoFailoverMaxDataLossLimitInteger')
    UpdateAutonomousDatabaseOutput = Shapes::StructureShape.new(name: 'UpdateAutonomousDatabaseOutput')
    UpdateCloudExadataInfrastructureInput = Shapes::StructureShape.new(name: 'UpdateCloudExadataInfrastructureInput')
    UpdateCloudExadataInfrastructureOutput = Shapes::StructureShape.new(name: 'UpdateCloudExadataInfrastructureOutput')
    UpdateExadbVmClusterInput = Shapes::StructureShape.new(name: 'UpdateExadbVmClusterInput')
    UpdateExadbVmClusterInputEnabledEcpuCountInteger = Shapes::IntegerShape.new(name: 'UpdateExadbVmClusterInputEnabledEcpuCountInteger')
    UpdateExadbVmClusterInputGridImageIdString = Shapes::StringShape.new(name: 'UpdateExadbVmClusterInputGridImageIdString')
    UpdateExadbVmClusterInputSystemVersionString = Shapes::StringShape.new(name: 'UpdateExadbVmClusterInputSystemVersionString')
    UpdateExadbVmClusterInputTotalEcpuCountInteger = Shapes::IntegerShape.new(name: 'UpdateExadbVmClusterInputTotalEcpuCountInteger')
    UpdateExadbVmClusterInputVmFileSystemStorageTotalSizeInGBsInteger = Shapes::IntegerShape.new(name: 'UpdateExadbVmClusterInputVmFileSystemStorageTotalSizeInGBsInteger')
    UpdateExadbVmClusterOutput = Shapes::StructureShape.new(name: 'UpdateExadbVmClusterOutput')
    UpdateExascaleDbStorageVaultInput = Shapes::StructureShape.new(name: 'UpdateExascaleDbStorageVaultInput')
    UpdateExascaleDbStorageVaultInputAdditionalFlashCacheInPercentInteger = Shapes::IntegerShape.new(name: 'UpdateExascaleDbStorageVaultInputAdditionalFlashCacheInPercentInteger')
    UpdateExascaleDbStorageVaultInputAutoscaleLimitInGBsInteger = Shapes::IntegerShape.new(name: 'UpdateExascaleDbStorageVaultInputAutoscaleLimitInGBsInteger')
    UpdateExascaleDbStorageVaultInputDescriptionString = Shapes::StringShape.new(name: 'UpdateExascaleDbStorageVaultInputDescriptionString')
    UpdateExascaleDbStorageVaultInputHighCapacityDatabaseStorageTotalSizeInGBsInteger = Shapes::IntegerShape.new(name: 'UpdateExascaleDbStorageVaultInputHighCapacityDatabaseStorageTotalSizeInGBsInteger')
    UpdateExascaleDbStorageVaultOutput = Shapes::StructureShape.new(name: 'UpdateExascaleDbStorageVaultOutput')
    UpdateOdbNetworkInput = Shapes::StructureShape.new(name: 'UpdateOdbNetworkInput')
    UpdateOdbNetworkOutput = Shapes::StructureShape.new(name: 'UpdateOdbNetworkOutput')
    UpdateOdbPeeringConnectionInput = Shapes::StructureShape.new(name: 'UpdateOdbPeeringConnectionInput')
    UpdateOdbPeeringConnectionOutput = Shapes::StructureShape.new(name: 'UpdateOdbPeeringConnectionOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcEndpointType = Shapes::StringShape.new(name: 'VpcEndpointType')
    WalletPasswordSource = Shapes::StringShape.new(name: 'WalletPasswordSource')
    WalletPasswordSourceConfiguration = Shapes::UnionShape.new(name: 'WalletPasswordSourceConfiguration')
    WalletPasswordSourceConfigurationInput = Shapes::UnionShape.new(name: 'WalletPasswordSourceConfigurationInput')
    WalletPasswordSourceSummary = Shapes::StructureShape.new(name: 'WalletPasswordSourceSummary')
    WalletType = Shapes::StringShape.new(name: 'WalletType')
    WeeksOfMonth = Shapes::ListShape.new(name: 'WeeksOfMonth')
    ZeroEtlAccess = Shapes::StructureShape.new(name: 'ZeroEtlAccess')
    characterSetType = Shapes::StringShape.new(name: 'characterSetType')

    AcceptMarketplaceRegistrationInput.add_member(:marketplace_registration_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "marketplaceRegistrationToken"))
    AcceptMarketplaceRegistrationInput.struct_class = Types::AcceptMarketplaceRegistrationInput

    AcceptMarketplaceRegistrationOutput.struct_class = Types::AcceptMarketplaceRegistrationOutput

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdminPasswordSourceConfiguration.add_member(:customer_managed_aws_secret, Shapes::ShapeRef.new(shape: CustomerManagedAwsSecretConfiguration, location_name: "customerManagedAwsSecret"))
    AdminPasswordSourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AdminPasswordSourceConfiguration.add_member_subclass(:customer_managed_aws_secret, Types::AdminPasswordSourceConfiguration::CustomerManagedAwsSecret)
    AdminPasswordSourceConfiguration.add_member_subclass(:unknown, Types::AdminPasswordSourceConfiguration::Unknown)
    AdminPasswordSourceConfiguration.struct_class = Types::AdminPasswordSourceConfiguration

    AdminPasswordSourceConfigurationInput.add_member(:customer_managed_aws_secret, Shapes::ShapeRef.new(shape: CustomerManagedAwsSecretConfigurationInput, location_name: "customerManagedAwsSecret"))
    AdminPasswordSourceConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AdminPasswordSourceConfigurationInput.add_member_subclass(:customer_managed_aws_secret, Types::AdminPasswordSourceConfigurationInput::CustomerManagedAwsSecret)
    AdminPasswordSourceConfigurationInput.add_member_subclass(:unknown, Types::AdminPasswordSourceConfigurationInput::Unknown)
    AdminPasswordSourceConfigurationInput.struct_class = Types::AdminPasswordSourceConfigurationInput

    AdminPasswordSourceSummary.add_member(:admin_password_source, Shapes::ShapeRef.new(shape: AdminPasswordSource, location_name: "adminPasswordSource"))
    AdminPasswordSourceSummary.add_member(:admin_password_source_configuration, Shapes::ShapeRef.new(shape: AdminPasswordSourceConfiguration, location_name: "adminPasswordSourceConfiguration"))
    AdminPasswordSourceSummary.struct_class = Types::AdminPasswordSourceSummary

    AssociateIamRoleToResourceInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "iamRoleArn"))
    AssociateIamRoleToResourceInput.add_member(:aws_integration, Shapes::ShapeRef.new(shape: SupportedAwsIntegration, required: true, location_name: "awsIntegration"))
    AssociateIamRoleToResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AssociateIamRoleToResourceInputResourceArnString, required: true, location_name: "resourceArn"))
    AssociateIamRoleToResourceInput.struct_class = Types::AssociateIamRoleToResourceInput

    AssociateIamRoleToResourceOutput.struct_class = Types::AssociateIamRoleToResourceOutput

    AssociateVirtualMachinesToExadbVmClusterInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    AssociateVirtualMachinesToExadbVmClusterInput.add_member(:desired_node_count, Shapes::ShapeRef.new(shape: AssociateVirtualMachinesToExadbVmClusterInputDesiredNodeCountInteger, required: true, location_name: "desiredNodeCount"))
    AssociateVirtualMachinesToExadbVmClusterInput.struct_class = Types::AssociateVirtualMachinesToExadbVmClusterInput

    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AssociateVirtualMachinesToExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exadbVmClusterId"))
    AssociateVirtualMachinesToExadbVmClusterOutput.struct_class = Types::AssociateVirtualMachinesToExadbVmClusterOutput

    AutonomousDatabase.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "autonomousDatabaseId"))
    AutonomousDatabase.add_member(:autonomous_database_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "autonomousDatabaseArn"))
    AutonomousDatabase.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    AutonomousDatabase.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    AutonomousDatabase.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    AutonomousDatabase.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    AutonomousDatabase.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    AutonomousDatabase.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "dbName"))
    AutonomousDatabase.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    AutonomousDatabase.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    AutonomousDatabase.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AutonomousDatabase.add_member(:database_type, Shapes::ShapeRef.new(shape: DatabaseType, location_name: "databaseType"))
    AutonomousDatabase.add_member(:db_version, Shapes::ShapeRef.new(shape: String, location_name: "dbVersion"))
    AutonomousDatabase.add_member(:db_workload, Shapes::ShapeRef.new(shape: DbWorkload, location_name: "dbWorkload"))
    AutonomousDatabase.add_member(:character_set, Shapes::ShapeRef.new(shape: String, location_name: "characterSet"))
    AutonomousDatabase.add_member(:ncharacter_set, Shapes::ShapeRef.new(shape: String, location_name: "ncharacterSet"))
    AutonomousDatabase.add_member(:database_edition, Shapes::ShapeRef.new(shape: DatabaseEdition, location_name: "databaseEdition"))
    AutonomousDatabase.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    AutonomousDatabase.add_member(:open_mode, Shapes::ShapeRef.new(shape: OpenMode, location_name: "openMode"))
    AutonomousDatabase.add_member(:permission_level, Shapes::ShapeRef.new(shape: PermissionLevel, location_name: "permissionLevel"))
    AutonomousDatabase.add_member(:is_mtls_connection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsConnectionRequired"))
    AutonomousDatabase.add_member(:autonomous_maintenance_schedule_type, Shapes::ShapeRef.new(shape: AutonomousMaintenanceScheduleType, location_name: "autonomousMaintenanceScheduleType"))
    AutonomousDatabase.add_member(:net_services_architecture, Shapes::ShapeRef.new(shape: NetServicesArchitecture, location_name: "netServicesArchitecture"))
    AutonomousDatabase.add_member(:available_upgrade_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "availableUpgradeVersions"))
    AutonomousDatabase.add_member(:byol_compute_count_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "byolComputeCountLimit"))
    AutonomousDatabase.add_member(:connection_string_details, Shapes::ShapeRef.new(shape: AutonomousDatabaseConnectionStrings, location_name: "connectionStringDetails"))
    AutonomousDatabase.add_member(:service_console_url, Shapes::ShapeRef.new(shape: String, location_name: "serviceConsoleUrl"))
    AutonomousDatabase.add_member(:sql_web_developer_url, Shapes::ShapeRef.new(shape: String, location_name: "sqlWebDeveloperUrl"))
    AutonomousDatabase.add_member(:customer_contacts, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContacts"))
    AutonomousDatabase.add_member(:apex_details, Shapes::ShapeRef.new(shape: AutonomousDatabaseApex, location_name: "apexDetails"))
    AutonomousDatabase.add_member(:standby_db, Shapes::ShapeRef.new(shape: DatabaseStandbySummary, location_name: "standbyDb"))
    AutonomousDatabase.add_member(:local_standby_db, Shapes::ShapeRef.new(shape: DatabaseStandbySummary, location_name: "localStandbyDb"))
    AutonomousDatabase.add_member(:data_safe_status, Shapes::ShapeRef.new(shape: DataSafeStatus, location_name: "dataSafeStatus"))
    AutonomousDatabase.add_member(:database_management_status, Shapes::ShapeRef.new(shape: DatabaseManagementStatus, location_name: "databaseManagementStatus"))
    AutonomousDatabase.add_member(:operations_insights_status, Shapes::ShapeRef.new(shape: OperationsInsightsStatus, location_name: "operationsInsightsStatus"))
    AutonomousDatabase.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    AutonomousDatabase.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    AutonomousDatabase.add_member(:maintenance_target_component, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceTargetComponent"))
    AutonomousDatabase.add_member(:connection_urls, Shapes::ShapeRef.new(shape: AutonomousDatabaseConnectionUrls, location_name: "connectionUrls"))
    AutonomousDatabase.add_member(:db_tools_details, Shapes::ShapeRef.new(shape: DatabaseToolList, location_name: "dbToolsDetails"))
    AutonomousDatabase.add_member(:scheduled_operations, Shapes::ShapeRef.new(shape: ScheduledOperationDetailsList, location_name: "scheduledOperations"))
    AutonomousDatabase.add_member(:resource_pool_leader_id, Shapes::ShapeRef.new(shape: String, location_name: "resourcePoolLeaderId"))
    AutonomousDatabase.add_member(:compute_count, Shapes::ShapeRef.new(shape: Float, location_name: "computeCount"))
    AutonomousDatabase.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    AutonomousDatabase.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    AutonomousDatabase.add_member(:memory_per_oracle_compute_unit_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memoryPerOracleComputeUnitInGBs"))
    AutonomousDatabase.add_member(:provisionable_cpus, Shapes::ShapeRef.new(shape: IntegerList, location_name: "provisionableCpus"))
    AutonomousDatabase.add_member(:is_auto_scaling_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingEnabled"))
    AutonomousDatabase.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    AutonomousDatabase.add_member(:data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dataStorageSizeInGBs"))
    AutonomousDatabase.add_member(:used_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "usedDataStorageSizeInTBs"))
    AutonomousDatabase.add_member(:used_data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "usedDataStorageSizeInGBs"))
    AutonomousDatabase.add_member(:actual_used_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "actualUsedDataStorageSizeInTBs"))
    AutonomousDatabase.add_member(:allocated_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "allocatedStorageSizeInTBs"))
    AutonomousDatabase.add_member(:in_memory_area_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "inMemoryAreaInGBs"))
    AutonomousDatabase.add_member(:is_auto_scaling_for_storage_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingForStorageEnabled"))
    AutonomousDatabase.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "odbNetworkId"))
    AutonomousDatabase.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    AutonomousDatabase.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpoint"))
    AutonomousDatabase.add_member(:private_endpoint_ip, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointIp"))
    AutonomousDatabase.add_member(:private_endpoint_label, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointLabel"))
    AutonomousDatabase.add_member(:allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "allowlistedIps"))
    AutonomousDatabase.add_member(:standby_allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "standbyAllowlistedIps"))
    AutonomousDatabase.add_member(:standby_allowlisted_ips_source, Shapes::ShapeRef.new(shape: StandbyAllowlistedIpsSource, location_name: "standbyAllowlistedIpsSource"))
    AutonomousDatabase.add_member(:is_local_data_guard_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalDataGuardEnabled"))
    AutonomousDatabase.add_member(:is_remote_data_guard_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRemoteDataGuardEnabled"))
    AutonomousDatabase.add_member(:local_disaster_recovery_type, Shapes::ShapeRef.new(shape: DisasterRecoveryType, location_name: "localDisasterRecoveryType"))
    AutonomousDatabase.add_member(:role, Shapes::ShapeRef.new(shape: DataGuardRole, location_name: "role"))
    AutonomousDatabase.add_member(:peer_db_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "peerDbIds"))
    AutonomousDatabase.add_member(:failed_data_recovery_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "failedDataRecoveryInSeconds"))
    AutonomousDatabase.add_member(:local_adg_auto_failover_max_data_loss_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "localAdgAutoFailoverMaxDataLossLimit"))
    AutonomousDatabase.add_member(:remote_disaster_recovery_configuration, Shapes::ShapeRef.new(shape: DisasterRecoveryConfiguration, location_name: "remoteDisasterRecoveryConfiguration"))
    AutonomousDatabase.add_member(:is_refreshable_clone, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRefreshableClone"))
    AutonomousDatabase.add_member(:refreshable_mode, Shapes::ShapeRef.new(shape: RefreshableMode, location_name: "refreshableMode"))
    AutonomousDatabase.add_member(:refreshable_status, Shapes::ShapeRef.new(shape: RefreshableStatus, location_name: "refreshableStatus"))
    AutonomousDatabase.add_member(:auto_refresh_frequency_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "autoRefreshFrequencyInSeconds"))
    AutonomousDatabase.add_member(:auto_refresh_point_lag_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "autoRefreshPointLagInSeconds"))
    AutonomousDatabase.add_member(:is_reconnect_clone_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isReconnectCloneEnabled"))
    AutonomousDatabase.add_member(:clone_table_space_list, Shapes::ShapeRef.new(shape: IntegerList, location_name: "cloneTableSpaceList"))
    AutonomousDatabase.add_member(:backup_retention_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "backupRetentionPeriodInDays"))
    AutonomousDatabase.add_member(:long_term_backup_schedule, Shapes::ShapeRef.new(shape: LongTermBackupSchedule, location_name: "longTermBackupSchedule"))
    AutonomousDatabase.add_member(:is_backup_retention_locked, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBackupRetentionLocked"))
    AutonomousDatabase.add_member(:total_backup_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Double, location_name: "totalBackupStorageSizeInGBs"))
    AutonomousDatabase.add_member(:resource_pool_summary, Shapes::ShapeRef.new(shape: ResourcePoolSummary, location_name: "resourcePoolSummary"))
    AutonomousDatabase.add_member(:encryption_summary, Shapes::ShapeRef.new(shape: EncryptionSummary, location_name: "encryptionSummary"))
    AutonomousDatabase.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    AutonomousDatabase.add_member(:time_of_last_backup, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastBackup"))
    AutonomousDatabase.add_member(:time_maintenance_begin, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeMaintenanceBegin"))
    AutonomousDatabase.add_member(:time_maintenance_end, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeMaintenanceEnd"))
    AutonomousDatabase.add_member(:time_local_data_guard_enabled, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeLocalDataGuardEnabled"))
    AutonomousDatabase.add_member(:time_data_guard_role_changed, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDataGuardRoleChanged"))
    AutonomousDatabase.add_member(:time_of_last_switchover, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastSwitchover"))
    AutonomousDatabase.add_member(:time_of_last_failover, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastFailover"))
    AutonomousDatabase.add_member(:time_of_last_refresh, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastRefresh"))
    AutonomousDatabase.add_member(:time_of_last_refresh_point, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastRefreshPoint"))
    AutonomousDatabase.add_member(:time_of_next_refresh, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfNextRefresh"))
    AutonomousDatabase.add_member(:time_of_auto_refresh_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfAutoRefreshStart"))
    AutonomousDatabase.add_member(:time_deletion_of_free_autonomous_database, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDeletionOfFreeAutonomousDatabase"))
    AutonomousDatabase.add_member(:time_reclamation_of_free_autonomous_database, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeReclamationOfFreeAutonomousDatabase"))
    AutonomousDatabase.add_member(:time_disaster_recovery_role_changed, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDisasterRecoveryRoleChanged"))
    AutonomousDatabase.add_member(:time_until_reconnect_clone_enabled, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeUntilReconnectCloneEnabled"))
    AutonomousDatabase.add_member(:next_long_term_backup_time_stamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "nextLongTermBackupTimeStamp"))
    AutonomousDatabase.add_member(:time_undeleted, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeUndeleted"))
    AutonomousDatabase.add_member(:admin_password_source_summary, Shapes::ShapeRef.new(shape: AdminPasswordSourceSummary, location_name: "adminPasswordSourceSummary"))
    AutonomousDatabase.struct_class = Types::AutonomousDatabase

    AutonomousDatabaseApex.add_member(:apex_version, Shapes::ShapeRef.new(shape: String, location_name: "apexVersion"))
    AutonomousDatabaseApex.add_member(:ords_version, Shapes::ShapeRef.new(shape: String, location_name: "ordsVersion"))
    AutonomousDatabaseApex.struct_class = Types::AutonomousDatabaseApex

    AutonomousDatabaseBackup.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "autonomousDatabaseBackupId"))
    AutonomousDatabaseBackup.add_member(:autonomous_database_backup_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "autonomousDatabaseBackupArn"))
    AutonomousDatabaseBackup.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "autonomousDatabaseId"))
    AutonomousDatabaseBackup.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    AutonomousDatabaseBackup.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    AutonomousDatabaseBackup.add_member(:db_version, Shapes::ShapeRef.new(shape: String, location_name: "dbVersion"))
    AutonomousDatabaseBackup.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupStatus, location_name: "status"))
    AutonomousDatabaseBackup.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AutonomousDatabaseBackup.add_member(:is_automatic, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutomatic"))
    AutonomousDatabaseBackup.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "retentionPeriodInDays"))
    AutonomousDatabaseBackup.add_member(:size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "sizeInTBs"))
    AutonomousDatabaseBackup.add_member(:time_available_till, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeAvailableTill"))
    AutonomousDatabaseBackup.add_member(:time_started, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeStarted"))
    AutonomousDatabaseBackup.add_member(:time_ended, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeEnded"))
    AutonomousDatabaseBackup.add_member(:type, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupType, location_name: "type"))
    AutonomousDatabaseBackup.struct_class = Types::AutonomousDatabaseBackup

    AutonomousDatabaseBackupList.member = Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupSummary)

    AutonomousDatabaseBackupSummary.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "autonomousDatabaseBackupId"))
    AutonomousDatabaseBackupSummary.add_member(:autonomous_database_backup_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "autonomousDatabaseBackupArn"))
    AutonomousDatabaseBackupSummary.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "autonomousDatabaseId"))
    AutonomousDatabaseBackupSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    AutonomousDatabaseBackupSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    AutonomousDatabaseBackupSummary.add_member(:db_version, Shapes::ShapeRef.new(shape: String, location_name: "dbVersion"))
    AutonomousDatabaseBackupSummary.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupStatus, location_name: "status"))
    AutonomousDatabaseBackupSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AutonomousDatabaseBackupSummary.add_member(:is_automatic, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutomatic"))
    AutonomousDatabaseBackupSummary.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "retentionPeriodInDays"))
    AutonomousDatabaseBackupSummary.add_member(:size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "sizeInTBs"))
    AutonomousDatabaseBackupSummary.add_member(:time_available_till, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeAvailableTill"))
    AutonomousDatabaseBackupSummary.add_member(:time_started, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeStarted"))
    AutonomousDatabaseBackupSummary.add_member(:time_ended, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeEnded"))
    AutonomousDatabaseBackupSummary.add_member(:type, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupType, location_name: "type"))
    AutonomousDatabaseBackupSummary.struct_class = Types::AutonomousDatabaseBackupSummary

    AutonomousDatabaseCharacterSetList.member = Shapes::ShapeRef.new(shape: AutonomousDatabaseCharacterSetSummary)

    AutonomousDatabaseCharacterSetSummary.add_member(:character_set, Shapes::ShapeRef.new(shape: String, location_name: "characterSet"))
    AutonomousDatabaseCharacterSetSummary.struct_class = Types::AutonomousDatabaseCharacterSetSummary

    AutonomousDatabaseConnectionStrings.add_member(:all_connection_strings, Shapes::ShapeRef.new(shape: DatabaseConnectionStringMap, location_name: "allConnectionStrings"))
    AutonomousDatabaseConnectionStrings.add_member(:dedicated, Shapes::ShapeRef.new(shape: String, location_name: "dedicated"))
    AutonomousDatabaseConnectionStrings.add_member(:high, Shapes::ShapeRef.new(shape: String, location_name: "high"))
    AutonomousDatabaseConnectionStrings.add_member(:medium, Shapes::ShapeRef.new(shape: String, location_name: "medium"))
    AutonomousDatabaseConnectionStrings.add_member(:low, Shapes::ShapeRef.new(shape: String, location_name: "low"))
    AutonomousDatabaseConnectionStrings.add_member(:profiles, Shapes::ShapeRef.new(shape: DatabaseConnectionStringProfileList, location_name: "profiles"))
    AutonomousDatabaseConnectionStrings.struct_class = Types::AutonomousDatabaseConnectionStrings

    AutonomousDatabaseConnectionUrls.add_member(:apex_url, Shapes::ShapeRef.new(shape: String, location_name: "apexUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:database_transforms_url, Shapes::ShapeRef.new(shape: String, location_name: "databaseTransformsUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:graph_studio_url, Shapes::ShapeRef.new(shape: String, location_name: "graphStudioUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:machine_learning_notebook_url, Shapes::ShapeRef.new(shape: String, location_name: "machineLearningNotebookUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:machine_learning_user_management_url, Shapes::ShapeRef.new(shape: String, location_name: "machineLearningUserManagementUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:mongo_db_url, Shapes::ShapeRef.new(shape: String, location_name: "mongoDbUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:ords_url, Shapes::ShapeRef.new(shape: String, location_name: "ordsUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:spatial_studio_url, Shapes::ShapeRef.new(shape: String, location_name: "spatialStudioUrl"))
    AutonomousDatabaseConnectionUrls.add_member(:sql_dev_web_url, Shapes::ShapeRef.new(shape: String, location_name: "sqlDevWebUrl"))
    AutonomousDatabaseConnectionUrls.struct_class = Types::AutonomousDatabaseConnectionUrls

    AutonomousDatabaseList.member = Shapes::ShapeRef.new(shape: AutonomousDatabaseSummary)

    AutonomousDatabasePeerList.member = Shapes::ShapeRef.new(shape: AutonomousDatabasePeerSummary)

    AutonomousDatabasePeerSummary.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "autonomousDatabaseId"))
    AutonomousDatabasePeerSummary.add_member(:autonomous_database_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "autonomousDatabaseArn"))
    AutonomousDatabasePeerSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    AutonomousDatabasePeerSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    AutonomousDatabasePeerSummary.struct_class = Types::AutonomousDatabasePeerSummary

    AutonomousDatabaseSummary.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "autonomousDatabaseId"))
    AutonomousDatabaseSummary.add_member(:autonomous_database_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "autonomousDatabaseArn"))
    AutonomousDatabaseSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    AutonomousDatabaseSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    AutonomousDatabaseSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    AutonomousDatabaseSummary.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    AutonomousDatabaseSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    AutonomousDatabaseSummary.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "dbName"))
    AutonomousDatabaseSummary.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    AutonomousDatabaseSummary.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    AutonomousDatabaseSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AutonomousDatabaseSummary.add_member(:database_type, Shapes::ShapeRef.new(shape: DatabaseType, location_name: "databaseType"))
    AutonomousDatabaseSummary.add_member(:db_version, Shapes::ShapeRef.new(shape: String, location_name: "dbVersion"))
    AutonomousDatabaseSummary.add_member(:db_workload, Shapes::ShapeRef.new(shape: DbWorkload, location_name: "dbWorkload"))
    AutonomousDatabaseSummary.add_member(:character_set, Shapes::ShapeRef.new(shape: String, location_name: "characterSet"))
    AutonomousDatabaseSummary.add_member(:ncharacter_set, Shapes::ShapeRef.new(shape: String, location_name: "ncharacterSet"))
    AutonomousDatabaseSummary.add_member(:database_edition, Shapes::ShapeRef.new(shape: DatabaseEdition, location_name: "databaseEdition"))
    AutonomousDatabaseSummary.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    AutonomousDatabaseSummary.add_member(:open_mode, Shapes::ShapeRef.new(shape: OpenMode, location_name: "openMode"))
    AutonomousDatabaseSummary.add_member(:permission_level, Shapes::ShapeRef.new(shape: PermissionLevel, location_name: "permissionLevel"))
    AutonomousDatabaseSummary.add_member(:is_mtls_connection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsConnectionRequired"))
    AutonomousDatabaseSummary.add_member(:autonomous_maintenance_schedule_type, Shapes::ShapeRef.new(shape: AutonomousMaintenanceScheduleType, location_name: "autonomousMaintenanceScheduleType"))
    AutonomousDatabaseSummary.add_member(:net_services_architecture, Shapes::ShapeRef.new(shape: NetServicesArchitecture, location_name: "netServicesArchitecture"))
    AutonomousDatabaseSummary.add_member(:available_upgrade_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "availableUpgradeVersions"))
    AutonomousDatabaseSummary.add_member(:byol_compute_count_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "byolComputeCountLimit"))
    AutonomousDatabaseSummary.add_member(:connection_string_details, Shapes::ShapeRef.new(shape: AutonomousDatabaseConnectionStrings, location_name: "connectionStringDetails"))
    AutonomousDatabaseSummary.add_member(:service_console_url, Shapes::ShapeRef.new(shape: String, location_name: "serviceConsoleUrl"))
    AutonomousDatabaseSummary.add_member(:sql_web_developer_url, Shapes::ShapeRef.new(shape: String, location_name: "sqlWebDeveloperUrl"))
    AutonomousDatabaseSummary.add_member(:customer_contacts, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContacts"))
    AutonomousDatabaseSummary.add_member(:apex_details, Shapes::ShapeRef.new(shape: AutonomousDatabaseApex, location_name: "apexDetails"))
    AutonomousDatabaseSummary.add_member(:standby_db, Shapes::ShapeRef.new(shape: DatabaseStandbySummary, location_name: "standbyDb"))
    AutonomousDatabaseSummary.add_member(:local_standby_db, Shapes::ShapeRef.new(shape: DatabaseStandbySummary, location_name: "localStandbyDb"))
    AutonomousDatabaseSummary.add_member(:data_safe_status, Shapes::ShapeRef.new(shape: DataSafeStatus, location_name: "dataSafeStatus"))
    AutonomousDatabaseSummary.add_member(:database_management_status, Shapes::ShapeRef.new(shape: DatabaseManagementStatus, location_name: "databaseManagementStatus"))
    AutonomousDatabaseSummary.add_member(:operations_insights_status, Shapes::ShapeRef.new(shape: OperationsInsightsStatus, location_name: "operationsInsightsStatus"))
    AutonomousDatabaseSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    AutonomousDatabaseSummary.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    AutonomousDatabaseSummary.add_member(:maintenance_target_component, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceTargetComponent"))
    AutonomousDatabaseSummary.add_member(:connection_urls, Shapes::ShapeRef.new(shape: AutonomousDatabaseConnectionUrls, location_name: "connectionUrls"))
    AutonomousDatabaseSummary.add_member(:db_tools_details, Shapes::ShapeRef.new(shape: DatabaseToolList, location_name: "dbToolsDetails"))
    AutonomousDatabaseSummary.add_member(:scheduled_operations, Shapes::ShapeRef.new(shape: ScheduledOperationDetailsList, location_name: "scheduledOperations"))
    AutonomousDatabaseSummary.add_member(:resource_pool_leader_id, Shapes::ShapeRef.new(shape: String, location_name: "resourcePoolLeaderId"))
    AutonomousDatabaseSummary.add_member(:compute_count, Shapes::ShapeRef.new(shape: Float, location_name: "computeCount"))
    AutonomousDatabaseSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    AutonomousDatabaseSummary.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "cpuCoreCount"))
    AutonomousDatabaseSummary.add_member(:memory_per_oracle_compute_unit_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memoryPerOracleComputeUnitInGBs"))
    AutonomousDatabaseSummary.add_member(:provisionable_cpus, Shapes::ShapeRef.new(shape: IntegerList, location_name: "provisionableCpus"))
    AutonomousDatabaseSummary.add_member(:is_auto_scaling_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingEnabled"))
    AutonomousDatabaseSummary.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "dataStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "dataStorageSizeInGBs"))
    AutonomousDatabaseSummary.add_member(:used_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "usedDataStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:used_data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "usedDataStorageSizeInGBs"))
    AutonomousDatabaseSummary.add_member(:actual_used_data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "actualUsedDataStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:allocated_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "allocatedStorageSizeInTBs"))
    AutonomousDatabaseSummary.add_member(:in_memory_area_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "inMemoryAreaInGBs"))
    AutonomousDatabaseSummary.add_member(:is_auto_scaling_for_storage_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingForStorageEnabled"))
    AutonomousDatabaseSummary.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "odbNetworkId"))
    AutonomousDatabaseSummary.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    AutonomousDatabaseSummary.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpoint"))
    AutonomousDatabaseSummary.add_member(:private_endpoint_ip, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointIp"))
    AutonomousDatabaseSummary.add_member(:private_endpoint_label, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointLabel"))
    AutonomousDatabaseSummary.add_member(:allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "allowlistedIps"))
    AutonomousDatabaseSummary.add_member(:standby_allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "standbyAllowlistedIps"))
    AutonomousDatabaseSummary.add_member(:standby_allowlisted_ips_source, Shapes::ShapeRef.new(shape: StandbyAllowlistedIpsSource, location_name: "standbyAllowlistedIpsSource"))
    AutonomousDatabaseSummary.add_member(:is_local_data_guard_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalDataGuardEnabled"))
    AutonomousDatabaseSummary.add_member(:is_remote_data_guard_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRemoteDataGuardEnabled"))
    AutonomousDatabaseSummary.add_member(:local_disaster_recovery_type, Shapes::ShapeRef.new(shape: DisasterRecoveryType, location_name: "localDisasterRecoveryType"))
    AutonomousDatabaseSummary.add_member(:role, Shapes::ShapeRef.new(shape: DataGuardRole, location_name: "role"))
    AutonomousDatabaseSummary.add_member(:peer_db_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "peerDbIds"))
    AutonomousDatabaseSummary.add_member(:failed_data_recovery_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "failedDataRecoveryInSeconds"))
    AutonomousDatabaseSummary.add_member(:local_adg_auto_failover_max_data_loss_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "localAdgAutoFailoverMaxDataLossLimit"))
    AutonomousDatabaseSummary.add_member(:remote_disaster_recovery_configuration, Shapes::ShapeRef.new(shape: DisasterRecoveryConfiguration, location_name: "remoteDisasterRecoveryConfiguration"))
    AutonomousDatabaseSummary.add_member(:is_refreshable_clone, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRefreshableClone"))
    AutonomousDatabaseSummary.add_member(:refreshable_mode, Shapes::ShapeRef.new(shape: RefreshableMode, location_name: "refreshableMode"))
    AutonomousDatabaseSummary.add_member(:refreshable_status, Shapes::ShapeRef.new(shape: RefreshableStatus, location_name: "refreshableStatus"))
    AutonomousDatabaseSummary.add_member(:auto_refresh_frequency_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "autoRefreshFrequencyInSeconds"))
    AutonomousDatabaseSummary.add_member(:auto_refresh_point_lag_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "autoRefreshPointLagInSeconds"))
    AutonomousDatabaseSummary.add_member(:is_reconnect_clone_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isReconnectCloneEnabled"))
    AutonomousDatabaseSummary.add_member(:clone_table_space_list, Shapes::ShapeRef.new(shape: IntegerList, location_name: "cloneTableSpaceList"))
    AutonomousDatabaseSummary.add_member(:backup_retention_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "backupRetentionPeriodInDays"))
    AutonomousDatabaseSummary.add_member(:long_term_backup_schedule, Shapes::ShapeRef.new(shape: LongTermBackupSchedule, location_name: "longTermBackupSchedule"))
    AutonomousDatabaseSummary.add_member(:is_backup_retention_locked, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBackupRetentionLocked"))
    AutonomousDatabaseSummary.add_member(:total_backup_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: Double, location_name: "totalBackupStorageSizeInGBs"))
    AutonomousDatabaseSummary.add_member(:resource_pool_summary, Shapes::ShapeRef.new(shape: ResourcePoolSummary, location_name: "resourcePoolSummary"))
    AutonomousDatabaseSummary.add_member(:encryption_summary, Shapes::ShapeRef.new(shape: EncryptionSummary, location_name: "encryptionSummary"))
    AutonomousDatabaseSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    AutonomousDatabaseSummary.add_member(:time_of_last_backup, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastBackup"))
    AutonomousDatabaseSummary.add_member(:time_maintenance_begin, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeMaintenanceBegin"))
    AutonomousDatabaseSummary.add_member(:time_maintenance_end, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeMaintenanceEnd"))
    AutonomousDatabaseSummary.add_member(:time_local_data_guard_enabled, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeLocalDataGuardEnabled"))
    AutonomousDatabaseSummary.add_member(:time_data_guard_role_changed, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDataGuardRoleChanged"))
    AutonomousDatabaseSummary.add_member(:time_of_last_switchover, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastSwitchover"))
    AutonomousDatabaseSummary.add_member(:time_of_last_failover, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastFailover"))
    AutonomousDatabaseSummary.add_member(:time_of_last_refresh, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastRefresh"))
    AutonomousDatabaseSummary.add_member(:time_of_last_refresh_point, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfLastRefreshPoint"))
    AutonomousDatabaseSummary.add_member(:time_of_next_refresh, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfNextRefresh"))
    AutonomousDatabaseSummary.add_member(:time_of_auto_refresh_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfAutoRefreshStart"))
    AutonomousDatabaseSummary.add_member(:time_deletion_of_free_autonomous_database, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDeletionOfFreeAutonomousDatabase"))
    AutonomousDatabaseSummary.add_member(:time_reclamation_of_free_autonomous_database, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeReclamationOfFreeAutonomousDatabase"))
    AutonomousDatabaseSummary.add_member(:time_disaster_recovery_role_changed, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDisasterRecoveryRoleChanged"))
    AutonomousDatabaseSummary.add_member(:time_until_reconnect_clone_enabled, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeUntilReconnectCloneEnabled"))
    AutonomousDatabaseSummary.add_member(:next_long_term_backup_time_stamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "nextLongTermBackupTimeStamp"))
    AutonomousDatabaseSummary.add_member(:time_undeleted, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeUndeleted"))
    AutonomousDatabaseSummary.add_member(:admin_password_source_summary, Shapes::ShapeRef.new(shape: AdminPasswordSourceSummary, location_name: "adminPasswordSourceSummary"))
    AutonomousDatabaseSummary.struct_class = Types::AutonomousDatabaseSummary

    AutonomousDatabaseVersionList.member = Shapes::ShapeRef.new(shape: AutonomousDatabaseVersionSummary)

    AutonomousDatabaseVersionSummary.add_member(:db_workload, Shapes::ShapeRef.new(shape: DbWorkload, location_name: "dbWorkload"))
    AutonomousDatabaseVersionSummary.add_member(:details, Shapes::ShapeRef.new(shape: String, location_name: "details"))
    AutonomousDatabaseVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    AutonomousDatabaseVersionSummary.struct_class = Types::AutonomousDatabaseVersionSummary

    AutonomousDatabaseWalletDetails.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseWalletStatus, location_name: "status"))
    AutonomousDatabaseWalletDetails.add_member(:time_rotated, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeRotated"))
    AutonomousDatabaseWalletDetails.add_member(:password_source_summary, Shapes::ShapeRef.new(shape: WalletPasswordSourceSummary, location_name: "passwordSourceSummary"))
    AutonomousDatabaseWalletDetails.struct_class = Types::AutonomousDatabaseWalletDetails

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

    AwsEncryptionKeyConfiguration.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleArn"))
    AwsEncryptionKeyConfiguration.add_member(:external_id_type, Shapes::ShapeRef.new(shape: ExternalIdType, location_name: "externalIdType"))
    AwsEncryptionKeyConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdOrArn, location_name: "kmsKeyId"))
    AwsEncryptionKeyConfiguration.struct_class = Types::AwsEncryptionKeyConfiguration

    AwsEncryptionKeyConfigurationInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleArn"))
    AwsEncryptionKeyConfigurationInput.add_member(:external_id_type, Shapes::ShapeRef.new(shape: ExternalIdType, location_name: "externalIdType"))
    AwsEncryptionKeyConfigurationInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdOrArn, location_name: "kmsKeyId"))
    AwsEncryptionKeyConfigurationInput.struct_class = Types::AwsEncryptionKeyConfigurationInput

    CloneToRefreshableConfiguration.add_member(:source_autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "sourceAutonomousDatabaseId"))
    CloneToRefreshableConfiguration.add_member(:refreshable_mode, Shapes::ShapeRef.new(shape: RefreshableMode, location_name: "refreshableMode"))
    CloneToRefreshableConfiguration.add_member(:auto_refresh_frequency_in_seconds, Shapes::ShapeRef.new(shape: CloneToRefreshableConfigurationAutoRefreshFrequencyInSecondsInteger, location_name: "autoRefreshFrequencyInSeconds"))
    CloneToRefreshableConfiguration.add_member(:auto_refresh_point_lag_in_seconds, Shapes::ShapeRef.new(shape: CloneToRefreshableConfigurationAutoRefreshPointLagInSecondsInteger, location_name: "autoRefreshPointLagInSeconds"))
    CloneToRefreshableConfiguration.add_member(:time_of_auto_refresh_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfAutoRefreshStart"))
    CloneToRefreshableConfiguration.add_member(:open_mode, Shapes::ShapeRef.new(shape: OpenMode, location_name: "openMode"))
    CloneToRefreshableConfiguration.add_member(:clone_type, Shapes::ShapeRef.new(shape: CloneType, location_name: "cloneType"))
    CloneToRefreshableConfiguration.struct_class = Types::CloneToRefreshableConfiguration

    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmCluster.add_member(:cloud_autonomous_vm_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmCluster.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudAutonomousVmCluster.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    CloudAutonomousVmCluster.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudAutonomousVmCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudAutonomousVmCluster.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CloudAutonomousVmCluster.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudAutonomousVmCluster.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudAutonomousVmCluster.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmCluster.add_member(:cloud_exadata_infrastructure_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "cloudExadataInfrastructureArn"))
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
    CloudAutonomousVmCluster.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
    CloudAutonomousVmCluster.struct_class = Types::CloudAutonomousVmCluster

    CloudAutonomousVmClusterList.member = Shapes::ShapeRef.new(shape: CloudAutonomousVmClusterSummary)

    CloudAutonomousVmClusterResourceDetails.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmClusterResourceDetails.add_member(:unallocated_adb_storage_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "unallocatedAdbStorageInTBs"))
    CloudAutonomousVmClusterResourceDetails.struct_class = Types::CloudAutonomousVmClusterResourceDetails

    CloudAutonomousVmClusterResourceDetailsList.member = Shapes::ShapeRef.new(shape: CloudAutonomousVmClusterResourceDetails)

    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_autonomous_vm_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "cloudAutonomousVmClusterArn"))
    CloudAutonomousVmClusterSummary.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CloudAutonomousVmClusterSummary.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    CloudAutonomousVmClusterSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    CloudAutonomousVmClusterSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudAutonomousVmClusterSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CloudAutonomousVmClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CloudAutonomousVmClusterSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "cloudExadataInfrastructureId"))
    CloudAutonomousVmClusterSummary.add_member(:cloud_exadata_infrastructure_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "cloudExadataInfrastructureArn"))
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
    CloudAutonomousVmClusterSummary.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
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
    CloudVmCluster.add_member(:cloud_exadata_infrastructure_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "cloudExadataInfrastructureArn"))
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
    CloudVmCluster.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
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
    CloudVmClusterSummary.add_member(:cloud_exadata_infrastructure_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "cloudExadataInfrastructureArn"))
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
    CloudVmClusterSummary.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    CloudVmClusterSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    CloudVmClusterSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    CloudVmClusterSummary.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
    CloudVmClusterSummary.struct_class = Types::CloudVmClusterSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAutonomousDatabaseBackupInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    CreateAutonomousDatabaseBackupInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CreateAutonomousDatabaseBackupInput.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseBackupInputRetentionPeriodInDaysInteger, location_name: "retentionPeriodInDays"))
    CreateAutonomousDatabaseBackupInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseBackupInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAutonomousDatabaseBackupInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateAutonomousDatabaseBackupInput.struct_class = Types::CreateAutonomousDatabaseBackupInput

    CreateAutonomousDatabaseBackupOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateAutonomousDatabaseBackupOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateAutonomousDatabaseBackupOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateAutonomousDatabaseBackupOutput.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseBackupId"))
    CreateAutonomousDatabaseBackupOutput.struct_class = Types::CreateAutonomousDatabaseBackupOutput

    CreateAutonomousDatabaseInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    CreateAutonomousDatabaseInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    CreateAutonomousDatabaseInput.add_member(:db_name, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputDbNameString, location_name: "dbName"))
    CreateAutonomousDatabaseInput.add_member(:admin_password, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputAdminPasswordString, location_name: "adminPassword"))
    CreateAutonomousDatabaseInput.add_member(:compute_count, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputComputeCountDouble, location_name: "computeCount"))
    CreateAutonomousDatabaseInput.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputDataStorageSizeInTBsInteger, location_name: "dataStorageSizeInTBs"))
    CreateAutonomousDatabaseInput.add_member(:data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputDataStorageSizeInGBsInteger, location_name: "dataStorageSizeInGBs"))
    CreateAutonomousDatabaseInput.add_member(:db_workload, Shapes::ShapeRef.new(shape: DbWorkload, location_name: "dbWorkload"))
    CreateAutonomousDatabaseInput.add_member(:is_auto_scaling_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingEnabled"))
    CreateAutonomousDatabaseInput.add_member(:is_auto_scaling_for_storage_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingForStorageEnabled"))
    CreateAutonomousDatabaseInput.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CreateAutonomousDatabaseInput.add_member(:character_set, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputCharacterSetString, location_name: "characterSet"))
    CreateAutonomousDatabaseInput.add_member(:ncharacter_set, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputNcharacterSetString, location_name: "ncharacterSet"))
    CreateAutonomousDatabaseInput.add_member(:db_version, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputDbVersionString, location_name: "dbVersion"))
    CreateAutonomousDatabaseInput.add_member(:database_edition, Shapes::ShapeRef.new(shape: DatabaseEdition, location_name: "databaseEdition"))
    CreateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips_source, Shapes::ShapeRef.new(shape: StandbyAllowlistedIpsSource, location_name: "standbyAllowlistedIpsSource"))
    CreateAutonomousDatabaseInput.add_member(:autonomous_maintenance_schedule_type, Shapes::ShapeRef.new(shape: AutonomousMaintenanceScheduleType, location_name: "autonomousMaintenanceScheduleType"))
    CreateAutonomousDatabaseInput.add_member(:backup_retention_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "backupRetentionPeriodInDays"))
    CreateAutonomousDatabaseInput.add_member(:byol_compute_count_limit, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputByolComputeCountLimitDouble, location_name: "byolComputeCountLimit"))
    CreateAutonomousDatabaseInput.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputCpuCoreCountInteger, location_name: "cpuCoreCount"))
    CreateAutonomousDatabaseInput.add_member(:customer_contacts_to_send_to_oci, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    CreateAutonomousDatabaseInput.add_member(:private_endpoint_ip, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointIp"))
    CreateAutonomousDatabaseInput.add_member(:private_endpoint_label, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointLabel"))
    CreateAutonomousDatabaseInput.add_member(:resource_pool_leader_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "resourcePoolLeaderId"))
    CreateAutonomousDatabaseInput.add_member(:resource_pool_summary, Shapes::ShapeRef.new(shape: ResourcePoolSummary, location_name: "resourcePoolSummary"))
    CreateAutonomousDatabaseInput.add_member(:scheduled_operations, Shapes::ShapeRef.new(shape: ScheduledOperationDetailsList, location_name: "scheduledOperations"))
    CreateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "standbyAllowlistedIps"))
    CreateAutonomousDatabaseInput.add_member(:allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "allowlistedIps"))
    CreateAutonomousDatabaseInput.add_member(:transportable_tablespace, Shapes::ShapeRef.new(shape: TransportableTablespace, location_name: "transportableTablespace"))
    CreateAutonomousDatabaseInput.add_member(:is_backup_retention_locked, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBackupRetentionLocked"))
    CreateAutonomousDatabaseInput.add_member(:is_local_data_guard_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalDataGuardEnabled"))
    CreateAutonomousDatabaseInput.add_member(:is_mtls_connection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsConnectionRequired"))
    CreateAutonomousDatabaseInput.add_member(:db_tools_details, Shapes::ShapeRef.new(shape: DatabaseToolList, location_name: "dbToolsDetails"))
    CreateAutonomousDatabaseInput.add_member(:source, Shapes::ShapeRef.new(shape: SourceType, location_name: "source"))
    CreateAutonomousDatabaseInput.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "sourceConfiguration"))
    CreateAutonomousDatabaseInput.add_member(:encryption_key_provider, Shapes::ShapeRef.new(shape: EncryptionKeyProviderInput, location_name: "encryptionKeyProvider"))
    CreateAutonomousDatabaseInput.add_member(:encryption_key_configuration, Shapes::ShapeRef.new(shape: EncryptionKeyConfigurationInput, location_name: "encryptionKeyConfiguration"))
    CreateAutonomousDatabaseInput.add_member(:admin_password_source, Shapes::ShapeRef.new(shape: AdminPasswordSource, location_name: "adminPasswordSource"))
    CreateAutonomousDatabaseInput.add_member(:admin_password_source_configuration, Shapes::ShapeRef.new(shape: AdminPasswordSourceConfigurationInput, location_name: "adminPasswordSourceConfiguration"))
    CreateAutonomousDatabaseInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAutonomousDatabaseInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateAutonomousDatabaseInput.struct_class = Types::CreateAutonomousDatabaseInput

    CreateAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    CreateAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    CreateAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateAutonomousDatabaseOutput.struct_class = Types::CreateAutonomousDatabaseOutput

    CreateAutonomousDatabaseWalletInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    CreateAutonomousDatabaseWalletInput.add_member(:wallet_type, Shapes::ShapeRef.new(shape: WalletType, location_name: "walletType"))
    CreateAutonomousDatabaseWalletInput.add_member(:password, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseWalletInputPasswordString, location_name: "password"))
    CreateAutonomousDatabaseWalletInput.add_member(:password_source, Shapes::ShapeRef.new(shape: WalletPasswordSource, location_name: "passwordSource"))
    CreateAutonomousDatabaseWalletInput.add_member(:password_source_configuration, Shapes::ShapeRef.new(shape: WalletPasswordSourceConfigurationInput, location_name: "passwordSourceConfiguration"))
    CreateAutonomousDatabaseWalletInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseWalletInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAutonomousDatabaseWalletInput.struct_class = Types::CreateAutonomousDatabaseWalletInput

    CreateAutonomousDatabaseWalletOutput.add_member(:autonomous_database_wallet_file, Shapes::ShapeRef.new(shape: AutonomousDatabaseWalletFile, required: true, location_name: "autonomousDatabaseWalletFile"))
    CreateAutonomousDatabaseWalletOutput.struct_class = Types::CreateAutonomousDatabaseWalletOutput

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
    CreateCloudVmClusterInput.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, required: true, location_name: "hostname"))
    CreateCloudVmClusterInput.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "sshPublicKeys"))
    CreateCloudVmClusterInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    CreateCloudVmClusterInput.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, location_name: "clusterName"))
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

    CreateExadbVmClusterInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, required: true, location_name: "displayName"))
    CreateExadbVmClusterInput.add_member(:enabled_ecpu_count, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputEnabledEcpuCountInteger, required: true, location_name: "enabledEcpuCount"))
    CreateExadbVmClusterInput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exascaleDbStorageVaultId"))
    CreateExadbVmClusterInput.add_member(:grid_image_id, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputGridImageIdString, required: true, location_name: "gridImageId"))
    CreateExadbVmClusterInput.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, required: true, location_name: "hostname"))
    CreateExadbVmClusterInput.add_member(:node_count, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputNodeCountInteger, required: true, location_name: "nodeCount"))
    CreateExadbVmClusterInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    CreateExadbVmClusterInput.add_member(:shape, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputShapeString, required: true, location_name: "shape"))
    CreateExadbVmClusterInput.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "sshPublicKeys"))
    CreateExadbVmClusterInput.add_member(:total_ecpu_count, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputTotalEcpuCountInteger, required: true, location_name: "totalEcpuCount"))
    CreateExadbVmClusterInput.add_member(:vm_file_system_storage_total_size_in_g_bs, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputVmFileSystemStorageTotalSizeInGBsInteger, required: true, location_name: "vmFileSystemStorageTotalSizeInGBs"))
    CreateExadbVmClusterInput.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, location_name: "clusterName"))
    CreateExadbVmClusterInput.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    CreateExadbVmClusterInput.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    CreateExadbVmClusterInput.add_member(:scan_listener_port_tcp, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputScanListenerPortTcpInteger, location_name: "scanListenerPortTcp"))
    CreateExadbVmClusterInput.add_member(:scan_listener_port_tcp_ssl, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputScanListenerPortTcpSslInteger, location_name: "scanListenerPortTcpSsl"))
    CreateExadbVmClusterInput.add_member(:shape_attribute, Shapes::ShapeRef.new(shape: ShapeAttribute, location_name: "shapeAttribute"))
    CreateExadbVmClusterInput.add_member(:system_version, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputSystemVersionString, location_name: "systemVersion"))
    CreateExadbVmClusterInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateExadbVmClusterInput.add_member(:time_zone, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputTimeZoneString, location_name: "timeZone"))
    CreateExadbVmClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateExadbVmClusterInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateExadbVmClusterInput.struct_class = Types::CreateExadbVmClusterInput

    CreateExadbVmClusterOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateExadbVmClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateExadbVmClusterOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exadbVmClusterId"))
    CreateExadbVmClusterOutput.struct_class = Types::CreateExadbVmClusterOutput

    CreateExascaleDbStorageVaultInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, required: true, location_name: "displayName"))
    CreateExascaleDbStorageVaultInput.add_member(:high_capacity_database_storage_total_size_in_g_bs, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputHighCapacityDatabaseStorageTotalSizeInGBsInteger, required: true, location_name: "highCapacityDatabaseStorageTotalSizeInGBs"))
    CreateExascaleDbStorageVaultInput.add_member(:additional_flash_cache_in_percent, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputAdditionalFlashCacheInPercentInteger, location_name: "additionalFlashCacheInPercent"))
    CreateExascaleDbStorageVaultInput.add_member(:autoscale_limit_in_g_bs, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputAutoscaleLimitInGBsInteger, location_name: "autoscaleLimitInGBs"))
    CreateExascaleDbStorageVaultInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    CreateExascaleDbStorageVaultInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputAvailabilityZoneString, location_name: "availabilityZone"))
    CreateExascaleDbStorageVaultInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputDescriptionString, location_name: "description"))
    CreateExascaleDbStorageVaultInput.add_member(:is_autoscale_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoscaleEnabled"))
    CreateExascaleDbStorageVaultInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateExascaleDbStorageVaultInput.add_member(:time_zone, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputTimeZoneString, location_name: "timeZone"))
    CreateExascaleDbStorageVaultInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateExascaleDbStorageVaultInput.struct_class = Types::CreateExascaleDbStorageVaultInput

    CreateExascaleDbStorageVaultOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateExascaleDbStorageVaultOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateExascaleDbStorageVaultOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateExascaleDbStorageVaultOutput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exascaleDbStorageVaultId"))
    CreateExascaleDbStorageVaultOutput.struct_class = Types::CreateExascaleDbStorageVaultOutput

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
    CreateOdbPeeringConnectionInput.add_member(:peer_network_route_table_ids, Shapes::ShapeRef.new(shape: PeerNetworkRouteTableIdList, location_name: "peerNetworkRouteTableIds"))
    CreateOdbPeeringConnectionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateOdbPeeringConnectionInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOdbPeeringConnectionInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateOdbPeeringConnectionInput.struct_class = Types::CreateOdbPeeringConnectionInput

    CreateOdbPeeringConnectionOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateOdbPeeringConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    CreateOdbPeeringConnectionOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateOdbPeeringConnectionOutput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "odbPeeringConnectionId"))
    CreateOdbPeeringConnectionOutput.struct_class = Types::CreateOdbPeeringConnectionOutput

    CrossRegionDataGuardConfiguration.add_member(:source_autonomous_database_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceAutonomousDatabaseArn"))
    CrossRegionDataGuardConfiguration.struct_class = Types::CrossRegionDataGuardConfiguration

    CrossRegionDisasterRecoveryConfiguration.add_member(:source_autonomous_database_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceAutonomousDatabaseArn"))
    CrossRegionDisasterRecoveryConfiguration.add_member(:remote_disaster_recovery_type, Shapes::ShapeRef.new(shape: DisasterRecoveryType, required: true, location_name: "remoteDisasterRecoveryType"))
    CrossRegionDisasterRecoveryConfiguration.add_member(:is_replicate_automatic_backups, Shapes::ShapeRef.new(shape: Boolean, location_name: "isReplicateAutomaticBackups"))
    CrossRegionDisasterRecoveryConfiguration.struct_class = Types::CrossRegionDisasterRecoveryConfiguration

    CrossRegionS3RestoreSourcesAccess.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    CrossRegionS3RestoreSourcesAccess.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    CrossRegionS3RestoreSourcesAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    CrossRegionS3RestoreSourcesAccess.struct_class = Types::CrossRegionS3RestoreSourcesAccess

    CrossRegionS3RestoreSourcesAccessList.member = Shapes::ShapeRef.new(shape: CrossRegionS3RestoreSourcesAccess)

    CustomerContact.add_member(:email, Shapes::ShapeRef.new(shape: CustomerContactEmailString, location_name: "email"))
    CustomerContact.struct_class = Types::CustomerContact

    CustomerContacts.member = Shapes::ShapeRef.new(shape: CustomerContact)

    CustomerManagedAwsSecretConfiguration.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleArn"))
    CustomerManagedAwsSecretConfiguration.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdOrArn, location_name: "secretId"))
    CustomerManagedAwsSecretConfiguration.add_member(:external_id_type, Shapes::ShapeRef.new(shape: ExternalIdType, location_name: "externalIdType"))
    CustomerManagedAwsSecretConfiguration.struct_class = Types::CustomerManagedAwsSecretConfiguration

    CustomerManagedAwsSecretConfigurationInput.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdOrArn, location_name: "secretId"))
    CustomerManagedAwsSecretConfigurationInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleArn"))
    CustomerManagedAwsSecretConfigurationInput.add_member(:external_id_type, Shapes::ShapeRef.new(shape: ExternalIdType, location_name: "externalIdType"))
    CustomerManagedAwsSecretConfigurationInput.struct_class = Types::CustomerManagedAwsSecretConfigurationInput

    DataCollectionOptions.add_member(:is_diagnostics_events_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDiagnosticsEventsEnabled"))
    DataCollectionOptions.add_member(:is_health_monitoring_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isHealthMonitoringEnabled"))
    DataCollectionOptions.add_member(:is_incident_logs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isIncidentLogsEnabled"))
    DataCollectionOptions.struct_class = Types::DataCollectionOptions

    DatabaseCloneConfiguration.add_member(:source_autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "sourceAutonomousDatabaseId"))
    DatabaseCloneConfiguration.add_member(:clone_type, Shapes::ShapeRef.new(shape: CloneType, required: true, location_name: "cloneType"))
    DatabaseCloneConfiguration.struct_class = Types::DatabaseCloneConfiguration

    DatabaseConnectionStringMap.key = Shapes::ShapeRef.new(shape: String)
    DatabaseConnectionStringMap.value = Shapes::ShapeRef.new(shape: String)

    DatabaseConnectionStringProfile.add_member(:consumer_group, Shapes::ShapeRef.new(shape: String, location_name: "consumerGroup"))
    DatabaseConnectionStringProfile.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    DatabaseConnectionStringProfile.add_member(:host_format, Shapes::ShapeRef.new(shape: String, location_name: "hostFormat"))
    DatabaseConnectionStringProfile.add_member(:is_regional, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRegional"))
    DatabaseConnectionStringProfile.add_member(:protocol, Shapes::ShapeRef.new(shape: String, location_name: "protocol"))
    DatabaseConnectionStringProfile.add_member(:session_mode, Shapes::ShapeRef.new(shape: String, location_name: "sessionMode"))
    DatabaseConnectionStringProfile.add_member(:syntax_format, Shapes::ShapeRef.new(shape: String, location_name: "syntaxFormat"))
    DatabaseConnectionStringProfile.add_member(:tls_authentication, Shapes::ShapeRef.new(shape: String, location_name: "tlsAuthentication"))
    DatabaseConnectionStringProfile.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    DatabaseConnectionStringProfile.struct_class = Types::DatabaseConnectionStringProfile

    DatabaseConnectionStringProfileList.member = Shapes::ShapeRef.new(shape: DatabaseConnectionStringProfile)

    DatabaseStandbySummary.add_member(:availability_domain, Shapes::ShapeRef.new(shape: String, location_name: "availabilityDomain"))
    DatabaseStandbySummary.add_member(:lag_time_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "lagTimeInSeconds"))
    DatabaseStandbySummary.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    DatabaseStandbySummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DatabaseStandbySummary.add_member(:maintenance_target_component, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceTargetComponent"))
    DatabaseStandbySummary.add_member(:time_data_guard_role_changed, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDataGuardRoleChanged"))
    DatabaseStandbySummary.add_member(:time_disaster_recovery_role_changed, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeDisasterRecoveryRoleChanged"))
    DatabaseStandbySummary.add_member(:time_maintenance_begin, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeMaintenanceBegin"))
    DatabaseStandbySummary.add_member(:time_maintenance_end, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeMaintenanceEnd"))
    DatabaseStandbySummary.struct_class = Types::DatabaseStandbySummary

    DatabaseTool.add_member(:is_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isEnabled"))
    DatabaseTool.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DatabaseTool.add_member(:compute_count, Shapes::ShapeRef.new(shape: Double, location_name: "computeCount"))
    DatabaseTool.add_member(:max_idle_time_in_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "maxIdleTimeInMinutes"))
    DatabaseTool.struct_class = Types::DatabaseTool

    DatabaseToolList.member = Shapes::ShapeRef.new(shape: DatabaseTool)

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
    DbSystemShapeSummary.add_member(:shape_attributes, Shapes::ShapeRef.new(shape: ShapeAttributeList, location_name: "shapeAttributes"))
    DbSystemShapeSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DbSystemShapeSummary.add_member(:compute_model, Shapes::ShapeRef.new(shape: ComputeModel, location_name: "computeModel"))
    DbSystemShapeSummary.add_member(:are_server_types_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "areServerTypesSupported"))
    DbSystemShapeSummary.struct_class = Types::DbSystemShapeSummary

    DeleteAutonomousDatabaseBackupInput.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "autonomousDatabaseBackupId"))
    DeleteAutonomousDatabaseBackupInput.struct_class = Types::DeleteAutonomousDatabaseBackupInput

    DeleteAutonomousDatabaseBackupOutput.struct_class = Types::DeleteAutonomousDatabaseBackupOutput

    DeleteAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    DeleteAutonomousDatabaseInput.struct_class = Types::DeleteAutonomousDatabaseInput

    DeleteAutonomousDatabaseOutput.struct_class = Types::DeleteAutonomousDatabaseOutput

    DeleteCloudAutonomousVmClusterInput.add_member(:cloud_autonomous_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudAutonomousVmClusterId"))
    DeleteCloudAutonomousVmClusterInput.struct_class = Types::DeleteCloudAutonomousVmClusterInput

    DeleteCloudAutonomousVmClusterOutput.struct_class = Types::DeleteCloudAutonomousVmClusterOutput

    DeleteCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    DeleteCloudExadataInfrastructureInput.struct_class = Types::DeleteCloudExadataInfrastructureInput

    DeleteCloudExadataInfrastructureOutput.struct_class = Types::DeleteCloudExadataInfrastructureOutput

    DeleteCloudVmClusterInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "cloudVmClusterId"))
    DeleteCloudVmClusterInput.struct_class = Types::DeleteCloudVmClusterInput

    DeleteCloudVmClusterOutput.struct_class = Types::DeleteCloudVmClusterOutput

    DeleteExadbVmClusterInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    DeleteExadbVmClusterInput.struct_class = Types::DeleteExadbVmClusterInput

    DeleteExadbVmClusterOutput.struct_class = Types::DeleteExadbVmClusterOutput

    DeleteExascaleDbStorageVaultInput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exascaleDbStorageVaultId"))
    DeleteExascaleDbStorageVaultInput.struct_class = Types::DeleteExascaleDbStorageVaultInput

    DeleteExascaleDbStorageVaultOutput.struct_class = Types::DeleteExascaleDbStorageVaultOutput

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

    DisassociateVirtualMachinesFromExadbVmClusterInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    DisassociateVirtualMachinesFromExadbVmClusterInput.add_member(:db_node_ids, Shapes::ShapeRef.new(shape: ResourceIdList, required: true, location_name: "dbNodeIds"))
    DisassociateVirtualMachinesFromExadbVmClusterInput.struct_class = Types::DisassociateVirtualMachinesFromExadbVmClusterInput

    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exadbVmClusterId"))
    DisassociateVirtualMachinesFromExadbVmClusterOutput.struct_class = Types::DisassociateVirtualMachinesFromExadbVmClusterOutput

    DisasterRecoveryConfiguration.add_member(:disaster_recovery_type, Shapes::ShapeRef.new(shape: DisasterRecoveryType, location_name: "disasterRecoveryType"))
    DisasterRecoveryConfiguration.add_member(:is_replicate_automatic_backups, Shapes::ShapeRef.new(shape: Boolean, location_name: "isReplicateAutomaticBackups"))
    DisasterRecoveryConfiguration.add_member(:is_snapshot_standby, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSnapshotStandby"))
    DisasterRecoveryConfiguration.add_member(:time_snapshot_standby_enabled_till, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeSnapshotStandbyEnabledTill"))
    DisasterRecoveryConfiguration.struct_class = Types::DisasterRecoveryConfiguration

    EncryptionKeyConfiguration.add_member(:aws_encryption_key, Shapes::ShapeRef.new(shape: AwsEncryptionKeyConfiguration, location_name: "awsEncryptionKey"))
    EncryptionKeyConfiguration.add_member(:oci_encryption_key, Shapes::ShapeRef.new(shape: OciEncryptionKeyConfiguration, location_name: "ociEncryptionKey"))
    EncryptionKeyConfiguration.add_member(:okv_encryption_key, Shapes::ShapeRef.new(shape: OkvEncryptionKeyConfiguration, location_name: "okvEncryptionKey"))
    EncryptionKeyConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EncryptionKeyConfiguration.add_member_subclass(:aws_encryption_key, Types::EncryptionKeyConfiguration::AwsEncryptionKey)
    EncryptionKeyConfiguration.add_member_subclass(:oci_encryption_key, Types::EncryptionKeyConfiguration::OciEncryptionKey)
    EncryptionKeyConfiguration.add_member_subclass(:okv_encryption_key, Types::EncryptionKeyConfiguration::OkvEncryptionKey)
    EncryptionKeyConfiguration.add_member_subclass(:unknown, Types::EncryptionKeyConfiguration::Unknown)
    EncryptionKeyConfiguration.struct_class = Types::EncryptionKeyConfiguration

    EncryptionKeyConfigurationInput.add_member(:aws_encryption_key, Shapes::ShapeRef.new(shape: AwsEncryptionKeyConfigurationInput, location_name: "awsEncryptionKey"))
    EncryptionKeyConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EncryptionKeyConfigurationInput.add_member_subclass(:aws_encryption_key, Types::EncryptionKeyConfigurationInput::AwsEncryptionKey)
    EncryptionKeyConfigurationInput.add_member_subclass(:unknown, Types::EncryptionKeyConfigurationInput::Unknown)
    EncryptionKeyConfigurationInput.struct_class = Types::EncryptionKeyConfigurationInput

    EncryptionSummary.add_member(:encryption_key_provider, Shapes::ShapeRef.new(shape: EncryptionKeyProvider, location_name: "encryptionKeyProvider"))
    EncryptionSummary.add_member(:encryption_key_configuration, Shapes::ShapeRef.new(shape: EncryptionKeyConfiguration, location_name: "encryptionKeyConfiguration"))
    EncryptionSummary.struct_class = Types::EncryptionSummary

    ExadataIormConfig.add_member(:db_plans, Shapes::ShapeRef.new(shape: DbIormConfigList, location_name: "dbPlans"))
    ExadataIormConfig.add_member(:lifecycle_details, Shapes::ShapeRef.new(shape: String, location_name: "lifecycleDetails"))
    ExadataIormConfig.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: IormLifecycleState, location_name: "lifecycleState"))
    ExadataIormConfig.add_member(:objective, Shapes::ShapeRef.new(shape: Objective, location_name: "objective"))
    ExadataIormConfig.struct_class = Types::ExadataIormConfig

    ExadbVmCluster.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    ExadbVmCluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, location_name: "clusterName"))
    ExadbVmCluster.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ExadbVmCluster.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    ExadbVmCluster.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    ExadbVmCluster.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    ExadbVmCluster.add_member(:enabled_ecpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "enabledEcpuCount"))
    ExadbVmCluster.add_member(:exadb_vm_cluster_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "exadbVmClusterArn"))
    ExadbVmCluster.add_member(:exascale_db_storage_vault_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "exascaleDbStorageVaultArn"))
    ExadbVmCluster.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "exascaleDbStorageVaultId"))
    ExadbVmCluster.add_member(:gi_version, Shapes::ShapeRef.new(shape: String, location_name: "giVersion"))
    ExadbVmCluster.add_member(:grid_image_id, Shapes::ShapeRef.new(shape: String, location_name: "gridImageId"))
    ExadbVmCluster.add_member(:grid_image_type, Shapes::ShapeRef.new(shape: GridImageType, location_name: "gridImageType"))
    ExadbVmCluster.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "hostname"))
    ExadbVmCluster.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
    ExadbVmCluster.add_member(:iorm_config_cache, Shapes::ShapeRef.new(shape: ExadataIormConfig, location_name: "iormConfigCache"))
    ExadbVmCluster.add_member(:last_update_history_entry_id, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdateHistoryEntryId"))
    ExadbVmCluster.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    ExadbVmCluster.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "listenerPort"))
    ExadbVmCluster.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    ExadbVmCluster.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeCount"))
    ExadbVmCluster.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    ExadbVmCluster.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    ExadbVmCluster.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    ExadbVmCluster.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    ExadbVmCluster.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    ExadbVmCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    ExadbVmCluster.add_member(:scan_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsName"))
    ExadbVmCluster.add_member(:scan_dns_record_id, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsRecordId"))
    ExadbVmCluster.add_member(:scan_ip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "scanIpIds"))
    ExadbVmCluster.add_member(:scan_listener_port_tcp, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortTcp"))
    ExadbVmCluster.add_member(:scan_listener_port_tcp_ssl, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortTcpSsl"))
    ExadbVmCluster.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    ExadbVmCluster.add_member(:shape_attribute, Shapes::ShapeRef.new(shape: ShapeAttribute, location_name: "shapeAttribute"))
    ExadbVmCluster.add_member(:snapshot_file_system_storage, Shapes::ShapeRef.new(shape: ExadbVmClusterStorageDetails, location_name: "snapshotFileSystemStorage"))
    ExadbVmCluster.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: StringList, location_name: "sshPublicKeys"))
    ExadbVmCluster.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    ExadbVmCluster.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ExadbVmCluster.add_member(:system_version, Shapes::ShapeRef.new(shape: String, location_name: "systemVersion"))
    ExadbVmCluster.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    ExadbVmCluster.add_member(:total_ecpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalEcpuCount"))
    ExadbVmCluster.add_member(:total_file_system_storage, Shapes::ShapeRef.new(shape: ExadbVmClusterStorageDetails, location_name: "totalFileSystemStorage"))
    ExadbVmCluster.add_member(:vip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vipIds"))
    ExadbVmCluster.add_member(:vm_file_system_storage, Shapes::ShapeRef.new(shape: ExadbVmClusterStorageDetails, location_name: "vmFileSystemStorage"))
    ExadbVmCluster.struct_class = Types::ExadbVmCluster

    ExadbVmClusterList.member = Shapes::ShapeRef.new(shape: ExadbVmClusterSummary)

    ExadbVmClusterStorageDetails.add_member(:total_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "totalSizeInGBs"))
    ExadbVmClusterStorageDetails.struct_class = Types::ExadbVmClusterStorageDetails

    ExadbVmClusterSummary.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    ExadbVmClusterSummary.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, location_name: "clusterName"))
    ExadbVmClusterSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ExadbVmClusterSummary.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    ExadbVmClusterSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    ExadbVmClusterSummary.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    ExadbVmClusterSummary.add_member(:enabled_ecpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "enabledEcpuCount"))
    ExadbVmClusterSummary.add_member(:exadb_vm_cluster_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "exadbVmClusterArn"))
    ExadbVmClusterSummary.add_member(:exascale_db_storage_vault_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "exascaleDbStorageVaultArn"))
    ExadbVmClusterSummary.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "exascaleDbStorageVaultId"))
    ExadbVmClusterSummary.add_member(:gi_version, Shapes::ShapeRef.new(shape: String, location_name: "giVersion"))
    ExadbVmClusterSummary.add_member(:grid_image_id, Shapes::ShapeRef.new(shape: String, location_name: "gridImageId"))
    ExadbVmClusterSummary.add_member(:grid_image_type, Shapes::ShapeRef.new(shape: GridImageType, location_name: "gridImageType"))
    ExadbVmClusterSummary.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "hostname"))
    ExadbVmClusterSummary.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleList, location_name: "iamRoles"))
    ExadbVmClusterSummary.add_member(:iorm_config_cache, Shapes::ShapeRef.new(shape: ExadataIormConfig, location_name: "iormConfigCache"))
    ExadbVmClusterSummary.add_member(:last_update_history_entry_id, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdateHistoryEntryId"))
    ExadbVmClusterSummary.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    ExadbVmClusterSummary.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "listenerPort"))
    ExadbVmClusterSummary.add_member(:memory_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInGBs"))
    ExadbVmClusterSummary.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "nodeCount"))
    ExadbVmClusterSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    ExadbVmClusterSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    ExadbVmClusterSummary.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    ExadbVmClusterSummary.add_member(:odb_network_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "odbNetworkArn"))
    ExadbVmClusterSummary.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "odbNetworkId"))
    ExadbVmClusterSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    ExadbVmClusterSummary.add_member(:scan_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsName"))
    ExadbVmClusterSummary.add_member(:scan_dns_record_id, Shapes::ShapeRef.new(shape: String, location_name: "scanDnsRecordId"))
    ExadbVmClusterSummary.add_member(:scan_ip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "scanIpIds"))
    ExadbVmClusterSummary.add_member(:scan_listener_port_tcp, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortTcp"))
    ExadbVmClusterSummary.add_member(:scan_listener_port_tcp_ssl, Shapes::ShapeRef.new(shape: Integer, location_name: "scanListenerPortTcpSsl"))
    ExadbVmClusterSummary.add_member(:shape, Shapes::ShapeRef.new(shape: String, location_name: "shape"))
    ExadbVmClusterSummary.add_member(:shape_attribute, Shapes::ShapeRef.new(shape: ShapeAttribute, location_name: "shapeAttribute"))
    ExadbVmClusterSummary.add_member(:snapshot_file_system_storage, Shapes::ShapeRef.new(shape: ExadbVmClusterStorageDetails, location_name: "snapshotFileSystemStorage"))
    ExadbVmClusterSummary.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: StringList, location_name: "sshPublicKeys"))
    ExadbVmClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    ExadbVmClusterSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ExadbVmClusterSummary.add_member(:system_version, Shapes::ShapeRef.new(shape: String, location_name: "systemVersion"))
    ExadbVmClusterSummary.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    ExadbVmClusterSummary.add_member(:total_ecpu_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalEcpuCount"))
    ExadbVmClusterSummary.add_member(:total_file_system_storage, Shapes::ShapeRef.new(shape: ExadbVmClusterStorageDetails, location_name: "totalFileSystemStorage"))
    ExadbVmClusterSummary.add_member(:vip_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vipIds"))
    ExadbVmClusterSummary.add_member(:vm_file_system_storage, Shapes::ShapeRef.new(shape: ExadbVmClusterStorageDetails, location_name: "vmFileSystemStorage"))
    ExadbVmClusterSummary.struct_class = Types::ExadbVmClusterSummary

    ExascaleDbStorageDetails.add_member(:available_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "availableSizeInGBs"))
    ExascaleDbStorageDetails.add_member(:total_size_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "totalSizeInGBs"))
    ExascaleDbStorageDetails.struct_class = Types::ExascaleDbStorageDetails

    ExascaleDbStorageVault.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exascaleDbStorageVaultId"))
    ExascaleDbStorageVault.add_member(:additional_flash_cache_in_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "additionalFlashCacheInPercent"))
    ExascaleDbStorageVault.add_member(:attached_shape_attributes, Shapes::ShapeRef.new(shape: ShapeAttributeList, location_name: "attachedShapeAttributes"))
    ExascaleDbStorageVault.add_member(:autoscale_limit_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "autoscaleLimitInGBs"))
    ExascaleDbStorageVault.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    ExascaleDbStorageVault.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    ExascaleDbStorageVault.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ExascaleDbStorageVault.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ExascaleDbStorageVault.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ExascaleDbStorageVault.add_member(:vm_cluster_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "vmClusterArns"))
    ExascaleDbStorageVault.add_member(:vm_cluster_count, Shapes::ShapeRef.new(shape: Integer, location_name: "vmClusterCount"))
    ExascaleDbStorageVault.add_member(:vm_cluster_ids, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "vmClusterIds"))
    ExascaleDbStorageVault.add_member(:exascale_db_storage_vault_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "exascaleDbStorageVaultArn"))
    ExascaleDbStorageVault.add_member(:high_capacity_database_storage, Shapes::ShapeRef.new(shape: ExascaleDbStorageDetails, location_name: "highCapacityDatabaseStorage"))
    ExascaleDbStorageVault.add_member(:is_autoscale_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoscaleEnabled"))
    ExascaleDbStorageVault.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    ExascaleDbStorageVault.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    ExascaleDbStorageVault.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    ExascaleDbStorageVault.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    ExascaleDbStorageVault.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    ExascaleDbStorageVault.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ExascaleDbStorageVault.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    ExascaleDbStorageVault.struct_class = Types::ExascaleDbStorageVault

    ExascaleDbStorageVaultList.member = Shapes::ShapeRef.new(shape: ExascaleDbStorageVaultSummary)

    ExascaleDbStorageVaultSummary.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exascaleDbStorageVaultId"))
    ExascaleDbStorageVaultSummary.add_member(:additional_flash_cache_in_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "additionalFlashCacheInPercent"))
    ExascaleDbStorageVaultSummary.add_member(:attached_shape_attributes, Shapes::ShapeRef.new(shape: ShapeAttributeList, location_name: "attachedShapeAttributes"))
    ExascaleDbStorageVaultSummary.add_member(:autoscale_limit_in_g_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "autoscaleLimitInGBs"))
    ExascaleDbStorageVaultSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    ExascaleDbStorageVaultSummary.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    ExascaleDbStorageVaultSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ExascaleDbStorageVaultSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ExascaleDbStorageVaultSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ExascaleDbStorageVaultSummary.add_member(:vm_cluster_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "vmClusterArns"))
    ExascaleDbStorageVaultSummary.add_member(:vm_cluster_count, Shapes::ShapeRef.new(shape: Integer, location_name: "vmClusterCount"))
    ExascaleDbStorageVaultSummary.add_member(:vm_cluster_ids, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "vmClusterIds"))
    ExascaleDbStorageVaultSummary.add_member(:exascale_db_storage_vault_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "exascaleDbStorageVaultArn"))
    ExascaleDbStorageVaultSummary.add_member(:high_capacity_database_storage, Shapes::ShapeRef.new(shape: ExascaleDbStorageDetails, location_name: "highCapacityDatabaseStorage"))
    ExascaleDbStorageVaultSummary.add_member(:is_autoscale_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoscaleEnabled"))
    ExascaleDbStorageVaultSummary.add_member(:ocid, Shapes::ShapeRef.new(shape: String, location_name: "ocid"))
    ExascaleDbStorageVaultSummary.add_member(:oci_resource_anchor_name, Shapes::ShapeRef.new(shape: String, location_name: "ociResourceAnchorName"))
    ExascaleDbStorageVaultSummary.add_member(:oci_url, Shapes::ShapeRef.new(shape: String, location_name: "ociUrl"))
    ExascaleDbStorageVaultSummary.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Float, location_name: "percentProgress"))
    ExascaleDbStorageVaultSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    ExascaleDbStorageVaultSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ExascaleDbStorageVaultSummary.add_member(:time_zone, Shapes::ShapeRef.new(shape: String, location_name: "timeZone"))
    ExascaleDbStorageVaultSummary.struct_class = Types::ExascaleDbStorageVaultSummary

    FailoverAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    FailoverAutonomousDatabaseInput.add_member(:peer_db_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "peerDbArn"))
    FailoverAutonomousDatabaseInput.struct_class = Types::FailoverAutonomousDatabaseInput

    FailoverAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    FailoverAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    FailoverAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    FailoverAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    FailoverAutonomousDatabaseOutput.struct_class = Types::FailoverAutonomousDatabaseOutput

    GetAutonomousDatabaseBackupInput.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "autonomousDatabaseBackupId"))
    GetAutonomousDatabaseBackupInput.struct_class = Types::GetAutonomousDatabaseBackupInput

    GetAutonomousDatabaseBackupOutput.add_member(:autonomous_database_backup, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackup, location_name: "autonomousDatabaseBackup"))
    GetAutonomousDatabaseBackupOutput.struct_class = Types::GetAutonomousDatabaseBackupOutput

    GetAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    GetAutonomousDatabaseInput.struct_class = Types::GetAutonomousDatabaseInput

    GetAutonomousDatabaseOutput.add_member(:autonomous_database, Shapes::ShapeRef.new(shape: AutonomousDatabase, required: true, location_name: "autonomousDatabase"))
    GetAutonomousDatabaseOutput.struct_class = Types::GetAutonomousDatabaseOutput

    GetAutonomousDatabaseWalletDetailsInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    GetAutonomousDatabaseWalletDetailsInput.struct_class = Types::GetAutonomousDatabaseWalletDetailsInput

    GetAutonomousDatabaseWalletDetailsOutput.add_member(:autonomous_database_wallet_details, Shapes::ShapeRef.new(shape: AutonomousDatabaseWalletDetails, required: true, location_name: "autonomousDatabaseWalletDetails"))
    GetAutonomousDatabaseWalletDetailsOutput.struct_class = Types::GetAutonomousDatabaseWalletDetailsOutput

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

    GetDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudVmClusterId"))
    GetDbNodeInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "exadbVmClusterId"))
    GetDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    GetDbNodeInput.struct_class = Types::GetDbNodeInput

    GetDbNodeOutput.add_member(:db_node, Shapes::ShapeRef.new(shape: DbNode, location_name: "dbNode"))
    GetDbNodeOutput.struct_class = Types::GetDbNodeOutput

    GetDbServerInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    GetDbServerInput.add_member(:db_server_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbServerId"))
    GetDbServerInput.struct_class = Types::GetDbServerInput

    GetDbServerOutput.add_member(:db_server, Shapes::ShapeRef.new(shape: DbServer, location_name: "dbServer"))
    GetDbServerOutput.struct_class = Types::GetDbServerOutput

    GetExadbVmClusterInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    GetExadbVmClusterInput.struct_class = Types::GetExadbVmClusterInput

    GetExadbVmClusterOutput.add_member(:exadb_vm_cluster, Shapes::ShapeRef.new(shape: ExadbVmCluster, required: true, location_name: "exadbVmCluster"))
    GetExadbVmClusterOutput.struct_class = Types::GetExadbVmClusterOutput

    GetExascaleDbStorageVaultInput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exascaleDbStorageVaultId"))
    GetExascaleDbStorageVaultInput.struct_class = Types::GetExascaleDbStorageVaultInput

    GetExascaleDbStorageVaultOutput.add_member(:exascale_db_storage_vault, Shapes::ShapeRef.new(shape: ExascaleDbStorageVault, required: true, location_name: "exascaleDbStorageVault"))
    GetExascaleDbStorageVaultOutput.struct_class = Types::GetExascaleDbStorageVaultOutput

    GetOciOnboardingStatusInput.struct_class = Types::GetOciOnboardingStatusInput

    GetOciOnboardingStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: OciOnboardingStatus, location_name: "status"))
    GetOciOnboardingStatusOutput.add_member(:existing_tenancy_activation_link, Shapes::ShapeRef.new(shape: String, location_name: "existingTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:new_tenancy_activation_link, Shapes::ShapeRef.new(shape: String, location_name: "newTenancyActivationLink"))
    GetOciOnboardingStatusOutput.add_member(:oci_identity_domain, Shapes::ShapeRef.new(shape: OciIdentityDomain, location_name: "ociIdentityDomain"))
    GetOciOnboardingStatusOutput.add_member(:autonomous_database_oci_integration_iam_roles, Shapes::ShapeRef.new(shape: OciIamRoleList, location_name: "autonomousDatabaseOciIntegrationIamRoles"))
    GetOciOnboardingStatusOutput.add_member(:linked_oci_tenancy_id, Shapes::ShapeRef.new(shape: String, location_name: "linkedOciTenancyId"))
    GetOciOnboardingStatusOutput.add_member(:linked_oci_compartment_id, Shapes::ShapeRef.new(shape: String, location_name: "linkedOciCompartmentId"))
    GetOciOnboardingStatusOutput.add_member(:subscription_errors, Shapes::ShapeRef.new(shape: SubscriptionErrors, location_name: "subscriptionErrors"))
    GetOciOnboardingStatusOutput.struct_class = Types::GetOciOnboardingStatusOutput

    GetOdbNetworkInput.add_member(:odb_network_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbNetworkId"))
    GetOdbNetworkInput.struct_class = Types::GetOdbNetworkInput

    GetOdbNetworkOutput.add_member(:odb_network, Shapes::ShapeRef.new(shape: OdbNetwork, location_name: "odbNetwork"))
    GetOdbNetworkOutput.struct_class = Types::GetOdbNetworkOutput

    GetOdbPeeringConnectionInput.add_member(:odb_peering_connection_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "odbPeeringConnectionId"))
    GetOdbPeeringConnectionInput.struct_class = Types::GetOdbPeeringConnectionInput

    GetOdbPeeringConnectionOutput.add_member(:odb_peering_connection, Shapes::ShapeRef.new(shape: OdbPeeringConnection, location_name: "odbPeeringConnection"))
    GetOdbPeeringConnectionOutput.struct_class = Types::GetOdbPeeringConnectionOutput

    GiMinorVersionList.member = Shapes::ShapeRef.new(shape: GiMinorVersionSummary)

    GiMinorVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    GiMinorVersionSummary.add_member(:grid_image_id, Shapes::ShapeRef.new(shape: String, location_name: "gridImageId"))
    GiMinorVersionSummary.struct_class = Types::GiMinorVersionSummary

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
    InitializeServiceInput.add_member(:autonomous_database_oci_aws_secrets_manager_integration, Shapes::ShapeRef.new(shape: Access, location_name: "autonomousDatabaseOciAwsSecretsManagerIntegration"))
    InitializeServiceInput.struct_class = Types::InitializeServiceInput

    InitializeServiceOutput.struct_class = Types::InitializeServiceOutput

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    KmsAccess.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    KmsAccess.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    KmsAccess.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    KmsAccess.add_member(:kms_policy_document, Shapes::ShapeRef.new(shape: String, location_name: "kmsPolicyDocument"))
    KmsAccess.struct_class = Types::KmsAccess

    ListAutonomousDatabaseBackupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseBackupsInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousDatabaseBackupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseBackupsInputNextTokenString, location_name: "nextToken"))
    ListAutonomousDatabaseBackupsInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "autonomousDatabaseId"))
    ListAutonomousDatabaseBackupsInput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupStatus, location_name: "status"))
    ListAutonomousDatabaseBackupsInput.add_member(:type, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupType, location_name: "type"))
    ListAutonomousDatabaseBackupsInput.struct_class = Types::ListAutonomousDatabaseBackupsInput

    ListAutonomousDatabaseBackupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousDatabaseBackupsOutput.add_member(:autonomous_database_backups, Shapes::ShapeRef.new(shape: AutonomousDatabaseBackupList, required: true, location_name: "autonomousDatabaseBackups"))
    ListAutonomousDatabaseBackupsOutput.struct_class = Types::ListAutonomousDatabaseBackupsOutput

    ListAutonomousDatabaseCharacterSetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseCharacterSetsInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousDatabaseCharacterSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseCharacterSetsInputNextTokenString, location_name: "nextToken"))
    ListAutonomousDatabaseCharacterSetsInput.add_member(:character_set_type, Shapes::ShapeRef.new(shape: characterSetType, location_name: "characterSetType"))
    ListAutonomousDatabaseCharacterSetsInput.struct_class = Types::ListAutonomousDatabaseCharacterSetsInput

    ListAutonomousDatabaseCharacterSetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousDatabaseCharacterSetsOutput.add_member(:autonomous_database_character_sets, Shapes::ShapeRef.new(shape: AutonomousDatabaseCharacterSetList, required: true, location_name: "autonomousDatabaseCharacterSets"))
    ListAutonomousDatabaseCharacterSetsOutput.struct_class = Types::ListAutonomousDatabaseCharacterSetsOutput

    ListAutonomousDatabaseClonesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseClonesInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousDatabaseClonesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseClonesInputNextTokenString, location_name: "nextToken"))
    ListAutonomousDatabaseClonesInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    ListAutonomousDatabaseClonesInput.struct_class = Types::ListAutonomousDatabaseClonesInput

    ListAutonomousDatabaseClonesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousDatabaseClonesOutput.add_member(:autonomous_database_clones, Shapes::ShapeRef.new(shape: AutonomousDatabaseList, required: true, location_name: "autonomousDatabaseClones"))
    ListAutonomousDatabaseClonesOutput.struct_class = Types::ListAutonomousDatabaseClonesOutput

    ListAutonomousDatabasePeersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousDatabasePeersInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousDatabasePeersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousDatabasePeersInputNextTokenString, location_name: "nextToken"))
    ListAutonomousDatabasePeersInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    ListAutonomousDatabasePeersInput.struct_class = Types::ListAutonomousDatabasePeersInput

    ListAutonomousDatabasePeersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousDatabasePeersOutput.add_member(:autonomous_database_peers, Shapes::ShapeRef.new(shape: AutonomousDatabasePeerList, required: true, location_name: "autonomousDatabasePeers"))
    ListAutonomousDatabasePeersOutput.struct_class = Types::ListAutonomousDatabasePeersOutput

    ListAutonomousDatabaseVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseVersionsInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousDatabaseVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousDatabaseVersionsInputNextTokenString, location_name: "nextToken"))
    ListAutonomousDatabaseVersionsInput.add_member(:db_workload, Shapes::ShapeRef.new(shape: DbWorkload, location_name: "dbWorkload"))
    ListAutonomousDatabaseVersionsInput.struct_class = Types::ListAutonomousDatabaseVersionsInput

    ListAutonomousDatabaseVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousDatabaseVersionsOutput.add_member(:autonomous_database_versions, Shapes::ShapeRef.new(shape: AutonomousDatabaseVersionList, required: true, location_name: "autonomousDatabaseVersions"))
    ListAutonomousDatabaseVersionsOutput.struct_class = Types::ListAutonomousDatabaseVersionsOutput

    ListAutonomousDatabasesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAutonomousDatabasesInputMaxResultsInteger, location_name: "maxResults"))
    ListAutonomousDatabasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAutonomousDatabasesInputNextTokenString, location_name: "nextToken"))
    ListAutonomousDatabasesInput.struct_class = Types::ListAutonomousDatabasesInput

    ListAutonomousDatabasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutonomousDatabasesOutput.add_member(:autonomous_databases, Shapes::ShapeRef.new(shape: AutonomousDatabaseList, required: true, location_name: "autonomousDatabases"))
    ListAutonomousDatabasesOutput.struct_class = Types::ListAutonomousDatabasesOutput

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
    ListDbNodesInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudVmClusterId"))
    ListDbNodesInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "exadbVmClusterId"))
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
    ListDbSystemShapesInput.add_member(:shape_family, Shapes::ShapeRef.new(shape: ListDbSystemShapesInputShapeFamilyString, location_name: "shapeFamily"))
    ListDbSystemShapesInput.struct_class = Types::ListDbSystemShapesInput

    ListDbSystemShapesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDbSystemShapesOutput.add_member(:db_system_shapes, Shapes::ShapeRef.new(shape: DbSystemShapeList, required: true, location_name: "dbSystemShapes"))
    ListDbSystemShapesOutput.struct_class = Types::ListDbSystemShapesOutput

    ListExadbVmClustersInput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "exascaleDbStorageVaultId"))
    ListExadbVmClustersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExadbVmClustersInputMaxResultsInteger, location_name: "maxResults"))
    ListExadbVmClustersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExadbVmClustersInputNextTokenString, location_name: "nextToken"))
    ListExadbVmClustersInput.struct_class = Types::ListExadbVmClustersInput

    ListExadbVmClustersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListExadbVmClustersOutput.add_member(:exadb_vm_clusters, Shapes::ShapeRef.new(shape: ExadbVmClusterList, required: true, location_name: "exadbVmClusters"))
    ListExadbVmClustersOutput.struct_class = Types::ListExadbVmClustersOutput

    ListExascaleDbStorageVaultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExascaleDbStorageVaultsInputMaxResultsInteger, location_name: "maxResults"))
    ListExascaleDbStorageVaultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExascaleDbStorageVaultsInputNextTokenString, location_name: "nextToken"))
    ListExascaleDbStorageVaultsInput.struct_class = Types::ListExascaleDbStorageVaultsInput

    ListExascaleDbStorageVaultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListExascaleDbStorageVaultsOutput.add_member(:exascale_db_storage_vaults, Shapes::ShapeRef.new(shape: ExascaleDbStorageVaultList, required: true, location_name: "exascaleDbStorageVaults"))
    ListExascaleDbStorageVaultsOutput.struct_class = Types::ListExascaleDbStorageVaultsOutput

    ListGiMinorVersionsInput.add_member(:gi_version, Shapes::ShapeRef.new(shape: ListGiMinorVersionsInputGiVersionString, required: true, location_name: "giVersion"))
    ListGiMinorVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListGiMinorVersionsInputMaxResultsInteger, location_name: "maxResults"))
    ListGiMinorVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListGiMinorVersionsInputNextTokenString, location_name: "nextToken"))
    ListGiMinorVersionsInput.add_member(:shape_family, Shapes::ShapeRef.new(shape: ListGiMinorVersionsInputShapeFamilyString, location_name: "shapeFamily"))
    ListGiMinorVersionsInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ListGiMinorVersionsInputAvailabilityZoneString, location_name: "availabilityZone"))
    ListGiMinorVersionsInput.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: ListGiMinorVersionsInputAvailabilityZoneIdString, location_name: "availabilityZoneId"))
    ListGiMinorVersionsInput.struct_class = Types::ListGiMinorVersionsInput

    ListGiMinorVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGiMinorVersionsOutput.add_member(:gi_minor_versions, Shapes::ShapeRef.new(shape: GiMinorVersionList, required: true, location_name: "giMinorVersions"))
    ListGiMinorVersionsOutput.struct_class = Types::ListGiMinorVersionsOutput

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

    LongTermBackupSchedule.add_member(:is_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDisabled"))
    LongTermBackupSchedule.add_member(:repeat_cadence, Shapes::ShapeRef.new(shape: RepeatCadence, location_name: "repeatCadence"))
    LongTermBackupSchedule.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: LongTermBackupScheduleRetentionPeriodInDaysInteger, location_name: "retentionPeriodInDays"))
    LongTermBackupSchedule.add_member(:time_of_backup, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfBackup"))
    LongTermBackupSchedule.struct_class = Types::LongTermBackupSchedule

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

    OciEncryptionKeyConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: OciEncryptionKeyConfigurationKmsKeyIdString, required: true, location_name: "kmsKeyId"))
    OciEncryptionKeyConfiguration.add_member(:vault_id, Shapes::ShapeRef.new(shape: OciEncryptionKeyConfigurationVaultIdString, required: true, location_name: "vaultId"))
    OciEncryptionKeyConfiguration.struct_class = Types::OciEncryptionKeyConfiguration

    OciIamRole.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRoleArn"))
    OciIamRole.add_member(:aws_integration, Shapes::ShapeRef.new(shape: OciAwsIntegration, location_name: "awsIntegration"))
    OciIamRole.add_member(:status, Shapes::ShapeRef.new(shape: OciIamRoleStatus, location_name: "status"))
    OciIamRole.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    OciIamRole.struct_class = Types::OciIamRole

    OciIamRoleList.member = Shapes::ShapeRef.new(shape: OciIamRole)

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
    OdbNetwork.add_member(:ec2_placement_group_ids, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "ec2PlacementGroupIds"))
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
    OdbNetworkSummary.add_member(:ec2_placement_group_ids, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "ec2PlacementGroupIds"))
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

    OkvEncryptionKeyConfiguration.add_member(:certificate_directory_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "certificateDirectoryName"))
    OkvEncryptionKeyConfiguration.add_member(:certificate_id, Shapes::ShapeRef.new(shape: String, location_name: "certificateId"))
    OkvEncryptionKeyConfiguration.add_member(:directory_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "directoryName"))
    OkvEncryptionKeyConfiguration.add_member(:okv_kms_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "okvKmsKey"))
    OkvEncryptionKeyConfiguration.add_member(:okv_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "okvUri"))
    OkvEncryptionKeyConfiguration.struct_class = Types::OkvEncryptionKeyConfiguration

    PeerNetworkRouteTableIdList.member = Shapes::ShapeRef.new(shape: PeerNetworkRouteTableId)

    PeeredCidrList.member = Shapes::ShapeRef.new(shape: PeeredCidr)

    PointInTimeRestoreConfiguration.add_member(:source_autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "sourceAutonomousDatabaseId"))
    PointInTimeRestoreConfiguration.add_member(:clone_type, Shapes::ShapeRef.new(shape: CloneType, required: true, location_name: "cloneType"))
    PointInTimeRestoreConfiguration.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timestamp"))
    PointInTimeRestoreConfiguration.add_member(:use_latest_available_backup_timestamp, Shapes::ShapeRef.new(shape: Boolean, location_name: "useLatestAvailableBackupTimestamp"))
    PointInTimeRestoreConfiguration.add_member(:clone_table_space_list, Shapes::ShapeRef.new(shape: IntegerList, location_name: "cloneTableSpaceList"))
    PointInTimeRestoreConfiguration.struct_class = Types::PointInTimeRestoreConfiguration

    RebootAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    RebootAutonomousDatabaseInput.add_member(:is_online_reboot, Shapes::ShapeRef.new(shape: Boolean, location_name: "isOnlineReboot"))
    RebootAutonomousDatabaseInput.struct_class = Types::RebootAutonomousDatabaseInput

    RebootAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    RebootAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    RebootAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    RebootAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RebootAutonomousDatabaseOutput.struct_class = Types::RebootAutonomousDatabaseOutput

    RebootDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudVmClusterId"))
    RebootDbNodeInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "exadbVmClusterId"))
    RebootDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    RebootDbNodeInput.struct_class = Types::RebootDbNodeInput

    RebootDbNodeOutput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dbNodeId"))
    RebootDbNodeOutput.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    RebootDbNodeOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RebootDbNodeOutput.struct_class = Types::RebootDbNodeOutput

    RequestTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePoolSummary.add_member(:is_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDisabled"))
    ResourcePoolSummary.add_member(:pool_size, Shapes::ShapeRef.new(shape: Integer, location_name: "poolSize"))
    ResourcePoolSummary.add_member(:pool_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: Integer, location_name: "poolStorageSizeInTBs"))
    ResourcePoolSummary.add_member(:available_storage_capacity_in_t_bs, Shapes::ShapeRef.new(shape: Double, location_name: "availableStorageCapacityInTBs"))
    ResourcePoolSummary.add_member(:total_compute_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "totalComputeCapacity"))
    ResourcePoolSummary.add_member(:available_compute_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "availableComputeCapacity"))
    ResourcePoolSummary.struct_class = Types::ResourcePoolSummary

    ResponseTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    RestoreAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    RestoreAutonomousDatabaseInput.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "timestamp"))
    RestoreAutonomousDatabaseInput.struct_class = Types::RestoreAutonomousDatabaseInput

    RestoreAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    RestoreAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    RestoreAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    RestoreAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RestoreAutonomousDatabaseOutput.struct_class = Types::RestoreAutonomousDatabaseOutput

    RestoreFromBackupConfiguration.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseBackupId"))
    RestoreFromBackupConfiguration.add_member(:clone_type, Shapes::ShapeRef.new(shape: CloneType, required: true, location_name: "cloneType"))
    RestoreFromBackupConfiguration.add_member(:clone_table_space_list, Shapes::ShapeRef.new(shape: IntegerList, location_name: "cloneTableSpaceList"))
    RestoreFromBackupConfiguration.struct_class = Types::RestoreFromBackupConfiguration

    S3Access.add_member(:status, Shapes::ShapeRef.new(shape: ManagedResourceStatus, location_name: "status"))
    S3Access.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "ipv4Addresses"))
    S3Access.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    S3Access.add_member(:s3_policy_document, Shapes::ShapeRef.new(shape: String, location_name: "s3PolicyDocument"))
    S3Access.struct_class = Types::S3Access

    ScheduledOperationDetails.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, required: true, location_name: "dayOfWeek"))
    ScheduledOperationDetails.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: String, location_name: "scheduledStartTime"))
    ScheduledOperationDetails.add_member(:scheduled_stop_time, Shapes::ShapeRef.new(shape: String, location_name: "scheduledStopTime"))
    ScheduledOperationDetails.struct_class = Types::ScheduledOperationDetails

    ScheduledOperationDetailsList.member = Shapes::ShapeRef.new(shape: ScheduledOperationDetails)

    SensitiveStringList.member = Shapes::ShapeRef.new(shape: SensitiveString)

    ServiceNetworkEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcEndpointId"))
    ServiceNetworkEndpoint.add_member(:vpc_endpoint_type, Shapes::ShapeRef.new(shape: VpcEndpointType, location_name: "vpcEndpointType"))
    ServiceNetworkEndpoint.struct_class = Types::ServiceNetworkEndpoint

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ShapeAttributeList.member = Shapes::ShapeRef.new(shape: ShapeAttribute)

    ShrinkAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    ShrinkAutonomousDatabaseInput.struct_class = Types::ShrinkAutonomousDatabaseInput

    ShrinkAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    ShrinkAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ShrinkAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    ShrinkAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ShrinkAutonomousDatabaseOutput.struct_class = Types::ShrinkAutonomousDatabaseOutput

    SourceConfiguration.add_member(:database_clone, Shapes::ShapeRef.new(shape: DatabaseCloneConfiguration, location_name: "databaseClone"))
    SourceConfiguration.add_member(:restore_from_backup, Shapes::ShapeRef.new(shape: RestoreFromBackupConfiguration, location_name: "restoreFromBackup"))
    SourceConfiguration.add_member(:point_in_time_restore, Shapes::ShapeRef.new(shape: PointInTimeRestoreConfiguration, location_name: "pointInTimeRestore"))
    SourceConfiguration.add_member(:cross_region_data_guard, Shapes::ShapeRef.new(shape: CrossRegionDataGuardConfiguration, location_name: "crossRegionDataGuard"))
    SourceConfiguration.add_member(:cross_region_disaster_recovery, Shapes::ShapeRef.new(shape: CrossRegionDisasterRecoveryConfiguration, location_name: "crossRegionDisasterRecovery"))
    SourceConfiguration.add_member(:clone_to_refreshable, Shapes::ShapeRef.new(shape: CloneToRefreshableConfiguration, location_name: "cloneToRefreshable"))
    SourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceConfiguration.add_member_subclass(:database_clone, Types::SourceConfiguration::DatabaseClone)
    SourceConfiguration.add_member_subclass(:restore_from_backup, Types::SourceConfiguration::RestoreFromBackup)
    SourceConfiguration.add_member_subclass(:point_in_time_restore, Types::SourceConfiguration::PointInTimeRestore)
    SourceConfiguration.add_member_subclass(:cross_region_data_guard, Types::SourceConfiguration::CrossRegionDataGuard)
    SourceConfiguration.add_member_subclass(:cross_region_disaster_recovery, Types::SourceConfiguration::CrossRegionDisasterRecovery)
    SourceConfiguration.add_member_subclass(:clone_to_refreshable, Types::SourceConfiguration::CloneToRefreshable)
    SourceConfiguration.add_member_subclass(:unknown, Types::SourceConfiguration::Unknown)
    SourceConfiguration.struct_class = Types::SourceConfiguration

    StartAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    StartAutonomousDatabaseInput.struct_class = Types::StartAutonomousDatabaseInput

    StartAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    StartAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    StartAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    StartAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StartAutonomousDatabaseOutput.struct_class = Types::StartAutonomousDatabaseOutput

    StartDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudVmClusterId"))
    StartDbNodeInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "exadbVmClusterId"))
    StartDbNodeInput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dbNodeId"))
    StartDbNodeInput.struct_class = Types::StartDbNodeInput

    StartDbNodeOutput.add_member(:db_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dbNodeId"))
    StartDbNodeOutput.add_member(:status, Shapes::ShapeRef.new(shape: DbNodeResourceStatus, location_name: "status"))
    StartDbNodeOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StartDbNodeOutput.struct_class = Types::StartDbNodeOutput

    StopAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    StopAutonomousDatabaseInput.struct_class = Types::StopAutonomousDatabaseInput

    StopAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    StopAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    StopAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    StopAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StopAutonomousDatabaseOutput.struct_class = Types::StopAutonomousDatabaseOutput

    StopDbNodeInput.add_member(:cloud_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "cloudVmClusterId"))
    StopDbNodeInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "exadbVmClusterId"))
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

    SubscriptionError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    SubscriptionError.struct_class = Types::SubscriptionError

    SubscriptionErrors.member = Shapes::ShapeRef.new(shape: SubscriptionError)

    SwitchoverAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    SwitchoverAutonomousDatabaseInput.add_member(:peer_db_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "peerDbArn"))
    SwitchoverAutonomousDatabaseInput.struct_class = Types::SwitchoverAutonomousDatabaseInput

    SwitchoverAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    SwitchoverAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    SwitchoverAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    SwitchoverAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    SwitchoverAutonomousDatabaseOutput.struct_class = Types::SwitchoverAutonomousDatabaseOutput

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

    TransportableTablespace.add_member(:tts_bundle_url, Shapes::ShapeRef.new(shape: String, location_name: "ttsBundleUrl"))
    TransportableTablespace.struct_class = Types::TransportableTablespace

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAutonomousDatabaseBackupInput.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "autonomousDatabaseBackupId"))
    UpdateAutonomousDatabaseBackupInput.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseBackupInputRetentionPeriodInDaysInteger, location_name: "retentionPeriodInDays"))
    UpdateAutonomousDatabaseBackupInput.struct_class = Types::UpdateAutonomousDatabaseBackupInput

    UpdateAutonomousDatabaseBackupOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateAutonomousDatabaseBackupOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateAutonomousDatabaseBackupOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateAutonomousDatabaseBackupOutput.add_member(:autonomous_database_backup_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseBackupId"))
    UpdateAutonomousDatabaseBackupOutput.struct_class = Types::UpdateAutonomousDatabaseBackupOutput

    UpdateAutonomousDatabaseInput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "autonomousDatabaseId"))
    UpdateAutonomousDatabaseInput.add_member(:admin_password, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputAdminPasswordString, location_name: "adminPassword"))
    UpdateAutonomousDatabaseInput.add_member(:compute_count, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputComputeCountDouble, location_name: "computeCount"))
    UpdateAutonomousDatabaseInput.add_member(:cpu_core_count, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputCpuCoreCountInteger, location_name: "cpuCoreCount"))
    UpdateAutonomousDatabaseInput.add_member(:data_storage_size_in_t_bs, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputDataStorageSizeInTBsInteger, location_name: "dataStorageSizeInTBs"))
    UpdateAutonomousDatabaseInput.add_member(:data_storage_size_in_g_bs, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputDataStorageSizeInGBsInteger, location_name: "dataStorageSizeInGBs"))
    UpdateAutonomousDatabaseInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    UpdateAutonomousDatabaseInput.add_member(:db_name, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputDbNameString, location_name: "dbName"))
    UpdateAutonomousDatabaseInput.add_member(:db_version, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputDbVersionString, location_name: "dbVersion"))
    UpdateAutonomousDatabaseInput.add_member(:db_workload, Shapes::ShapeRef.new(shape: DbWorkload, location_name: "dbWorkload"))
    UpdateAutonomousDatabaseInput.add_member(:db_tools_details, Shapes::ShapeRef.new(shape: DatabaseToolList, location_name: "dbToolsDetails"))
    UpdateAutonomousDatabaseInput.add_member(:database_edition, Shapes::ShapeRef.new(shape: DatabaseEdition, location_name: "databaseEdition"))
    UpdateAutonomousDatabaseInput.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    UpdateAutonomousDatabaseInput.add_member(:is_auto_scaling_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingEnabled"))
    UpdateAutonomousDatabaseInput.add_member(:is_auto_scaling_for_storage_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoScalingForStorageEnabled"))
    UpdateAutonomousDatabaseInput.add_member(:is_backup_retention_locked, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBackupRetentionLocked"))
    UpdateAutonomousDatabaseInput.add_member(:is_local_data_guard_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLocalDataGuardEnabled"))
    UpdateAutonomousDatabaseInput.add_member(:is_mtls_connection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "isMtlsConnectionRequired"))
    UpdateAutonomousDatabaseInput.add_member(:is_refreshable_clone, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRefreshableClone"))
    UpdateAutonomousDatabaseInput.add_member(:is_disconnect_peer, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDisconnectPeer"))
    UpdateAutonomousDatabaseInput.add_member(:backup_retention_period_in_days, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputBackupRetentionPeriodInDaysInteger, location_name: "backupRetentionPeriodInDays"))
    UpdateAutonomousDatabaseInput.add_member(:byol_compute_count_limit, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputByolComputeCountLimitDouble, location_name: "byolComputeCountLimit"))
    UpdateAutonomousDatabaseInput.add_member(:local_adg_auto_failover_max_data_loss_limit, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputLocalAdgAutoFailoverMaxDataLossLimitInteger, location_name: "localAdgAutoFailoverMaxDataLossLimit"))
    UpdateAutonomousDatabaseInput.add_member(:autonomous_maintenance_schedule_type, Shapes::ShapeRef.new(shape: AutonomousMaintenanceScheduleType, location_name: "autonomousMaintenanceScheduleType"))
    UpdateAutonomousDatabaseInput.add_member(:customer_contacts_to_send_to_oci, Shapes::ShapeRef.new(shape: CustomerContacts, location_name: "customerContactsToSendToOCI"))
    UpdateAutonomousDatabaseInput.add_member(:scheduled_operations, Shapes::ShapeRef.new(shape: ScheduledOperationDetailsList, location_name: "scheduledOperations"))
    UpdateAutonomousDatabaseInput.add_member(:long_term_backup_schedule, Shapes::ShapeRef.new(shape: LongTermBackupSchedule, location_name: "longTermBackupSchedule"))
    UpdateAutonomousDatabaseInput.add_member(:open_mode, Shapes::ShapeRef.new(shape: OpenMode, location_name: "openMode"))
    UpdateAutonomousDatabaseInput.add_member(:permission_level, Shapes::ShapeRef.new(shape: PermissionLevel, location_name: "permissionLevel"))
    UpdateAutonomousDatabaseInput.add_member(:refreshable_mode, Shapes::ShapeRef.new(shape: RefreshableMode, location_name: "refreshableMode"))
    UpdateAutonomousDatabaseInput.add_member(:private_endpoint_ip, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointIp"))
    UpdateAutonomousDatabaseInput.add_member(:private_endpoint_label, Shapes::ShapeRef.new(shape: String, location_name: "privateEndpointLabel"))
    UpdateAutonomousDatabaseInput.add_member(:peer_db_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "peerDbId"))
    UpdateAutonomousDatabaseInput.add_member(:resource_pool_leader_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: "resourcePoolLeaderId"))
    UpdateAutonomousDatabaseInput.add_member(:resource_pool_summary, Shapes::ShapeRef.new(shape: ResourcePoolSummary, location_name: "resourcePoolSummary"))
    UpdateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips_source, Shapes::ShapeRef.new(shape: StandbyAllowlistedIpsSource, location_name: "standbyAllowlistedIpsSource"))
    UpdateAutonomousDatabaseInput.add_member(:standby_allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "standbyAllowlistedIps"))
    UpdateAutonomousDatabaseInput.add_member(:allowlisted_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "allowlistedIps"))
    UpdateAutonomousDatabaseInput.add_member(:auto_refresh_frequency_in_seconds, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputAutoRefreshFrequencyInSecondsInteger, location_name: "autoRefreshFrequencyInSeconds"))
    UpdateAutonomousDatabaseInput.add_member(:auto_refresh_point_lag_in_seconds, Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInputAutoRefreshPointLagInSecondsInteger, location_name: "autoRefreshPointLagInSeconds"))
    UpdateAutonomousDatabaseInput.add_member(:time_of_auto_refresh_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfAutoRefreshStart"))
    UpdateAutonomousDatabaseInput.add_member(:encryption_key_provider, Shapes::ShapeRef.new(shape: EncryptionKeyProviderInput, location_name: "encryptionKeyProvider"))
    UpdateAutonomousDatabaseInput.add_member(:encryption_key_configuration, Shapes::ShapeRef.new(shape: EncryptionKeyConfigurationInput, location_name: "encryptionKeyConfiguration"))
    UpdateAutonomousDatabaseInput.add_member(:admin_password_source, Shapes::ShapeRef.new(shape: AdminPasswordSource, location_name: "adminPasswordSource"))
    UpdateAutonomousDatabaseInput.add_member(:admin_password_source_configuration, Shapes::ShapeRef.new(shape: AdminPasswordSourceConfigurationInput, location_name: "adminPasswordSourceConfiguration"))
    UpdateAutonomousDatabaseInput.struct_class = Types::UpdateAutonomousDatabaseInput

    UpdateAutonomousDatabaseOutput.add_member(:autonomous_database_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autonomousDatabaseId"))
    UpdateAutonomousDatabaseOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateAutonomousDatabaseOutput.add_member(:status, Shapes::ShapeRef.new(shape: AutonomousDatabaseResourceStatus, location_name: "status"))
    UpdateAutonomousDatabaseOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateAutonomousDatabaseOutput.struct_class = Types::UpdateAutonomousDatabaseOutput

    UpdateCloudExadataInfrastructureInput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "cloudExadataInfrastructureId"))
    UpdateCloudExadataInfrastructureInput.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    UpdateCloudExadataInfrastructureInput.struct_class = Types::UpdateCloudExadataInfrastructureInput

    UpdateCloudExadataInfrastructureOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateCloudExadataInfrastructureOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateCloudExadataInfrastructureOutput.add_member(:cloud_exadata_infrastructure_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cloudExadataInfrastructureId"))
    UpdateCloudExadataInfrastructureOutput.struct_class = Types::UpdateCloudExadataInfrastructureOutput

    UpdateExadbVmClusterInput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exadbVmClusterId"))
    UpdateExadbVmClusterInput.add_member(:data_collection_options, Shapes::ShapeRef.new(shape: DataCollectionOptions, location_name: "dataCollectionOptions"))
    UpdateExadbVmClusterInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    UpdateExadbVmClusterInput.add_member(:enabled_ecpu_count, Shapes::ShapeRef.new(shape: UpdateExadbVmClusterInputEnabledEcpuCountInteger, location_name: "enabledEcpuCount"))
    UpdateExadbVmClusterInput.add_member(:grid_image_id, Shapes::ShapeRef.new(shape: UpdateExadbVmClusterInputGridImageIdString, location_name: "gridImageId"))
    UpdateExadbVmClusterInput.add_member(:license_model, Shapes::ShapeRef.new(shape: LicenseModel, location_name: "licenseModel"))
    UpdateExadbVmClusterInput.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: StringList, location_name: "sshPublicKeys"))
    UpdateExadbVmClusterInput.add_member(:system_version, Shapes::ShapeRef.new(shape: UpdateExadbVmClusterInputSystemVersionString, location_name: "systemVersion"))
    UpdateExadbVmClusterInput.add_member(:total_ecpu_count, Shapes::ShapeRef.new(shape: UpdateExadbVmClusterInputTotalEcpuCountInteger, location_name: "totalEcpuCount"))
    UpdateExadbVmClusterInput.add_member(:update_action, Shapes::ShapeRef.new(shape: UpdateAction, location_name: "updateAction"))
    UpdateExadbVmClusterInput.add_member(:vm_file_system_storage_total_size_in_g_bs, Shapes::ShapeRef.new(shape: UpdateExadbVmClusterInputVmFileSystemStorageTotalSizeInGBsInteger, location_name: "vmFileSystemStorageTotalSizeInGBs"))
    UpdateExadbVmClusterInput.struct_class = Types::UpdateExadbVmClusterInput

    UpdateExadbVmClusterOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateExadbVmClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateExadbVmClusterOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateExadbVmClusterOutput.add_member(:exadb_vm_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exadbVmClusterId"))
    UpdateExadbVmClusterOutput.struct_class = Types::UpdateExadbVmClusterOutput

    UpdateExascaleDbStorageVaultInput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "exascaleDbStorageVaultId"))
    UpdateExascaleDbStorageVaultInput.add_member(:additional_flash_cache_in_percent, Shapes::ShapeRef.new(shape: UpdateExascaleDbStorageVaultInputAdditionalFlashCacheInPercentInteger, location_name: "additionalFlashCacheInPercent"))
    UpdateExascaleDbStorageVaultInput.add_member(:autoscale_limit_in_g_bs, Shapes::ShapeRef.new(shape: UpdateExascaleDbStorageVaultInputAutoscaleLimitInGBsInteger, location_name: "autoscaleLimitInGBs"))
    UpdateExascaleDbStorageVaultInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdateExascaleDbStorageVaultInputDescriptionString, location_name: "description"))
    UpdateExascaleDbStorageVaultInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResourceDisplayName, location_name: "displayName"))
    UpdateExascaleDbStorageVaultInput.add_member(:high_capacity_database_storage_total_size_in_g_bs, Shapes::ShapeRef.new(shape: UpdateExascaleDbStorageVaultInputHighCapacityDatabaseStorageTotalSizeInGBsInteger, location_name: "highCapacityDatabaseStorageTotalSizeInGBs"))
    UpdateExascaleDbStorageVaultInput.add_member(:is_autoscale_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAutoscaleEnabled"))
    UpdateExascaleDbStorageVaultInput.struct_class = Types::UpdateExascaleDbStorageVaultInput

    UpdateExascaleDbStorageVaultOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    UpdateExascaleDbStorageVaultOutput.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    UpdateExascaleDbStorageVaultOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateExascaleDbStorageVaultOutput.add_member(:exascale_db_storage_vault_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exascaleDbStorageVaultId"))
    UpdateExascaleDbStorageVaultOutput.struct_class = Types::UpdateExascaleDbStorageVaultOutput

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

    WalletPasswordSourceConfiguration.add_member(:customer_managed_aws_secret, Shapes::ShapeRef.new(shape: CustomerManagedAwsSecretConfiguration, location_name: "customerManagedAwsSecret"))
    WalletPasswordSourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WalletPasswordSourceConfiguration.add_member_subclass(:customer_managed_aws_secret, Types::WalletPasswordSourceConfiguration::CustomerManagedAwsSecret)
    WalletPasswordSourceConfiguration.add_member_subclass(:unknown, Types::WalletPasswordSourceConfiguration::Unknown)
    WalletPasswordSourceConfiguration.struct_class = Types::WalletPasswordSourceConfiguration

    WalletPasswordSourceConfigurationInput.add_member(:customer_managed_aws_secret, Shapes::ShapeRef.new(shape: CustomerManagedAwsSecretConfigurationInput, location_name: "customerManagedAwsSecret"))
    WalletPasswordSourceConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WalletPasswordSourceConfigurationInput.add_member_subclass(:customer_managed_aws_secret, Types::WalletPasswordSourceConfigurationInput::CustomerManagedAwsSecret)
    WalletPasswordSourceConfigurationInput.add_member_subclass(:unknown, Types::WalletPasswordSourceConfigurationInput::Unknown)
    WalletPasswordSourceConfigurationInput.struct_class = Types::WalletPasswordSourceConfigurationInput

    WalletPasswordSourceSummary.add_member(:password_source, Shapes::ShapeRef.new(shape: WalletPasswordSource, location_name: "passwordSource"))
    WalletPasswordSourceSummary.add_member(:password_source_configuration, Shapes::ShapeRef.new(shape: WalletPasswordSourceConfiguration, location_name: "passwordSourceConfiguration"))
    WalletPasswordSourceSummary.struct_class = Types::WalletPasswordSourceSummary

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

      api.add_operation(:associate_virtual_machines_to_exadb_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateVirtualMachinesToExadbVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateVirtualMachinesToExadbVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateVirtualMachinesToExadbVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_autonomous_database_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutonomousDatabaseBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseBackupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_autonomous_database_wallet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutonomousDatabaseWallet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseWalletInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAutonomousDatabaseWalletOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:create_exadb_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExadbVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExadbVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateExadbVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_exascale_db_storage_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExascaleDbStorageVault"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultInput)
        o.output = Shapes::ShapeRef.new(shape: CreateExascaleDbStorageVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:delete_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_autonomous_database_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutonomousDatabaseBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutonomousDatabaseBackupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutonomousDatabaseBackupOutput)
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

      api.add_operation(:delete_exadb_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExadbVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExadbVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteExadbVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_exascale_db_storage_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExascaleDbStorageVault"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExascaleDbStorageVaultInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteExascaleDbStorageVaultOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:disassociate_virtual_machines_from_exadb_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateVirtualMachinesFromExadbVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateVirtualMachinesFromExadbVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateVirtualMachinesFromExadbVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:failover_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: FailoverAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: GetAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_autonomous_database_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutonomousDatabaseBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutonomousDatabaseBackupInput)
        o.output = Shapes::ShapeRef.new(shape: GetAutonomousDatabaseBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_autonomous_database_wallet_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutonomousDatabaseWalletDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutonomousDatabaseWalletDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: GetAutonomousDatabaseWalletDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_exadb_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExadbVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExadbVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: GetExadbVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_exascale_db_storage_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExascaleDbStorageVault"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExascaleDbStorageVaultInput)
        o.output = Shapes::ShapeRef.new(shape: GetExascaleDbStorageVaultOutput)
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

      api.add_operation(:list_autonomous_database_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousDatabaseBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseBackupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseBackupsOutput)
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

      api.add_operation(:list_autonomous_database_character_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousDatabaseCharacterSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseCharacterSetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseCharacterSetsOutput)
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

      api.add_operation(:list_autonomous_database_clones, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousDatabaseClones"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseClonesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseClonesOutput)
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

      api.add_operation(:list_autonomous_database_peers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousDatabasePeers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousDatabasePeersInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousDatabasePeersOutput)
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

      api.add_operation(:list_autonomous_database_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousDatabaseVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousDatabaseVersionsOutput)
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

      api.add_operation(:list_autonomous_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutonomousDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAutonomousDatabasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAutonomousDatabasesOutput)
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

      api.add_operation(:list_exadb_vm_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExadbVmClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExadbVmClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListExadbVmClustersOutput)
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

      api.add_operation(:list_exascale_db_storage_vaults, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExascaleDbStorageVaults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExascaleDbStorageVaultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListExascaleDbStorageVaultsOutput)
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

      api.add_operation(:list_gi_minor_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGiMinorVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGiMinorVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGiMinorVersionsOutput)
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

      api.add_operation(:reboot_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: RebootAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:restore_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: RestoreAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:shrink_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ShrinkAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ShrinkAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: ShrinkAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: StartAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:stop_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: StopAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:switchover_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SwitchoverAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SwitchoverAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: SwitchoverAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:update_autonomous_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutonomousDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_autonomous_database_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutonomousDatabaseBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseBackupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutonomousDatabaseBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:update_exadb_vm_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExadbVmCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExadbVmClusterInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateExadbVmClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_exascale_db_storage_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExascaleDbStorageVault"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExascaleDbStorageVaultInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateExascaleDbStorageVaultOutput)
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

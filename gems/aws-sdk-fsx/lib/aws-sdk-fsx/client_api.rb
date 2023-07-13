# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FSx
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    ActiveDirectoryBackupAttributes = Shapes::StructureShape.new(name: 'ActiveDirectoryBackupAttributes')
    ActiveDirectoryError = Shapes::StructureShape.new(name: 'ActiveDirectoryError')
    ActiveDirectoryErrorType = Shapes::StringShape.new(name: 'ActiveDirectoryErrorType')
    ActiveDirectoryFullyQualifiedName = Shapes::StringShape.new(name: 'ActiveDirectoryFullyQualifiedName')
    AdminPassword = Shapes::StringShape.new(name: 'AdminPassword')
    AdministrativeAction = Shapes::StructureShape.new(name: 'AdministrativeAction')
    AdministrativeActionFailureDetails = Shapes::StructureShape.new(name: 'AdministrativeActionFailureDetails')
    AdministrativeActionType = Shapes::StringShape.new(name: 'AdministrativeActionType')
    AdministrativeActions = Shapes::ListShape.new(name: 'AdministrativeActions')
    Alias = Shapes::StructureShape.new(name: 'Alias')
    AliasLifecycle = Shapes::StringShape.new(name: 'AliasLifecycle')
    Aliases = Shapes::ListShape.new(name: 'Aliases')
    AlternateDNSName = Shapes::StringShape.new(name: 'AlternateDNSName')
    AlternateDNSNames = Shapes::ListShape.new(name: 'AlternateDNSNames')
    ArchivePath = Shapes::StringShape.new(name: 'ArchivePath')
    AssociateFileSystemAliasesRequest = Shapes::StructureShape.new(name: 'AssociateFileSystemAliasesRequest')
    AssociateFileSystemAliasesResponse = Shapes::StructureShape.new(name: 'AssociateFileSystemAliasesResponse')
    AutoExportPolicy = Shapes::StructureShape.new(name: 'AutoExportPolicy')
    AutoImportPolicy = Shapes::StructureShape.new(name: 'AutoImportPolicy')
    AutoImportPolicyType = Shapes::StringShape.new(name: 'AutoImportPolicyType')
    AutocommitPeriod = Shapes::StructureShape.new(name: 'AutocommitPeriod')
    AutocommitPeriodType = Shapes::StringShape.new(name: 'AutocommitPeriodType')
    AutocommitPeriodValue = Shapes::IntegerShape.new(name: 'AutocommitPeriodValue')
    AutomaticBackupRetentionDays = Shapes::IntegerShape.new(name: 'AutomaticBackupRetentionDays')
    Backup = Shapes::StructureShape.new(name: 'Backup')
    BackupBeingCopied = Shapes::StructureShape.new(name: 'BackupBeingCopied')
    BackupFailureDetails = Shapes::StructureShape.new(name: 'BackupFailureDetails')
    BackupId = Shapes::StringShape.new(name: 'BackupId')
    BackupIds = Shapes::ListShape.new(name: 'BackupIds')
    BackupInProgress = Shapes::StructureShape.new(name: 'BackupInProgress')
    BackupLifecycle = Shapes::StringShape.new(name: 'BackupLifecycle')
    BackupNotFound = Shapes::StructureShape.new(name: 'BackupNotFound')
    BackupRestoring = Shapes::StructureShape.new(name: 'BackupRestoring')
    BackupType = Shapes::StringShape.new(name: 'BackupType')
    Backups = Shapes::ListShape.new(name: 'Backups')
    BadRequest = Shapes::StructureShape.new(name: 'BadRequest')
    BatchImportMetaDataOnCreate = Shapes::BooleanShape.new(name: 'BatchImportMetaDataOnCreate')
    CancelDataRepositoryTaskRequest = Shapes::StructureShape.new(name: 'CancelDataRepositoryTaskRequest')
    CancelDataRepositoryTaskResponse = Shapes::StructureShape.new(name: 'CancelDataRepositoryTaskResponse')
    CapacityToRelease = Shapes::IntegerShape.new(name: 'CapacityToRelease')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CompletionReport = Shapes::StructureShape.new(name: 'CompletionReport')
    CoolingPeriod = Shapes::IntegerShape.new(name: 'CoolingPeriod')
    CopyBackupRequest = Shapes::StructureShape.new(name: 'CopyBackupRequest')
    CopyBackupResponse = Shapes::StructureShape.new(name: 'CopyBackupResponse')
    CopyTagsToDataRepositoryAssociations = Shapes::BooleanShape.new(name: 'CopyTagsToDataRepositoryAssociations')
    CreateBackupRequest = Shapes::StructureShape.new(name: 'CreateBackupRequest')
    CreateBackupResponse = Shapes::StructureShape.new(name: 'CreateBackupResponse')
    CreateDataRepositoryAssociationRequest = Shapes::StructureShape.new(name: 'CreateDataRepositoryAssociationRequest')
    CreateDataRepositoryAssociationResponse = Shapes::StructureShape.new(name: 'CreateDataRepositoryAssociationResponse')
    CreateDataRepositoryTaskRequest = Shapes::StructureShape.new(name: 'CreateDataRepositoryTaskRequest')
    CreateDataRepositoryTaskResponse = Shapes::StructureShape.new(name: 'CreateDataRepositoryTaskResponse')
    CreateFileCacheDataRepositoryAssociations = Shapes::ListShape.new(name: 'CreateFileCacheDataRepositoryAssociations')
    CreateFileCacheLustreConfiguration = Shapes::StructureShape.new(name: 'CreateFileCacheLustreConfiguration')
    CreateFileCacheRequest = Shapes::StructureShape.new(name: 'CreateFileCacheRequest')
    CreateFileCacheResponse = Shapes::StructureShape.new(name: 'CreateFileCacheResponse')
    CreateFileSystemFromBackupRequest = Shapes::StructureShape.new(name: 'CreateFileSystemFromBackupRequest')
    CreateFileSystemFromBackupResponse = Shapes::StructureShape.new(name: 'CreateFileSystemFromBackupResponse')
    CreateFileSystemLustreConfiguration = Shapes::StructureShape.new(name: 'CreateFileSystemLustreConfiguration')
    CreateFileSystemOntapConfiguration = Shapes::StructureShape.new(name: 'CreateFileSystemOntapConfiguration')
    CreateFileSystemOpenZFSConfiguration = Shapes::StructureShape.new(name: 'CreateFileSystemOpenZFSConfiguration')
    CreateFileSystemRequest = Shapes::StructureShape.new(name: 'CreateFileSystemRequest')
    CreateFileSystemResponse = Shapes::StructureShape.new(name: 'CreateFileSystemResponse')
    CreateFileSystemWindowsConfiguration = Shapes::StructureShape.new(name: 'CreateFileSystemWindowsConfiguration')
    CreateOntapVolumeConfiguration = Shapes::StructureShape.new(name: 'CreateOntapVolumeConfiguration')
    CreateOpenZFSOriginSnapshotConfiguration = Shapes::StructureShape.new(name: 'CreateOpenZFSOriginSnapshotConfiguration')
    CreateOpenZFSVolumeConfiguration = Shapes::StructureShape.new(name: 'CreateOpenZFSVolumeConfiguration')
    CreateSnaplockConfiguration = Shapes::StructureShape.new(name: 'CreateSnaplockConfiguration')
    CreateSnapshotRequest = Shapes::StructureShape.new(name: 'CreateSnapshotRequest')
    CreateSnapshotResponse = Shapes::StructureShape.new(name: 'CreateSnapshotResponse')
    CreateStorageVirtualMachineRequest = Shapes::StructureShape.new(name: 'CreateStorageVirtualMachineRequest')
    CreateStorageVirtualMachineResponse = Shapes::StructureShape.new(name: 'CreateStorageVirtualMachineResponse')
    CreateSvmActiveDirectoryConfiguration = Shapes::StructureShape.new(name: 'CreateSvmActiveDirectoryConfiguration')
    CreateVolumeFromBackupRequest = Shapes::StructureShape.new(name: 'CreateVolumeFromBackupRequest')
    CreateVolumeFromBackupResponse = Shapes::StructureShape.new(name: 'CreateVolumeFromBackupResponse')
    CreateVolumeRequest = Shapes::StructureShape.new(name: 'CreateVolumeRequest')
    CreateVolumeResponse = Shapes::StructureShape.new(name: 'CreateVolumeResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DNSName = Shapes::StringShape.new(name: 'DNSName')
    DailyTime = Shapes::StringShape.new(name: 'DailyTime')
    DataCompressionType = Shapes::StringShape.new(name: 'DataCompressionType')
    DataRepositoryAssociation = Shapes::StructureShape.new(name: 'DataRepositoryAssociation')
    DataRepositoryAssociationId = Shapes::StringShape.new(name: 'DataRepositoryAssociationId')
    DataRepositoryAssociationIds = Shapes::ListShape.new(name: 'DataRepositoryAssociationIds')
    DataRepositoryAssociationNotFound = Shapes::StructureShape.new(name: 'DataRepositoryAssociationNotFound')
    DataRepositoryAssociations = Shapes::ListShape.new(name: 'DataRepositoryAssociations')
    DataRepositoryConfiguration = Shapes::StructureShape.new(name: 'DataRepositoryConfiguration')
    DataRepositoryFailureDetails = Shapes::StructureShape.new(name: 'DataRepositoryFailureDetails')
    DataRepositoryLifecycle = Shapes::StringShape.new(name: 'DataRepositoryLifecycle')
    DataRepositoryTask = Shapes::StructureShape.new(name: 'DataRepositoryTask')
    DataRepositoryTaskEnded = Shapes::StructureShape.new(name: 'DataRepositoryTaskEnded')
    DataRepositoryTaskExecuting = Shapes::StructureShape.new(name: 'DataRepositoryTaskExecuting')
    DataRepositoryTaskFailureDetails = Shapes::StructureShape.new(name: 'DataRepositoryTaskFailureDetails')
    DataRepositoryTaskFilter = Shapes::StructureShape.new(name: 'DataRepositoryTaskFilter')
    DataRepositoryTaskFilterName = Shapes::StringShape.new(name: 'DataRepositoryTaskFilterName')
    DataRepositoryTaskFilterValue = Shapes::StringShape.new(name: 'DataRepositoryTaskFilterValue')
    DataRepositoryTaskFilterValues = Shapes::ListShape.new(name: 'DataRepositoryTaskFilterValues')
    DataRepositoryTaskFilters = Shapes::ListShape.new(name: 'DataRepositoryTaskFilters')
    DataRepositoryTaskLifecycle = Shapes::StringShape.new(name: 'DataRepositoryTaskLifecycle')
    DataRepositoryTaskNotFound = Shapes::StructureShape.new(name: 'DataRepositoryTaskNotFound')
    DataRepositoryTaskPath = Shapes::StringShape.new(name: 'DataRepositoryTaskPath')
    DataRepositoryTaskPaths = Shapes::ListShape.new(name: 'DataRepositoryTaskPaths')
    DataRepositoryTaskStatus = Shapes::StructureShape.new(name: 'DataRepositoryTaskStatus')
    DataRepositoryTaskType = Shapes::StringShape.new(name: 'DataRepositoryTaskType')
    DataRepositoryTasks = Shapes::ListShape.new(name: 'DataRepositoryTasks')
    DeleteBackupRequest = Shapes::StructureShape.new(name: 'DeleteBackupRequest')
    DeleteBackupResponse = Shapes::StructureShape.new(name: 'DeleteBackupResponse')
    DeleteDataInFileSystem = Shapes::BooleanShape.new(name: 'DeleteDataInFileSystem')
    DeleteDataRepositoryAssociationRequest = Shapes::StructureShape.new(name: 'DeleteDataRepositoryAssociationRequest')
    DeleteDataRepositoryAssociationResponse = Shapes::StructureShape.new(name: 'DeleteDataRepositoryAssociationResponse')
    DeleteFileCacheRequest = Shapes::StructureShape.new(name: 'DeleteFileCacheRequest')
    DeleteFileCacheResponse = Shapes::StructureShape.new(name: 'DeleteFileCacheResponse')
    DeleteFileSystemLustreConfiguration = Shapes::StructureShape.new(name: 'DeleteFileSystemLustreConfiguration')
    DeleteFileSystemLustreResponse = Shapes::StructureShape.new(name: 'DeleteFileSystemLustreResponse')
    DeleteFileSystemOpenZFSConfiguration = Shapes::StructureShape.new(name: 'DeleteFileSystemOpenZFSConfiguration')
    DeleteFileSystemOpenZFSOption = Shapes::StringShape.new(name: 'DeleteFileSystemOpenZFSOption')
    DeleteFileSystemOpenZFSOptions = Shapes::ListShape.new(name: 'DeleteFileSystemOpenZFSOptions')
    DeleteFileSystemOpenZFSResponse = Shapes::StructureShape.new(name: 'DeleteFileSystemOpenZFSResponse')
    DeleteFileSystemRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemRequest')
    DeleteFileSystemResponse = Shapes::StructureShape.new(name: 'DeleteFileSystemResponse')
    DeleteFileSystemWindowsConfiguration = Shapes::StructureShape.new(name: 'DeleteFileSystemWindowsConfiguration')
    DeleteFileSystemWindowsResponse = Shapes::StructureShape.new(name: 'DeleteFileSystemWindowsResponse')
    DeleteOpenZFSVolumeOption = Shapes::StringShape.new(name: 'DeleteOpenZFSVolumeOption')
    DeleteOpenZFSVolumeOptions = Shapes::ListShape.new(name: 'DeleteOpenZFSVolumeOptions')
    DeleteSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteSnapshotRequest')
    DeleteSnapshotResponse = Shapes::StructureShape.new(name: 'DeleteSnapshotResponse')
    DeleteStorageVirtualMachineRequest = Shapes::StructureShape.new(name: 'DeleteStorageVirtualMachineRequest')
    DeleteStorageVirtualMachineResponse = Shapes::StructureShape.new(name: 'DeleteStorageVirtualMachineResponse')
    DeleteVolumeOntapConfiguration = Shapes::StructureShape.new(name: 'DeleteVolumeOntapConfiguration')
    DeleteVolumeOntapResponse = Shapes::StructureShape.new(name: 'DeleteVolumeOntapResponse')
    DeleteVolumeOpenZFSConfiguration = Shapes::StructureShape.new(name: 'DeleteVolumeOpenZFSConfiguration')
    DeleteVolumeRequest = Shapes::StructureShape.new(name: 'DeleteVolumeRequest')
    DeleteVolumeResponse = Shapes::StructureShape.new(name: 'DeleteVolumeResponse')
    DescribeBackupsRequest = Shapes::StructureShape.new(name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = Shapes::StructureShape.new(name: 'DescribeBackupsResponse')
    DescribeDataRepositoryAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeDataRepositoryAssociationsRequest')
    DescribeDataRepositoryAssociationsResponse = Shapes::StructureShape.new(name: 'DescribeDataRepositoryAssociationsResponse')
    DescribeDataRepositoryTasksRequest = Shapes::StructureShape.new(name: 'DescribeDataRepositoryTasksRequest')
    DescribeDataRepositoryTasksResponse = Shapes::StructureShape.new(name: 'DescribeDataRepositoryTasksResponse')
    DescribeFileCachesRequest = Shapes::StructureShape.new(name: 'DescribeFileCachesRequest')
    DescribeFileCachesResponse = Shapes::StructureShape.new(name: 'DescribeFileCachesResponse')
    DescribeFileSystemAliasesRequest = Shapes::StructureShape.new(name: 'DescribeFileSystemAliasesRequest')
    DescribeFileSystemAliasesResponse = Shapes::StructureShape.new(name: 'DescribeFileSystemAliasesResponse')
    DescribeFileSystemsRequest = Shapes::StructureShape.new(name: 'DescribeFileSystemsRequest')
    DescribeFileSystemsResponse = Shapes::StructureShape.new(name: 'DescribeFileSystemsResponse')
    DescribeSnapshotsRequest = Shapes::StructureShape.new(name: 'DescribeSnapshotsRequest')
    DescribeSnapshotsResponse = Shapes::StructureShape.new(name: 'DescribeSnapshotsResponse')
    DescribeStorageVirtualMachinesRequest = Shapes::StructureShape.new(name: 'DescribeStorageVirtualMachinesRequest')
    DescribeStorageVirtualMachinesResponse = Shapes::StructureShape.new(name: 'DescribeStorageVirtualMachinesResponse')
    DescribeVolumesRequest = Shapes::StructureShape.new(name: 'DescribeVolumesRequest')
    DescribeVolumesResponse = Shapes::StructureShape.new(name: 'DescribeVolumesResponse')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryPassword = Shapes::StringShape.new(name: 'DirectoryPassword')
    DirectoryUserName = Shapes::StringShape.new(name: 'DirectoryUserName')
    DisassociateFileSystemAliasesRequest = Shapes::StructureShape.new(name: 'DisassociateFileSystemAliasesRequest')
    DisassociateFileSystemAliasesResponse = Shapes::StructureShape.new(name: 'DisassociateFileSystemAliasesResponse')
    DiskIopsConfiguration = Shapes::StructureShape.new(name: 'DiskIopsConfiguration')
    DiskIopsConfigurationMode = Shapes::StringShape.new(name: 'DiskIopsConfigurationMode')
    DnsIps = Shapes::ListShape.new(name: 'DnsIps')
    DriveCacheType = Shapes::StringShape.new(name: 'DriveCacheType')
    EndTime = Shapes::TimestampShape.new(name: 'EndTime')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypes = Shapes::ListShape.new(name: 'EventTypes')
    FailedCount = Shapes::IntegerShape.new(name: 'FailedCount')
    FileCache = Shapes::StructureShape.new(name: 'FileCache')
    FileCacheCreating = Shapes::StructureShape.new(name: 'FileCacheCreating')
    FileCacheDataRepositoryAssociation = Shapes::StructureShape.new(name: 'FileCacheDataRepositoryAssociation')
    FileCacheFailureDetails = Shapes::StructureShape.new(name: 'FileCacheFailureDetails')
    FileCacheId = Shapes::StringShape.new(name: 'FileCacheId')
    FileCacheIds = Shapes::ListShape.new(name: 'FileCacheIds')
    FileCacheLifecycle = Shapes::StringShape.new(name: 'FileCacheLifecycle')
    FileCacheLustreConfiguration = Shapes::StructureShape.new(name: 'FileCacheLustreConfiguration')
    FileCacheLustreDeploymentType = Shapes::StringShape.new(name: 'FileCacheLustreDeploymentType')
    FileCacheLustreMetadataConfiguration = Shapes::StructureShape.new(name: 'FileCacheLustreMetadataConfiguration')
    FileCacheNFSConfiguration = Shapes::StructureShape.new(name: 'FileCacheNFSConfiguration')
    FileCacheNotFound = Shapes::StructureShape.new(name: 'FileCacheNotFound')
    FileCacheType = Shapes::StringShape.new(name: 'FileCacheType')
    FileCaches = Shapes::ListShape.new(name: 'FileCaches')
    FileSystem = Shapes::StructureShape.new(name: 'FileSystem')
    FileSystemAdministratorsGroupName = Shapes::StringShape.new(name: 'FileSystemAdministratorsGroupName')
    FileSystemEndpoint = Shapes::StructureShape.new(name: 'FileSystemEndpoint')
    FileSystemEndpoints = Shapes::StructureShape.new(name: 'FileSystemEndpoints')
    FileSystemFailureDetails = Shapes::StructureShape.new(name: 'FileSystemFailureDetails')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FileSystemIds = Shapes::ListShape.new(name: 'FileSystemIds')
    FileSystemLifecycle = Shapes::StringShape.new(name: 'FileSystemLifecycle')
    FileSystemMaintenanceOperation = Shapes::StringShape.new(name: 'FileSystemMaintenanceOperation')
    FileSystemMaintenanceOperations = Shapes::ListShape.new(name: 'FileSystemMaintenanceOperations')
    FileSystemNotFound = Shapes::StructureShape.new(name: 'FileSystemNotFound')
    FileSystemType = Shapes::StringShape.new(name: 'FileSystemType')
    FileSystemTypeVersion = Shapes::StringShape.new(name: 'FileSystemTypeVersion')
    FileSystems = Shapes::ListShape.new(name: 'FileSystems')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    Flag = Shapes::BooleanShape.new(name: 'Flag')
    FlexCacheEndpointType = Shapes::StringShape.new(name: 'FlexCacheEndpointType')
    GeneralARN = Shapes::StringShape.new(name: 'GeneralARN')
    IncompatibleParameterError = Shapes::StructureShape.new(name: 'IncompatibleParameterError')
    IncompatibleRegionForMultiAZ = Shapes::StructureShape.new(name: 'IncompatibleRegionForMultiAZ')
    InputOntapVolumeType = Shapes::StringShape.new(name: 'InputOntapVolumeType')
    IntegerNoMax = Shapes::IntegerShape.new(name: 'IntegerNoMax')
    IntegerNoMaxFromNegativeOne = Shapes::IntegerShape.new(name: 'IntegerNoMaxFromNegativeOne')
    IntegerRecordSizeKiB = Shapes::IntegerShape.new(name: 'IntegerRecordSizeKiB')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidDataRepositoryType = Shapes::StructureShape.new(name: 'InvalidDataRepositoryType')
    InvalidDestinationKmsKey = Shapes::StructureShape.new(name: 'InvalidDestinationKmsKey')
    InvalidExportPath = Shapes::StructureShape.new(name: 'InvalidExportPath')
    InvalidImportPath = Shapes::StructureShape.new(name: 'InvalidImportPath')
    InvalidNetworkSettings = Shapes::StructureShape.new(name: 'InvalidNetworkSettings')
    InvalidPerUnitStorageThroughput = Shapes::StructureShape.new(name: 'InvalidPerUnitStorageThroughput')
    InvalidRegion = Shapes::StructureShape.new(name: 'InvalidRegion')
    InvalidSourceKmsKey = Shapes::StructureShape.new(name: 'InvalidSourceKmsKey')
    Iops = Shapes::IntegerShape.new(name: 'Iops')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressRange = Shapes::StringShape.new(name: 'IpAddressRange')
    JunctionPath = Shapes::StringShape.new(name: 'JunctionPath')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastUpdatedTime = Shapes::TimestampShape.new(name: 'LastUpdatedTime')
    LifecycleTransitionReason = Shapes::StructureShape.new(name: 'LifecycleTransitionReason')
    LimitedMaxResults = Shapes::IntegerShape.new(name: 'LimitedMaxResults')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LustreAccessAuditLogLevel = Shapes::StringShape.new(name: 'LustreAccessAuditLogLevel')
    LustreDeploymentType = Shapes::StringShape.new(name: 'LustreDeploymentType')
    LustreFileSystemConfiguration = Shapes::StructureShape.new(name: 'LustreFileSystemConfiguration')
    LustreFileSystemMountName = Shapes::StringShape.new(name: 'LustreFileSystemMountName')
    LustreLogConfiguration = Shapes::StructureShape.new(name: 'LustreLogConfiguration')
    LustreLogCreateConfiguration = Shapes::StructureShape.new(name: 'LustreLogCreateConfiguration')
    LustreNoSquashNid = Shapes::StringShape.new(name: 'LustreNoSquashNid')
    LustreNoSquashNids = Shapes::ListShape.new(name: 'LustreNoSquashNids')
    LustreRootSquash = Shapes::StringShape.new(name: 'LustreRootSquash')
    LustreRootSquashConfiguration = Shapes::StructureShape.new(name: 'LustreRootSquashConfiguration')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Megabytes = Shapes::IntegerShape.new(name: 'Megabytes')
    MegabytesPerSecond = Shapes::IntegerShape.new(name: 'MegabytesPerSecond')
    MetadataStorageCapacity = Shapes::IntegerShape.new(name: 'MetadataStorageCapacity')
    MissingFileCacheConfiguration = Shapes::StructureShape.new(name: 'MissingFileCacheConfiguration')
    MissingFileSystemConfiguration = Shapes::StructureShape.new(name: 'MissingFileSystemConfiguration')
    MissingVolumeConfiguration = Shapes::StructureShape.new(name: 'MissingVolumeConfiguration')
    NFSDataRepositoryConfiguration = Shapes::StructureShape.new(name: 'NFSDataRepositoryConfiguration')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NetBiosAlias = Shapes::StringShape.new(name: 'NetBiosAlias')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaceIds = Shapes::ListShape.new(name: 'NetworkInterfaceIds')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NfsVersion = Shapes::StringShape.new(name: 'NfsVersion')
    NotServiceResourceError = Shapes::StructureShape.new(name: 'NotServiceResourceError')
    OntapDeploymentType = Shapes::StringShape.new(name: 'OntapDeploymentType')
    OntapEndpointIpAddresses = Shapes::ListShape.new(name: 'OntapEndpointIpAddresses')
    OntapFileSystemConfiguration = Shapes::StructureShape.new(name: 'OntapFileSystemConfiguration')
    OntapVolumeConfiguration = Shapes::StructureShape.new(name: 'OntapVolumeConfiguration')
    OntapVolumeType = Shapes::StringShape.new(name: 'OntapVolumeType')
    OpenZFSClientConfiguration = Shapes::StructureShape.new(name: 'OpenZFSClientConfiguration')
    OpenZFSClientConfigurations = Shapes::ListShape.new(name: 'OpenZFSClientConfigurations')
    OpenZFSClients = Shapes::StringShape.new(name: 'OpenZFSClients')
    OpenZFSCopyStrategy = Shapes::StringShape.new(name: 'OpenZFSCopyStrategy')
    OpenZFSCreateRootVolumeConfiguration = Shapes::StructureShape.new(name: 'OpenZFSCreateRootVolumeConfiguration')
    OpenZFSDataCompressionType = Shapes::StringShape.new(name: 'OpenZFSDataCompressionType')
    OpenZFSDeploymentType = Shapes::StringShape.new(name: 'OpenZFSDeploymentType')
    OpenZFSFileSystemConfiguration = Shapes::StructureShape.new(name: 'OpenZFSFileSystemConfiguration')
    OpenZFSNfsExport = Shapes::StructureShape.new(name: 'OpenZFSNfsExport')
    OpenZFSNfsExportOption = Shapes::StringShape.new(name: 'OpenZFSNfsExportOption')
    OpenZFSNfsExportOptions = Shapes::ListShape.new(name: 'OpenZFSNfsExportOptions')
    OpenZFSNfsExports = Shapes::ListShape.new(name: 'OpenZFSNfsExports')
    OpenZFSOriginSnapshotConfiguration = Shapes::StructureShape.new(name: 'OpenZFSOriginSnapshotConfiguration')
    OpenZFSQuotaType = Shapes::StringShape.new(name: 'OpenZFSQuotaType')
    OpenZFSUserAndGroupQuotas = Shapes::ListShape.new(name: 'OpenZFSUserAndGroupQuotas')
    OpenZFSUserOrGroupQuota = Shapes::StructureShape.new(name: 'OpenZFSUserOrGroupQuota')
    OpenZFSVolumeConfiguration = Shapes::StructureShape.new(name: 'OpenZFSVolumeConfiguration')
    OrganizationalUnitDistinguishedName = Shapes::StringShape.new(name: 'OrganizationalUnitDistinguishedName')
    Parameter = Shapes::StringShape.new(name: 'Parameter')
    PerUnitStorageThroughput = Shapes::IntegerShape.new(name: 'PerUnitStorageThroughput')
    PrivilegedDelete = Shapes::StringShape.new(name: 'PrivilegedDelete')
    ProgressPercent = Shapes::IntegerShape.new(name: 'ProgressPercent')
    ReadOnly = Shapes::BooleanShape.new(name: 'ReadOnly')
    Region = Shapes::StringShape.new(name: 'Region')
    ReleaseFileSystemNfsV3LocksRequest = Shapes::StructureShape.new(name: 'ReleaseFileSystemNfsV3LocksRequest')
    ReleaseFileSystemNfsV3LocksResponse = Shapes::StructureShape.new(name: 'ReleaseFileSystemNfsV3LocksResponse')
    ReleasedCapacity = Shapes::IntegerShape.new(name: 'ReleasedCapacity')
    ReportFormat = Shapes::StringShape.new(name: 'ReportFormat')
    ReportScope = Shapes::StringShape.new(name: 'ReportScope')
    RepositoryDnsIps = Shapes::ListShape.new(name: 'RepositoryDnsIps')
    RequestTime = Shapes::TimestampShape.new(name: 'RequestTime')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceDoesNotSupportTagging = Shapes::StructureShape.new(name: 'ResourceDoesNotSupportTagging')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RestoreOpenZFSVolumeOption = Shapes::StringShape.new(name: 'RestoreOpenZFSVolumeOption')
    RestoreOpenZFSVolumeOptions = Shapes::ListShape.new(name: 'RestoreOpenZFSVolumeOptions')
    RestoreVolumeFromSnapshotRequest = Shapes::StructureShape.new(name: 'RestoreVolumeFromSnapshotRequest')
    RestoreVolumeFromSnapshotResponse = Shapes::StructureShape.new(name: 'RestoreVolumeFromSnapshotResponse')
    RetentionPeriod = Shapes::StructureShape.new(name: 'RetentionPeriod')
    RetentionPeriodType = Shapes::StringShape.new(name: 'RetentionPeriodType')
    RetentionPeriodValue = Shapes::IntegerShape.new(name: 'RetentionPeriodValue')
    RouteTableId = Shapes::StringShape.new(name: 'RouteTableId')
    RouteTableIds = Shapes::ListShape.new(name: 'RouteTableIds')
    S3DataRepositoryConfiguration = Shapes::StructureShape.new(name: 'S3DataRepositoryConfiguration')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityStyle = Shapes::StringShape.new(name: 'SecurityStyle')
    SelfManagedActiveDirectoryAttributes = Shapes::StructureShape.new(name: 'SelfManagedActiveDirectoryAttributes')
    SelfManagedActiveDirectoryConfiguration = Shapes::StructureShape.new(name: 'SelfManagedActiveDirectoryConfiguration')
    SelfManagedActiveDirectoryConfigurationUpdates = Shapes::StructureShape.new(name: 'SelfManagedActiveDirectoryConfigurationUpdates')
    ServiceLimit = Shapes::StringShape.new(name: 'ServiceLimit')
    ServiceLimitExceeded = Shapes::StructureShape.new(name: 'ServiceLimitExceeded')
    SnaplockConfiguration = Shapes::StructureShape.new(name: 'SnaplockConfiguration')
    SnaplockRetentionPeriod = Shapes::StructureShape.new(name: 'SnaplockRetentionPeriod')
    SnaplockType = Shapes::StringShape.new(name: 'SnaplockType')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotFilter = Shapes::StructureShape.new(name: 'SnapshotFilter')
    SnapshotFilterName = Shapes::StringShape.new(name: 'SnapshotFilterName')
    SnapshotFilterValue = Shapes::StringShape.new(name: 'SnapshotFilterValue')
    SnapshotFilterValues = Shapes::ListShape.new(name: 'SnapshotFilterValues')
    SnapshotFilters = Shapes::ListShape.new(name: 'SnapshotFilters')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    SnapshotIds = Shapes::ListShape.new(name: 'SnapshotIds')
    SnapshotLifecycle = Shapes::StringShape.new(name: 'SnapshotLifecycle')
    SnapshotName = Shapes::StringShape.new(name: 'SnapshotName')
    SnapshotNotFound = Shapes::StructureShape.new(name: 'SnapshotNotFound')
    SnapshotPolicy = Shapes::StringShape.new(name: 'SnapshotPolicy')
    Snapshots = Shapes::ListShape.new(name: 'Snapshots')
    SourceBackupId = Shapes::StringShape.new(name: 'SourceBackupId')
    SourceBackupUnavailable = Shapes::StructureShape.new(name: 'SourceBackupUnavailable')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    Status = Shapes::StringShape.new(name: 'Status')
    StorageCapacity = Shapes::IntegerShape.new(name: 'StorageCapacity')
    StorageType = Shapes::StringShape.new(name: 'StorageType')
    StorageVirtualMachine = Shapes::StructureShape.new(name: 'StorageVirtualMachine')
    StorageVirtualMachineFilter = Shapes::StructureShape.new(name: 'StorageVirtualMachineFilter')
    StorageVirtualMachineFilterName = Shapes::StringShape.new(name: 'StorageVirtualMachineFilterName')
    StorageVirtualMachineFilterValue = Shapes::StringShape.new(name: 'StorageVirtualMachineFilterValue')
    StorageVirtualMachineFilterValues = Shapes::ListShape.new(name: 'StorageVirtualMachineFilterValues')
    StorageVirtualMachineFilters = Shapes::ListShape.new(name: 'StorageVirtualMachineFilters')
    StorageVirtualMachineId = Shapes::StringShape.new(name: 'StorageVirtualMachineId')
    StorageVirtualMachineIds = Shapes::ListShape.new(name: 'StorageVirtualMachineIds')
    StorageVirtualMachineLifecycle = Shapes::StringShape.new(name: 'StorageVirtualMachineLifecycle')
    StorageVirtualMachineName = Shapes::StringShape.new(name: 'StorageVirtualMachineName')
    StorageVirtualMachineNotFound = Shapes::StructureShape.new(name: 'StorageVirtualMachineNotFound')
    StorageVirtualMachineRootVolumeSecurityStyle = Shapes::StringShape.new(name: 'StorageVirtualMachineRootVolumeSecurityStyle')
    StorageVirtualMachineSubtype = Shapes::StringShape.new(name: 'StorageVirtualMachineSubtype')
    StorageVirtualMachines = Shapes::ListShape.new(name: 'StorageVirtualMachines')
    SubDirectoriesPaths = Shapes::ListShape.new(name: 'SubDirectoriesPaths')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SucceededCount = Shapes::IntegerShape.new(name: 'SucceededCount')
    SvmActiveDirectoryConfiguration = Shapes::StructureShape.new(name: 'SvmActiveDirectoryConfiguration')
    SvmEndpoint = Shapes::StructureShape.new(name: 'SvmEndpoint')
    SvmEndpoints = Shapes::StructureShape.new(name: 'SvmEndpoints')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskIds = Shapes::ListShape.new(name: 'TaskIds')
    TieringPolicy = Shapes::StructureShape.new(name: 'TieringPolicy')
    TieringPolicyName = Shapes::StringShape.new(name: 'TieringPolicyName')
    TotalCount = Shapes::IntegerShape.new(name: 'TotalCount')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UnsupportedOperation = Shapes::StructureShape.new(name: 'UnsupportedOperation')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataRepositoryAssociationRequest = Shapes::StructureShape.new(name: 'UpdateDataRepositoryAssociationRequest')
    UpdateDataRepositoryAssociationResponse = Shapes::StructureShape.new(name: 'UpdateDataRepositoryAssociationResponse')
    UpdateFileCacheLustreConfiguration = Shapes::StructureShape.new(name: 'UpdateFileCacheLustreConfiguration')
    UpdateFileCacheRequest = Shapes::StructureShape.new(name: 'UpdateFileCacheRequest')
    UpdateFileCacheResponse = Shapes::StructureShape.new(name: 'UpdateFileCacheResponse')
    UpdateFileSystemLustreConfiguration = Shapes::StructureShape.new(name: 'UpdateFileSystemLustreConfiguration')
    UpdateFileSystemOntapConfiguration = Shapes::StructureShape.new(name: 'UpdateFileSystemOntapConfiguration')
    UpdateFileSystemOpenZFSConfiguration = Shapes::StructureShape.new(name: 'UpdateFileSystemOpenZFSConfiguration')
    UpdateFileSystemRequest = Shapes::StructureShape.new(name: 'UpdateFileSystemRequest')
    UpdateFileSystemResponse = Shapes::StructureShape.new(name: 'UpdateFileSystemResponse')
    UpdateFileSystemWindowsConfiguration = Shapes::StructureShape.new(name: 'UpdateFileSystemWindowsConfiguration')
    UpdateOntapVolumeConfiguration = Shapes::StructureShape.new(name: 'UpdateOntapVolumeConfiguration')
    UpdateOpenZFSVolumeConfiguration = Shapes::StructureShape.new(name: 'UpdateOpenZFSVolumeConfiguration')
    UpdateSnaplockConfiguration = Shapes::StructureShape.new(name: 'UpdateSnaplockConfiguration')
    UpdateSnapshotRequest = Shapes::StructureShape.new(name: 'UpdateSnapshotRequest')
    UpdateSnapshotResponse = Shapes::StructureShape.new(name: 'UpdateSnapshotResponse')
    UpdateStorageVirtualMachineRequest = Shapes::StructureShape.new(name: 'UpdateStorageVirtualMachineRequest')
    UpdateStorageVirtualMachineResponse = Shapes::StructureShape.new(name: 'UpdateStorageVirtualMachineResponse')
    UpdateSvmActiveDirectoryConfiguration = Shapes::StructureShape.new(name: 'UpdateSvmActiveDirectoryConfiguration')
    UpdateVolumeRequest = Shapes::StructureShape.new(name: 'UpdateVolumeRequest')
    UpdateVolumeResponse = Shapes::StructureShape.new(name: 'UpdateVolumeResponse')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    VolumeCapacity = Shapes::IntegerShape.new(name: 'VolumeCapacity')
    VolumeFilter = Shapes::StructureShape.new(name: 'VolumeFilter')
    VolumeFilterName = Shapes::StringShape.new(name: 'VolumeFilterName')
    VolumeFilterValue = Shapes::StringShape.new(name: 'VolumeFilterValue')
    VolumeFilterValues = Shapes::ListShape.new(name: 'VolumeFilterValues')
    VolumeFilters = Shapes::ListShape.new(name: 'VolumeFilters')
    VolumeId = Shapes::StringShape.new(name: 'VolumeId')
    VolumeIds = Shapes::ListShape.new(name: 'VolumeIds')
    VolumeLifecycle = Shapes::StringShape.new(name: 'VolumeLifecycle')
    VolumeName = Shapes::StringShape.new(name: 'VolumeName')
    VolumeNotFound = Shapes::StructureShape.new(name: 'VolumeNotFound')
    VolumePath = Shapes::StringShape.new(name: 'VolumePath')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    Volumes = Shapes::ListShape.new(name: 'Volumes')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WeeklyTime = Shapes::StringShape.new(name: 'WeeklyTime')
    WindowsAccessAuditLogLevel = Shapes::StringShape.new(name: 'WindowsAccessAuditLogLevel')
    WindowsAuditLogConfiguration = Shapes::StructureShape.new(name: 'WindowsAuditLogConfiguration')
    WindowsAuditLogCreateConfiguration = Shapes::StructureShape.new(name: 'WindowsAuditLogCreateConfiguration')
    WindowsDeploymentType = Shapes::StringShape.new(name: 'WindowsDeploymentType')
    WindowsFileSystemConfiguration = Shapes::StructureShape.new(name: 'WindowsFileSystemConfiguration')

    ActiveDirectoryBackupAttributes.add_member(:domain_name, Shapes::ShapeRef.new(shape: ActiveDirectoryFullyQualifiedName, location_name: "DomainName"))
    ActiveDirectoryBackupAttributes.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "ActiveDirectoryId"))
    ActiveDirectoryBackupAttributes.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    ActiveDirectoryBackupAttributes.struct_class = Types::ActiveDirectoryBackupAttributes

    ActiveDirectoryError.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ActiveDirectoryId"))
    ActiveDirectoryError.add_member(:type, Shapes::ShapeRef.new(shape: ActiveDirectoryErrorType, location_name: "Type"))
    ActiveDirectoryError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ActiveDirectoryError.struct_class = Types::ActiveDirectoryError

    AdministrativeAction.add_member(:administrative_action_type, Shapes::ShapeRef.new(shape: AdministrativeActionType, location_name: "AdministrativeActionType"))
    AdministrativeAction.add_member(:progress_percent, Shapes::ShapeRef.new(shape: ProgressPercent, location_name: "ProgressPercent"))
    AdministrativeAction.add_member(:request_time, Shapes::ShapeRef.new(shape: RequestTime, location_name: "RequestTime"))
    AdministrativeAction.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    AdministrativeAction.add_member(:target_file_system_values, Shapes::ShapeRef.new(shape: FileSystem, location_name: "TargetFileSystemValues"))
    AdministrativeAction.add_member(:failure_details, Shapes::ShapeRef.new(shape: AdministrativeActionFailureDetails, location_name: "FailureDetails"))
    AdministrativeAction.add_member(:target_volume_values, Shapes::ShapeRef.new(shape: Volume, location_name: "TargetVolumeValues"))
    AdministrativeAction.add_member(:target_snapshot_values, Shapes::ShapeRef.new(shape: Snapshot, location_name: "TargetSnapshotValues"))
    AdministrativeAction.struct_class = Types::AdministrativeAction

    AdministrativeActionFailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AdministrativeActionFailureDetails.struct_class = Types::AdministrativeActionFailureDetails

    AdministrativeActions.member = Shapes::ShapeRef.new(shape: AdministrativeAction)

    Alias.add_member(:name, Shapes::ShapeRef.new(shape: AlternateDNSName, location_name: "Name"))
    Alias.add_member(:lifecycle, Shapes::ShapeRef.new(shape: AliasLifecycle, location_name: "Lifecycle"))
    Alias.struct_class = Types::Alias

    Aliases.member = Shapes::ShapeRef.new(shape: Alias)

    AlternateDNSNames.member = Shapes::ShapeRef.new(shape: AlternateDNSName)

    AssociateFileSystemAliasesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateFileSystemAliasesRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    AssociateFileSystemAliasesRequest.add_member(:aliases, Shapes::ShapeRef.new(shape: AlternateDNSNames, required: true, location_name: "Aliases"))
    AssociateFileSystemAliasesRequest.struct_class = Types::AssociateFileSystemAliasesRequest

    AssociateFileSystemAliasesResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    AssociateFileSystemAliasesResponse.struct_class = Types::AssociateFileSystemAliasesResponse

    AutoExportPolicy.add_member(:events, Shapes::ShapeRef.new(shape: EventTypes, location_name: "Events"))
    AutoExportPolicy.struct_class = Types::AutoExportPolicy

    AutoImportPolicy.add_member(:events, Shapes::ShapeRef.new(shape: EventTypes, location_name: "Events"))
    AutoImportPolicy.struct_class = Types::AutoImportPolicy

    AutocommitPeriod.add_member(:type, Shapes::ShapeRef.new(shape: AutocommitPeriodType, required: true, location_name: "Type"))
    AutocommitPeriod.add_member(:value, Shapes::ShapeRef.new(shape: AutocommitPeriodValue, location_name: "Value"))
    AutocommitPeriod.struct_class = Types::AutocommitPeriod

    Backup.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    Backup.add_member(:lifecycle, Shapes::ShapeRef.new(shape: BackupLifecycle, required: true, location_name: "Lifecycle"))
    Backup.add_member(:failure_details, Shapes::ShapeRef.new(shape: BackupFailureDetails, location_name: "FailureDetails"))
    Backup.add_member(:type, Shapes::ShapeRef.new(shape: BackupType, required: true, location_name: "Type"))
    Backup.add_member(:progress_percent, Shapes::ShapeRef.new(shape: ProgressPercent, location_name: "ProgressPercent"))
    Backup.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    Backup.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    Backup.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    Backup.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    Backup.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, required: true, location_name: "FileSystem"))
    Backup.add_member(:directory_information, Shapes::ShapeRef.new(shape: ActiveDirectoryBackupAttributes, location_name: "DirectoryInformation"))
    Backup.add_member(:owner_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerId"))
    Backup.add_member(:source_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackupId"))
    Backup.add_member(:source_backup_region, Shapes::ShapeRef.new(shape: Region, location_name: "SourceBackupRegion"))
    Backup.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    Backup.add_member(:volume, Shapes::ShapeRef.new(shape: Volume, location_name: "Volume"))
    Backup.struct_class = Types::Backup

    BackupBeingCopied.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BackupBeingCopied.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    BackupBeingCopied.struct_class = Types::BackupBeingCopied

    BackupFailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BackupFailureDetails.struct_class = Types::BackupFailureDetails

    BackupIds.member = Shapes::ShapeRef.new(shape: BackupId)

    BackupInProgress.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BackupInProgress.struct_class = Types::BackupInProgress

    BackupNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BackupNotFound.struct_class = Types::BackupNotFound

    BackupRestoring.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BackupRestoring.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    BackupRestoring.struct_class = Types::BackupRestoring

    Backups.member = Shapes::ShapeRef.new(shape: Backup)

    BadRequest.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadRequest.struct_class = Types::BadRequest

    CancelDataRepositoryTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "TaskId"))
    CancelDataRepositoryTaskRequest.struct_class = Types::CancelDataRepositoryTaskRequest

    CancelDataRepositoryTaskResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: DataRepositoryTaskLifecycle, location_name: "Lifecycle"))
    CancelDataRepositoryTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "TaskId"))
    CancelDataRepositoryTaskResponse.struct_class = Types::CancelDataRepositoryTaskResponse

    CompletionReport.add_member(:enabled, Shapes::ShapeRef.new(shape: Flag, required: true, location_name: "Enabled"))
    CompletionReport.add_member(:path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "Path"))
    CompletionReport.add_member(:format, Shapes::ShapeRef.new(shape: ReportFormat, location_name: "Format"))
    CompletionReport.add_member(:scope, Shapes::ShapeRef.new(shape: ReportScope, location_name: "Scope"))
    CompletionReport.struct_class = Types::CompletionReport

    CopyBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CopyBackupRequest.add_member(:source_backup_id, Shapes::ShapeRef.new(shape: SourceBackupId, required: true, location_name: "SourceBackupId"))
    CopyBackupRequest.add_member(:source_region, Shapes::ShapeRef.new(shape: Region, location_name: "SourceRegion"))
    CopyBackupRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CopyBackupRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTags"))
    CopyBackupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CopyBackupRequest.struct_class = Types::CopyBackupRequest

    CopyBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    CopyBackupResponse.struct_class = Types::CopyBackupResponse

    CreateBackupRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    CreateBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateBackupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateBackupRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    CreateBackupRequest.struct_class = Types::CreateBackupRequest

    CreateBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    CreateBackupResponse.struct_class = Types::CreateBackupResponse

    CreateDataRepositoryAssociationRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateDataRepositoryAssociationRequest.add_member(:file_system_path, Shapes::ShapeRef.new(shape: Namespace, location_name: "FileSystemPath"))
    CreateDataRepositoryAssociationRequest.add_member(:data_repository_path, Shapes::ShapeRef.new(shape: ArchivePath, required: true, location_name: "DataRepositoryPath"))
    CreateDataRepositoryAssociationRequest.add_member(:batch_import_meta_data_on_create, Shapes::ShapeRef.new(shape: BatchImportMetaDataOnCreate, location_name: "BatchImportMetaDataOnCreate"))
    CreateDataRepositoryAssociationRequest.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    CreateDataRepositoryAssociationRequest.add_member(:s3, Shapes::ShapeRef.new(shape: S3DataRepositoryConfiguration, location_name: "S3"))
    CreateDataRepositoryAssociationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateDataRepositoryAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateDataRepositoryAssociationRequest.struct_class = Types::CreateDataRepositoryAssociationRequest

    CreateDataRepositoryAssociationResponse.add_member(:association, Shapes::ShapeRef.new(shape: DataRepositoryAssociation, location_name: "Association"))
    CreateDataRepositoryAssociationResponse.struct_class = Types::CreateDataRepositoryAssociationResponse

    CreateDataRepositoryTaskRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataRepositoryTaskType, required: true, location_name: "Type"))
    CreateDataRepositoryTaskRequest.add_member(:paths, Shapes::ShapeRef.new(shape: DataRepositoryTaskPaths, location_name: "Paths"))
    CreateDataRepositoryTaskRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateDataRepositoryTaskRequest.add_member(:report, Shapes::ShapeRef.new(shape: CompletionReport, required: true, location_name: "Report"))
    CreateDataRepositoryTaskRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateDataRepositoryTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateDataRepositoryTaskRequest.add_member(:capacity_to_release, Shapes::ShapeRef.new(shape: CapacityToRelease, location_name: "CapacityToRelease"))
    CreateDataRepositoryTaskRequest.struct_class = Types::CreateDataRepositoryTaskRequest

    CreateDataRepositoryTaskResponse.add_member(:data_repository_task, Shapes::ShapeRef.new(shape: DataRepositoryTask, location_name: "DataRepositoryTask"))
    CreateDataRepositoryTaskResponse.struct_class = Types::CreateDataRepositoryTaskResponse

    CreateFileCacheDataRepositoryAssociations.member = Shapes::ShapeRef.new(shape: FileCacheDataRepositoryAssociation)

    CreateFileCacheLustreConfiguration.add_member(:per_unit_storage_throughput, Shapes::ShapeRef.new(shape: PerUnitStorageThroughput, required: true, location_name: "PerUnitStorageThroughput"))
    CreateFileCacheLustreConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: FileCacheLustreDeploymentType, required: true, location_name: "DeploymentType"))
    CreateFileCacheLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileCacheLustreConfiguration.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: FileCacheLustreMetadataConfiguration, required: true, location_name: "MetadataConfiguration"))
    CreateFileCacheLustreConfiguration.struct_class = Types::CreateFileCacheLustreConfiguration

    CreateFileCacheRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateFileCacheRequest.add_member(:file_cache_type, Shapes::ShapeRef.new(shape: FileCacheType, required: true, location_name: "FileCacheType"))
    CreateFileCacheRequest.add_member(:file_cache_type_version, Shapes::ShapeRef.new(shape: FileSystemTypeVersion, required: true, location_name: "FileCacheTypeVersion"))
    CreateFileCacheRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, required: true, location_name: "StorageCapacity"))
    CreateFileCacheRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateFileCacheRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateFileCacheRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFileCacheRequest.add_member(:copy_tags_to_data_repository_associations, Shapes::ShapeRef.new(shape: CopyTagsToDataRepositoryAssociations, location_name: "CopyTagsToDataRepositoryAssociations"))
    CreateFileCacheRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFileCacheRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: CreateFileCacheLustreConfiguration, location_name: "LustreConfiguration"))
    CreateFileCacheRequest.add_member(:data_repository_associations, Shapes::ShapeRef.new(shape: CreateFileCacheDataRepositoryAssociations, location_name: "DataRepositoryAssociations"))
    CreateFileCacheRequest.struct_class = Types::CreateFileCacheRequest

    CreateFileCacheResponse.add_member(:file_cache, Shapes::ShapeRef.new(shape: FileCacheCreating, location_name: "FileCache"))
    CreateFileCacheResponse.struct_class = Types::CreateFileCacheResponse

    CreateFileSystemFromBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    CreateFileSystemFromBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateFileSystemFromBackupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateFileSystemFromBackupRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateFileSystemFromBackupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFileSystemFromBackupRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    CreateFileSystemFromBackupRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemLustreConfiguration, location_name: "LustreConfiguration"))
    CreateFileSystemFromBackupRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "StorageType"))
    CreateFileSystemFromBackupRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFileSystemFromBackupRequest.add_member(:file_system_type_version, Shapes::ShapeRef.new(shape: FileSystemTypeVersion, location_name: "FileSystemTypeVersion"))
    CreateFileSystemFromBackupRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemOpenZFSConfiguration, location_name: "OpenZFSConfiguration"))
    CreateFileSystemFromBackupRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, location_name: "StorageCapacity"))
    CreateFileSystemFromBackupRequest.struct_class = Types::CreateFileSystemFromBackupRequest

    CreateFileSystemFromBackupResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    CreateFileSystemFromBackupResponse.struct_class = Types::CreateFileSystemFromBackupResponse

    CreateFileSystemLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemLustreConfiguration.add_member(:import_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ImportPath"))
    CreateFileSystemLustreConfiguration.add_member(:export_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ExportPath"))
    CreateFileSystemLustreConfiguration.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    CreateFileSystemLustreConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: LustreDeploymentType, location_name: "DeploymentType"))
    CreateFileSystemLustreConfiguration.add_member(:auto_import_policy, Shapes::ShapeRef.new(shape: AutoImportPolicyType, location_name: "AutoImportPolicy"))
    CreateFileSystemLustreConfiguration.add_member(:per_unit_storage_throughput, Shapes::ShapeRef.new(shape: PerUnitStorageThroughput, location_name: "PerUnitStorageThroughput"))
    CreateFileSystemLustreConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemLustreConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    CreateFileSystemLustreConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    CreateFileSystemLustreConfiguration.add_member(:drive_cache_type, Shapes::ShapeRef.new(shape: DriveCacheType, location_name: "DriveCacheType"))
    CreateFileSystemLustreConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: DataCompressionType, location_name: "DataCompressionType"))
    CreateFileSystemLustreConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LustreLogCreateConfiguration, location_name: "LogConfiguration"))
    CreateFileSystemLustreConfiguration.add_member(:root_squash_configuration, Shapes::ShapeRef.new(shape: LustreRootSquashConfiguration, location_name: "RootSquashConfiguration"))
    CreateFileSystemLustreConfiguration.struct_class = Types::CreateFileSystemLustreConfiguration

    CreateFileSystemOntapConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    CreateFileSystemOntapConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemOntapConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: OntapDeploymentType, required: true, location_name: "DeploymentType"))
    CreateFileSystemOntapConfiguration.add_member(:endpoint_ip_address_range, Shapes::ShapeRef.new(shape: IpAddressRange, location_name: "EndpointIpAddressRange"))
    CreateFileSystemOntapConfiguration.add_member(:fsx_admin_password, Shapes::ShapeRef.new(shape: AdminPassword, location_name: "FsxAdminPassword"))
    CreateFileSystemOntapConfiguration.add_member(:disk_iops_configuration, Shapes::ShapeRef.new(shape: DiskIopsConfiguration, location_name: "DiskIopsConfiguration"))
    CreateFileSystemOntapConfiguration.add_member(:preferred_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "PreferredSubnetId"))
    CreateFileSystemOntapConfiguration.add_member(:route_table_ids, Shapes::ShapeRef.new(shape: RouteTableIds, location_name: "RouteTableIds"))
    CreateFileSystemOntapConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, required: true, location_name: "ThroughputCapacity"))
    CreateFileSystemOntapConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemOntapConfiguration.struct_class = Types::CreateFileSystemOntapConfiguration

    CreateFileSystemOpenZFSConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    CreateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    CreateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_volumes, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToVolumes"))
    CreateFileSystemOpenZFSConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemOpenZFSConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: OpenZFSDeploymentType, required: true, location_name: "DeploymentType"))
    CreateFileSystemOpenZFSConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, required: true, location_name: "ThroughputCapacity"))
    CreateFileSystemOpenZFSConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemOpenZFSConfiguration.add_member(:disk_iops_configuration, Shapes::ShapeRef.new(shape: DiskIopsConfiguration, location_name: "DiskIopsConfiguration"))
    CreateFileSystemOpenZFSConfiguration.add_member(:root_volume_configuration, Shapes::ShapeRef.new(shape: OpenZFSCreateRootVolumeConfiguration, location_name: "RootVolumeConfiguration"))
    CreateFileSystemOpenZFSConfiguration.struct_class = Types::CreateFileSystemOpenZFSConfiguration

    CreateFileSystemRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateFileSystemRequest.add_member(:file_system_type, Shapes::ShapeRef.new(shape: FileSystemType, required: true, location_name: "FileSystemType"))
    CreateFileSystemRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, required: true, location_name: "StorageCapacity"))
    CreateFileSystemRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "StorageType"))
    CreateFileSystemRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateFileSystemRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateFileSystemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFileSystemRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFileSystemRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    CreateFileSystemRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemLustreConfiguration, location_name: "LustreConfiguration"))
    CreateFileSystemRequest.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemOntapConfiguration, location_name: "OntapConfiguration"))
    CreateFileSystemRequest.add_member(:file_system_type_version, Shapes::ShapeRef.new(shape: FileSystemTypeVersion, location_name: "FileSystemTypeVersion"))
    CreateFileSystemRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemOpenZFSConfiguration, location_name: "OpenZFSConfiguration"))
    CreateFileSystemRequest.struct_class = Types::CreateFileSystemRequest

    CreateFileSystemResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    CreateFileSystemResponse.struct_class = Types::CreateFileSystemResponse

    CreateFileSystemWindowsConfiguration.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "ActiveDirectoryId"))
    CreateFileSystemWindowsConfiguration.add_member(:self_managed_active_directory_configuration, Shapes::ShapeRef.new(shape: SelfManagedActiveDirectoryConfiguration, location_name: "SelfManagedActiveDirectoryConfiguration"))
    CreateFileSystemWindowsConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: WindowsDeploymentType, location_name: "DeploymentType"))
    CreateFileSystemWindowsConfiguration.add_member(:preferred_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "PreferredSubnetId"))
    CreateFileSystemWindowsConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, required: true, location_name: "ThroughputCapacity"))
    CreateFileSystemWindowsConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemWindowsConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemWindowsConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    CreateFileSystemWindowsConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    CreateFileSystemWindowsConfiguration.add_member(:aliases, Shapes::ShapeRef.new(shape: AlternateDNSNames, location_name: "Aliases"))
    CreateFileSystemWindowsConfiguration.add_member(:audit_log_configuration, Shapes::ShapeRef.new(shape: WindowsAuditLogCreateConfiguration, location_name: "AuditLogConfiguration"))
    CreateFileSystemWindowsConfiguration.struct_class = Types::CreateFileSystemWindowsConfiguration

    CreateOntapVolumeConfiguration.add_member(:junction_path, Shapes::ShapeRef.new(shape: JunctionPath, location_name: "JunctionPath"))
    CreateOntapVolumeConfiguration.add_member(:security_style, Shapes::ShapeRef.new(shape: SecurityStyle, location_name: "SecurityStyle"))
    CreateOntapVolumeConfiguration.add_member(:size_in_megabytes, Shapes::ShapeRef.new(shape: VolumeCapacity, required: true, location_name: "SizeInMegabytes"))
    CreateOntapVolumeConfiguration.add_member(:storage_efficiency_enabled, Shapes::ShapeRef.new(shape: Flag, location_name: "StorageEfficiencyEnabled"))
    CreateOntapVolumeConfiguration.add_member(:storage_virtual_machine_id, Shapes::ShapeRef.new(shape: StorageVirtualMachineId, required: true, location_name: "StorageVirtualMachineId"))
    CreateOntapVolumeConfiguration.add_member(:tiering_policy, Shapes::ShapeRef.new(shape: TieringPolicy, location_name: "TieringPolicy"))
    CreateOntapVolumeConfiguration.add_member(:ontap_volume_type, Shapes::ShapeRef.new(shape: InputOntapVolumeType, location_name: "OntapVolumeType"))
    CreateOntapVolumeConfiguration.add_member(:snapshot_policy, Shapes::ShapeRef.new(shape: SnapshotPolicy, location_name: "SnapshotPolicy"))
    CreateOntapVolumeConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    CreateOntapVolumeConfiguration.add_member(:snaplock_configuration, Shapes::ShapeRef.new(shape: CreateSnaplockConfiguration, location_name: "SnaplockConfiguration"))
    CreateOntapVolumeConfiguration.struct_class = Types::CreateOntapVolumeConfiguration

    CreateOpenZFSOriginSnapshotConfiguration.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "SnapshotARN"))
    CreateOpenZFSOriginSnapshotConfiguration.add_member(:copy_strategy, Shapes::ShapeRef.new(shape: OpenZFSCopyStrategy, required: true, location_name: "CopyStrategy"))
    CreateOpenZFSOriginSnapshotConfiguration.struct_class = Types::CreateOpenZFSOriginSnapshotConfiguration

    CreateOpenZFSVolumeConfiguration.add_member(:parent_volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "ParentVolumeId"))
    CreateOpenZFSVolumeConfiguration.add_member(:storage_capacity_reservation_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMaxFromNegativeOne, location_name: "StorageCapacityReservationGiB"))
    CreateOpenZFSVolumeConfiguration.add_member(:storage_capacity_quota_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMaxFromNegativeOne, location_name: "StorageCapacityQuotaGiB"))
    CreateOpenZFSVolumeConfiguration.add_member(:record_size_ki_b, Shapes::ShapeRef.new(shape: IntegerRecordSizeKiB, location_name: "RecordSizeKiB"))
    CreateOpenZFSVolumeConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: OpenZFSDataCompressionType, location_name: "DataCompressionType"))
    CreateOpenZFSVolumeConfiguration.add_member(:copy_tags_to_snapshots, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToSnapshots"))
    CreateOpenZFSVolumeConfiguration.add_member(:origin_snapshot, Shapes::ShapeRef.new(shape: CreateOpenZFSOriginSnapshotConfiguration, location_name: "OriginSnapshot"))
    CreateOpenZFSVolumeConfiguration.add_member(:read_only, Shapes::ShapeRef.new(shape: ReadOnly, location_name: "ReadOnly"))
    CreateOpenZFSVolumeConfiguration.add_member(:nfs_exports, Shapes::ShapeRef.new(shape: OpenZFSNfsExports, location_name: "NfsExports"))
    CreateOpenZFSVolumeConfiguration.add_member(:user_and_group_quotas, Shapes::ShapeRef.new(shape: OpenZFSUserAndGroupQuotas, location_name: "UserAndGroupQuotas"))
    CreateOpenZFSVolumeConfiguration.struct_class = Types::CreateOpenZFSVolumeConfiguration

    CreateSnaplockConfiguration.add_member(:audit_log_volume, Shapes::ShapeRef.new(shape: Flag, location_name: "AuditLogVolume"))
    CreateSnaplockConfiguration.add_member(:autocommit_period, Shapes::ShapeRef.new(shape: AutocommitPeriod, location_name: "AutocommitPeriod"))
    CreateSnaplockConfiguration.add_member(:privileged_delete, Shapes::ShapeRef.new(shape: PrivilegedDelete, location_name: "PrivilegedDelete"))
    CreateSnaplockConfiguration.add_member(:retention_period, Shapes::ShapeRef.new(shape: SnaplockRetentionPeriod, location_name: "RetentionPeriod"))
    CreateSnaplockConfiguration.add_member(:snaplock_type, Shapes::ShapeRef.new(shape: SnaplockType, required: true, location_name: "SnaplockType"))
    CreateSnaplockConfiguration.add_member(:volume_append_mode_enabled, Shapes::ShapeRef.new(shape: Flag, location_name: "VolumeAppendModeEnabled"))
    CreateSnaplockConfiguration.struct_class = Types::CreateSnaplockConfiguration

    CreateSnapshotRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateSnapshotRequest.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "Name"))
    CreateSnapshotRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    CreateSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateSnapshotRequest.struct_class = Types::CreateSnapshotRequest

    CreateSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CreateSnapshotResponse.struct_class = Types::CreateSnapshotResponse

    CreateStorageVirtualMachineRequest.add_member(:active_directory_configuration, Shapes::ShapeRef.new(shape: CreateSvmActiveDirectoryConfiguration, location_name: "ActiveDirectoryConfiguration"))
    CreateStorageVirtualMachineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateStorageVirtualMachineRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateStorageVirtualMachineRequest.add_member(:name, Shapes::ShapeRef.new(shape: StorageVirtualMachineName, required: true, location_name: "Name"))
    CreateStorageVirtualMachineRequest.add_member(:svm_admin_password, Shapes::ShapeRef.new(shape: AdminPassword, location_name: "SvmAdminPassword"))
    CreateStorageVirtualMachineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateStorageVirtualMachineRequest.add_member(:root_volume_security_style, Shapes::ShapeRef.new(shape: StorageVirtualMachineRootVolumeSecurityStyle, location_name: "RootVolumeSecurityStyle"))
    CreateStorageVirtualMachineRequest.struct_class = Types::CreateStorageVirtualMachineRequest

    CreateStorageVirtualMachineResponse.add_member(:storage_virtual_machine, Shapes::ShapeRef.new(shape: StorageVirtualMachine, location_name: "StorageVirtualMachine"))
    CreateStorageVirtualMachineResponse.struct_class = Types::CreateStorageVirtualMachineResponse

    CreateSvmActiveDirectoryConfiguration.add_member(:net_bios_name, Shapes::ShapeRef.new(shape: NetBiosAlias, required: true, location_name: "NetBiosName"))
    CreateSvmActiveDirectoryConfiguration.add_member(:self_managed_active_directory_configuration, Shapes::ShapeRef.new(shape: SelfManagedActiveDirectoryConfiguration, location_name: "SelfManagedActiveDirectoryConfiguration"))
    CreateSvmActiveDirectoryConfiguration.struct_class = Types::CreateSvmActiveDirectoryConfiguration

    CreateVolumeFromBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    CreateVolumeFromBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateVolumeFromBackupRequest.add_member(:name, Shapes::ShapeRef.new(shape: VolumeName, required: true, location_name: "Name"))
    CreateVolumeFromBackupRequest.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: CreateOntapVolumeConfiguration, location_name: "OntapConfiguration"))
    CreateVolumeFromBackupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateVolumeFromBackupRequest.struct_class = Types::CreateVolumeFromBackupRequest

    CreateVolumeFromBackupResponse.add_member(:volume, Shapes::ShapeRef.new(shape: Volume, location_name: "Volume"))
    CreateVolumeFromBackupResponse.struct_class = Types::CreateVolumeFromBackupResponse

    CreateVolumeRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateVolumeRequest.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, required: true, location_name: "VolumeType"))
    CreateVolumeRequest.add_member(:name, Shapes::ShapeRef.new(shape: VolumeName, required: true, location_name: "Name"))
    CreateVolumeRequest.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: CreateOntapVolumeConfiguration, location_name: "OntapConfiguration"))
    CreateVolumeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateVolumeRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: CreateOpenZFSVolumeConfiguration, location_name: "OpenZFSConfiguration"))
    CreateVolumeRequest.struct_class = Types::CreateVolumeRequest

    CreateVolumeResponse.add_member(:volume, Shapes::ShapeRef.new(shape: Volume, location_name: "Volume"))
    CreateVolumeResponse.struct_class = Types::CreateVolumeResponse

    DataRepositoryAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: DataRepositoryAssociationId, location_name: "AssociationId"))
    DataRepositoryAssociation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    DataRepositoryAssociation.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    DataRepositoryAssociation.add_member(:lifecycle, Shapes::ShapeRef.new(shape: DataRepositoryLifecycle, location_name: "Lifecycle"))
    DataRepositoryAssociation.add_member(:failure_details, Shapes::ShapeRef.new(shape: DataRepositoryFailureDetails, location_name: "FailureDetails"))
    DataRepositoryAssociation.add_member(:file_system_path, Shapes::ShapeRef.new(shape: Namespace, location_name: "FileSystemPath"))
    DataRepositoryAssociation.add_member(:data_repository_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "DataRepositoryPath"))
    DataRepositoryAssociation.add_member(:batch_import_meta_data_on_create, Shapes::ShapeRef.new(shape: BatchImportMetaDataOnCreate, location_name: "BatchImportMetaDataOnCreate"))
    DataRepositoryAssociation.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    DataRepositoryAssociation.add_member(:s3, Shapes::ShapeRef.new(shape: S3DataRepositoryConfiguration, location_name: "S3"))
    DataRepositoryAssociation.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DataRepositoryAssociation.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    DataRepositoryAssociation.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, location_name: "FileCacheId"))
    DataRepositoryAssociation.add_member(:file_cache_path, Shapes::ShapeRef.new(shape: Namespace, location_name: "FileCachePath"))
    DataRepositoryAssociation.add_member(:data_repository_subdirectories, Shapes::ShapeRef.new(shape: SubDirectoriesPaths, location_name: "DataRepositorySubdirectories"))
    DataRepositoryAssociation.add_member(:nfs, Shapes::ShapeRef.new(shape: NFSDataRepositoryConfiguration, location_name: "NFS"))
    DataRepositoryAssociation.struct_class = Types::DataRepositoryAssociation

    DataRepositoryAssociationIds.member = Shapes::ShapeRef.new(shape: DataRepositoryAssociationId)

    DataRepositoryAssociationNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataRepositoryAssociationNotFound.struct_class = Types::DataRepositoryAssociationNotFound

    DataRepositoryAssociations.member = Shapes::ShapeRef.new(shape: DataRepositoryAssociation)

    DataRepositoryConfiguration.add_member(:lifecycle, Shapes::ShapeRef.new(shape: DataRepositoryLifecycle, location_name: "Lifecycle"))
    DataRepositoryConfiguration.add_member(:import_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ImportPath"))
    DataRepositoryConfiguration.add_member(:export_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ExportPath"))
    DataRepositoryConfiguration.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    DataRepositoryConfiguration.add_member(:auto_import_policy, Shapes::ShapeRef.new(shape: AutoImportPolicyType, location_name: "AutoImportPolicy"))
    DataRepositoryConfiguration.add_member(:failure_details, Shapes::ShapeRef.new(shape: DataRepositoryFailureDetails, location_name: "FailureDetails"))
    DataRepositoryConfiguration.struct_class = Types::DataRepositoryConfiguration

    DataRepositoryFailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataRepositoryFailureDetails.struct_class = Types::DataRepositoryFailureDetails

    DataRepositoryTask.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "TaskId"))
    DataRepositoryTask.add_member(:lifecycle, Shapes::ShapeRef.new(shape: DataRepositoryTaskLifecycle, required: true, location_name: "Lifecycle"))
    DataRepositoryTask.add_member(:type, Shapes::ShapeRef.new(shape: DataRepositoryTaskType, required: true, location_name: "Type"))
    DataRepositoryTask.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "CreationTime"))
    DataRepositoryTask.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    DataRepositoryTask.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    DataRepositoryTask.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    DataRepositoryTask.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DataRepositoryTask.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    DataRepositoryTask.add_member(:paths, Shapes::ShapeRef.new(shape: DataRepositoryTaskPaths, location_name: "Paths"))
    DataRepositoryTask.add_member(:failure_details, Shapes::ShapeRef.new(shape: DataRepositoryTaskFailureDetails, location_name: "FailureDetails"))
    DataRepositoryTask.add_member(:status, Shapes::ShapeRef.new(shape: DataRepositoryTaskStatus, location_name: "Status"))
    DataRepositoryTask.add_member(:report, Shapes::ShapeRef.new(shape: CompletionReport, location_name: "Report"))
    DataRepositoryTask.add_member(:capacity_to_release, Shapes::ShapeRef.new(shape: CapacityToRelease, location_name: "CapacityToRelease"))
    DataRepositoryTask.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, location_name: "FileCacheId"))
    DataRepositoryTask.struct_class = Types::DataRepositoryTask

    DataRepositoryTaskEnded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataRepositoryTaskEnded.struct_class = Types::DataRepositoryTaskEnded

    DataRepositoryTaskExecuting.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataRepositoryTaskExecuting.struct_class = Types::DataRepositoryTaskExecuting

    DataRepositoryTaskFailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataRepositoryTaskFailureDetails.struct_class = Types::DataRepositoryTaskFailureDetails

    DataRepositoryTaskFilter.add_member(:name, Shapes::ShapeRef.new(shape: DataRepositoryTaskFilterName, location_name: "Name"))
    DataRepositoryTaskFilter.add_member(:values, Shapes::ShapeRef.new(shape: DataRepositoryTaskFilterValues, location_name: "Values"))
    DataRepositoryTaskFilter.struct_class = Types::DataRepositoryTaskFilter

    DataRepositoryTaskFilterValues.member = Shapes::ShapeRef.new(shape: DataRepositoryTaskFilterValue)

    DataRepositoryTaskFilters.member = Shapes::ShapeRef.new(shape: DataRepositoryTaskFilter)

    DataRepositoryTaskNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataRepositoryTaskNotFound.struct_class = Types::DataRepositoryTaskNotFound

    DataRepositoryTaskPaths.member = Shapes::ShapeRef.new(shape: DataRepositoryTaskPath)

    DataRepositoryTaskStatus.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    DataRepositoryTaskStatus.add_member(:succeeded_count, Shapes::ShapeRef.new(shape: SucceededCount, location_name: "SucceededCount"))
    DataRepositoryTaskStatus.add_member(:failed_count, Shapes::ShapeRef.new(shape: FailedCount, location_name: "FailedCount"))
    DataRepositoryTaskStatus.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    DataRepositoryTaskStatus.add_member(:released_capacity, Shapes::ShapeRef.new(shape: ReleasedCapacity, location_name: "ReleasedCapacity"))
    DataRepositoryTaskStatus.struct_class = Types::DataRepositoryTaskStatus

    DataRepositoryTasks.member = Shapes::ShapeRef.new(shape: DataRepositoryTask)

    DeleteBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    DeleteBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteBackupRequest.struct_class = Types::DeleteBackupRequest

    DeleteBackupResponse.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    DeleteBackupResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: BackupLifecycle, location_name: "Lifecycle"))
    DeleteBackupResponse.struct_class = Types::DeleteBackupResponse

    DeleteDataRepositoryAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: DataRepositoryAssociationId, required: true, location_name: "AssociationId"))
    DeleteDataRepositoryAssociationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteDataRepositoryAssociationRequest.add_member(:delete_data_in_file_system, Shapes::ShapeRef.new(shape: DeleteDataInFileSystem, location_name: "DeleteDataInFileSystem"))
    DeleteDataRepositoryAssociationRequest.struct_class = Types::DeleteDataRepositoryAssociationRequest

    DeleteDataRepositoryAssociationResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: DataRepositoryAssociationId, location_name: "AssociationId"))
    DeleteDataRepositoryAssociationResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: DataRepositoryLifecycle, location_name: "Lifecycle"))
    DeleteDataRepositoryAssociationResponse.add_member(:delete_data_in_file_system, Shapes::ShapeRef.new(shape: DeleteDataInFileSystem, location_name: "DeleteDataInFileSystem"))
    DeleteDataRepositoryAssociationResponse.struct_class = Types::DeleteDataRepositoryAssociationResponse

    DeleteFileCacheRequest.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, required: true, location_name: "FileCacheId"))
    DeleteFileCacheRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteFileCacheRequest.struct_class = Types::DeleteFileCacheRequest

    DeleteFileCacheResponse.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, location_name: "FileCacheId"))
    DeleteFileCacheResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileCacheLifecycle, location_name: "Lifecycle"))
    DeleteFileCacheResponse.struct_class = Types::DeleteFileCacheResponse

    DeleteFileSystemLustreConfiguration.add_member(:skip_final_backup, Shapes::ShapeRef.new(shape: Flag, location_name: "SkipFinalBackup"))
    DeleteFileSystemLustreConfiguration.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemLustreConfiguration.struct_class = Types::DeleteFileSystemLustreConfiguration

    DeleteFileSystemLustreResponse.add_member(:final_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "FinalBackupId"))
    DeleteFileSystemLustreResponse.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemLustreResponse.struct_class = Types::DeleteFileSystemLustreResponse

    DeleteFileSystemOpenZFSConfiguration.add_member(:skip_final_backup, Shapes::ShapeRef.new(shape: Flag, location_name: "SkipFinalBackup"))
    DeleteFileSystemOpenZFSConfiguration.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemOpenZFSConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DeleteFileSystemOpenZFSOptions, location_name: "Options"))
    DeleteFileSystemOpenZFSConfiguration.struct_class = Types::DeleteFileSystemOpenZFSConfiguration

    DeleteFileSystemOpenZFSOptions.member = Shapes::ShapeRef.new(shape: DeleteFileSystemOpenZFSOption)

    DeleteFileSystemOpenZFSResponse.add_member(:final_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "FinalBackupId"))
    DeleteFileSystemOpenZFSResponse.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemOpenZFSResponse.struct_class = Types::DeleteFileSystemOpenZFSResponse

    DeleteFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    DeleteFileSystemRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteFileSystemRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: DeleteFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    DeleteFileSystemRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: DeleteFileSystemLustreConfiguration, location_name: "LustreConfiguration"))
    DeleteFileSystemRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: DeleteFileSystemOpenZFSConfiguration, location_name: "OpenZFSConfiguration"))
    DeleteFileSystemRequest.struct_class = Types::DeleteFileSystemRequest

    DeleteFileSystemResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    DeleteFileSystemResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileSystemLifecycle, location_name: "Lifecycle"))
    DeleteFileSystemResponse.add_member(:windows_response, Shapes::ShapeRef.new(shape: DeleteFileSystemWindowsResponse, location_name: "WindowsResponse"))
    DeleteFileSystemResponse.add_member(:lustre_response, Shapes::ShapeRef.new(shape: DeleteFileSystemLustreResponse, location_name: "LustreResponse"))
    DeleteFileSystemResponse.add_member(:open_zfs_response, Shapes::ShapeRef.new(shape: DeleteFileSystemOpenZFSResponse, location_name: "OpenZFSResponse"))
    DeleteFileSystemResponse.struct_class = Types::DeleteFileSystemResponse

    DeleteFileSystemWindowsConfiguration.add_member(:skip_final_backup, Shapes::ShapeRef.new(shape: Flag, location_name: "SkipFinalBackup"))
    DeleteFileSystemWindowsConfiguration.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemWindowsConfiguration.struct_class = Types::DeleteFileSystemWindowsConfiguration

    DeleteFileSystemWindowsResponse.add_member(:final_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "FinalBackupId"))
    DeleteFileSystemWindowsResponse.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemWindowsResponse.struct_class = Types::DeleteFileSystemWindowsResponse

    DeleteOpenZFSVolumeOptions.member = Shapes::ShapeRef.new(shape: DeleteOpenZFSVolumeOption)

    DeleteSnapshotRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    DeleteSnapshotRequest.struct_class = Types::DeleteSnapshotRequest

    DeleteSnapshotResponse.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    DeleteSnapshotResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: SnapshotLifecycle, location_name: "Lifecycle"))
    DeleteSnapshotResponse.struct_class = Types::DeleteSnapshotResponse

    DeleteStorageVirtualMachineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteStorageVirtualMachineRequest.add_member(:storage_virtual_machine_id, Shapes::ShapeRef.new(shape: StorageVirtualMachineId, required: true, location_name: "StorageVirtualMachineId"))
    DeleteStorageVirtualMachineRequest.struct_class = Types::DeleteStorageVirtualMachineRequest

    DeleteStorageVirtualMachineResponse.add_member(:storage_virtual_machine_id, Shapes::ShapeRef.new(shape: StorageVirtualMachineId, location_name: "StorageVirtualMachineId"))
    DeleteStorageVirtualMachineResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: StorageVirtualMachineLifecycle, location_name: "Lifecycle"))
    DeleteStorageVirtualMachineResponse.struct_class = Types::DeleteStorageVirtualMachineResponse

    DeleteVolumeOntapConfiguration.add_member(:skip_final_backup, Shapes::ShapeRef.new(shape: Flag, location_name: "SkipFinalBackup"))
    DeleteVolumeOntapConfiguration.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteVolumeOntapConfiguration.add_member(:bypass_snaplock_enterprise_retention, Shapes::ShapeRef.new(shape: Flag, location_name: "BypassSnaplockEnterpriseRetention"))
    DeleteVolumeOntapConfiguration.struct_class = Types::DeleteVolumeOntapConfiguration

    DeleteVolumeOntapResponse.add_member(:final_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "FinalBackupId"))
    DeleteVolumeOntapResponse.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteVolumeOntapResponse.struct_class = Types::DeleteVolumeOntapResponse

    DeleteVolumeOpenZFSConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DeleteOpenZFSVolumeOptions, location_name: "Options"))
    DeleteVolumeOpenZFSConfiguration.struct_class = Types::DeleteVolumeOpenZFSConfiguration

    DeleteVolumeRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    DeleteVolumeRequest.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: DeleteVolumeOntapConfiguration, location_name: "OntapConfiguration"))
    DeleteVolumeRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: DeleteVolumeOpenZFSConfiguration, location_name: "OpenZFSConfiguration"))
    DeleteVolumeRequest.struct_class = Types::DeleteVolumeRequest

    DeleteVolumeResponse.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    DeleteVolumeResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: VolumeLifecycle, location_name: "Lifecycle"))
    DeleteVolumeResponse.add_member(:ontap_response, Shapes::ShapeRef.new(shape: DeleteVolumeOntapResponse, location_name: "OntapResponse"))
    DeleteVolumeResponse.struct_class = Types::DeleteVolumeResponse

    DescribeBackupsRequest.add_member(:backup_ids, Shapes::ShapeRef.new(shape: BackupIds, location_name: "BackupIds"))
    DescribeBackupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeBackupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBackupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsRequest.struct_class = Types::DescribeBackupsRequest

    DescribeBackupsResponse.add_member(:backups, Shapes::ShapeRef.new(shape: Backups, location_name: "Backups"))
    DescribeBackupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsResponse.struct_class = Types::DescribeBackupsResponse

    DescribeDataRepositoryAssociationsRequest.add_member(:association_ids, Shapes::ShapeRef.new(shape: DataRepositoryAssociationIds, location_name: "AssociationIds"))
    DescribeDataRepositoryAssociationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeDataRepositoryAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: LimitedMaxResults, location_name: "MaxResults"))
    DescribeDataRepositoryAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDataRepositoryAssociationsRequest.struct_class = Types::DescribeDataRepositoryAssociationsRequest

    DescribeDataRepositoryAssociationsResponse.add_member(:associations, Shapes::ShapeRef.new(shape: DataRepositoryAssociations, location_name: "Associations"))
    DescribeDataRepositoryAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDataRepositoryAssociationsResponse.struct_class = Types::DescribeDataRepositoryAssociationsResponse

    DescribeDataRepositoryTasksRequest.add_member(:task_ids, Shapes::ShapeRef.new(shape: TaskIds, location_name: "TaskIds"))
    DescribeDataRepositoryTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DataRepositoryTaskFilters, location_name: "Filters"))
    DescribeDataRepositoryTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeDataRepositoryTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDataRepositoryTasksRequest.struct_class = Types::DescribeDataRepositoryTasksRequest

    DescribeDataRepositoryTasksResponse.add_member(:data_repository_tasks, Shapes::ShapeRef.new(shape: DataRepositoryTasks, location_name: "DataRepositoryTasks"))
    DescribeDataRepositoryTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDataRepositoryTasksResponse.struct_class = Types::DescribeDataRepositoryTasksResponse

    DescribeFileCachesRequest.add_member(:file_cache_ids, Shapes::ShapeRef.new(shape: FileCacheIds, location_name: "FileCacheIds"))
    DescribeFileCachesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeFileCachesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileCachesRequest.struct_class = Types::DescribeFileCachesRequest

    DescribeFileCachesResponse.add_member(:file_caches, Shapes::ShapeRef.new(shape: FileCaches, location_name: "FileCaches"))
    DescribeFileCachesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileCachesResponse.struct_class = Types::DescribeFileCachesResponse

    DescribeFileSystemAliasesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DescribeFileSystemAliasesRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    DescribeFileSystemAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeFileSystemAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileSystemAliasesRequest.struct_class = Types::DescribeFileSystemAliasesRequest

    DescribeFileSystemAliasesResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    DescribeFileSystemAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileSystemAliasesResponse.struct_class = Types::DescribeFileSystemAliasesResponse

    DescribeFileSystemsRequest.add_member(:file_system_ids, Shapes::ShapeRef.new(shape: FileSystemIds, location_name: "FileSystemIds"))
    DescribeFileSystemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeFileSystemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileSystemsRequest.struct_class = Types::DescribeFileSystemsRequest

    DescribeFileSystemsResponse.add_member(:file_systems, Shapes::ShapeRef.new(shape: FileSystems, location_name: "FileSystems"))
    DescribeFileSystemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileSystemsResponse.struct_class = Types::DescribeFileSystemsResponse

    DescribeSnapshotsRequest.add_member(:snapshot_ids, Shapes::ShapeRef.new(shape: SnapshotIds, location_name: "SnapshotIds"))
    DescribeSnapshotsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SnapshotFilters, location_name: "Filters"))
    DescribeSnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSnapshotsRequest.struct_class = Types::DescribeSnapshotsRequest

    DescribeSnapshotsResponse.add_member(:snapshots, Shapes::ShapeRef.new(shape: Snapshots, location_name: "Snapshots"))
    DescribeSnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSnapshotsResponse.struct_class = Types::DescribeSnapshotsResponse

    DescribeStorageVirtualMachinesRequest.add_member(:storage_virtual_machine_ids, Shapes::ShapeRef.new(shape: StorageVirtualMachineIds, location_name: "StorageVirtualMachineIds"))
    DescribeStorageVirtualMachinesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: StorageVirtualMachineFilters, location_name: "Filters"))
    DescribeStorageVirtualMachinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeStorageVirtualMachinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStorageVirtualMachinesRequest.struct_class = Types::DescribeStorageVirtualMachinesRequest

    DescribeStorageVirtualMachinesResponse.add_member(:storage_virtual_machines, Shapes::ShapeRef.new(shape: StorageVirtualMachines, location_name: "StorageVirtualMachines"))
    DescribeStorageVirtualMachinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStorageVirtualMachinesResponse.struct_class = Types::DescribeStorageVirtualMachinesResponse

    DescribeVolumesRequest.add_member(:volume_ids, Shapes::ShapeRef.new(shape: VolumeIds, location_name: "VolumeIds"))
    DescribeVolumesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: VolumeFilters, location_name: "Filters"))
    DescribeVolumesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeVolumesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeVolumesRequest.struct_class = Types::DescribeVolumesRequest

    DescribeVolumesResponse.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "Volumes"))
    DescribeVolumesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeVolumesResponse.struct_class = Types::DescribeVolumesResponse

    DisassociateFileSystemAliasesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DisassociateFileSystemAliasesRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    DisassociateFileSystemAliasesRequest.add_member(:aliases, Shapes::ShapeRef.new(shape: AlternateDNSNames, required: true, location_name: "Aliases"))
    DisassociateFileSystemAliasesRequest.struct_class = Types::DisassociateFileSystemAliasesRequest

    DisassociateFileSystemAliasesResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    DisassociateFileSystemAliasesResponse.struct_class = Types::DisassociateFileSystemAliasesResponse

    DiskIopsConfiguration.add_member(:mode, Shapes::ShapeRef.new(shape: DiskIopsConfigurationMode, location_name: "Mode"))
    DiskIopsConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: Iops, location_name: "Iops"))
    DiskIopsConfiguration.struct_class = Types::DiskIopsConfiguration

    DnsIps.member = Shapes::ShapeRef.new(shape: IpAddress)

    EventTypes.member = Shapes::ShapeRef.new(shape: EventType)

    FileCache.add_member(:owner_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerId"))
    FileCache.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    FileCache.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, location_name: "FileCacheId"))
    FileCache.add_member(:file_cache_type, Shapes::ShapeRef.new(shape: FileCacheType, location_name: "FileCacheType"))
    FileCache.add_member(:file_cache_type_version, Shapes::ShapeRef.new(shape: FileSystemTypeVersion, location_name: "FileCacheTypeVersion"))
    FileCache.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileCacheLifecycle, location_name: "Lifecycle"))
    FileCache.add_member(:failure_details, Shapes::ShapeRef.new(shape: FileCacheFailureDetails, location_name: "FailureDetails"))
    FileCache.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, location_name: "StorageCapacity"))
    FileCache.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    FileCache.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    FileCache.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: NetworkInterfaceIds, location_name: "NetworkInterfaceIds"))
    FileCache.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    FileCache.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    FileCache.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    FileCache.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: FileCacheLustreConfiguration, location_name: "LustreConfiguration"))
    FileCache.add_member(:data_repository_association_ids, Shapes::ShapeRef.new(shape: DataRepositoryAssociationIds, location_name: "DataRepositoryAssociationIds"))
    FileCache.struct_class = Types::FileCache

    FileCacheCreating.add_member(:owner_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerId"))
    FileCacheCreating.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    FileCacheCreating.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, location_name: "FileCacheId"))
    FileCacheCreating.add_member(:file_cache_type, Shapes::ShapeRef.new(shape: FileCacheType, location_name: "FileCacheType"))
    FileCacheCreating.add_member(:file_cache_type_version, Shapes::ShapeRef.new(shape: FileSystemTypeVersion, location_name: "FileCacheTypeVersion"))
    FileCacheCreating.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileCacheLifecycle, location_name: "Lifecycle"))
    FileCacheCreating.add_member(:failure_details, Shapes::ShapeRef.new(shape: FileCacheFailureDetails, location_name: "FailureDetails"))
    FileCacheCreating.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, location_name: "StorageCapacity"))
    FileCacheCreating.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    FileCacheCreating.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    FileCacheCreating.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: NetworkInterfaceIds, location_name: "NetworkInterfaceIds"))
    FileCacheCreating.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    FileCacheCreating.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    FileCacheCreating.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    FileCacheCreating.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    FileCacheCreating.add_member(:copy_tags_to_data_repository_associations, Shapes::ShapeRef.new(shape: CopyTagsToDataRepositoryAssociations, location_name: "CopyTagsToDataRepositoryAssociations"))
    FileCacheCreating.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: FileCacheLustreConfiguration, location_name: "LustreConfiguration"))
    FileCacheCreating.add_member(:data_repository_association_ids, Shapes::ShapeRef.new(shape: DataRepositoryAssociationIds, location_name: "DataRepositoryAssociationIds"))
    FileCacheCreating.struct_class = Types::FileCacheCreating

    FileCacheDataRepositoryAssociation.add_member(:file_cache_path, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "FileCachePath"))
    FileCacheDataRepositoryAssociation.add_member(:data_repository_path, Shapes::ShapeRef.new(shape: ArchivePath, required: true, location_name: "DataRepositoryPath"))
    FileCacheDataRepositoryAssociation.add_member(:data_repository_subdirectories, Shapes::ShapeRef.new(shape: SubDirectoriesPaths, location_name: "DataRepositorySubdirectories"))
    FileCacheDataRepositoryAssociation.add_member(:nfs, Shapes::ShapeRef.new(shape: FileCacheNFSConfiguration, location_name: "NFS"))
    FileCacheDataRepositoryAssociation.struct_class = Types::FileCacheDataRepositoryAssociation

    FileCacheFailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileCacheFailureDetails.struct_class = Types::FileCacheFailureDetails

    FileCacheIds.member = Shapes::ShapeRef.new(shape: FileCacheId)

    FileCacheLustreConfiguration.add_member(:per_unit_storage_throughput, Shapes::ShapeRef.new(shape: PerUnitStorageThroughput, location_name: "PerUnitStorageThroughput"))
    FileCacheLustreConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: FileCacheLustreDeploymentType, location_name: "DeploymentType"))
    FileCacheLustreConfiguration.add_member(:mount_name, Shapes::ShapeRef.new(shape: LustreFileSystemMountName, location_name: "MountName"))
    FileCacheLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    FileCacheLustreConfiguration.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: FileCacheLustreMetadataConfiguration, location_name: "MetadataConfiguration"))
    FileCacheLustreConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LustreLogConfiguration, location_name: "LogConfiguration"))
    FileCacheLustreConfiguration.struct_class = Types::FileCacheLustreConfiguration

    FileCacheLustreMetadataConfiguration.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: MetadataStorageCapacity, required: true, location_name: "StorageCapacity"))
    FileCacheLustreMetadataConfiguration.struct_class = Types::FileCacheLustreMetadataConfiguration

    FileCacheNFSConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: NfsVersion, required: true, location_name: "Version"))
    FileCacheNFSConfiguration.add_member(:dns_ips, Shapes::ShapeRef.new(shape: RepositoryDnsIps, location_name: "DnsIps"))
    FileCacheNFSConfiguration.struct_class = Types::FileCacheNFSConfiguration

    FileCacheNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileCacheNotFound.struct_class = Types::FileCacheNotFound

    FileCaches.member = Shapes::ShapeRef.new(shape: FileCache)

    FileSystem.add_member(:owner_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerId"))
    FileSystem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    FileSystem.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    FileSystem.add_member(:file_system_type, Shapes::ShapeRef.new(shape: FileSystemType, location_name: "FileSystemType"))
    FileSystem.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileSystemLifecycle, location_name: "Lifecycle"))
    FileSystem.add_member(:failure_details, Shapes::ShapeRef.new(shape: FileSystemFailureDetails, location_name: "FailureDetails"))
    FileSystem.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, location_name: "StorageCapacity"))
    FileSystem.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "StorageType"))
    FileSystem.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    FileSystem.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    FileSystem.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: NetworkInterfaceIds, location_name: "NetworkInterfaceIds"))
    FileSystem.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    FileSystem.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    FileSystem.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    FileSystem.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    FileSystem.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: WindowsFileSystemConfiguration, location_name: "WindowsConfiguration"))
    FileSystem.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: LustreFileSystemConfiguration, location_name: "LustreConfiguration"))
    FileSystem.add_member(:administrative_actions, Shapes::ShapeRef.new(shape: AdministrativeActions, location_name: "AdministrativeActions"))
    FileSystem.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: OntapFileSystemConfiguration, location_name: "OntapConfiguration"))
    FileSystem.add_member(:file_system_type_version, Shapes::ShapeRef.new(shape: FileSystemTypeVersion, location_name: "FileSystemTypeVersion"))
    FileSystem.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: OpenZFSFileSystemConfiguration, location_name: "OpenZFSConfiguration"))
    FileSystem.struct_class = Types::FileSystem

    FileSystemEndpoint.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    FileSystemEndpoint.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: OntapEndpointIpAddresses, location_name: "IpAddresses"))
    FileSystemEndpoint.struct_class = Types::FileSystemEndpoint

    FileSystemEndpoints.add_member(:intercluster, Shapes::ShapeRef.new(shape: FileSystemEndpoint, location_name: "Intercluster"))
    FileSystemEndpoints.add_member(:management, Shapes::ShapeRef.new(shape: FileSystemEndpoint, location_name: "Management"))
    FileSystemEndpoints.struct_class = Types::FileSystemEndpoints

    FileSystemFailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileSystemFailureDetails.struct_class = Types::FileSystemFailureDetails

    FileSystemIds.member = Shapes::ShapeRef.new(shape: FileSystemId)

    FileSystemMaintenanceOperations.member = Shapes::ShapeRef.new(shape: FileSystemMaintenanceOperation)

    FileSystemNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileSystemNotFound.struct_class = Types::FileSystemNotFound

    FileSystems.member = Shapes::ShapeRef.new(shape: FileSystem)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    IncompatibleParameterError.add_member(:parameter, Shapes::ShapeRef.new(shape: Parameter, required: true, location_name: "Parameter"))
    IncompatibleParameterError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncompatibleParameterError.struct_class = Types::IncompatibleParameterError

    IncompatibleRegionForMultiAZ.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncompatibleRegionForMultiAZ.struct_class = Types::IncompatibleRegionForMultiAZ

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidDataRepositoryType.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidDataRepositoryType.struct_class = Types::InvalidDataRepositoryType

    InvalidDestinationKmsKey.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidDestinationKmsKey.struct_class = Types::InvalidDestinationKmsKey

    InvalidExportPath.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidExportPath.struct_class = Types::InvalidExportPath

    InvalidImportPath.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidImportPath.struct_class = Types::InvalidImportPath

    InvalidNetworkSettings.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNetworkSettings.add_member(:invalid_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "InvalidSubnetId"))
    InvalidNetworkSettings.add_member(:invalid_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "InvalidSecurityGroupId"))
    InvalidNetworkSettings.add_member(:invalid_route_table_id, Shapes::ShapeRef.new(shape: RouteTableId, location_name: "InvalidRouteTableId"))
    InvalidNetworkSettings.struct_class = Types::InvalidNetworkSettings

    InvalidPerUnitStorageThroughput.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidPerUnitStorageThroughput.struct_class = Types::InvalidPerUnitStorageThroughput

    InvalidRegion.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRegion.struct_class = Types::InvalidRegion

    InvalidSourceKmsKey.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidSourceKmsKey.struct_class = Types::InvalidSourceKmsKey

    LifecycleTransitionReason.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LifecycleTransitionReason.struct_class = Types::LifecycleTransitionReason

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LustreFileSystemConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    LustreFileSystemConfiguration.add_member(:data_repository_configuration, Shapes::ShapeRef.new(shape: DataRepositoryConfiguration, location_name: "DataRepositoryConfiguration"))
    LustreFileSystemConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: LustreDeploymentType, location_name: "DeploymentType"))
    LustreFileSystemConfiguration.add_member(:per_unit_storage_throughput, Shapes::ShapeRef.new(shape: PerUnitStorageThroughput, location_name: "PerUnitStorageThroughput"))
    LustreFileSystemConfiguration.add_member(:mount_name, Shapes::ShapeRef.new(shape: LustreFileSystemMountName, location_name: "MountName"))
    LustreFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    LustreFileSystemConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    LustreFileSystemConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    LustreFileSystemConfiguration.add_member(:drive_cache_type, Shapes::ShapeRef.new(shape: DriveCacheType, location_name: "DriveCacheType"))
    LustreFileSystemConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: DataCompressionType, location_name: "DataCompressionType"))
    LustreFileSystemConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LustreLogConfiguration, location_name: "LogConfiguration"))
    LustreFileSystemConfiguration.add_member(:root_squash_configuration, Shapes::ShapeRef.new(shape: LustreRootSquashConfiguration, location_name: "RootSquashConfiguration"))
    LustreFileSystemConfiguration.struct_class = Types::LustreFileSystemConfiguration

    LustreLogConfiguration.add_member(:level, Shapes::ShapeRef.new(shape: LustreAccessAuditLogLevel, required: true, location_name: "Level"))
    LustreLogConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: GeneralARN, location_name: "Destination"))
    LustreLogConfiguration.struct_class = Types::LustreLogConfiguration

    LustreLogCreateConfiguration.add_member(:level, Shapes::ShapeRef.new(shape: LustreAccessAuditLogLevel, required: true, location_name: "Level"))
    LustreLogCreateConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: GeneralARN, location_name: "Destination"))
    LustreLogCreateConfiguration.struct_class = Types::LustreLogCreateConfiguration

    LustreNoSquashNids.member = Shapes::ShapeRef.new(shape: LustreNoSquashNid)

    LustreRootSquashConfiguration.add_member(:root_squash, Shapes::ShapeRef.new(shape: LustreRootSquash, location_name: "RootSquash"))
    LustreRootSquashConfiguration.add_member(:no_squash_nids, Shapes::ShapeRef.new(shape: LustreNoSquashNids, location_name: "NoSquashNids"))
    LustreRootSquashConfiguration.struct_class = Types::LustreRootSquashConfiguration

    MissingFileCacheConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MissingFileCacheConfiguration.struct_class = Types::MissingFileCacheConfiguration

    MissingFileSystemConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MissingFileSystemConfiguration.struct_class = Types::MissingFileSystemConfiguration

    MissingVolumeConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MissingVolumeConfiguration.struct_class = Types::MissingVolumeConfiguration

    NFSDataRepositoryConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: NfsVersion, required: true, location_name: "Version"))
    NFSDataRepositoryConfiguration.add_member(:dns_ips, Shapes::ShapeRef.new(shape: RepositoryDnsIps, location_name: "DnsIps"))
    NFSDataRepositoryConfiguration.add_member(:auto_export_policy, Shapes::ShapeRef.new(shape: AutoExportPolicy, location_name: "AutoExportPolicy"))
    NFSDataRepositoryConfiguration.struct_class = Types::NFSDataRepositoryConfiguration

    NetworkInterfaceIds.member = Shapes::ShapeRef.new(shape: NetworkInterfaceId)

    NotServiceResourceError.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    NotServiceResourceError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotServiceResourceError.struct_class = Types::NotServiceResourceError

    OntapEndpointIpAddresses.member = Shapes::ShapeRef.new(shape: IpAddress)

    OntapFileSystemConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    OntapFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    OntapFileSystemConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: OntapDeploymentType, location_name: "DeploymentType"))
    OntapFileSystemConfiguration.add_member(:endpoint_ip_address_range, Shapes::ShapeRef.new(shape: IpAddressRange, location_name: "EndpointIpAddressRange"))
    OntapFileSystemConfiguration.add_member(:endpoints, Shapes::ShapeRef.new(shape: FileSystemEndpoints, location_name: "Endpoints"))
    OntapFileSystemConfiguration.add_member(:disk_iops_configuration, Shapes::ShapeRef.new(shape: DiskIopsConfiguration, location_name: "DiskIopsConfiguration"))
    OntapFileSystemConfiguration.add_member(:preferred_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "PreferredSubnetId"))
    OntapFileSystemConfiguration.add_member(:route_table_ids, Shapes::ShapeRef.new(shape: RouteTableIds, location_name: "RouteTableIds"))
    OntapFileSystemConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    OntapFileSystemConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    OntapFileSystemConfiguration.add_member(:fsx_admin_password, Shapes::ShapeRef.new(shape: AdminPassword, location_name: "FsxAdminPassword"))
    OntapFileSystemConfiguration.struct_class = Types::OntapFileSystemConfiguration

    OntapVolumeConfiguration.add_member(:flex_cache_endpoint_type, Shapes::ShapeRef.new(shape: FlexCacheEndpointType, location_name: "FlexCacheEndpointType"))
    OntapVolumeConfiguration.add_member(:junction_path, Shapes::ShapeRef.new(shape: JunctionPath, location_name: "JunctionPath"))
    OntapVolumeConfiguration.add_member(:security_style, Shapes::ShapeRef.new(shape: SecurityStyle, location_name: "SecurityStyle"))
    OntapVolumeConfiguration.add_member(:size_in_megabytes, Shapes::ShapeRef.new(shape: VolumeCapacity, location_name: "SizeInMegabytes"))
    OntapVolumeConfiguration.add_member(:storage_efficiency_enabled, Shapes::ShapeRef.new(shape: Flag, location_name: "StorageEfficiencyEnabled"))
    OntapVolumeConfiguration.add_member(:storage_virtual_machine_id, Shapes::ShapeRef.new(shape: StorageVirtualMachineId, location_name: "StorageVirtualMachineId"))
    OntapVolumeConfiguration.add_member(:storage_virtual_machine_root, Shapes::ShapeRef.new(shape: Flag, location_name: "StorageVirtualMachineRoot"))
    OntapVolumeConfiguration.add_member(:tiering_policy, Shapes::ShapeRef.new(shape: TieringPolicy, location_name: "TieringPolicy"))
    OntapVolumeConfiguration.add_member(:uuid, Shapes::ShapeRef.new(shape: UUID, location_name: "UUID"))
    OntapVolumeConfiguration.add_member(:ontap_volume_type, Shapes::ShapeRef.new(shape: OntapVolumeType, location_name: "OntapVolumeType"))
    OntapVolumeConfiguration.add_member(:snapshot_policy, Shapes::ShapeRef.new(shape: SnapshotPolicy, location_name: "SnapshotPolicy"))
    OntapVolumeConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    OntapVolumeConfiguration.add_member(:snaplock_configuration, Shapes::ShapeRef.new(shape: SnaplockConfiguration, location_name: "SnaplockConfiguration"))
    OntapVolumeConfiguration.struct_class = Types::OntapVolumeConfiguration

    OpenZFSClientConfiguration.add_member(:clients, Shapes::ShapeRef.new(shape: OpenZFSClients, required: true, location_name: "Clients"))
    OpenZFSClientConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: OpenZFSNfsExportOptions, required: true, location_name: "Options"))
    OpenZFSClientConfiguration.struct_class = Types::OpenZFSClientConfiguration

    OpenZFSClientConfigurations.member = Shapes::ShapeRef.new(shape: OpenZFSClientConfiguration)

    OpenZFSCreateRootVolumeConfiguration.add_member(:record_size_ki_b, Shapes::ShapeRef.new(shape: IntegerRecordSizeKiB, location_name: "RecordSizeKiB"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: OpenZFSDataCompressionType, location_name: "DataCompressionType"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:nfs_exports, Shapes::ShapeRef.new(shape: OpenZFSNfsExports, location_name: "NfsExports"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:user_and_group_quotas, Shapes::ShapeRef.new(shape: OpenZFSUserAndGroupQuotas, location_name: "UserAndGroupQuotas"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:copy_tags_to_snapshots, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToSnapshots"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:read_only, Shapes::ShapeRef.new(shape: ReadOnly, location_name: "ReadOnly"))
    OpenZFSCreateRootVolumeConfiguration.struct_class = Types::OpenZFSCreateRootVolumeConfiguration

    OpenZFSFileSystemConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    OpenZFSFileSystemConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    OpenZFSFileSystemConfiguration.add_member(:copy_tags_to_volumes, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToVolumes"))
    OpenZFSFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    OpenZFSFileSystemConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: OpenZFSDeploymentType, location_name: "DeploymentType"))
    OpenZFSFileSystemConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    OpenZFSFileSystemConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    OpenZFSFileSystemConfiguration.add_member(:disk_iops_configuration, Shapes::ShapeRef.new(shape: DiskIopsConfiguration, location_name: "DiskIopsConfiguration"))
    OpenZFSFileSystemConfiguration.add_member(:root_volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "RootVolumeId"))
    OpenZFSFileSystemConfiguration.struct_class = Types::OpenZFSFileSystemConfiguration

    OpenZFSNfsExport.add_member(:client_configurations, Shapes::ShapeRef.new(shape: OpenZFSClientConfigurations, required: true, location_name: "ClientConfigurations"))
    OpenZFSNfsExport.struct_class = Types::OpenZFSNfsExport

    OpenZFSNfsExportOptions.member = Shapes::ShapeRef.new(shape: OpenZFSNfsExportOption)

    OpenZFSNfsExports.member = Shapes::ShapeRef.new(shape: OpenZFSNfsExport)

    OpenZFSOriginSnapshotConfiguration.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "SnapshotARN"))
    OpenZFSOriginSnapshotConfiguration.add_member(:copy_strategy, Shapes::ShapeRef.new(shape: OpenZFSCopyStrategy, location_name: "CopyStrategy"))
    OpenZFSOriginSnapshotConfiguration.struct_class = Types::OpenZFSOriginSnapshotConfiguration

    OpenZFSUserAndGroupQuotas.member = Shapes::ShapeRef.new(shape: OpenZFSUserOrGroupQuota)

    OpenZFSUserOrGroupQuota.add_member(:type, Shapes::ShapeRef.new(shape: OpenZFSQuotaType, required: true, location_name: "Type"))
    OpenZFSUserOrGroupQuota.add_member(:id, Shapes::ShapeRef.new(shape: IntegerNoMax, required: true, location_name: "Id"))
    OpenZFSUserOrGroupQuota.add_member(:storage_capacity_quota_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMax, required: true, location_name: "StorageCapacityQuotaGiB"))
    OpenZFSUserOrGroupQuota.struct_class = Types::OpenZFSUserOrGroupQuota

    OpenZFSVolumeConfiguration.add_member(:parent_volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "ParentVolumeId"))
    OpenZFSVolumeConfiguration.add_member(:volume_path, Shapes::ShapeRef.new(shape: VolumePath, location_name: "VolumePath"))
    OpenZFSVolumeConfiguration.add_member(:storage_capacity_reservation_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMax, location_name: "StorageCapacityReservationGiB"))
    OpenZFSVolumeConfiguration.add_member(:storage_capacity_quota_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMax, location_name: "StorageCapacityQuotaGiB"))
    OpenZFSVolumeConfiguration.add_member(:record_size_ki_b, Shapes::ShapeRef.new(shape: IntegerRecordSizeKiB, location_name: "RecordSizeKiB"))
    OpenZFSVolumeConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: OpenZFSDataCompressionType, location_name: "DataCompressionType"))
    OpenZFSVolumeConfiguration.add_member(:copy_tags_to_snapshots, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToSnapshots"))
    OpenZFSVolumeConfiguration.add_member(:origin_snapshot, Shapes::ShapeRef.new(shape: OpenZFSOriginSnapshotConfiguration, location_name: "OriginSnapshot"))
    OpenZFSVolumeConfiguration.add_member(:read_only, Shapes::ShapeRef.new(shape: ReadOnly, location_name: "ReadOnly"))
    OpenZFSVolumeConfiguration.add_member(:nfs_exports, Shapes::ShapeRef.new(shape: OpenZFSNfsExports, location_name: "NfsExports"))
    OpenZFSVolumeConfiguration.add_member(:user_and_group_quotas, Shapes::ShapeRef.new(shape: OpenZFSUserAndGroupQuotas, location_name: "UserAndGroupQuotas"))
    OpenZFSVolumeConfiguration.add_member(:restore_to_snapshot, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "RestoreToSnapshot"))
    OpenZFSVolumeConfiguration.add_member(:delete_intermediate_snaphots, Shapes::ShapeRef.new(shape: Flag, location_name: "DeleteIntermediateSnaphots"))
    OpenZFSVolumeConfiguration.add_member(:delete_cloned_volumes, Shapes::ShapeRef.new(shape: Flag, location_name: "DeleteClonedVolumes"))
    OpenZFSVolumeConfiguration.struct_class = Types::OpenZFSVolumeConfiguration

    ReleaseFileSystemNfsV3LocksRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    ReleaseFileSystemNfsV3LocksRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    ReleaseFileSystemNfsV3LocksRequest.struct_class = Types::ReleaseFileSystemNfsV3LocksRequest

    ReleaseFileSystemNfsV3LocksResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    ReleaseFileSystemNfsV3LocksResponse.struct_class = Types::ReleaseFileSystemNfsV3LocksResponse

    RepositoryDnsIps.member = Shapes::ShapeRef.new(shape: IpAddress)

    ResourceDoesNotSupportTagging.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ResourceDoesNotSupportTagging.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceDoesNotSupportTagging.struct_class = Types::ResourceDoesNotSupportTagging

    ResourceNotFound.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    RestoreOpenZFSVolumeOptions.member = Shapes::ShapeRef.new(shape: RestoreOpenZFSVolumeOption)

    RestoreVolumeFromSnapshotRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    RestoreVolumeFromSnapshotRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    RestoreVolumeFromSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    RestoreVolumeFromSnapshotRequest.add_member(:options, Shapes::ShapeRef.new(shape: RestoreOpenZFSVolumeOptions, location_name: "Options"))
    RestoreVolumeFromSnapshotRequest.struct_class = Types::RestoreVolumeFromSnapshotRequest

    RestoreVolumeFromSnapshotResponse.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    RestoreVolumeFromSnapshotResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: VolumeLifecycle, location_name: "Lifecycle"))
    RestoreVolumeFromSnapshotResponse.add_member(:administrative_actions, Shapes::ShapeRef.new(shape: AdministrativeActions, location_name: "AdministrativeActions"))
    RestoreVolumeFromSnapshotResponse.struct_class = Types::RestoreVolumeFromSnapshotResponse

    RetentionPeriod.add_member(:type, Shapes::ShapeRef.new(shape: RetentionPeriodType, required: true, location_name: "Type"))
    RetentionPeriod.add_member(:value, Shapes::ShapeRef.new(shape: RetentionPeriodValue, location_name: "Value"))
    RetentionPeriod.struct_class = Types::RetentionPeriod

    RouteTableIds.member = Shapes::ShapeRef.new(shape: RouteTableId)

    S3DataRepositoryConfiguration.add_member(:auto_import_policy, Shapes::ShapeRef.new(shape: AutoImportPolicy, location_name: "AutoImportPolicy"))
    S3DataRepositoryConfiguration.add_member(:auto_export_policy, Shapes::ShapeRef.new(shape: AutoExportPolicy, location_name: "AutoExportPolicy"))
    S3DataRepositoryConfiguration.struct_class = Types::S3DataRepositoryConfiguration

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SelfManagedActiveDirectoryAttributes.add_member(:domain_name, Shapes::ShapeRef.new(shape: ActiveDirectoryFullyQualifiedName, location_name: "DomainName"))
    SelfManagedActiveDirectoryAttributes.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName, location_name: "OrganizationalUnitDistinguishedName"))
    SelfManagedActiveDirectoryAttributes.add_member(:file_system_administrators_group, Shapes::ShapeRef.new(shape: FileSystemAdministratorsGroupName, location_name: "FileSystemAdministratorsGroup"))
    SelfManagedActiveDirectoryAttributes.add_member(:user_name, Shapes::ShapeRef.new(shape: DirectoryUserName, location_name: "UserName"))
    SelfManagedActiveDirectoryAttributes.add_member(:dns_ips, Shapes::ShapeRef.new(shape: DnsIps, location_name: "DnsIps"))
    SelfManagedActiveDirectoryAttributes.struct_class = Types::SelfManagedActiveDirectoryAttributes

    SelfManagedActiveDirectoryConfiguration.add_member(:domain_name, Shapes::ShapeRef.new(shape: ActiveDirectoryFullyQualifiedName, required: true, location_name: "DomainName"))
    SelfManagedActiveDirectoryConfiguration.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName, location_name: "OrganizationalUnitDistinguishedName"))
    SelfManagedActiveDirectoryConfiguration.add_member(:file_system_administrators_group, Shapes::ShapeRef.new(shape: FileSystemAdministratorsGroupName, location_name: "FileSystemAdministratorsGroup"))
    SelfManagedActiveDirectoryConfiguration.add_member(:user_name, Shapes::ShapeRef.new(shape: DirectoryUserName, required: true, location_name: "UserName"))
    SelfManagedActiveDirectoryConfiguration.add_member(:password, Shapes::ShapeRef.new(shape: DirectoryPassword, required: true, location_name: "Password"))
    SelfManagedActiveDirectoryConfiguration.add_member(:dns_ips, Shapes::ShapeRef.new(shape: DnsIps, required: true, location_name: "DnsIps"))
    SelfManagedActiveDirectoryConfiguration.struct_class = Types::SelfManagedActiveDirectoryConfiguration

    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:user_name, Shapes::ShapeRef.new(shape: DirectoryUserName, location_name: "UserName"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:password, Shapes::ShapeRef.new(shape: DirectoryPassword, location_name: "Password"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:dns_ips, Shapes::ShapeRef.new(shape: DnsIps, location_name: "DnsIps"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:domain_name, Shapes::ShapeRef.new(shape: ActiveDirectoryFullyQualifiedName, location_name: "DomainName"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName, location_name: "OrganizationalUnitDistinguishedName"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:file_system_administrators_group, Shapes::ShapeRef.new(shape: FileSystemAdministratorsGroupName, location_name: "FileSystemAdministratorsGroup"))
    SelfManagedActiveDirectoryConfigurationUpdates.struct_class = Types::SelfManagedActiveDirectoryConfigurationUpdates

    ServiceLimitExceeded.add_member(:limit, Shapes::ShapeRef.new(shape: ServiceLimit, required: true, location_name: "Limit"))
    ServiceLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceLimitExceeded.struct_class = Types::ServiceLimitExceeded

    SnaplockConfiguration.add_member(:audit_log_volume, Shapes::ShapeRef.new(shape: Flag, location_name: "AuditLogVolume"))
    SnaplockConfiguration.add_member(:autocommit_period, Shapes::ShapeRef.new(shape: AutocommitPeriod, location_name: "AutocommitPeriod"))
    SnaplockConfiguration.add_member(:privileged_delete, Shapes::ShapeRef.new(shape: PrivilegedDelete, location_name: "PrivilegedDelete"))
    SnaplockConfiguration.add_member(:retention_period, Shapes::ShapeRef.new(shape: SnaplockRetentionPeriod, location_name: "RetentionPeriod"))
    SnaplockConfiguration.add_member(:snaplock_type, Shapes::ShapeRef.new(shape: SnaplockType, location_name: "SnaplockType"))
    SnaplockConfiguration.add_member(:volume_append_mode_enabled, Shapes::ShapeRef.new(shape: Flag, location_name: "VolumeAppendModeEnabled"))
    SnaplockConfiguration.struct_class = Types::SnaplockConfiguration

    SnaplockRetentionPeriod.add_member(:default_retention, Shapes::ShapeRef.new(shape: RetentionPeriod, required: true, location_name: "DefaultRetention"))
    SnaplockRetentionPeriod.add_member(:minimum_retention, Shapes::ShapeRef.new(shape: RetentionPeriod, required: true, location_name: "MinimumRetention"))
    SnaplockRetentionPeriod.add_member(:maximum_retention, Shapes::ShapeRef.new(shape: RetentionPeriod, required: true, location_name: "MaximumRetention"))
    SnaplockRetentionPeriod.struct_class = Types::SnaplockRetentionPeriod

    Snapshot.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    Snapshot.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    Snapshot.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, location_name: "Name"))
    Snapshot.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    Snapshot.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    Snapshot.add_member(:lifecycle, Shapes::ShapeRef.new(shape: SnapshotLifecycle, location_name: "Lifecycle"))
    Snapshot.add_member(:lifecycle_transition_reason, Shapes::ShapeRef.new(shape: LifecycleTransitionReason, location_name: "LifecycleTransitionReason"))
    Snapshot.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    Snapshot.add_member(:administrative_actions, Shapes::ShapeRef.new(shape: AdministrativeActions, location_name: "AdministrativeActions"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotFilter.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotFilterName, location_name: "Name"))
    SnapshotFilter.add_member(:values, Shapes::ShapeRef.new(shape: SnapshotFilterValues, location_name: "Values"))
    SnapshotFilter.struct_class = Types::SnapshotFilter

    SnapshotFilterValues.member = Shapes::ShapeRef.new(shape: SnapshotFilterValue)

    SnapshotFilters.member = Shapes::ShapeRef.new(shape: SnapshotFilter)

    SnapshotIds.member = Shapes::ShapeRef.new(shape: SnapshotId)

    SnapshotNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SnapshotNotFound.struct_class = Types::SnapshotNotFound

    Snapshots.member = Shapes::ShapeRef.new(shape: Snapshot)

    SourceBackupUnavailable.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SourceBackupUnavailable.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    SourceBackupUnavailable.struct_class = Types::SourceBackupUnavailable

    StorageVirtualMachine.add_member(:active_directory_configuration, Shapes::ShapeRef.new(shape: SvmActiveDirectoryConfiguration, location_name: "ActiveDirectoryConfiguration"))
    StorageVirtualMachine.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    StorageVirtualMachine.add_member(:endpoints, Shapes::ShapeRef.new(shape: SvmEndpoints, location_name: "Endpoints"))
    StorageVirtualMachine.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    StorageVirtualMachine.add_member(:lifecycle, Shapes::ShapeRef.new(shape: StorageVirtualMachineLifecycle, location_name: "Lifecycle"))
    StorageVirtualMachine.add_member(:name, Shapes::ShapeRef.new(shape: StorageVirtualMachineName, location_name: "Name"))
    StorageVirtualMachine.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    StorageVirtualMachine.add_member(:storage_virtual_machine_id, Shapes::ShapeRef.new(shape: StorageVirtualMachineId, location_name: "StorageVirtualMachineId"))
    StorageVirtualMachine.add_member(:subtype, Shapes::ShapeRef.new(shape: StorageVirtualMachineSubtype, location_name: "Subtype"))
    StorageVirtualMachine.add_member(:uuid, Shapes::ShapeRef.new(shape: UUID, location_name: "UUID"))
    StorageVirtualMachine.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StorageVirtualMachine.add_member(:lifecycle_transition_reason, Shapes::ShapeRef.new(shape: LifecycleTransitionReason, location_name: "LifecycleTransitionReason"))
    StorageVirtualMachine.add_member(:root_volume_security_style, Shapes::ShapeRef.new(shape: StorageVirtualMachineRootVolumeSecurityStyle, location_name: "RootVolumeSecurityStyle"))
    StorageVirtualMachine.struct_class = Types::StorageVirtualMachine

    StorageVirtualMachineFilter.add_member(:name, Shapes::ShapeRef.new(shape: StorageVirtualMachineFilterName, location_name: "Name"))
    StorageVirtualMachineFilter.add_member(:values, Shapes::ShapeRef.new(shape: StorageVirtualMachineFilterValues, location_name: "Values"))
    StorageVirtualMachineFilter.struct_class = Types::StorageVirtualMachineFilter

    StorageVirtualMachineFilterValues.member = Shapes::ShapeRef.new(shape: StorageVirtualMachineFilterValue)

    StorageVirtualMachineFilters.member = Shapes::ShapeRef.new(shape: StorageVirtualMachineFilter)

    StorageVirtualMachineIds.member = Shapes::ShapeRef.new(shape: StorageVirtualMachineId)

    StorageVirtualMachineNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    StorageVirtualMachineNotFound.struct_class = Types::StorageVirtualMachineNotFound

    StorageVirtualMachines.member = Shapes::ShapeRef.new(shape: StorageVirtualMachine)

    SubDirectoriesPaths.member = Shapes::ShapeRef.new(shape: Namespace)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    SvmActiveDirectoryConfiguration.add_member(:net_bios_name, Shapes::ShapeRef.new(shape: NetBiosAlias, location_name: "NetBiosName"))
    SvmActiveDirectoryConfiguration.add_member(:self_managed_active_directory_configuration, Shapes::ShapeRef.new(shape: SelfManagedActiveDirectoryAttributes, location_name: "SelfManagedActiveDirectoryConfiguration"))
    SvmActiveDirectoryConfiguration.struct_class = Types::SvmActiveDirectoryConfiguration

    SvmEndpoint.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    SvmEndpoint.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: OntapEndpointIpAddresses, location_name: "IpAddresses"))
    SvmEndpoint.struct_class = Types::SvmEndpoint

    SvmEndpoints.add_member(:iscsi, Shapes::ShapeRef.new(shape: SvmEndpoint, location_name: "Iscsi"))
    SvmEndpoints.add_member(:management, Shapes::ShapeRef.new(shape: SvmEndpoint, location_name: "Management"))
    SvmEndpoints.add_member(:nfs, Shapes::ShapeRef.new(shape: SvmEndpoint, location_name: "Nfs"))
    SvmEndpoints.add_member(:smb, Shapes::ShapeRef.new(shape: SvmEndpoint, location_name: "Smb"))
    SvmEndpoints.struct_class = Types::SvmEndpoints

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TaskIds.member = Shapes::ShapeRef.new(shape: TaskId)

    TieringPolicy.add_member(:cooling_period, Shapes::ShapeRef.new(shape: CoolingPeriod, location_name: "CoolingPeriod"))
    TieringPolicy.add_member(:name, Shapes::ShapeRef.new(shape: TieringPolicyName, location_name: "Name"))
    TieringPolicy.struct_class = Types::TieringPolicy

    UnsupportedOperation.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedOperation.struct_class = Types::UnsupportedOperation

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDataRepositoryAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: DataRepositoryAssociationId, required: true, location_name: "AssociationId"))
    UpdateDataRepositoryAssociationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateDataRepositoryAssociationRequest.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    UpdateDataRepositoryAssociationRequest.add_member(:s3, Shapes::ShapeRef.new(shape: S3DataRepositoryConfiguration, location_name: "S3"))
    UpdateDataRepositoryAssociationRequest.struct_class = Types::UpdateDataRepositoryAssociationRequest

    UpdateDataRepositoryAssociationResponse.add_member(:association, Shapes::ShapeRef.new(shape: DataRepositoryAssociation, location_name: "Association"))
    UpdateDataRepositoryAssociationResponse.struct_class = Types::UpdateDataRepositoryAssociationResponse

    UpdateFileCacheLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileCacheLustreConfiguration.struct_class = Types::UpdateFileCacheLustreConfiguration

    UpdateFileCacheRequest.add_member(:file_cache_id, Shapes::ShapeRef.new(shape: FileCacheId, required: true, location_name: "FileCacheId"))
    UpdateFileCacheRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateFileCacheRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: UpdateFileCacheLustreConfiguration, location_name: "LustreConfiguration"))
    UpdateFileCacheRequest.struct_class = Types::UpdateFileCacheRequest

    UpdateFileCacheResponse.add_member(:file_cache, Shapes::ShapeRef.new(shape: FileCache, location_name: "FileCache"))
    UpdateFileCacheResponse.struct_class = Types::UpdateFileCacheResponse

    UpdateFileSystemLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemLustreConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemLustreConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemLustreConfiguration.add_member(:auto_import_policy, Shapes::ShapeRef.new(shape: AutoImportPolicyType, location_name: "AutoImportPolicy"))
    UpdateFileSystemLustreConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: DataCompressionType, location_name: "DataCompressionType"))
    UpdateFileSystemLustreConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LustreLogCreateConfiguration, location_name: "LogConfiguration"))
    UpdateFileSystemLustreConfiguration.add_member(:root_squash_configuration, Shapes::ShapeRef.new(shape: LustreRootSquashConfiguration, location_name: "RootSquashConfiguration"))
    UpdateFileSystemLustreConfiguration.struct_class = Types::UpdateFileSystemLustreConfiguration

    UpdateFileSystemOntapConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemOntapConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemOntapConfiguration.add_member(:fsx_admin_password, Shapes::ShapeRef.new(shape: AdminPassword, location_name: "FsxAdminPassword"))
    UpdateFileSystemOntapConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemOntapConfiguration.add_member(:disk_iops_configuration, Shapes::ShapeRef.new(shape: DiskIopsConfiguration, location_name: "DiskIopsConfiguration"))
    UpdateFileSystemOntapConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    UpdateFileSystemOntapConfiguration.add_member(:add_route_table_ids, Shapes::ShapeRef.new(shape: RouteTableIds, location_name: "AddRouteTableIds"))
    UpdateFileSystemOntapConfiguration.add_member(:remove_route_table_ids, Shapes::ShapeRef.new(shape: RouteTableIds, location_name: "RemoveRouteTableIds"))
    UpdateFileSystemOntapConfiguration.struct_class = Types::UpdateFileSystemOntapConfiguration

    UpdateFileSystemOpenZFSConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_volumes, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToVolumes"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:disk_iops_configuration, Shapes::ShapeRef.new(shape: DiskIopsConfiguration, location_name: "DiskIopsConfiguration"))
    UpdateFileSystemOpenZFSConfiguration.struct_class = Types::UpdateFileSystemOpenZFSConfiguration

    UpdateFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    UpdateFileSystemRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateFileSystemRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, location_name: "StorageCapacity"))
    UpdateFileSystemRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: UpdateFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    UpdateFileSystemRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: UpdateFileSystemLustreConfiguration, location_name: "LustreConfiguration"))
    UpdateFileSystemRequest.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: UpdateFileSystemOntapConfiguration, location_name: "OntapConfiguration"))
    UpdateFileSystemRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: UpdateFileSystemOpenZFSConfiguration, location_name: "OpenZFSConfiguration"))
    UpdateFileSystemRequest.struct_class = Types::UpdateFileSystemRequest

    UpdateFileSystemResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    UpdateFileSystemResponse.struct_class = Types::UpdateFileSystemResponse

    UpdateFileSystemWindowsConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemWindowsConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemWindowsConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemWindowsConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    UpdateFileSystemWindowsConfiguration.add_member(:self_managed_active_directory_configuration, Shapes::ShapeRef.new(shape: SelfManagedActiveDirectoryConfigurationUpdates, location_name: "SelfManagedActiveDirectoryConfiguration"))
    UpdateFileSystemWindowsConfiguration.add_member(:audit_log_configuration, Shapes::ShapeRef.new(shape: WindowsAuditLogCreateConfiguration, location_name: "AuditLogConfiguration"))
    UpdateFileSystemWindowsConfiguration.struct_class = Types::UpdateFileSystemWindowsConfiguration

    UpdateOntapVolumeConfiguration.add_member(:junction_path, Shapes::ShapeRef.new(shape: JunctionPath, location_name: "JunctionPath"))
    UpdateOntapVolumeConfiguration.add_member(:security_style, Shapes::ShapeRef.new(shape: SecurityStyle, location_name: "SecurityStyle"))
    UpdateOntapVolumeConfiguration.add_member(:size_in_megabytes, Shapes::ShapeRef.new(shape: VolumeCapacity, location_name: "SizeInMegabytes"))
    UpdateOntapVolumeConfiguration.add_member(:storage_efficiency_enabled, Shapes::ShapeRef.new(shape: Flag, location_name: "StorageEfficiencyEnabled"))
    UpdateOntapVolumeConfiguration.add_member(:tiering_policy, Shapes::ShapeRef.new(shape: TieringPolicy, location_name: "TieringPolicy"))
    UpdateOntapVolumeConfiguration.add_member(:snapshot_policy, Shapes::ShapeRef.new(shape: SnapshotPolicy, location_name: "SnapshotPolicy"))
    UpdateOntapVolumeConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    UpdateOntapVolumeConfiguration.add_member(:snaplock_configuration, Shapes::ShapeRef.new(shape: UpdateSnaplockConfiguration, location_name: "SnaplockConfiguration"))
    UpdateOntapVolumeConfiguration.struct_class = Types::UpdateOntapVolumeConfiguration

    UpdateOpenZFSVolumeConfiguration.add_member(:storage_capacity_reservation_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMaxFromNegativeOne, location_name: "StorageCapacityReservationGiB"))
    UpdateOpenZFSVolumeConfiguration.add_member(:storage_capacity_quota_gi_b, Shapes::ShapeRef.new(shape: IntegerNoMaxFromNegativeOne, location_name: "StorageCapacityQuotaGiB"))
    UpdateOpenZFSVolumeConfiguration.add_member(:record_size_ki_b, Shapes::ShapeRef.new(shape: IntegerRecordSizeKiB, location_name: "RecordSizeKiB"))
    UpdateOpenZFSVolumeConfiguration.add_member(:data_compression_type, Shapes::ShapeRef.new(shape: OpenZFSDataCompressionType, location_name: "DataCompressionType"))
    UpdateOpenZFSVolumeConfiguration.add_member(:nfs_exports, Shapes::ShapeRef.new(shape: OpenZFSNfsExports, location_name: "NfsExports"))
    UpdateOpenZFSVolumeConfiguration.add_member(:user_and_group_quotas, Shapes::ShapeRef.new(shape: OpenZFSUserAndGroupQuotas, location_name: "UserAndGroupQuotas"))
    UpdateOpenZFSVolumeConfiguration.add_member(:read_only, Shapes::ShapeRef.new(shape: ReadOnly, location_name: "ReadOnly"))
    UpdateOpenZFSVolumeConfiguration.struct_class = Types::UpdateOpenZFSVolumeConfiguration

    UpdateSnaplockConfiguration.add_member(:audit_log_volume, Shapes::ShapeRef.new(shape: Flag, location_name: "AuditLogVolume"))
    UpdateSnaplockConfiguration.add_member(:autocommit_period, Shapes::ShapeRef.new(shape: AutocommitPeriod, location_name: "AutocommitPeriod"))
    UpdateSnaplockConfiguration.add_member(:privileged_delete, Shapes::ShapeRef.new(shape: PrivilegedDelete, location_name: "PrivilegedDelete"))
    UpdateSnaplockConfiguration.add_member(:retention_period, Shapes::ShapeRef.new(shape: SnaplockRetentionPeriod, location_name: "RetentionPeriod"))
    UpdateSnaplockConfiguration.add_member(:volume_append_mode_enabled, Shapes::ShapeRef.new(shape: Flag, location_name: "VolumeAppendModeEnabled"))
    UpdateSnaplockConfiguration.struct_class = Types::UpdateSnaplockConfiguration

    UpdateSnapshotRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateSnapshotRequest.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "Name"))
    UpdateSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    UpdateSnapshotRequest.struct_class = Types::UpdateSnapshotRequest

    UpdateSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    UpdateSnapshotResponse.struct_class = Types::UpdateSnapshotResponse

    UpdateStorageVirtualMachineRequest.add_member(:active_directory_configuration, Shapes::ShapeRef.new(shape: UpdateSvmActiveDirectoryConfiguration, location_name: "ActiveDirectoryConfiguration"))
    UpdateStorageVirtualMachineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateStorageVirtualMachineRequest.add_member(:storage_virtual_machine_id, Shapes::ShapeRef.new(shape: StorageVirtualMachineId, required: true, location_name: "StorageVirtualMachineId"))
    UpdateStorageVirtualMachineRequest.add_member(:svm_admin_password, Shapes::ShapeRef.new(shape: AdminPassword, location_name: "SvmAdminPassword"))
    UpdateStorageVirtualMachineRequest.struct_class = Types::UpdateStorageVirtualMachineRequest

    UpdateStorageVirtualMachineResponse.add_member(:storage_virtual_machine, Shapes::ShapeRef.new(shape: StorageVirtualMachine, location_name: "StorageVirtualMachine"))
    UpdateStorageVirtualMachineResponse.struct_class = Types::UpdateStorageVirtualMachineResponse

    UpdateSvmActiveDirectoryConfiguration.add_member(:self_managed_active_directory_configuration, Shapes::ShapeRef.new(shape: SelfManagedActiveDirectoryConfigurationUpdates, location_name: "SelfManagedActiveDirectoryConfiguration"))
    UpdateSvmActiveDirectoryConfiguration.add_member(:net_bios_name, Shapes::ShapeRef.new(shape: NetBiosAlias, location_name: "NetBiosName"))
    UpdateSvmActiveDirectoryConfiguration.struct_class = Types::UpdateSvmActiveDirectoryConfiguration

    UpdateVolumeRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, required: true, location_name: "VolumeId"))
    UpdateVolumeRequest.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: UpdateOntapVolumeConfiguration, location_name: "OntapConfiguration"))
    UpdateVolumeRequest.add_member(:name, Shapes::ShapeRef.new(shape: VolumeName, location_name: "Name"))
    UpdateVolumeRequest.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: UpdateOpenZFSVolumeConfiguration, location_name: "OpenZFSConfiguration"))
    UpdateVolumeRequest.struct_class = Types::UpdateVolumeRequest

    UpdateVolumeResponse.add_member(:volume, Shapes::ShapeRef.new(shape: Volume, location_name: "Volume"))
    UpdateVolumeResponse.struct_class = Types::UpdateVolumeResponse

    Volume.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    Volume.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    Volume.add_member(:lifecycle, Shapes::ShapeRef.new(shape: VolumeLifecycle, location_name: "Lifecycle"))
    Volume.add_member(:name, Shapes::ShapeRef.new(shape: VolumeName, location_name: "Name"))
    Volume.add_member(:ontap_configuration, Shapes::ShapeRef.new(shape: OntapVolumeConfiguration, location_name: "OntapConfiguration"))
    Volume.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    Volume.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    Volume.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    Volume.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    Volume.add_member(:lifecycle_transition_reason, Shapes::ShapeRef.new(shape: LifecycleTransitionReason, location_name: "LifecycleTransitionReason"))
    Volume.add_member(:administrative_actions, Shapes::ShapeRef.new(shape: AdministrativeActions, location_name: "AdministrativeActions"))
    Volume.add_member(:open_zfs_configuration, Shapes::ShapeRef.new(shape: OpenZFSVolumeConfiguration, location_name: "OpenZFSConfiguration"))
    Volume.struct_class = Types::Volume

    VolumeFilter.add_member(:name, Shapes::ShapeRef.new(shape: VolumeFilterName, location_name: "Name"))
    VolumeFilter.add_member(:values, Shapes::ShapeRef.new(shape: VolumeFilterValues, location_name: "Values"))
    VolumeFilter.struct_class = Types::VolumeFilter

    VolumeFilterValues.member = Shapes::ShapeRef.new(shape: VolumeFilterValue)

    VolumeFilters.member = Shapes::ShapeRef.new(shape: VolumeFilter)

    VolumeIds.member = Shapes::ShapeRef.new(shape: VolumeId)

    VolumeNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    VolumeNotFound.struct_class = Types::VolumeNotFound

    Volumes.member = Shapes::ShapeRef.new(shape: Volume)

    WindowsAuditLogConfiguration.add_member(:file_access_audit_log_level, Shapes::ShapeRef.new(shape: WindowsAccessAuditLogLevel, required: true, location_name: "FileAccessAuditLogLevel"))
    WindowsAuditLogConfiguration.add_member(:file_share_access_audit_log_level, Shapes::ShapeRef.new(shape: WindowsAccessAuditLogLevel, required: true, location_name: "FileShareAccessAuditLogLevel"))
    WindowsAuditLogConfiguration.add_member(:audit_log_destination, Shapes::ShapeRef.new(shape: GeneralARN, location_name: "AuditLogDestination"))
    WindowsAuditLogConfiguration.struct_class = Types::WindowsAuditLogConfiguration

    WindowsAuditLogCreateConfiguration.add_member(:file_access_audit_log_level, Shapes::ShapeRef.new(shape: WindowsAccessAuditLogLevel, required: true, location_name: "FileAccessAuditLogLevel"))
    WindowsAuditLogCreateConfiguration.add_member(:file_share_access_audit_log_level, Shapes::ShapeRef.new(shape: WindowsAccessAuditLogLevel, required: true, location_name: "FileShareAccessAuditLogLevel"))
    WindowsAuditLogCreateConfiguration.add_member(:audit_log_destination, Shapes::ShapeRef.new(shape: GeneralARN, location_name: "AuditLogDestination"))
    WindowsAuditLogCreateConfiguration.struct_class = Types::WindowsAuditLogCreateConfiguration

    WindowsFileSystemConfiguration.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "ActiveDirectoryId"))
    WindowsFileSystemConfiguration.add_member(:self_managed_active_directory_configuration, Shapes::ShapeRef.new(shape: SelfManagedActiveDirectoryAttributes, location_name: "SelfManagedActiveDirectoryConfiguration"))
    WindowsFileSystemConfiguration.add_member(:deployment_type, Shapes::ShapeRef.new(shape: WindowsDeploymentType, location_name: "DeploymentType"))
    WindowsFileSystemConfiguration.add_member(:remote_administration_endpoint, Shapes::ShapeRef.new(shape: DNSName, location_name: "RemoteAdministrationEndpoint"))
    WindowsFileSystemConfiguration.add_member(:preferred_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "PreferredSubnetId"))
    WindowsFileSystemConfiguration.add_member(:preferred_file_server_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "PreferredFileServerIp"))
    WindowsFileSystemConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    WindowsFileSystemConfiguration.add_member(:maintenance_operations_in_progress, Shapes::ShapeRef.new(shape: FileSystemMaintenanceOperations, location_name: "MaintenanceOperationsInProgress"))
    WindowsFileSystemConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    WindowsFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    WindowsFileSystemConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    WindowsFileSystemConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    WindowsFileSystemConfiguration.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    WindowsFileSystemConfiguration.add_member(:audit_log_configuration, Shapes::ShapeRef.new(shape: WindowsAuditLogConfiguration, location_name: "AuditLogConfiguration"))
    WindowsFileSystemConfiguration.struct_class = Types::WindowsFileSystemConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-03-01"

      api.metadata = {
        "apiVersion" => "2018-03-01",
        "endpointPrefix" => "fsx",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon FSx",
        "serviceId" => "FSx",
        "signatureVersion" => "v4",
        "signingName" => "fsx",
        "targetPrefix" => "AWSSimbaAPIService_v20180301",
        "uid" => "fsx-2018-03-01",
      }

      api.add_operation(:associate_file_system_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFileSystemAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFileSystemAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFileSystemAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:cancel_data_repository_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDataRepositoryTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelDataRepositoryTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDataRepositoryTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryTaskNotFound)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryTaskEnded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:copy_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSourceKmsKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDestinationKmsKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRegion)
        o.errors << Shapes::ShapeRef.new(shape: SourceBackupUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleRegionForMultiAZ)
      end)

      api.add_operation(:create_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
        o.errors << Shapes::ShapeRef.new(shape: BackupInProgress)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_data_repository_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataRepositoryAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataRepositoryAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataRepositoryAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_data_repository_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataRepositoryTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataRepositoryTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataRepositoryTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryTaskExecuting)
      end)

      api.add_operation(:create_file_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFileCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFileCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFileCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNetworkSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPerUnitStorageThroughput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileCacheConfiguration)
      end)

      api.add_operation(:create_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFileSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFileSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: ActiveDirectoryError)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImportPath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExportPath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNetworkSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPerUnitStorageThroughput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileSystemConfiguration)
      end)

      api.add_operation(:create_file_system_from_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFileSystemFromBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFileSystemFromBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFileSystemFromBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: ActiveDirectoryError)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNetworkSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPerUnitStorageThroughput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileSystemConfiguration)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_storage_virtual_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStorageVirtualMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStorageVirtualMachineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStorageVirtualMachineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ActiveDirectoryError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:create_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingVolumeConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: StorageVirtualMachineNotFound)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:create_volume_from_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVolumeFromBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVolumeFromBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVolumeFromBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingVolumeConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: StorageVirtualMachineNotFound)
      end)

      api.add_operation(:delete_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: BackupInProgress)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: BackupRestoring)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: BackupBeingCopied)
      end)

      api.add_operation(:delete_data_repository_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataRepositoryAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataRepositoryAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataRepositoryAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryAssociationNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_file_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFileCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: FileCacheNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFileSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFound)
      end)

      api.add_operation(:delete_storage_virtual_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStorageVirtualMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStorageVirtualMachineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStorageVirtualMachineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: StorageVirtualMachineNotFound)
      end)

      api.add_operation(:delete_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
      end)

      api.add_operation(:describe_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_data_repository_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataRepositoryAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataRepositoryAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataRepositoryAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryAssociationNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataRepositoryType)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_data_repository_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataRepositoryTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataRepositoryTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataRepositoryTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryTaskNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_file_caches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFileCaches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFileCachesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFileCachesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileCacheNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_file_system_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFileSystemAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFileSystemAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFileSystemAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_file_systems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFileSystems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFileSystemsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFileSystemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_storage_virtual_machines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorageVirtualMachines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStorageVirtualMachinesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStorageVirtualMachinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: StorageVirtualMachineNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_volumes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVolumes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVolumesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVolumesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disassociate_file_system_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFileSystemAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFileSystemAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFileSystemAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: NotServiceResourceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDoesNotSupportTagging)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:release_file_system_nfs_v3_locks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReleaseFileSystemNfsV3Locks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReleaseFileSystemNfsV3LocksRequest)
        o.output = Shapes::ShapeRef.new(shape: ReleaseFileSystemNfsV3LocksResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:restore_volume_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreVolumeFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreVolumeFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreVolumeFromSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: NotServiceResourceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDoesNotSupportTagging)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: NotServiceResourceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDoesNotSupportTagging)
      end)

      api.add_operation(:update_data_repository_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataRepositoryAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataRepositoryAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataRepositoryAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: DataRepositoryAssociationNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_file_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFileCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFileCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFileCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileCacheNotFound)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileCacheConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
      end)

      api.add_operation(:update_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFileSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFileSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNetworkSettings)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileSystemConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
      end)

      api.add_operation(:update_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_storage_virtual_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStorageVirtualMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStorageVirtualMachineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStorageVirtualMachineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: StorageVirtualMachineNotFound)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:update_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingVolumeConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: VolumeNotFound)
      end)
    end

  end
end

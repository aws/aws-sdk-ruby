# frozen_string_literal: true

# This is generated code!

module Aws::FSx
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccessPointAlreadyOwnedByYou = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AccessPointAlreadyOwnedByYou", name: "AccessPointAlreadyOwnedByYou", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#xmlName" => "Error"})
    AccessPointPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#AccessPointPolicy", name: "AccessPointPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 200000}})
    ActiveDirectoryBackupAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ActiveDirectoryBackupAttributes", name: "ActiveDirectoryBackupAttributes")
    ActiveDirectoryError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ActiveDirectoryError", name: "ActiveDirectoryError", traits: {"smithy.api#error" => "client"})
    ActiveDirectoryErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#ActiveDirectoryErrorType", name: "ActiveDirectoryErrorType")
    ActiveDirectoryFullyQualifiedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#ActiveDirectoryFullyQualifiedName", name: "ActiveDirectoryFullyQualifiedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,255}$"})
    AdminPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#AdminPassword", name: "AdminPassword", traits: {"smithy.api#length" => {"min" => 8, "max" => 50}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{8,50}$", "smithy.api#sensitive" => {}})
    AdministrativeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AdministrativeAction", name: "AdministrativeAction")
    AdministrativeActionFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AdministrativeActionFailureDetails", name: "AdministrativeActionFailureDetails")
    AdministrativeActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#AdministrativeActionType", name: "AdministrativeActionType")
    AdministrativeActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#AdministrativeActions", name: "AdministrativeActions", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Aggregate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#Aggregate", name: "Aggregate", traits: {"smithy.api#length" => {"min" => 5, "max" => 6}, "smithy.api#pattern" => "^(aggr[0-9]{1,2})$"})
    AggregateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AggregateConfiguration", name: "AggregateConfiguration")
    AggregateListMultiplier = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#AggregateListMultiplier", name: "AggregateListMultiplier", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    Aggregates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Aggregates", name: "Aggregates", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    Alias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#Alias", name: "Alias")
    AliasLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#AliasLifecycle", name: "AliasLifecycle")
    Aliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Aliases", name: "Aliases", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AlternateDNSName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#AlternateDNSName", name: "AlternateDNSName", traits: {"smithy.api#length" => {"min" => 4, "max" => 253}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{4,253}$"})
    AlternateDNSNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#AlternateDNSNames", name: "AlternateDNSNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ArchivePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#ArchivePath", name: "ArchivePath", traits: {"smithy.api#length" => {"min" => 3, "max" => 4357}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{3,4357}$"})
    AssociateFileSystemAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AssociateFileSystemAliasesRequest", name: "AssociateFileSystemAliasesRequest")
    AssociateFileSystemAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AssociateFileSystemAliasesResponse", name: "AssociateFileSystemAliasesResponse")
    AutoExportPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AutoExportPolicy", name: "AutoExportPolicy")
    AutoImportPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AutoImportPolicy", name: "AutoImportPolicy")
    AutoImportPolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#AutoImportPolicyType", name: "AutoImportPolicyType")
    AutocommitPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#AutocommitPeriod", name: "AutocommitPeriod")
    AutocommitPeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#AutocommitPeriodType", name: "AutocommitPeriodType")
    AutocommitPeriodValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#AutocommitPeriodValue", name: "AutocommitPeriodValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    AutomaticBackupRetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#AutomaticBackupRetentionDays", name: "AutomaticBackupRetentionDays", traits: {"smithy.api#range" => {"min" => 0, "max" => 90}})
    Backup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#Backup", name: "Backup")
    BackupBeingCopied = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#BackupBeingCopied", name: "BackupBeingCopied", traits: {"smithy.api#error" => "client"})
    BackupFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#BackupFailureDetails", name: "BackupFailureDetails")
    BackupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#BackupId", name: "BackupId", traits: {"smithy.api#length" => {"min" => 12, "max" => 128}, "smithy.api#pattern" => "^(backup-[0-9a-f]{8,})$"})
    BackupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#BackupIds", name: "BackupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    BackupInProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#BackupInProgress", name: "BackupInProgress", traits: {"smithy.api#error" => "client"})
    BackupLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#BackupLifecycle", name: "BackupLifecycle")
    BackupNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#BackupNotFound", name: "BackupNotFound", traits: {"smithy.api#error" => "client"})
    BackupRestoring = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#BackupRestoring", name: "BackupRestoring", traits: {"smithy.api#error" => "client"})
    BackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#BackupType", name: "BackupType")
    Backups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Backups", name: "Backups", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    BadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#BadRequest", name: "BadRequest", traits: {"smithy.api#error" => "client"})
    BatchImportMetaDataOnCreate = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fsx#BatchImportMetaDataOnCreate", name: "BatchImportMetaDataOnCreate")
    CancelDataRepositoryTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CancelDataRepositoryTaskRequest", name: "CancelDataRepositoryTaskRequest")
    CancelDataRepositoryTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CancelDataRepositoryTaskResponse", name: "CancelDataRepositoryTaskResponse")
    CapacityToRelease = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#CapacityToRelease", name: "CapacityToRelease", traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-za-z0-9_.-]{0,63}$"})
    CompletionReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CompletionReport", name: "CompletionReport")
    CoolingPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#CoolingPeriod", name: "CoolingPeriod", traits: {"smithy.api#range" => {"min" => 2, "max" => 183}})
    CopyBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CopyBackupRequest", name: "CopyBackupRequest")
    CopyBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CopyBackupResponse", name: "CopyBackupResponse")
    CopySnapshotAndUpdateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CopySnapshotAndUpdateVolumeRequest", name: "CopySnapshotAndUpdateVolumeRequest")
    CopySnapshotAndUpdateVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CopySnapshotAndUpdateVolumeResponse", name: "CopySnapshotAndUpdateVolumeResponse")
    CopyTagsToDataRepositoryAssociations = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fsx#CopyTagsToDataRepositoryAssociations", name: "CopyTagsToDataRepositoryAssociations")
    CreateAggregateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateAggregateConfiguration", name: "CreateAggregateConfiguration")
    CreateAndAttachS3AccessPointOpenZFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateAndAttachS3AccessPointOpenZFSConfiguration", name: "CreateAndAttachS3AccessPointOpenZFSConfiguration")
    CreateAndAttachS3AccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateAndAttachS3AccessPointRequest", name: "CreateAndAttachS3AccessPointRequest")
    CreateAndAttachS3AccessPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateAndAttachS3AccessPointResponse", name: "CreateAndAttachS3AccessPointResponse")
    CreateAndAttachS3AccessPointS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateAndAttachS3AccessPointS3Configuration", name: "CreateAndAttachS3AccessPointS3Configuration")
    CreateBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateBackupRequest", name: "CreateBackupRequest")
    CreateBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateBackupResponse", name: "CreateBackupResponse")
    CreateDataRepositoryAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateDataRepositoryAssociationRequest", name: "CreateDataRepositoryAssociationRequest")
    CreateDataRepositoryAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateDataRepositoryAssociationResponse", name: "CreateDataRepositoryAssociationResponse")
    CreateDataRepositoryTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateDataRepositoryTaskRequest", name: "CreateDataRepositoryTaskRequest")
    CreateDataRepositoryTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateDataRepositoryTaskResponse", name: "CreateDataRepositoryTaskResponse")
    CreateFileCacheDataRepositoryAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#CreateFileCacheDataRepositoryAssociations", name: "CreateFileCacheDataRepositoryAssociations", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    CreateFileCacheLustreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileCacheLustreConfiguration", name: "CreateFileCacheLustreConfiguration")
    CreateFileCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileCacheRequest", name: "CreateFileCacheRequest")
    CreateFileCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileCacheResponse", name: "CreateFileCacheResponse")
    CreateFileSystemFromBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemFromBackupRequest", name: "CreateFileSystemFromBackupRequest")
    CreateFileSystemFromBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemFromBackupResponse", name: "CreateFileSystemFromBackupResponse")
    CreateFileSystemLustreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemLustreConfiguration", name: "CreateFileSystemLustreConfiguration")
    CreateFileSystemLustreMetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemLustreMetadataConfiguration", name: "CreateFileSystemLustreMetadataConfiguration")
    CreateFileSystemOntapConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemOntapConfiguration", name: "CreateFileSystemOntapConfiguration")
    CreateFileSystemOpenZFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemOpenZFSConfiguration", name: "CreateFileSystemOpenZFSConfiguration")
    CreateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemRequest", name: "CreateFileSystemRequest")
    CreateFileSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemResponse", name: "CreateFileSystemResponse")
    CreateFileSystemWindowsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateFileSystemWindowsConfiguration", name: "CreateFileSystemWindowsConfiguration")
    CreateOntapVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateOntapVolumeConfiguration", name: "CreateOntapVolumeConfiguration")
    CreateOpenZFSOriginSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateOpenZFSOriginSnapshotConfiguration", name: "CreateOpenZFSOriginSnapshotConfiguration")
    CreateOpenZFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateOpenZFSVolumeConfiguration", name: "CreateOpenZFSVolumeConfiguration")
    CreateSnaplockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateSnaplockConfiguration", name: "CreateSnaplockConfiguration")
    CreateSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateSnapshotRequest", name: "CreateSnapshotRequest")
    CreateSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateSnapshotResponse", name: "CreateSnapshotResponse")
    CreateStorageVirtualMachineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateStorageVirtualMachineRequest", name: "CreateStorageVirtualMachineRequest")
    CreateStorageVirtualMachineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateStorageVirtualMachineResponse", name: "CreateStorageVirtualMachineResponse")
    CreateSvmActiveDirectoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateSvmActiveDirectoryConfiguration", name: "CreateSvmActiveDirectoryConfiguration")
    CreateVolumeFromBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateVolumeFromBackupRequest", name: "CreateVolumeFromBackupRequest")
    CreateVolumeFromBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateVolumeFromBackupResponse", name: "CreateVolumeFromBackupResponse")
    CreateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateVolumeRequest", name: "CreateVolumeRequest")
    CreateVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#CreateVolumeResponse", name: "CreateVolumeResponse")
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fsx#CreationTime", name: "CreationTime")
    DNSName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DNSName", name: "DNSName", traits: {"smithy.api#length" => {"min" => 16, "max" => 275}, "smithy.api#pattern" => "^((fs|fc)i?-[0-9a-f]{8,}\\..{4,253})$"})
    DailyTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DailyTime", name: "DailyTime", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([01]\\d|2[0-3]):?([0-5]\\d)$"})
    DataCompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DataCompressionType", name: "DataCompressionType")
    DataRepositoryAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryAssociation", name: "DataRepositoryAssociation")
    DataRepositoryAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DataRepositoryAssociationId", name: "DataRepositoryAssociationId", traits: {"smithy.api#length" => {"min" => 13, "max" => 23}, "smithy.api#pattern" => "^(dra-[0-9a-f]{8,})$"})
    DataRepositoryAssociationIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DataRepositoryAssociationIds", name: "DataRepositoryAssociationIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DataRepositoryAssociationNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryAssociationNotFound", name: "DataRepositoryAssociationNotFound", traits: {"smithy.api#error" => "client"})
    DataRepositoryAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DataRepositoryAssociations", name: "DataRepositoryAssociations", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DataRepositoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryConfiguration", name: "DataRepositoryConfiguration")
    DataRepositoryFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryFailureDetails", name: "DataRepositoryFailureDetails")
    DataRepositoryLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DataRepositoryLifecycle", name: "DataRepositoryLifecycle")
    DataRepositoryTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTask", name: "DataRepositoryTask")
    DataRepositoryTaskEnded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskEnded", name: "DataRepositoryTaskEnded", traits: {"smithy.api#error" => "client"})
    DataRepositoryTaskExecuting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskExecuting", name: "DataRepositoryTaskExecuting", traits: {"smithy.api#error" => "client"})
    DataRepositoryTaskFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskFailureDetails", name: "DataRepositoryTaskFailureDetails")
    DataRepositoryTaskFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskFilter", name: "DataRepositoryTaskFilter")
    DataRepositoryTaskFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskFilterName", name: "DataRepositoryTaskFilterName")
    DataRepositoryTaskFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskFilterValue", name: "DataRepositoryTaskFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?\\-\\_]*$"})
    DataRepositoryTaskFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskFilterValues", name: "DataRepositoryTaskFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DataRepositoryTaskFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskFilters", name: "DataRepositoryTaskFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    DataRepositoryTaskLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskLifecycle", name: "DataRepositoryTaskLifecycle")
    DataRepositoryTaskNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskNotFound", name: "DataRepositoryTaskNotFound", traits: {"smithy.api#error" => "client"})
    DataRepositoryTaskPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskPath", name: "DataRepositoryTaskPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{0,4096}$"})
    DataRepositoryTaskPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskPaths", name: "DataRepositoryTaskPaths", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DataRepositoryTaskStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskStatus", name: "DataRepositoryTaskStatus")
    DataRepositoryTaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DataRepositoryTaskType", name: "DataRepositoryTaskType")
    DataRepositoryTasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DataRepositoryTasks", name: "DataRepositoryTasks", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DeleteBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteBackupRequest", name: "DeleteBackupRequest")
    DeleteBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteBackupResponse", name: "DeleteBackupResponse")
    DeleteDataInFileSystem = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fsx#DeleteDataInFileSystem", name: "DeleteDataInFileSystem")
    DeleteDataRepositoryAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteDataRepositoryAssociationRequest", name: "DeleteDataRepositoryAssociationRequest")
    DeleteDataRepositoryAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteDataRepositoryAssociationResponse", name: "DeleteDataRepositoryAssociationResponse")
    DeleteFileCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileCacheRequest", name: "DeleteFileCacheRequest")
    DeleteFileCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileCacheResponse", name: "DeleteFileCacheResponse")
    DeleteFileSystemLustreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemLustreConfiguration", name: "DeleteFileSystemLustreConfiguration")
    DeleteFileSystemLustreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemLustreResponse", name: "DeleteFileSystemLustreResponse")
    DeleteFileSystemOpenZFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemOpenZFSConfiguration", name: "DeleteFileSystemOpenZFSConfiguration")
    DeleteFileSystemOpenZFSOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DeleteFileSystemOpenZFSOption", name: "DeleteFileSystemOpenZFSOption")
    DeleteFileSystemOpenZFSOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DeleteFileSystemOpenZFSOptions", name: "DeleteFileSystemOpenZFSOptions", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    DeleteFileSystemOpenZFSResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemOpenZFSResponse", name: "DeleteFileSystemOpenZFSResponse")
    DeleteFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemRequest", name: "DeleteFileSystemRequest")
    DeleteFileSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemResponse", name: "DeleteFileSystemResponse")
    DeleteFileSystemWindowsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemWindowsConfiguration", name: "DeleteFileSystemWindowsConfiguration")
    DeleteFileSystemWindowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteFileSystemWindowsResponse", name: "DeleteFileSystemWindowsResponse")
    DeleteOpenZFSVolumeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DeleteOpenZFSVolumeOption", name: "DeleteOpenZFSVolumeOption")
    DeleteOpenZFSVolumeOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DeleteOpenZFSVolumeOptions", name: "DeleteOpenZFSVolumeOptions", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    DeleteSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteSnapshotRequest", name: "DeleteSnapshotRequest")
    DeleteSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteSnapshotResponse", name: "DeleteSnapshotResponse")
    DeleteStorageVirtualMachineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteStorageVirtualMachineRequest", name: "DeleteStorageVirtualMachineRequest")
    DeleteStorageVirtualMachineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteStorageVirtualMachineResponse", name: "DeleteStorageVirtualMachineResponse")
    DeleteVolumeOntapConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteVolumeOntapConfiguration", name: "DeleteVolumeOntapConfiguration")
    DeleteVolumeOntapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteVolumeOntapResponse", name: "DeleteVolumeOntapResponse")
    DeleteVolumeOpenZFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteVolumeOpenZFSConfiguration", name: "DeleteVolumeOpenZFSConfiguration")
    DeleteVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteVolumeRequest", name: "DeleteVolumeRequest")
    DeleteVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DeleteVolumeResponse", name: "DeleteVolumeResponse")
    DescribeBackupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeBackupsRequest", name: "DescribeBackupsRequest")
    DescribeBackupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeBackupsResponse", name: "DescribeBackupsResponse")
    DescribeDataRepositoryAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeDataRepositoryAssociationsRequest", name: "DescribeDataRepositoryAssociationsRequest")
    DescribeDataRepositoryAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeDataRepositoryAssociationsResponse", name: "DescribeDataRepositoryAssociationsResponse")
    DescribeDataRepositoryTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeDataRepositoryTasksRequest", name: "DescribeDataRepositoryTasksRequest")
    DescribeDataRepositoryTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeDataRepositoryTasksResponse", name: "DescribeDataRepositoryTasksResponse")
    DescribeFileCachesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeFileCachesRequest", name: "DescribeFileCachesRequest")
    DescribeFileCachesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeFileCachesResponse", name: "DescribeFileCachesResponse")
    DescribeFileSystemAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeFileSystemAliasesRequest", name: "DescribeFileSystemAliasesRequest")
    DescribeFileSystemAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeFileSystemAliasesResponse", name: "DescribeFileSystemAliasesResponse")
    DescribeFileSystemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeFileSystemsRequest", name: "DescribeFileSystemsRequest")
    DescribeFileSystemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeFileSystemsResponse", name: "DescribeFileSystemsResponse")
    DescribeS3AccessPointAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeS3AccessPointAttachmentsRequest", name: "DescribeS3AccessPointAttachmentsRequest")
    DescribeS3AccessPointAttachmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeS3AccessPointAttachmentsResponse", name: "DescribeS3AccessPointAttachmentsResponse")
    DescribeSharedVpcConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeSharedVpcConfigurationRequest", name: "DescribeSharedVpcConfigurationRequest")
    DescribeSharedVpcConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeSharedVpcConfigurationResponse", name: "DescribeSharedVpcConfigurationResponse")
    DescribeSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeSnapshotsRequest", name: "DescribeSnapshotsRequest")
    DescribeSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeSnapshotsResponse", name: "DescribeSnapshotsResponse")
    DescribeStorageVirtualMachinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeStorageVirtualMachinesRequest", name: "DescribeStorageVirtualMachinesRequest")
    DescribeStorageVirtualMachinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeStorageVirtualMachinesResponse", name: "DescribeStorageVirtualMachinesResponse")
    DescribeVolumesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeVolumesRequest", name: "DescribeVolumesRequest")
    DescribeVolumesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DescribeVolumesResponse", name: "DescribeVolumesResponse")
    DetachAndDeleteS3AccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DetachAndDeleteS3AccessPointRequest", name: "DetachAndDeleteS3AccessPointRequest")
    DetachAndDeleteS3AccessPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DetachAndDeleteS3AccessPointResponse", name: "DetachAndDeleteS3AccessPointResponse")
    DirectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DirectoryId", name: "DirectoryId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DirectoryPassword", name: "DirectoryPassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.{1,256}$", "smithy.api#sensitive" => {}})
    DirectoryUserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#DirectoryUserName", name: "DirectoryUserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,256}$"})
    DisassociateFileSystemAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DisassociateFileSystemAliasesRequest", name: "DisassociateFileSystemAliasesRequest")
    DisassociateFileSystemAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DisassociateFileSystemAliasesResponse", name: "DisassociateFileSystemAliasesResponse")
    DiskIopsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DiskIopsConfiguration", name: "DiskIopsConfiguration")
    DiskIopsConfigurationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DiskIopsConfigurationMode", name: "DiskIopsConfigurationMode")
    DnsIps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#DnsIps", name: "DnsIps", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    DriveCacheType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#DriveCacheType", name: "DriveCacheType")
    DurationSinceLastAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#DurationSinceLastAccess", name: "DurationSinceLastAccess")
    EndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fsx#EndTime", name: "EndTime")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#EventType", name: "EventType")
    EventTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#EventTypes", name: "EventTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    FailedCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#FailedCount", name: "FailedCount")
    FileCache = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCache", name: "FileCache")
    FileCacheCreating = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheCreating", name: "FileCacheCreating")
    FileCacheDataRepositoryAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheDataRepositoryAssociation", name: "FileCacheDataRepositoryAssociation")
    FileCacheFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheFailureDetails", name: "FileCacheFailureDetails")
    FileCacheId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#FileCacheId", name: "FileCacheId", traits: {"smithy.api#length" => {"min" => 11, "max" => 21}, "smithy.api#pattern" => "^(fc-[0-9a-f]{8,})$"})
    FileCacheIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FileCacheIds", name: "FileCacheIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FileCacheLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FileCacheLifecycle", name: "FileCacheLifecycle")
    FileCacheLustreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheLustreConfiguration", name: "FileCacheLustreConfiguration")
    FileCacheLustreDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FileCacheLustreDeploymentType", name: "FileCacheLustreDeploymentType")
    FileCacheLustreMetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheLustreMetadataConfiguration", name: "FileCacheLustreMetadataConfiguration")
    FileCacheNFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheNFSConfiguration", name: "FileCacheNFSConfiguration")
    FileCacheNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileCacheNotFound", name: "FileCacheNotFound", traits: {"smithy.api#error" => "client"})
    FileCacheType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FileCacheType", name: "FileCacheType")
    FileCaches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FileCaches", name: "FileCaches", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FileSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileSystem", name: "FileSystem")
    FileSystemAdministratorsGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#FileSystemAdministratorsGroupName", name: "FileSystemAdministratorsGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,256}$"})
    FileSystemEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileSystemEndpoint", name: "FileSystemEndpoint")
    FileSystemEndpoints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileSystemEndpoints", name: "FileSystemEndpoints")
    FileSystemFailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileSystemFailureDetails", name: "FileSystemFailureDetails")
    FileSystemGID = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#FileSystemGID", name: "FileSystemGID", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    FileSystemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#FileSystemId", name: "FileSystemId", traits: {"smithy.api#length" => {"min" => 11, "max" => 21}, "smithy.api#pattern" => "^(fs-[0-9a-f]{8,})$"})
    FileSystemIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FileSystemIds", name: "FileSystemIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FileSystemLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FileSystemLifecycle", name: "FileSystemLifecycle")
    FileSystemLustreMetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileSystemLustreMetadataConfiguration", name: "FileSystemLustreMetadataConfiguration")
    FileSystemMaintenanceOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FileSystemMaintenanceOperation", name: "FileSystemMaintenanceOperation")
    FileSystemMaintenanceOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FileSystemMaintenanceOperations", name: "FileSystemMaintenanceOperations", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    FileSystemNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#FileSystemNotFound", name: "FileSystemNotFound", traits: {"smithy.api#error" => "client"})
    FileSystemSecondaryGIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FileSystemSecondaryGIDs", name: "FileSystemSecondaryGIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    FileSystemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FileSystemType", name: "FileSystemType")
    FileSystemTypeVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#FileSystemTypeVersion", name: "FileSystemTypeVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[0-9](.[0-9]*)*$"})
    FileSystemUID = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#FileSystemUID", name: "FileSystemUID", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    FileSystems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FileSystems", name: "FileSystems", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#Filter", name: "Filter")
    FilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FilterName", name: "FilterName")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?\\-\\_]*$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#FilterValues", name: "FilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Flag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fsx#Flag", name: "Flag")
    FlexCacheEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#FlexCacheEndpointType", name: "FlexCacheEndpointType")
    GeneralARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#GeneralARN", name: "GeneralARN", traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}, "smithy.api#pattern" => "^arn:[^:]{1,63}:[^:]{0,63}:[^:]{0,63}:(?:|\\d{12}):[^/].{0,1023}$"})
    HAPairs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#HAPairs", name: "HAPairs", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    IncludeShared = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fsx#IncludeShared", name: "IncludeShared")
    IncompatibleParameterError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#IncompatibleParameterError", name: "IncompatibleParameterError", traits: {"smithy.api#error" => "client"})
    IncompatibleRegionForMultiAZ = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#IncompatibleRegionForMultiAZ", name: "IncompatibleRegionForMultiAZ", traits: {"smithy.api#error" => "client"})
    InputOntapVolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#InputOntapVolumeType", name: "InputOntapVolumeType")
    IntegerNoMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#IntegerNoMax", name: "IntegerNoMax", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    IntegerNoMaxFromNegativeOne = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#IntegerNoMaxFromNegativeOne", name: "IntegerNoMaxFromNegativeOne", traits: {"smithy.api#range" => {"min" => -1, "max" => 2147483647}})
    IntegerRecordSizeKiB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#IntegerRecordSizeKiB", name: "IntegerRecordSizeKiB", traits: {"smithy.api#range" => {"min" => 4, "max" => 4096}})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    InvalidAccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidAccessPoint", name: "InvalidAccessPoint", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#xmlName" => "Error"})
    InvalidDataRepositoryType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidDataRepositoryType", name: "InvalidDataRepositoryType", traits: {"smithy.api#error" => "client"})
    InvalidDestinationKmsKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidDestinationKmsKey", name: "InvalidDestinationKmsKey", traits: {"smithy.api#error" => "client"})
    InvalidExportPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidExportPath", name: "InvalidExportPath", traits: {"smithy.api#error" => "client"})
    InvalidImportPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidImportPath", name: "InvalidImportPath", traits: {"smithy.api#error" => "client"})
    InvalidNetworkSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidNetworkSettings", name: "InvalidNetworkSettings", traits: {"smithy.api#error" => "client"})
    InvalidPerUnitStorageThroughput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidPerUnitStorageThroughput", name: "InvalidPerUnitStorageThroughput", traits: {"smithy.api#error" => "client"})
    InvalidRegion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidRegion", name: "InvalidRegion", traits: {"smithy.api#error" => "client"})
    InvalidRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidRequest", name: "InvalidRequest", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#xmlName" => "Error"})
    InvalidSourceKmsKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#InvalidSourceKmsKey", name: "InvalidSourceKmsKey", traits: {"smithy.api#error" => "client"})
    Iops = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#Iops", name: "Iops", traits: {"smithy.api#range" => {"min" => 0, "max" => 2400000}})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 45}, "smithy.api#pattern" => "^(^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$)$"})
    IpAddressRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#IpAddressRange", name: "IpAddressRange", traits: {"smithy.api#length" => {"min" => 9, "max" => 17}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{9,17}$"})
    Ipv6AddressRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#Ipv6AddressRange", name: "Ipv6AddressRange", traits: {"smithy.api#length" => {"min" => 4, "max" => 43}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{4,43}$"})
    JunctionPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#JunctionPath", name: "JunctionPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,255}$"})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.{1,2048}$"})
    LastUpdatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fsx#LastUpdatedTime", name: "LastUpdatedTime")
    LifecycleTransitionReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#LifecycleTransitionReason", name: "LifecycleTransitionReason")
    LimitedMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#LimitedMaxResults", name: "LimitedMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LustreAccessAuditLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#LustreAccessAuditLogLevel", name: "LustreAccessAuditLogLevel")
    LustreDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#LustreDeploymentType", name: "LustreDeploymentType")
    LustreFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#LustreFileSystemConfiguration", name: "LustreFileSystemConfiguration")
    LustreFileSystemMountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#LustreFileSystemMountName", name: "LustreFileSystemMountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}, "smithy.api#pattern" => "^([A-Za-z0-9_-]{1,8})$"})
    LustreLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#LustreLogConfiguration", name: "LustreLogConfiguration")
    LustreLogCreateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#LustreLogCreateConfiguration", name: "LustreLogCreateConfiguration")
    LustreNoSquashNid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#LustreNoSquashNid", name: "LustreNoSquashNid", traits: {"smithy.api#length" => {"min" => 11, "max" => 43}, "smithy.api#pattern" => "^([0-9\\[\\]\\-]*\\.){3}([0-9\\[\\]\\-]*)@tcp$"})
    LustreNoSquashNids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#LustreNoSquashNids", name: "LustreNoSquashNids", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    LustreReadCacheConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#LustreReadCacheConfiguration", name: "LustreReadCacheConfiguration")
    LustreReadCacheSizingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#LustreReadCacheSizingMode", name: "LustreReadCacheSizingMode")
    LustreRootSquash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#LustreRootSquash", name: "LustreRootSquash", traits: {"smithy.api#length" => {"min" => 3, "max" => 21}, "smithy.api#pattern" => "^([0-9]{1,10}):([0-9]{1,10})$"})
    LustreRootSquashConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#LustreRootSquashConfiguration", name: "LustreRootSquashConfiguration")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    Megabytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#Megabytes", name: "Megabytes", traits: {"smithy.api#range" => {"min" => 1, "max" => 512000}})
    MegabytesPerSecond = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#MegabytesPerSecond", name: "MegabytesPerSecond", traits: {"smithy.api#range" => {"min" => 8, "max" => 100000}})
    MetadataConfigurationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#MetadataConfigurationMode", name: "MetadataConfigurationMode")
    MetadataIops = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#MetadataIops", name: "MetadataIops", traits: {"smithy.api#range" => {"min" => 1500, "max" => 192000}})
    MetadataStorageCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#MetadataStorageCapacity", name: "MetadataStorageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MissingFileCacheConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#MissingFileCacheConfiguration", name: "MissingFileCacheConfiguration", traits: {"smithy.api#error" => "client"})
    MissingFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#MissingFileSystemConfiguration", name: "MissingFileSystemConfiguration", traits: {"smithy.api#error" => "client"})
    MissingVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#MissingVolumeConfiguration", name: "MissingVolumeConfiguration", traits: {"smithy.api#error" => "client"})
    NFSDataRepositoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#NFSDataRepositoryConfiguration", name: "NFSDataRepositoryConfiguration")
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,4096}$"})
    NetBiosAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#NetBiosAlias", name: "NetBiosAlias", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,255}$"})
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#NetworkInterfaceId", name: "NetworkInterfaceId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^(eni-[0-9a-f]{8,})$"})
    NetworkInterfaceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#NetworkInterfaceIds", name: "NetworkInterfaceIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#NetworkType", name: "NetworkType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+\\/]{4})*(?:[A-Za-z0-9+\\/]{2}==|[A-Za-z0-9+\\/]{3}=)?$"})
    NfsVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#NfsVersion", name: "NfsVersion")
    NotServiceResourceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#NotServiceResourceError", name: "NotServiceResourceError", traits: {"smithy.api#error" => "client"})
    OntapDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OntapDeploymentType", name: "OntapDeploymentType")
    OntapEndpointIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#OntapEndpointIpAddresses", name: "OntapEndpointIpAddresses", traits: {"smithy.api#length" => {"min" => 1, "max" => 24}})
    OntapFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OntapFileSystemConfiguration", name: "OntapFileSystemConfiguration")
    OntapVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OntapVolumeConfiguration", name: "OntapVolumeConfiguration")
    OntapVolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OntapVolumeType", name: "OntapVolumeType")
    OpenZFSClientConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSClientConfiguration", name: "OpenZFSClientConfiguration")
    OpenZFSClientConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#OpenZFSClientConfigurations", name: "OpenZFSClientConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    OpenZFSClients = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#OpenZFSClients", name: "OpenZFSClients", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ -~]{1,128}$"})
    OpenZFSCopyStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OpenZFSCopyStrategy", name: "OpenZFSCopyStrategy")
    OpenZFSCreateRootVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSCreateRootVolumeConfiguration", name: "OpenZFSCreateRootVolumeConfiguration")
    OpenZFSDataCompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OpenZFSDataCompressionType", name: "OpenZFSDataCompressionType")
    OpenZFSDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OpenZFSDeploymentType", name: "OpenZFSDeploymentType")
    OpenZFSFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSFileSystemConfiguration", name: "OpenZFSFileSystemConfiguration")
    OpenZFSFileSystemIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSFileSystemIdentity", name: "OpenZFSFileSystemIdentity")
    OpenZFSFileSystemUserType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OpenZFSFileSystemUserType", name: "OpenZFSFileSystemUserType")
    OpenZFSNfsExport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSNfsExport", name: "OpenZFSNfsExport")
    OpenZFSNfsExportOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#OpenZFSNfsExportOption", name: "OpenZFSNfsExportOption", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ -~]{1,128}$"})
    OpenZFSNfsExportOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#OpenZFSNfsExportOptions", name: "OpenZFSNfsExportOptions", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    OpenZFSNfsExports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#OpenZFSNfsExports", name: "OpenZFSNfsExports", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    OpenZFSOriginSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSOriginSnapshotConfiguration", name: "OpenZFSOriginSnapshotConfiguration")
    OpenZFSPosixFileSystemUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSPosixFileSystemUser", name: "OpenZFSPosixFileSystemUser")
    OpenZFSQuotaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OpenZFSQuotaType", name: "OpenZFSQuotaType")
    OpenZFSReadCacheConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSReadCacheConfiguration", name: "OpenZFSReadCacheConfiguration")
    OpenZFSReadCacheSizingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#OpenZFSReadCacheSizingMode", name: "OpenZFSReadCacheSizingMode")
    OpenZFSUserAndGroupQuotas = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#OpenZFSUserAndGroupQuotas", name: "OpenZFSUserAndGroupQuotas", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    OpenZFSUserOrGroupQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSUserOrGroupQuota", name: "OpenZFSUserOrGroupQuota")
    OpenZFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#OpenZFSVolumeConfiguration", name: "OpenZFSVolumeConfiguration")
    OrganizationalUnitDistinguishedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#OrganizationalUnitDistinguishedName", name: "OrganizationalUnitDistinguishedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,2000}$"})
    Parameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#Parameter", name: "Parameter", traits: {"smithy.api#length" => {"min" => 1}})
    PerUnitStorageThroughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#PerUnitStorageThroughput", name: "PerUnitStorageThroughput", traits: {"smithy.api#range" => {"min" => 12, "max" => 1000}})
    PrivilegedDelete = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#PrivilegedDelete", name: "PrivilegedDelete")
    ProgressPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#ProgressPercent", name: "ProgressPercent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ReadOnly = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fsx#ReadOnly", name: "ReadOnly")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-z0-9-]{1,20}$"})
    ReleaseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ReleaseConfiguration", name: "ReleaseConfiguration")
    ReleaseFileSystemNfsV3LocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ReleaseFileSystemNfsV3LocksRequest", name: "ReleaseFileSystemNfsV3LocksRequest")
    ReleaseFileSystemNfsV3LocksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ReleaseFileSystemNfsV3LocksResponse", name: "ReleaseFileSystemNfsV3LocksResponse")
    ReleasedCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#ReleasedCapacity", name: "ReleasedCapacity")
    RemainingTransferBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#RemainingTransferBytes", name: "RemainingTransferBytes", traits: {"smithy.api#range" => {"min" => 0}})
    ReportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#ReportFormat", name: "ReportFormat")
    ReportScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#ReportScope", name: "ReportScope")
    RepositoryDnsIps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#RepositoryDnsIps", name: "RepositoryDnsIps", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RequestTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fsx#RequestTime", name: "RequestTime")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 8, "max" => 512}, "smithy.api#pattern" => "^arn:(?=[^:]+:fsx:[^:]+:\\d{12}:)((|(?=[a-z0-9-.]{1,63})(?!\\d{1,3}(\\.\\d{1,3}){3})(?![^:]*-{2})(?![^:]*-\\.)(?![^:]*\\.-)[a-z0-9].*(?<!-)):){4}(?!/).{0,1024}$"})
    ResourceDoesNotSupportTagging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ResourceDoesNotSupportTagging", name: "ResourceDoesNotSupportTagging", traits: {"smithy.api#error" => "client"})
    ResourceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ResourceNotFound", name: "ResourceNotFound", traits: {"smithy.api#error" => "client"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#ResourceType", name: "ResourceType")
    RestoreOpenZFSVolumeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#RestoreOpenZFSVolumeOption", name: "RestoreOpenZFSVolumeOption")
    RestoreOpenZFSVolumeOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#RestoreOpenZFSVolumeOptions", name: "RestoreOpenZFSVolumeOptions", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    RestoreVolumeFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#RestoreVolumeFromSnapshotRequest", name: "RestoreVolumeFromSnapshotRequest")
    RestoreVolumeFromSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#RestoreVolumeFromSnapshotResponse", name: "RestoreVolumeFromSnapshotResponse")
    RetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#RetentionPeriod", name: "RetentionPeriod")
    RetentionPeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#RetentionPeriodType", name: "RetentionPeriodType")
    RetentionPeriodValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#RetentionPeriodValue", name: "RetentionPeriodValue", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    RouteTableId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#RouteTableId", name: "RouteTableId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^(rtb-[0-9a-f]{8,})$"})
    RouteTableIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#RouteTableIds", name: "RouteTableIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    S3AccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3AccessPoint", name: "S3AccessPoint")
    S3AccessPointAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#S3AccessPointAlias", name: "S3AccessPointAlias", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\\\-]{1,63}$"})
    S3AccessPointAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachment", name: "S3AccessPointAttachment")
    S3AccessPointAttachmentLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentLifecycle", name: "S3AccessPointAttachmentLifecycle")
    S3AccessPointAttachmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentName", name: "S3AccessPointAttachmentName", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}, "smithy.api#pattern" => "^(?=[a-z0-9])[a-z0-9-]{1,48}[a-z0-9]$"})
    S3AccessPointAttachmentNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentNames", name: "S3AccessPointAttachmentNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    S3AccessPointAttachmentNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentNotFound", name: "S3AccessPointAttachmentNotFound", traits: {"smithy.api#error" => "client"})
    S3AccessPointAttachmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentType", name: "S3AccessPointAttachmentType")
    S3AccessPointAttachments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachments", name: "S3AccessPointAttachments", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    S3AccessPointAttachmentsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentsFilter", name: "S3AccessPointAttachmentsFilter")
    S3AccessPointAttachmentsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentsFilterName", name: "S3AccessPointAttachmentsFilterName")
    S3AccessPointAttachmentsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentsFilterValue", name: "S3AccessPointAttachmentsFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?\\-\\_]*$"})
    S3AccessPointAttachmentsFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentsFilterValues", name: "S3AccessPointAttachmentsFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    S3AccessPointAttachmentsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#S3AccessPointAttachmentsFilters", name: "S3AccessPointAttachmentsFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    S3AccessPointOpenZFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3AccessPointOpenZFSConfiguration", name: "S3AccessPointOpenZFSConfiguration")
    S3AccessPointVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3AccessPointVpcConfiguration", name: "S3AccessPointVpcConfiguration")
    S3DataRepositoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#S3DataRepositoryConfiguration", name: "S3DataRepositoryConfiguration")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^(sg-[0-9a-f]{8,})$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SecurityStyle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#SecurityStyle", name: "SecurityStyle")
    SelfManagedActiveDirectoryAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SelfManagedActiveDirectoryAttributes", name: "SelfManagedActiveDirectoryAttributes")
    SelfManagedActiveDirectoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SelfManagedActiveDirectoryConfiguration", name: "SelfManagedActiveDirectoryConfiguration")
    SelfManagedActiveDirectoryConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SelfManagedActiveDirectoryConfigurationUpdates", name: "SelfManagedActiveDirectoryConfigurationUpdates")
    ServiceLimit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#ServiceLimit", name: "ServiceLimit")
    ServiceLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#ServiceLimitExceeded", name: "ServiceLimitExceeded", traits: {"smithy.api#error" => "client"})
    SizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#SizeInBytes", name: "SizeInBytes", traits: {"smithy.api#range" => {"min" => 0}})
    SnaplockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SnaplockConfiguration", name: "SnaplockConfiguration")
    SnaplockRetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SnaplockRetentionPeriod", name: "SnaplockRetentionPeriod")
    SnaplockType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#SnaplockType", name: "SnaplockType")
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#Snapshot", name: "Snapshot")
    SnapshotFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SnapshotFilter", name: "SnapshotFilter")
    SnapshotFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#SnapshotFilterName", name: "SnapshotFilterName")
    SnapshotFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SnapshotFilterValue", name: "SnapshotFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?\\-\\_]*$"})
    SnapshotFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#SnapshotFilterValues", name: "SnapshotFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SnapshotFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#SnapshotFilters", name: "SnapshotFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SnapshotId", name: "SnapshotId", traits: {"smithy.api#length" => {"min" => 11, "max" => 28}, "smithy.api#pattern" => "^((fs)?volsnap-[0-9a-f]{8,})$"})
    SnapshotIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#SnapshotIds", name: "SnapshotIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SnapshotLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#SnapshotLifecycle", name: "SnapshotLifecycle")
    SnapshotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SnapshotName", name: "SnapshotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 203}, "smithy.api#pattern" => "^[a-zA-Z0-9_:.-]{1,203}$"})
    SnapshotNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SnapshotNotFound", name: "SnapshotNotFound", traits: {"smithy.api#error" => "client"})
    SnapshotPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SnapshotPolicy", name: "SnapshotPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Snapshots = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Snapshots", name: "Snapshots", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SourceBackupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SourceBackupId", name: "SourceBackupId", traits: {"smithy.api#length" => {"min" => 12, "max" => 128}, "smithy.api#pattern" => "^(backup-[0-9a-f]{8,})$"})
    SourceBackupUnavailable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SourceBackupUnavailable", name: "SourceBackupUnavailable", traits: {"smithy.api#error" => "client"})
    StartMisconfiguredStateRecoveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#StartMisconfiguredStateRecoveryRequest", name: "StartMisconfiguredStateRecoveryRequest")
    StartMisconfiguredStateRecoveryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#StartMisconfiguredStateRecoveryResponse", name: "StartMisconfiguredStateRecoveryResponse")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fsx#StartTime", name: "StartTime")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#Status", name: "Status")
    StorageCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#StorageCapacity", name: "StorageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    StorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#StorageType", name: "StorageType")
    StorageVirtualMachine = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#StorageVirtualMachine", name: "StorageVirtualMachine")
    StorageVirtualMachineFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineFilter", name: "StorageVirtualMachineFilter")
    StorageVirtualMachineFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineFilterName", name: "StorageVirtualMachineFilterName")
    StorageVirtualMachineFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineFilterValue", name: "StorageVirtualMachineFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?\\-\\_]*$"})
    StorageVirtualMachineFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineFilterValues", name: "StorageVirtualMachineFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    StorageVirtualMachineFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineFilters", name: "StorageVirtualMachineFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    StorageVirtualMachineId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineId", name: "StorageVirtualMachineId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^(svm-[0-9a-f]{17,})$"})
    StorageVirtualMachineIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineIds", name: "StorageVirtualMachineIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    StorageVirtualMachineLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineLifecycle", name: "StorageVirtualMachineLifecycle")
    StorageVirtualMachineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineName", name: "StorageVirtualMachineName", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,47}$"})
    StorageVirtualMachineNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineNotFound", name: "StorageVirtualMachineNotFound", traits: {"smithy.api#error" => "client"})
    StorageVirtualMachineRootVolumeSecurityStyle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineRootVolumeSecurityStyle", name: "StorageVirtualMachineRootVolumeSecurityStyle")
    StorageVirtualMachineSubtype = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#StorageVirtualMachineSubtype", name: "StorageVirtualMachineSubtype")
    StorageVirtualMachines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#StorageVirtualMachines", name: "StorageVirtualMachines", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SubDirectoriesPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#SubDirectoriesPaths", name: "SubDirectoriesPaths", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^(subnet-[0-9a-f]{8,})$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SucceededCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#SucceededCount", name: "SucceededCount")
    SvmActiveDirectoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SvmActiveDirectoryConfiguration", name: "SvmActiveDirectoryConfiguration")
    SvmEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SvmEndpoint", name: "SvmEndpoint")
    SvmEndpoints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#SvmEndpoints", name: "SvmEndpoints")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#TaskId", name: "TaskId", traits: {"smithy.api#length" => {"min" => 12, "max" => 128}, "smithy.api#pattern" => "^(task-[0-9a-f]{17,})$"})
    TaskIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#TaskIds", name: "TaskIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThroughputCapacityMbps = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#ThroughputCapacityMbps", name: "ThroughputCapacityMbps", traits: {"smithy.api#range" => {"min" => 4000, "max" => 2000000}})
    ThroughputCapacityPerHAPair = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#ThroughputCapacityPerHAPair", name: "ThroughputCapacityPerHAPair", traits: {"smithy.api#range" => {"min" => 128, "max" => 6144}})
    TieringPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#TieringPolicy", name: "TieringPolicy")
    TieringPolicyName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#TieringPolicyName", name: "TieringPolicyName")
    TooManyAccessPoints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#TooManyAccessPoints", name: "TooManyAccessPoints", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#xmlName" => "Error"})
    TotalConstituents = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#TotalConstituents", name: "TotalConstituents", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    TotalCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#TotalCount", name: "TotalCount")
    TotalTransferBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#TotalTransferBytes", name: "TotalTransferBytes", traits: {"smithy.api#range" => {"min" => 0}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#UUID", name: "UUID", traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,36}$"})
    Unit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#Unit", name: "Unit")
    UnsupportedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UnsupportedOperation", name: "UnsupportedOperation", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDataRepositoryAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateDataRepositoryAssociationRequest", name: "UpdateDataRepositoryAssociationRequest")
    UpdateDataRepositoryAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateDataRepositoryAssociationResponse", name: "UpdateDataRepositoryAssociationResponse")
    UpdateFileCacheLustreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileCacheLustreConfiguration", name: "UpdateFileCacheLustreConfiguration")
    UpdateFileCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileCacheRequest", name: "UpdateFileCacheRequest")
    UpdateFileCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileCacheResponse", name: "UpdateFileCacheResponse")
    UpdateFileSystemLustreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemLustreConfiguration", name: "UpdateFileSystemLustreConfiguration")
    UpdateFileSystemLustreMetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemLustreMetadataConfiguration", name: "UpdateFileSystemLustreMetadataConfiguration")
    UpdateFileSystemOntapConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemOntapConfiguration", name: "UpdateFileSystemOntapConfiguration")
    UpdateFileSystemOpenZFSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemOpenZFSConfiguration", name: "UpdateFileSystemOpenZFSConfiguration")
    UpdateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemRequest", name: "UpdateFileSystemRequest")
    UpdateFileSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemResponse", name: "UpdateFileSystemResponse")
    UpdateFileSystemWindowsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateFileSystemWindowsConfiguration", name: "UpdateFileSystemWindowsConfiguration")
    UpdateOntapVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateOntapVolumeConfiguration", name: "UpdateOntapVolumeConfiguration")
    UpdateOpenZFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateOpenZFSVolumeConfiguration", name: "UpdateOpenZFSVolumeConfiguration")
    UpdateOpenZFSVolumeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#UpdateOpenZFSVolumeOption", name: "UpdateOpenZFSVolumeOption")
    UpdateOpenZFSVolumeOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#UpdateOpenZFSVolumeOptions", name: "UpdateOpenZFSVolumeOptions")
    UpdateSharedVpcConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateSharedVpcConfigurationRequest", name: "UpdateSharedVpcConfigurationRequest")
    UpdateSharedVpcConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateSharedVpcConfigurationResponse", name: "UpdateSharedVpcConfigurationResponse")
    UpdateSnaplockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateSnaplockConfiguration", name: "UpdateSnaplockConfiguration")
    UpdateSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateSnapshotRequest", name: "UpdateSnapshotRequest")
    UpdateSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateSnapshotResponse", name: "UpdateSnapshotResponse")
    UpdateStorageVirtualMachineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateStorageVirtualMachineRequest", name: "UpdateStorageVirtualMachineRequest")
    UpdateStorageVirtualMachineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateStorageVirtualMachineResponse", name: "UpdateStorageVirtualMachineResponse")
    UpdateSvmActiveDirectoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateSvmActiveDirectoryConfiguration", name: "UpdateSvmActiveDirectoryConfiguration")
    UpdateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateVolumeRequest", name: "UpdateVolumeRequest")
    UpdateVolumeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#UpdateVolumeResponse", name: "UpdateVolumeResponse")
    Value = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#Value", name: "Value", traits: {"smithy.api#range" => {"min" => 0}})
    VerboseFlag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#VerboseFlag", name: "VerboseFlag", traits: {"smithy.api#length" => {"min" => 4, "max" => 5}, "smithy.api#pattern" => "^(?i)(true|false)$"})
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#Volume", name: "Volume")
    VolumeCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#VolumeCapacity", name: "VolumeCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    VolumeCapacityBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fsx#VolumeCapacityBytes", name: "VolumeCapacityBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 22517998000000000}})
    VolumeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#VolumeFilter", name: "VolumeFilter")
    VolumeFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#VolumeFilterName", name: "VolumeFilterName")
    VolumeFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#VolumeFilterValue", name: "VolumeFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?\\-\\_]*$"})
    VolumeFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#VolumeFilterValues", name: "VolumeFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    VolumeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#VolumeFilters", name: "VolumeFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    VolumeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#VolumeId", name: "VolumeId", traits: {"smithy.api#length" => {"min" => 23, "max" => 23}, "smithy.api#pattern" => "^(fsvol-[0-9a-f]{17,})$"})
    VolumeIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#VolumeIds", name: "VolumeIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    VolumeLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#VolumeLifecycle", name: "VolumeLifecycle")
    VolumeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#VolumeName", name: "VolumeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 203}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,203}$"})
    VolumeNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#VolumeNotFound", name: "VolumeNotFound", traits: {"smithy.api#error" => "client"})
    VolumePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#VolumePath", name: "VolumePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-za-z0-9\\_\\.\\:\\-\\/]*$"})
    VolumeStyle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#VolumeStyle", name: "VolumeStyle")
    VolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#VolumeType", name: "VolumeType")
    Volumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fsx#Volumes", name: "Volumes", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^(vpc-[0-9a-f]{8,})$"})
    WeeklyTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fsx#WeeklyTime", name: "WeeklyTime", traits: {"smithy.api#length" => {"min" => 7, "max" => 7}, "smithy.api#pattern" => "^[1-7]:([01]\\d|2[0-3]):?([0-5]\\d)$"})
    WindowsAccessAuditLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#WindowsAccessAuditLogLevel", name: "WindowsAccessAuditLogLevel")
    WindowsAuditLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#WindowsAuditLogConfiguration", name: "WindowsAuditLogConfiguration")
    WindowsAuditLogCreateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#WindowsAuditLogCreateConfiguration", name: "WindowsAuditLogCreateConfiguration")
    WindowsDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fsx#WindowsDeploymentType", name: "WindowsDeploymentType")
    WindowsFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fsx#WindowsFileSystemConfiguration", name: "WindowsFileSystemConfiguration")

    AccessPointAlreadyOwnedByYou.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    AccessPointAlreadyOwnedByYou.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessPointAlreadyOwnedByYou.type = Types::AccessPointAlreadyOwnedByYou
    ActiveDirectoryBackupAttributes.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryFullyQualifiedName, name: "DomainName"))
    ActiveDirectoryBackupAttributes.add_member(:active_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "ActiveDirectoryId"))
    ActiveDirectoryBackupAttributes.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    ActiveDirectoryBackupAttributes.type = Types::ActiveDirectoryBackupAttributes
    ActiveDirectoryError.add_member(:active_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "ActiveDirectoryId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ActiveDirectoryError.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryErrorType, name: "Type"))
    ActiveDirectoryError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ActiveDirectoryError.type = Types::ActiveDirectoryError
    ActiveDirectoryErrorType.add_member(:domain_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_NOT_FOUND", traits: {"smithy.api#enumValue" => "DOMAIN_NOT_FOUND"}))
    ActiveDirectoryErrorType.add_member(:incompatible_domain_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_DOMAIN_MODE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_DOMAIN_MODE"}))
    ActiveDirectoryErrorType.add_member(:wrong_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRONG_VPC", traits: {"smithy.api#enumValue" => "WRONG_VPC"}))
    ActiveDirectoryErrorType.add_member(:invalid_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NETWORK_TYPE", traits: {"smithy.api#enumValue" => "INVALID_NETWORK_TYPE"}))
    ActiveDirectoryErrorType.add_member(:invalid_domain_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_DOMAIN_STAGE", traits: {"smithy.api#enumValue" => "INVALID_DOMAIN_STAGE"}))
    AdministrativeAction.add_member(:administrative_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActionType, name: "AdministrativeActionType"))
    AdministrativeAction.add_member(:progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressPercent, name: "ProgressPercent"))
    AdministrativeAction.add_member(:request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTime, name: "RequestTime"))
    AdministrativeAction.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    AdministrativeAction.add_member(:target_file_system_values, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "TargetFileSystemValues"))
    AdministrativeAction.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActionFailureDetails, name: "FailureDetails"))
    AdministrativeAction.add_member(:target_volume_values, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "TargetVolumeValues"))
    AdministrativeAction.add_member(:target_snapshot_values, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "TargetSnapshotValues"))
    AdministrativeAction.add_member(:total_transfer_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalTransferBytes, name: "TotalTransferBytes"))
    AdministrativeAction.add_member(:remaining_transfer_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingTransferBytes, name: "RemainingTransferBytes"))
    AdministrativeAction.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AdministrativeAction.type = Types::AdministrativeAction
    AdministrativeActionFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AdministrativeActionFailureDetails.type = Types::AdministrativeActionFailureDetails
    AdministrativeActionType.add_member(:file_system_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_UPDATE", traits: {"smithy.api#enumValue" => "FILE_SYSTEM_UPDATE"}))
    AdministrativeActionType.add_member(:storage_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_OPTIMIZATION", traits: {"smithy.api#enumValue" => "STORAGE_OPTIMIZATION"}))
    AdministrativeActionType.add_member(:file_system_alias_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ALIAS_ASSOCIATION", traits: {"smithy.api#enumValue" => "FILE_SYSTEM_ALIAS_ASSOCIATION"}))
    AdministrativeActionType.add_member(:file_system_alias_disassociation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ALIAS_DISASSOCIATION", traits: {"smithy.api#enumValue" => "FILE_SYSTEM_ALIAS_DISASSOCIATION"}))
    AdministrativeActionType.add_member(:volume_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_UPDATE", traits: {"smithy.api#enumValue" => "VOLUME_UPDATE"}))
    AdministrativeActionType.add_member(:snapshot_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT_UPDATE", traits: {"smithy.api#enumValue" => "SNAPSHOT_UPDATE"}))
    AdministrativeActionType.add_member(:release_nfs_v3_locks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_NFS_V3_LOCKS", traits: {"smithy.api#enumValue" => "RELEASE_NFS_V3_LOCKS"}))
    AdministrativeActionType.add_member(:volume_restore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_RESTORE", traits: {"smithy.api#enumValue" => "VOLUME_RESTORE"}))
    AdministrativeActionType.add_member(:throughput_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THROUGHPUT_OPTIMIZATION", traits: {"smithy.api#enumValue" => "THROUGHPUT_OPTIMIZATION"}))
    AdministrativeActionType.add_member(:iops_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IOPS_OPTIMIZATION", traits: {"smithy.api#enumValue" => "IOPS_OPTIMIZATION"}))
    AdministrativeActionType.add_member(:storage_type_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_TYPE_OPTIMIZATION", traits: {"smithy.api#enumValue" => "STORAGE_TYPE_OPTIMIZATION"}))
    AdministrativeActionType.add_member(:misconfigured_state_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURED_STATE_RECOVERY", traits: {"smithy.api#enumValue" => "MISCONFIGURED_STATE_RECOVERY"}))
    AdministrativeActionType.add_member(:volume_update_with_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_UPDATE_WITH_SNAPSHOT", traits: {"smithy.api#enumValue" => "VOLUME_UPDATE_WITH_SNAPSHOT"}))
    AdministrativeActionType.add_member(:volume_initialize_with_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_INITIALIZE_WITH_SNAPSHOT", traits: {"smithy.api#enumValue" => "VOLUME_INITIALIZE_WITH_SNAPSHOT"}))
    AdministrativeActionType.add_member(:download_data_from_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWNLOAD_DATA_FROM_BACKUP", traits: {"smithy.api#enumValue" => "DOWNLOAD_DATA_FROM_BACKUP"}))
    AdministrativeActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeAction, name: "member")
    AggregateConfiguration.add_member(:aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: Aggregates, name: "Aggregates"))
    AggregateConfiguration.add_member(:total_constituents, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalConstituents, name: "TotalConstituents"))
    AggregateConfiguration.type = Types::AggregateConfiguration
    Aggregates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Aggregate, name: "member")
    Alias.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateDNSName, name: "Name"))
    Alias.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasLifecycle, name: "Lifecycle"))
    Alias.type = Types::Alias
    AliasLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AliasLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AliasLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AliasLifecycle.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AliasLifecycle.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    Aliases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "member")
    AlternateDNSNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateDNSName, name: "member")
    AssociateFileSystemAliasesRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateFileSystemAliasesRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateFileSystemAliasesRequest.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateDNSNames, name: "Aliases", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateFileSystemAliasesRequest.type = Types::AssociateFileSystemAliasesRequest
    AssociateFileSystemAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases"))
    AssociateFileSystemAliasesResponse.type = Types::AssociateFileSystemAliasesResponse
    AutoExportPolicy.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "Events"))
    AutoExportPolicy.type = Types::AutoExportPolicy
    AutoImportPolicy.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "Events"))
    AutoImportPolicy.type = Types::AutoImportPolicy
    AutoImportPolicyType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AutoImportPolicyType.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    AutoImportPolicyType.add_member(:new_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_CHANGED", traits: {"smithy.api#enumValue" => "NEW_CHANGED"}))
    AutoImportPolicyType.add_member(:new_changed_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_CHANGED_DELETED", traits: {"smithy.api#enumValue" => "NEW_CHANGED_DELETED"}))
    AutocommitPeriod.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocommitPeriodType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutocommitPeriod.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocommitPeriodValue, name: "Value"))
    AutocommitPeriod.type = Types::AutocommitPeriod
    AutocommitPeriodType.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "MINUTES"}))
    AutocommitPeriodType.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    AutocommitPeriodType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    AutocommitPeriodType.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    AutocommitPeriodType.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))
    AutocommitPeriodType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Backup.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Backup.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupLifecycle, name: "Lifecycle", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Backup.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupFailureDetails, name: "FailureDetails"))
    Backup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Backup.add_member(:progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressPercent, name: "ProgressPercent"))
    Backup.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Backup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    Backup.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    Backup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    Backup.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "FileSystem", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Backup.add_member(:directory_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryBackupAttributes, name: "DirectoryInformation"))
    Backup.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerId"))
    Backup.add_member(:source_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "SourceBackupId"))
    Backup.add_member(:source_backup_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "SourceBackupRegion"))
    Backup.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    Backup.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "Volume"))
    Backup.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeInBytes, name: "SizeInBytes"))
    Backup.type = Types::Backup
    BackupBeingCopied.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BackupBeingCopied.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId"))
    BackupBeingCopied.type = Types::BackupBeingCopied
    BackupFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BackupFailureDetails.type = Types::BackupFailureDetails
    BackupIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "member")
    BackupInProgress.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BackupInProgress.type = Types::BackupInProgress
    BackupLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    BackupLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BackupLifecycle.add_member(:transferring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFERRING", traits: {"smithy.api#enumValue" => "TRANSFERRING"}))
    BackupLifecycle.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    BackupLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupLifecycle.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BackupLifecycle.add_member(:copying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPYING", traits: {"smithy.api#enumValue" => "COPYING"}))
    BackupNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BackupNotFound.type = Types::BackupNotFound
    BackupRestoring.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BackupRestoring.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    BackupRestoring.type = Types::BackupRestoring
    BackupType.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    BackupType.add_member(:user_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_INITIATED", traits: {"smithy.api#enumValue" => "USER_INITIATED"}))
    BackupType.add_member(:aws_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BACKUP", traits: {"smithy.api#enumValue" => "AWS_BACKUP"}))
    Backups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Backup, name: "member")
    BadRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BadRequest.type = Types::BadRequest
    CancelDataRepositoryTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "TaskId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelDataRepositoryTaskRequest.type = Types::CancelDataRepositoryTaskRequest
    CancelDataRepositoryTaskResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskLifecycle, name: "Lifecycle"))
    CancelDataRepositoryTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "TaskId"))
    CancelDataRepositoryTaskResponse.type = Types::CancelDataRepositoryTaskResponse
    CompletionReport.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CompletionReport.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "Path"))
    CompletionReport.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFormat, name: "Format"))
    CompletionReport.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportScope, name: "Scope"))
    CompletionReport.type = Types::CompletionReport
    CopyBackupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CopyBackupRequest.add_member(:source_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceBackupId, name: "SourceBackupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyBackupRequest.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "SourceRegion"))
    CopyBackupRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CopyBackupRequest.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTags"))
    CopyBackupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CopyBackupRequest.type = Types::CopyBackupRequest
    CopyBackupResponse.add_member(:backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Backup, name: "Backup"))
    CopyBackupResponse.type = Types::CopyBackupResponse
    CopySnapshotAndUpdateVolumeRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CopySnapshotAndUpdateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopySnapshotAndUpdateVolumeRequest.add_member(:source_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "SourceSnapshotARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopySnapshotAndUpdateVolumeRequest.add_member(:copy_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSCopyStrategy, name: "CopyStrategy"))
    CopySnapshotAndUpdateVolumeRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenZFSVolumeOptions, name: "Options"))
    CopySnapshotAndUpdateVolumeRequest.type = Types::CopySnapshotAndUpdateVolumeRequest
    CopySnapshotAndUpdateVolumeResponse.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    CopySnapshotAndUpdateVolumeResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeLifecycle, name: "Lifecycle"))
    CopySnapshotAndUpdateVolumeResponse.add_member(:administrative_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActions, name: "AdministrativeActions"))
    CopySnapshotAndUpdateVolumeResponse.type = Types::CopySnapshotAndUpdateVolumeResponse
    CreateAggregateConfiguration.add_member(:aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: Aggregates, name: "Aggregates"))
    CreateAggregateConfiguration.add_member(:constituents_per_aggregate, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateListMultiplier, name: "ConstituentsPerAggregate"))
    CreateAggregateConfiguration.type = Types::CreateAggregateConfiguration
    CreateAndAttachS3AccessPointOpenZFSConfiguration.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAndAttachS3AccessPointOpenZFSConfiguration.add_member(:file_system_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSFileSystemIdentity, name: "FileSystemIdentity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAndAttachS3AccessPointOpenZFSConfiguration.type = Types::CreateAndAttachS3AccessPointOpenZFSConfiguration
    CreateAndAttachS3AccessPointRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAndAttachS3AccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAndAttachS3AccessPointRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAndAttachS3AccessPointRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAndAttachS3AccessPointOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    CreateAndAttachS3AccessPointRequest.add_member(:s3_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAndAttachS3AccessPointS3Configuration, name: "S3AccessPoint"))
    CreateAndAttachS3AccessPointRequest.type = Types::CreateAndAttachS3AccessPointRequest
    CreateAndAttachS3AccessPointResponse.add_member(:s3_access_point_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachment, name: "S3AccessPointAttachment"))
    CreateAndAttachS3AccessPointResponse.type = Types::CreateAndAttachS3AccessPointResponse
    CreateAndAttachS3AccessPointS3Configuration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointVpcConfiguration, name: "VpcConfiguration"))
    CreateAndAttachS3AccessPointS3Configuration.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPolicy, name: "Policy"))
    CreateAndAttachS3AccessPointS3Configuration.type = Types::CreateAndAttachS3AccessPointS3Configuration
    CreateBackupRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    CreateBackupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBackupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateBackupRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    CreateBackupRequest.type = Types::CreateBackupRequest
    CreateBackupResponse.add_member(:backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Backup, name: "Backup"))
    CreateBackupResponse.type = Types::CreateBackupResponse
    CreateDataRepositoryAssociationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDataRepositoryAssociationRequest.add_member(:file_system_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "FileSystemPath"))
    CreateDataRepositoryAssociationRequest.add_member(:data_repository_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "DataRepositoryPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDataRepositoryAssociationRequest.add_member(:batch_import_meta_data_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchImportMetaDataOnCreate, name: "BatchImportMetaDataOnCreate"))
    CreateDataRepositoryAssociationRequest.add_member(:imported_file_chunk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Megabytes, name: "ImportedFileChunkSize"))
    CreateDataRepositoryAssociationRequest.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataRepositoryConfiguration, name: "S3"))
    CreateDataRepositoryAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataRepositoryAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDataRepositoryAssociationRequest.type = Types::CreateDataRepositoryAssociationRequest
    CreateDataRepositoryAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociation, name: "Association"))
    CreateDataRepositoryAssociationResponse.type = Types::CreateDataRepositoryAssociationResponse
    CreateDataRepositoryTaskRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDataRepositoryTaskRequest.add_member(:paths, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskPaths, name: "Paths"))
    CreateDataRepositoryTaskRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDataRepositoryTaskRequest.add_member(:report, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionReport, name: "Report", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDataRepositoryTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataRepositoryTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDataRepositoryTaskRequest.add_member(:capacity_to_release, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityToRelease, name: "CapacityToRelease"))
    CreateDataRepositoryTaskRequest.add_member(:release_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseConfiguration, name: "ReleaseConfiguration"))
    CreateDataRepositoryTaskRequest.type = Types::CreateDataRepositoryTaskRequest
    CreateDataRepositoryTaskResponse.add_member(:data_repository_task, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTask, name: "DataRepositoryTask"))
    CreateDataRepositoryTaskResponse.type = Types::CreateDataRepositoryTaskResponse
    CreateFileCacheDataRepositoryAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheDataRepositoryAssociation, name: "member")
    CreateFileCacheLustreConfiguration.add_member(:per_unit_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PerUnitStorageThroughput, name: "PerUnitStorageThroughput", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheLustreConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLustreDeploymentType, name: "DeploymentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheLustreConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    CreateFileCacheLustreConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLustreMetadataConfiguration, name: "MetadataConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheLustreConfiguration.type = Types::CreateFileCacheLustreConfiguration
    CreateFileCacheRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFileCacheRequest.add_member(:file_cache_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheType, name: "FileCacheType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheRequest.add_member(:file_cache_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileCacheTypeVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileCacheRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    CreateFileCacheRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateFileCacheRequest.add_member(:copy_tags_to_data_repository_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTagsToDataRepositoryAssociations, name: "CopyTagsToDataRepositoryAssociations"))
    CreateFileCacheRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateFileCacheRequest.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileCacheLustreConfiguration, name: "LustreConfiguration"))
    CreateFileCacheRequest.add_member(:data_repository_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileCacheDataRepositoryAssociations, name: "DataRepositoryAssociations"))
    CreateFileCacheRequest.type = Types::CreateFileCacheRequest
    CreateFileCacheResponse.add_member(:file_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheCreating, name: "FileCache"))
    CreateFileCacheResponse.type = Types::CreateFileCacheResponse
    CreateFileSystemFromBackupRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemFromBackupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFileSystemFromBackupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemFromBackupRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    CreateFileSystemFromBackupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateFileSystemFromBackupRequest.add_member(:windows_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemWindowsConfiguration, name: "WindowsConfiguration"))
    CreateFileSystemFromBackupRequest.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemLustreConfiguration, name: "LustreConfiguration"))
    CreateFileSystemFromBackupRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "StorageType"))
    CreateFileSystemFromBackupRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateFileSystemFromBackupRequest.add_member(:file_system_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileSystemTypeVersion"))
    CreateFileSystemFromBackupRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    CreateFileSystemFromBackupRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity"))
    CreateFileSystemFromBackupRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateFileSystemFromBackupRequest.type = Types::CreateFileSystemFromBackupRequest
    CreateFileSystemFromBackupResponse.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "FileSystem"))
    CreateFileSystemFromBackupResponse.type = Types::CreateFileSystemFromBackupResponse
    CreateFileSystemLustreConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemLustreConfiguration.add_member(:import_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "ImportPath"))
    CreateFileSystemLustreConfiguration.add_member(:export_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "ExportPath"))
    CreateFileSystemLustreConfiguration.add_member(:imported_file_chunk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Megabytes, name: "ImportedFileChunkSize"))
    CreateFileSystemLustreConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreDeploymentType, name: "DeploymentType"))
    CreateFileSystemLustreConfiguration.add_member(:auto_import_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoImportPolicyType, name: "AutoImportPolicy"))
    CreateFileSystemLustreConfiguration.add_member(:per_unit_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PerUnitStorageThroughput, name: "PerUnitStorageThroughput"))
    CreateFileSystemLustreConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemLustreConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    CreateFileSystemLustreConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    CreateFileSystemLustreConfiguration.add_member(:drive_cache_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DriveCacheType, name: "DriveCacheType"))
    CreateFileSystemLustreConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCompressionType, name: "DataCompressionType"))
    CreateFileSystemLustreConfiguration.add_member(:efa_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "EfaEnabled"))
    CreateFileSystemLustreConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreLogCreateConfiguration, name: "LogConfiguration"))
    CreateFileSystemLustreConfiguration.add_member(:root_squash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreRootSquashConfiguration, name: "RootSquashConfiguration"))
    CreateFileSystemLustreConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemLustreMetadataConfiguration, name: "MetadataConfiguration"))
    CreateFileSystemLustreConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputCapacityMbps, name: "ThroughputCapacity"))
    CreateFileSystemLustreConfiguration.add_member(:data_read_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreReadCacheConfiguration, name: "DataReadCacheConfiguration"))
    CreateFileSystemLustreConfiguration.type = Types::CreateFileSystemLustreConfiguration
    CreateFileSystemLustreMetadataConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataIops, name: "Iops"))
    CreateFileSystemLustreMetadataConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfigurationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemLustreMetadataConfiguration.type = Types::CreateFileSystemLustreMetadataConfiguration
    CreateFileSystemOntapConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    CreateFileSystemOntapConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemOntapConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapDeploymentType, name: "DeploymentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemOntapConfiguration.add_member(:endpoint_ip_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressRange, name: "EndpointIpAddressRange"))
    CreateFileSystemOntapConfiguration.add_member(:fsx_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPassword, name: "FsxAdminPassword"))
    CreateFileSystemOntapConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    CreateFileSystemOntapConfiguration.add_member(:preferred_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "PreferredSubnetId"))
    CreateFileSystemOntapConfiguration.add_member(:route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "RouteTableIds"))
    CreateFileSystemOntapConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    CreateFileSystemOntapConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemOntapConfiguration.add_member(:ha_pairs, ::Smithy::Schema::Shapes::MemberShape.new(target: HAPairs, name: "HAPairs"))
    CreateFileSystemOntapConfiguration.add_member(:throughput_capacity_per_ha_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputCapacityPerHAPair, name: "ThroughputCapacityPerHAPair"))
    CreateFileSystemOntapConfiguration.add_member(:endpoint_ipv6_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressRange, name: "EndpointIpv6AddressRange"))
    CreateFileSystemOntapConfiguration.type = Types::CreateFileSystemOntapConfiguration
    CreateFileSystemOpenZFSConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    CreateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    CreateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToVolumes"))
    CreateFileSystemOpenZFSConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemOpenZFSConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSDeploymentType, name: "DeploymentType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemOpenZFSConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemOpenZFSConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemOpenZFSConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    CreateFileSystemOpenZFSConfiguration.add_member(:root_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSCreateRootVolumeConfiguration, name: "RootVolumeConfiguration"))
    CreateFileSystemOpenZFSConfiguration.add_member(:preferred_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "PreferredSubnetId"))
    CreateFileSystemOpenZFSConfiguration.add_member(:endpoint_ip_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressRange, name: "EndpointIpAddressRange"))
    CreateFileSystemOpenZFSConfiguration.add_member(:endpoint_ipv6_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressRange, name: "EndpointIpv6AddressRange"))
    CreateFileSystemOpenZFSConfiguration.add_member(:route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "RouteTableIds"))
    CreateFileSystemOpenZFSConfiguration.add_member(:read_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSReadCacheConfiguration, name: "ReadCacheConfiguration"))
    CreateFileSystemOpenZFSConfiguration.type = Types::CreateFileSystemOpenZFSConfiguration
    CreateFileSystemRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFileSystemRequest.add_member(:file_system_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemType, name: "FileSystemType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity"))
    CreateFileSystemRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "StorageType"))
    CreateFileSystemRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    CreateFileSystemRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateFileSystemRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateFileSystemRequest.add_member(:windows_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemWindowsConfiguration, name: "WindowsConfiguration"))
    CreateFileSystemRequest.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemLustreConfiguration, name: "LustreConfiguration"))
    CreateFileSystemRequest.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemOntapConfiguration, name: "OntapConfiguration"))
    CreateFileSystemRequest.add_member(:file_system_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileSystemTypeVersion"))
    CreateFileSystemRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFileSystemOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    CreateFileSystemRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateFileSystemRequest.type = Types::CreateFileSystemRequest
    CreateFileSystemResponse.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "FileSystem"))
    CreateFileSystemResponse.type = Types::CreateFileSystemResponse
    CreateFileSystemWindowsConfiguration.add_member(:active_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "ActiveDirectoryId"))
    CreateFileSystemWindowsConfiguration.add_member(:self_managed_active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedActiveDirectoryConfiguration, name: "SelfManagedActiveDirectoryConfiguration"))
    CreateFileSystemWindowsConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsDeploymentType, name: "DeploymentType"))
    CreateFileSystemWindowsConfiguration.add_member(:preferred_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "PreferredSubnetId"))
    CreateFileSystemWindowsConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFileSystemWindowsConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemWindowsConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemWindowsConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    CreateFileSystemWindowsConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    CreateFileSystemWindowsConfiguration.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateDNSNames, name: "Aliases"))
    CreateFileSystemWindowsConfiguration.add_member(:audit_log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAuditLogCreateConfiguration, name: "AuditLogConfiguration"))
    CreateFileSystemWindowsConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    CreateFileSystemWindowsConfiguration.type = Types::CreateFileSystemWindowsConfiguration
    CreateOntapVolumeConfiguration.add_member(:junction_path, ::Smithy::Schema::Shapes::MemberShape.new(target: JunctionPath, name: "JunctionPath"))
    CreateOntapVolumeConfiguration.add_member(:security_style, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityStyle, name: "SecurityStyle"))
    CreateOntapVolumeConfiguration.add_member(:size_in_megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeCapacity, name: "SizeInMegabytes", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated, use SizeInBytes instead"}}))
    CreateOntapVolumeConfiguration.add_member(:storage_efficiency_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "StorageEfficiencyEnabled"))
    CreateOntapVolumeConfiguration.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "StorageVirtualMachineId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOntapVolumeConfiguration.add_member(:tiering_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringPolicy, name: "TieringPolicy"))
    CreateOntapVolumeConfiguration.add_member(:ontap_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputOntapVolumeType, name: "OntapVolumeType"))
    CreateOntapVolumeConfiguration.add_member(:snapshot_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotPolicy, name: "SnapshotPolicy"))
    CreateOntapVolumeConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    CreateOntapVolumeConfiguration.add_member(:snaplock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSnaplockConfiguration, name: "SnaplockConfiguration"))
    CreateOntapVolumeConfiguration.add_member(:volume_style, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStyle, name: "VolumeStyle"))
    CreateOntapVolumeConfiguration.add_member(:aggregate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAggregateConfiguration, name: "AggregateConfiguration"))
    CreateOntapVolumeConfiguration.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeCapacityBytes, name: "SizeInBytes"))
    CreateOntapVolumeConfiguration.type = Types::CreateOntapVolumeConfiguration
    CreateOpenZFSOriginSnapshotConfiguration.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "SnapshotARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOpenZFSOriginSnapshotConfiguration.add_member(:copy_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSCopyStrategy, name: "CopyStrategy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOpenZFSOriginSnapshotConfiguration.type = Types::CreateOpenZFSOriginSnapshotConfiguration
    CreateOpenZFSVolumeConfiguration.add_member(:parent_volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "ParentVolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOpenZFSVolumeConfiguration.add_member(:storage_capacity_reservation_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMaxFromNegativeOne, name: "StorageCapacityReservationGiB"))
    CreateOpenZFSVolumeConfiguration.add_member(:storage_capacity_quota_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMaxFromNegativeOne, name: "StorageCapacityQuotaGiB"))
    CreateOpenZFSVolumeConfiguration.add_member(:record_size_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRecordSizeKiB, name: "RecordSizeKiB"))
    CreateOpenZFSVolumeConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSDataCompressionType, name: "DataCompressionType"))
    CreateOpenZFSVolumeConfiguration.add_member(:copy_tags_to_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToSnapshots"))
    CreateOpenZFSVolumeConfiguration.add_member(:origin_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOpenZFSOriginSnapshotConfiguration, name: "OriginSnapshot"))
    CreateOpenZFSVolumeConfiguration.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadOnly, name: "ReadOnly"))
    CreateOpenZFSVolumeConfiguration.add_member(:nfs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExports, name: "NfsExports"))
    CreateOpenZFSVolumeConfiguration.add_member(:user_and_group_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSUserAndGroupQuotas, name: "UserAndGroupQuotas"))
    CreateOpenZFSVolumeConfiguration.type = Types::CreateOpenZFSVolumeConfiguration
    CreateSnaplockConfiguration.add_member(:audit_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "AuditLogVolume"))
    CreateSnaplockConfiguration.add_member(:autocommit_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocommitPeriod, name: "AutocommitPeriod"))
    CreateSnaplockConfiguration.add_member(:privileged_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivilegedDelete, name: "PrivilegedDelete"))
    CreateSnaplockConfiguration.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SnaplockRetentionPeriod, name: "RetentionPeriod"))
    CreateSnaplockConfiguration.add_member(:snaplock_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnaplockType, name: "SnaplockType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnaplockConfiguration.add_member(:volume_append_mode_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "VolumeAppendModeEnabled"))
    CreateSnaplockConfiguration.type = Types::CreateSnaplockConfiguration
    CreateSnapshotRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSnapshotRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    CreateSnapshotResponse.type = Types::CreateSnapshotResponse
    CreateStorageVirtualMachineRequest.add_member(:active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSvmActiveDirectoryConfiguration, name: "ActiveDirectoryConfiguration"))
    CreateStorageVirtualMachineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStorageVirtualMachineRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStorageVirtualMachineRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStorageVirtualMachineRequest.add_member(:svm_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPassword, name: "SvmAdminPassword"))
    CreateStorageVirtualMachineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateStorageVirtualMachineRequest.add_member(:root_volume_security_style, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineRootVolumeSecurityStyle, name: "RootVolumeSecurityStyle"))
    CreateStorageVirtualMachineRequest.type = Types::CreateStorageVirtualMachineRequest
    CreateStorageVirtualMachineResponse.add_member(:storage_virtual_machine, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachine, name: "StorageVirtualMachine"))
    CreateStorageVirtualMachineResponse.type = Types::CreateStorageVirtualMachineResponse
    CreateSvmActiveDirectoryConfiguration.add_member(:net_bios_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetBiosAlias, name: "NetBiosName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSvmActiveDirectoryConfiguration.add_member(:self_managed_active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedActiveDirectoryConfiguration, name: "SelfManagedActiveDirectoryConfiguration"))
    CreateSvmActiveDirectoryConfiguration.type = Types::CreateSvmActiveDirectoryConfiguration
    CreateVolumeFromBackupRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVolumeFromBackupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVolumeFromBackupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVolumeFromBackupRequest.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOntapVolumeConfiguration, name: "OntapConfiguration"))
    CreateVolumeFromBackupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateVolumeFromBackupRequest.type = Types::CreateVolumeFromBackupRequest
    CreateVolumeFromBackupResponse.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "Volume"))
    CreateVolumeFromBackupResponse.type = Types::CreateVolumeFromBackupResponse
    CreateVolumeRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVolumeRequest.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "VolumeType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVolumeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVolumeRequest.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOntapVolumeConfiguration, name: "OntapConfiguration"))
    CreateVolumeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateVolumeRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOpenZFSVolumeConfiguration, name: "OpenZFSConfiguration"))
    CreateVolumeRequest.type = Types::CreateVolumeRequest
    CreateVolumeResponse.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "Volume"))
    CreateVolumeResponse.type = Types::CreateVolumeResponse
    DataCompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DataCompressionType.add_member(:lz4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LZ4", traits: {"smithy.api#enumValue" => "LZ4"}))
    DataRepositoryAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationId, name: "AssociationId"))
    DataRepositoryAssociation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    DataRepositoryAssociation.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    DataRepositoryAssociation.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryLifecycle, name: "Lifecycle"))
    DataRepositoryAssociation.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryFailureDetails, name: "FailureDetails"))
    DataRepositoryAssociation.add_member(:file_system_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "FileSystemPath"))
    DataRepositoryAssociation.add_member(:data_repository_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "DataRepositoryPath"))
    DataRepositoryAssociation.add_member(:batch_import_meta_data_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchImportMetaDataOnCreate, name: "BatchImportMetaDataOnCreate"))
    DataRepositoryAssociation.add_member(:imported_file_chunk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Megabytes, name: "ImportedFileChunkSize"))
    DataRepositoryAssociation.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataRepositoryConfiguration, name: "S3"))
    DataRepositoryAssociation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DataRepositoryAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    DataRepositoryAssociation.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId"))
    DataRepositoryAssociation.add_member(:file_cache_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "FileCachePath"))
    DataRepositoryAssociation.add_member(:data_repository_subdirectories, ::Smithy::Schema::Shapes::MemberShape.new(target: SubDirectoriesPaths, name: "DataRepositorySubdirectories"))
    DataRepositoryAssociation.add_member(:nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: NFSDataRepositoryConfiguration, name: "NFS"))
    DataRepositoryAssociation.type = Types::DataRepositoryAssociation
    DataRepositoryAssociationIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationId, name: "member")
    DataRepositoryAssociationNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DataRepositoryAssociationNotFound.type = Types::DataRepositoryAssociationNotFound
    DataRepositoryAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociation, name: "member")
    DataRepositoryConfiguration.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryLifecycle, name: "Lifecycle"))
    DataRepositoryConfiguration.add_member(:import_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "ImportPath"))
    DataRepositoryConfiguration.add_member(:export_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "ExportPath"))
    DataRepositoryConfiguration.add_member(:imported_file_chunk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Megabytes, name: "ImportedFileChunkSize"))
    DataRepositoryConfiguration.add_member(:auto_import_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoImportPolicyType, name: "AutoImportPolicy"))
    DataRepositoryConfiguration.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryFailureDetails, name: "FailureDetails"))
    DataRepositoryConfiguration.type = Types::DataRepositoryConfiguration
    DataRepositoryFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DataRepositoryFailureDetails.type = Types::DataRepositoryFailureDetails
    DataRepositoryLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DataRepositoryLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataRepositoryLifecycle.add_member(:misconfigured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURED", traits: {"smithy.api#enumValue" => "MISCONFIGURED"}))
    DataRepositoryLifecycle.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DataRepositoryLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DataRepositoryLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataRepositoryTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "TaskId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DataRepositoryTask.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskLifecycle, name: "Lifecycle", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DataRepositoryTask.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DataRepositoryTask.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DataRepositoryTask.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "StartTime"))
    DataRepositoryTask.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, name: "EndTime"))
    DataRepositoryTask.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    DataRepositoryTask.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DataRepositoryTask.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    DataRepositoryTask.add_member(:paths, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskPaths, name: "Paths"))
    DataRepositoryTask.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskFailureDetails, name: "FailureDetails"))
    DataRepositoryTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskStatus, name: "Status"))
    DataRepositoryTask.add_member(:report, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionReport, name: "Report"))
    DataRepositoryTask.add_member(:capacity_to_release, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityToRelease, name: "CapacityToRelease"))
    DataRepositoryTask.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId"))
    DataRepositoryTask.add_member(:release_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseConfiguration, name: "ReleaseConfiguration"))
    DataRepositoryTask.type = Types::DataRepositoryTask
    DataRepositoryTaskEnded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DataRepositoryTaskEnded.type = Types::DataRepositoryTaskEnded
    DataRepositoryTaskExecuting.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DataRepositoryTaskExecuting.type = Types::DataRepositoryTaskExecuting
    DataRepositoryTaskFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DataRepositoryTaskFailureDetails.type = Types::DataRepositoryTaskFailureDetails
    DataRepositoryTaskFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskFilterName, name: "Name"))
    DataRepositoryTaskFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskFilterValues, name: "Values"))
    DataRepositoryTaskFilter.type = Types::DataRepositoryTaskFilter
    DataRepositoryTaskFilterName.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ID", traits: {"smithy.api#enumValue" => "file-system-id"}))
    DataRepositoryTaskFilterName.add_member(:task_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_LIFECYCLE", traits: {"smithy.api#enumValue" => "task-lifecycle"}))
    DataRepositoryTaskFilterName.add_member(:data_repo_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_REPO_ASSOCIATION_ID", traits: {"smithy.api#enumValue" => "data-repository-association-id"}))
    DataRepositoryTaskFilterName.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_CACHE_ID", traits: {"smithy.api#enumValue" => "file-cache-id"}))
    DataRepositoryTaskFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskFilterValue, name: "member")
    DataRepositoryTaskFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskFilter, name: "member")
    DataRepositoryTaskLifecycle.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DataRepositoryTaskLifecycle.add_member(:executing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTING", traits: {"smithy.api#enumValue" => "EXECUTING"}))
    DataRepositoryTaskLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataRepositoryTaskLifecycle.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataRepositoryTaskLifecycle.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    DataRepositoryTaskLifecycle.add_member(:canceling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELING", traits: {"smithy.api#enumValue" => "CANCELING"}))
    DataRepositoryTaskNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DataRepositoryTaskNotFound.type = Types::DataRepositoryTaskNotFound
    DataRepositoryTaskPaths.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskPath, name: "member")
    DataRepositoryTaskStatus.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalCount, name: "TotalCount"))
    DataRepositoryTaskStatus.add_member(:succeeded_count, ::Smithy::Schema::Shapes::MemberShape.new(target: SucceededCount, name: "SucceededCount"))
    DataRepositoryTaskStatus.add_member(:failed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCount, name: "FailedCount"))
    DataRepositoryTaskStatus.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    DataRepositoryTaskStatus.add_member(:released_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleasedCapacity, name: "ReleasedCapacity"))
    DataRepositoryTaskStatus.type = Types::DataRepositoryTaskStatus
    DataRepositoryTaskType.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT", traits: {"smithy.api#enumValue" => "EXPORT_TO_REPOSITORY"}))
    DataRepositoryTaskType.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT_METADATA_FROM_REPOSITORY"}))
    DataRepositoryTaskType.add_member(:eviction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVICTION", traits: {"smithy.api#enumValue" => "RELEASE_DATA_FROM_FILESYSTEM"}))
    DataRepositoryTaskType.add_member(:auto_triggered_eviction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_TRIGGERED_EVICTION", traits: {"smithy.api#enumValue" => "AUTO_RELEASE_DATA"}))
    DataRepositoryTasks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTask, name: "member")
    DeleteBackupRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteBackupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteBackupRequest.type = Types::DeleteBackupRequest
    DeleteBackupResponse.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId"))
    DeleteBackupResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupLifecycle, name: "Lifecycle"))
    DeleteBackupResponse.type = Types::DeleteBackupResponse
    DeleteDataRepositoryAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationId, name: "AssociationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDataRepositoryAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteDataRepositoryAssociationRequest.add_member(:delete_data_in_file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteDataInFileSystem, name: "DeleteDataInFileSystem"))
    DeleteDataRepositoryAssociationRequest.type = Types::DeleteDataRepositoryAssociationRequest
    DeleteDataRepositoryAssociationResponse.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationId, name: "AssociationId"))
    DeleteDataRepositoryAssociationResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryLifecycle, name: "Lifecycle"))
    DeleteDataRepositoryAssociationResponse.add_member(:delete_data_in_file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteDataInFileSystem, name: "DeleteDataInFileSystem"))
    DeleteDataRepositoryAssociationResponse.type = Types::DeleteDataRepositoryAssociationResponse
    DeleteFileCacheRequest.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteFileCacheRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteFileCacheRequest.type = Types::DeleteFileCacheRequest
    DeleteFileCacheResponse.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId"))
    DeleteFileCacheResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLifecycle, name: "Lifecycle"))
    DeleteFileCacheResponse.type = Types::DeleteFileCacheResponse
    DeleteFileSystemLustreConfiguration.add_member(:skip_final_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "SkipFinalBackup"))
    DeleteFileSystemLustreConfiguration.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteFileSystemLustreConfiguration.type = Types::DeleteFileSystemLustreConfiguration
    DeleteFileSystemLustreResponse.add_member(:final_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "FinalBackupId"))
    DeleteFileSystemLustreResponse.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteFileSystemLustreResponse.type = Types::DeleteFileSystemLustreResponse
    DeleteFileSystemOpenZFSConfiguration.add_member(:skip_final_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "SkipFinalBackup"))
    DeleteFileSystemOpenZFSConfiguration.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteFileSystemOpenZFSConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemOpenZFSOptions, name: "Options"))
    DeleteFileSystemOpenZFSConfiguration.type = Types::DeleteFileSystemOpenZFSConfiguration
    DeleteFileSystemOpenZFSOption.add_member(:delete_child_volumes_and_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS", traits: {"smithy.api#enumValue" => "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"}))
    DeleteFileSystemOpenZFSOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemOpenZFSOption, name: "member")
    DeleteFileSystemOpenZFSResponse.add_member(:final_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "FinalBackupId"))
    DeleteFileSystemOpenZFSResponse.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteFileSystemOpenZFSResponse.type = Types::DeleteFileSystemOpenZFSResponse
    DeleteFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteFileSystemRequest.add_member(:windows_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemWindowsConfiguration, name: "WindowsConfiguration"))
    DeleteFileSystemRequest.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemLustreConfiguration, name: "LustreConfiguration"))
    DeleteFileSystemRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    DeleteFileSystemRequest.type = Types::DeleteFileSystemRequest
    DeleteFileSystemResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    DeleteFileSystemResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLifecycle, name: "Lifecycle"))
    DeleteFileSystemResponse.add_member(:windows_response, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemWindowsResponse, name: "WindowsResponse"))
    DeleteFileSystemResponse.add_member(:lustre_response, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemLustreResponse, name: "LustreResponse"))
    DeleteFileSystemResponse.add_member(:open_zfs_response, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileSystemOpenZFSResponse, name: "OpenZFSResponse"))
    DeleteFileSystemResponse.type = Types::DeleteFileSystemResponse
    DeleteFileSystemWindowsConfiguration.add_member(:skip_final_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "SkipFinalBackup"))
    DeleteFileSystemWindowsConfiguration.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteFileSystemWindowsConfiguration.type = Types::DeleteFileSystemWindowsConfiguration
    DeleteFileSystemWindowsResponse.add_member(:final_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "FinalBackupId"))
    DeleteFileSystemWindowsResponse.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteFileSystemWindowsResponse.type = Types::DeleteFileSystemWindowsResponse
    DeleteOpenZFSVolumeOption.add_member(:delete_child_volumes_and_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS", traits: {"smithy.api#enumValue" => "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"}))
    DeleteOpenZFSVolumeOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteOpenZFSVolumeOption, name: "member")
    DeleteSnapshotRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResponse.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    DeleteSnapshotResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotLifecycle, name: "Lifecycle"))
    DeleteSnapshotResponse.type = Types::DeleteSnapshotResponse
    DeleteStorageVirtualMachineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteStorageVirtualMachineRequest.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "StorageVirtualMachineId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStorageVirtualMachineRequest.type = Types::DeleteStorageVirtualMachineRequest
    DeleteStorageVirtualMachineResponse.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "StorageVirtualMachineId"))
    DeleteStorageVirtualMachineResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineLifecycle, name: "Lifecycle"))
    DeleteStorageVirtualMachineResponse.type = Types::DeleteStorageVirtualMachineResponse
    DeleteVolumeOntapConfiguration.add_member(:skip_final_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "SkipFinalBackup"))
    DeleteVolumeOntapConfiguration.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteVolumeOntapConfiguration.add_member(:bypass_snaplock_enterprise_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "BypassSnaplockEnterpriseRetention"))
    DeleteVolumeOntapConfiguration.type = Types::DeleteVolumeOntapConfiguration
    DeleteVolumeOntapResponse.add_member(:final_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "FinalBackupId"))
    DeleteVolumeOntapResponse.add_member(:final_backup_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "FinalBackupTags"))
    DeleteVolumeOntapResponse.type = Types::DeleteVolumeOntapResponse
    DeleteVolumeOpenZFSConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteOpenZFSVolumeOptions, name: "Options"))
    DeleteVolumeOpenZFSConfiguration.type = Types::DeleteVolumeOpenZFSConfiguration
    DeleteVolumeRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteVolumeRequest.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteVolumeOntapConfiguration, name: "OntapConfiguration"))
    DeleteVolumeRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteVolumeOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    DeleteVolumeRequest.type = Types::DeleteVolumeRequest
    DeleteVolumeResponse.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    DeleteVolumeResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeLifecycle, name: "Lifecycle"))
    DeleteVolumeResponse.add_member(:ontap_response, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteVolumeOntapResponse, name: "OntapResponse"))
    DeleteVolumeResponse.type = Types::DeleteVolumeResponse
    DescribeBackupsRequest.add_member(:backup_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupIds, name: "BackupIds"))
    DescribeBackupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    DescribeBackupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeBackupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeBackupsRequest.type = Types::DescribeBackupsRequest
    DescribeBackupsResponse.add_member(:backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Backups, name: "Backups"))
    DescribeBackupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeBackupsResponse.type = Types::DescribeBackupsResponse
    DescribeDataRepositoryAssociationsRequest.add_member(:association_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationIds, name: "AssociationIds"))
    DescribeDataRepositoryAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    DescribeDataRepositoryAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitedMaxResults, name: "MaxResults"))
    DescribeDataRepositoryAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDataRepositoryAssociationsRequest.type = Types::DescribeDataRepositoryAssociationsRequest
    DescribeDataRepositoryAssociationsResponse.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociations, name: "Associations"))
    DescribeDataRepositoryAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDataRepositoryAssociationsResponse.type = Types::DescribeDataRepositoryAssociationsResponse
    DescribeDataRepositoryTasksRequest.add_member(:task_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIds, name: "TaskIds"))
    DescribeDataRepositoryTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTaskFilters, name: "Filters"))
    DescribeDataRepositoryTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeDataRepositoryTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDataRepositoryTasksRequest.type = Types::DescribeDataRepositoryTasksRequest
    DescribeDataRepositoryTasksResponse.add_member(:data_repository_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryTasks, name: "DataRepositoryTasks"))
    DescribeDataRepositoryTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDataRepositoryTasksResponse.type = Types::DescribeDataRepositoryTasksResponse
    DescribeFileCachesRequest.add_member(:file_cache_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheIds, name: "FileCacheIds"))
    DescribeFileCachesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeFileCachesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeFileCachesRequest.type = Types::DescribeFileCachesRequest
    DescribeFileCachesResponse.add_member(:file_caches, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCaches, name: "FileCaches"))
    DescribeFileCachesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeFileCachesResponse.type = Types::DescribeFileCachesResponse
    DescribeFileSystemAliasesRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DescribeFileSystemAliasesRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFileSystemAliasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeFileSystemAliasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeFileSystemAliasesRequest.type = Types::DescribeFileSystemAliasesRequest
    DescribeFileSystemAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases"))
    DescribeFileSystemAliasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeFileSystemAliasesResponse.type = Types::DescribeFileSystemAliasesResponse
    DescribeFileSystemsRequest.add_member(:file_system_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemIds, name: "FileSystemIds"))
    DescribeFileSystemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeFileSystemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeFileSystemsRequest.type = Types::DescribeFileSystemsRequest
    DescribeFileSystemsResponse.add_member(:file_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystems, name: "FileSystems"))
    DescribeFileSystemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeFileSystemsResponse.type = Types::DescribeFileSystemsResponse
    DescribeS3AccessPointAttachmentsRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentNames, name: "Names"))
    DescribeS3AccessPointAttachmentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentsFilters, name: "Filters"))
    DescribeS3AccessPointAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeS3AccessPointAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeS3AccessPointAttachmentsRequest.type = Types::DescribeS3AccessPointAttachmentsRequest
    DescribeS3AccessPointAttachmentsResponse.add_member(:s3_access_point_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachments, name: "S3AccessPointAttachments"))
    DescribeS3AccessPointAttachmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeS3AccessPointAttachmentsResponse.type = Types::DescribeS3AccessPointAttachmentsResponse
    DescribeSharedVpcConfigurationRequest.type = Types::DescribeSharedVpcConfigurationRequest
    DescribeSharedVpcConfigurationResponse.add_member(:enable_fsx_route_table_updates_from_participant_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: VerboseFlag, name: "EnableFsxRouteTableUpdatesFromParticipantAccounts"))
    DescribeSharedVpcConfigurationResponse.type = Types::DescribeSharedVpcConfigurationResponse
    DescribeSnapshotsRequest.add_member(:snapshot_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotIds, name: "SnapshotIds"))
    DescribeSnapshotsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotFilters, name: "Filters"))
    DescribeSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSnapshotsRequest.add_member(:include_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeShared, name: "IncludeShared"))
    DescribeSnapshotsRequest.type = Types::DescribeSnapshotsRequest
    DescribeSnapshotsResponse.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshots, name: "Snapshots"))
    DescribeSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSnapshotsResponse.type = Types::DescribeSnapshotsResponse
    DescribeStorageVirtualMachinesRequest.add_member(:storage_virtual_machine_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineIds, name: "StorageVirtualMachineIds"))
    DescribeStorageVirtualMachinesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineFilters, name: "Filters"))
    DescribeStorageVirtualMachinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeStorageVirtualMachinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStorageVirtualMachinesRequest.type = Types::DescribeStorageVirtualMachinesRequest
    DescribeStorageVirtualMachinesResponse.add_member(:storage_virtual_machines, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachines, name: "StorageVirtualMachines"))
    DescribeStorageVirtualMachinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeStorageVirtualMachinesResponse.type = Types::DescribeStorageVirtualMachinesResponse
    DescribeVolumesRequest.add_member(:volume_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeIds, name: "VolumeIds"))
    DescribeVolumesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFilters, name: "Filters"))
    DescribeVolumesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeVolumesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeVolumesRequest.type = Types::DescribeVolumesRequest
    DescribeVolumesResponse.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "Volumes"))
    DescribeVolumesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeVolumesResponse.type = Types::DescribeVolumesResponse
    DetachAndDeleteS3AccessPointRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DetachAndDeleteS3AccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachAndDeleteS3AccessPointRequest.type = Types::DetachAndDeleteS3AccessPointRequest
    DetachAndDeleteS3AccessPointResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentLifecycle, name: "Lifecycle"))
    DetachAndDeleteS3AccessPointResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentName, name: "Name"))
    DetachAndDeleteS3AccessPointResponse.type = Types::DetachAndDeleteS3AccessPointResponse
    DisassociateFileSystemAliasesRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateFileSystemAliasesRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateFileSystemAliasesRequest.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateDNSNames, name: "Aliases", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateFileSystemAliasesRequest.type = Types::DisassociateFileSystemAliasesRequest
    DisassociateFileSystemAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases"))
    DisassociateFileSystemAliasesResponse.type = Types::DisassociateFileSystemAliasesResponse
    DiskIopsConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfigurationMode, name: "Mode"))
    DiskIopsConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Iops, name: "Iops"))
    DiskIopsConfiguration.type = Types::DiskIopsConfiguration
    DiskIopsConfigurationMode.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    DiskIopsConfigurationMode.add_member(:user_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PROVISIONED", traits: {"smithy.api#enumValue" => "USER_PROVISIONED"}))
    DnsIps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "member")
    DriveCacheType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DriveCacheType.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    DurationSinceLastAccess.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: Unit, name: "Unit"))
    DurationSinceLastAccess.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value"))
    DurationSinceLastAccess.type = Types::DurationSinceLastAccess
    EventType.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    EventType.add_member(:changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGED", traits: {"smithy.api#enumValue" => "CHANGED"}))
    EventType.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    EventTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member")
    FileCache.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerId"))
    FileCache.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    FileCache.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId"))
    FileCache.add_member(:file_cache_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheType, name: "FileCacheType"))
    FileCache.add_member(:file_cache_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileCacheTypeVersion"))
    FileCache.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLifecycle, name: "Lifecycle"))
    FileCache.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheFailureDetails, name: "FailureDetails"))
    FileCache.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity"))
    FileCache.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    FileCache.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    FileCache.add_member(:network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceIds, name: "NetworkInterfaceIds"))
    FileCache.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    FileCache.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    FileCache.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    FileCache.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLustreConfiguration, name: "LustreConfiguration"))
    FileCache.add_member(:data_repository_association_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationIds, name: "DataRepositoryAssociationIds"))
    FileCache.type = Types::FileCache
    FileCacheCreating.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerId"))
    FileCacheCreating.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    FileCacheCreating.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId"))
    FileCacheCreating.add_member(:file_cache_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheType, name: "FileCacheType"))
    FileCacheCreating.add_member(:file_cache_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileCacheTypeVersion"))
    FileCacheCreating.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLifecycle, name: "Lifecycle"))
    FileCacheCreating.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheFailureDetails, name: "FailureDetails"))
    FileCacheCreating.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity"))
    FileCacheCreating.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    FileCacheCreating.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    FileCacheCreating.add_member(:network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceIds, name: "NetworkInterfaceIds"))
    FileCacheCreating.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    FileCacheCreating.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    FileCacheCreating.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    FileCacheCreating.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    FileCacheCreating.add_member(:copy_tags_to_data_repository_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTagsToDataRepositoryAssociations, name: "CopyTagsToDataRepositoryAssociations"))
    FileCacheCreating.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLustreConfiguration, name: "LustreConfiguration"))
    FileCacheCreating.add_member(:data_repository_association_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationIds, name: "DataRepositoryAssociationIds"))
    FileCacheCreating.type = Types::FileCacheCreating
    FileCacheDataRepositoryAssociation.add_member(:file_cache_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "FileCachePath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FileCacheDataRepositoryAssociation.add_member(:data_repository_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivePath, name: "DataRepositoryPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FileCacheDataRepositoryAssociation.add_member(:data_repository_subdirectories, ::Smithy::Schema::Shapes::MemberShape.new(target: SubDirectoriesPaths, name: "DataRepositorySubdirectories"))
    FileCacheDataRepositoryAssociation.add_member(:nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheNFSConfiguration, name: "NFS"))
    FileCacheDataRepositoryAssociation.type = Types::FileCacheDataRepositoryAssociation
    FileCacheFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileCacheFailureDetails.type = Types::FileCacheFailureDetails
    FileCacheIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "member")
    FileCacheLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    FileCacheLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FileCacheLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FileCacheLifecycle.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FileCacheLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FileCacheLustreConfiguration.add_member(:per_unit_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PerUnitStorageThroughput, name: "PerUnitStorageThroughput"))
    FileCacheLustreConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLustreDeploymentType, name: "DeploymentType"))
    FileCacheLustreConfiguration.add_member(:mount_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreFileSystemMountName, name: "MountName"))
    FileCacheLustreConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    FileCacheLustreConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheLustreMetadataConfiguration, name: "MetadataConfiguration"))
    FileCacheLustreConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreLogConfiguration, name: "LogConfiguration"))
    FileCacheLustreConfiguration.type = Types::FileCacheLustreConfiguration
    FileCacheLustreDeploymentType.add_member(:cache_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CACHE_1", traits: {"smithy.api#enumValue" => "CACHE_1"}))
    FileCacheLustreMetadataConfiguration.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataStorageCapacity, name: "StorageCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FileCacheLustreMetadataConfiguration.type = Types::FileCacheLustreMetadataConfiguration
    FileCacheNFSConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsVersion, name: "Version", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FileCacheNFSConfiguration.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDnsIps, name: "DnsIps"))
    FileCacheNFSConfiguration.type = Types::FileCacheNFSConfiguration
    FileCacheNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileCacheNotFound.type = Types::FileCacheNotFound
    FileCacheType.add_member(:lustre, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LUSTRE", traits: {"smithy.api#enumValue" => "LUSTRE"}))
    FileCaches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileCache, name: "member")
    FileSystem.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerId"))
    FileSystem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    FileSystem.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    FileSystem.add_member(:file_system_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemType, name: "FileSystemType"))
    FileSystem.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLifecycle, name: "Lifecycle"))
    FileSystem.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemFailureDetails, name: "FailureDetails"))
    FileSystem.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity"))
    FileSystem.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "StorageType"))
    FileSystem.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    FileSystem.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    FileSystem.add_member(:network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceIds, name: "NetworkInterfaceIds"))
    FileSystem.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    FileSystem.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    FileSystem.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    FileSystem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    FileSystem.add_member(:windows_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsFileSystemConfiguration, name: "WindowsConfiguration"))
    FileSystem.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreFileSystemConfiguration, name: "LustreConfiguration"))
    FileSystem.add_member(:administrative_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActions, name: "AdministrativeActions"))
    FileSystem.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapFileSystemConfiguration, name: "OntapConfiguration"))
    FileSystem.add_member(:file_system_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileSystemTypeVersion"))
    FileSystem.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSFileSystemConfiguration, name: "OpenZFSConfiguration"))
    FileSystem.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    FileSystem.type = Types::FileSystem
    FileSystemEndpoint.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    FileSystemEndpoint.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapEndpointIpAddresses, name: "IpAddresses"))
    FileSystemEndpoint.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapEndpointIpAddresses, name: "Ipv6Addresses"))
    FileSystemEndpoint.type = Types::FileSystemEndpoint
    FileSystemEndpoints.add_member(:intercluster, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemEndpoint, name: "Intercluster"))
    FileSystemEndpoints.add_member(:management, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemEndpoint, name: "Management"))
    FileSystemEndpoints.type = Types::FileSystemEndpoints
    FileSystemFailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileSystemFailureDetails.type = Types::FileSystemFailureDetails
    FileSystemIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "member")
    FileSystemLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    FileSystemLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FileSystemLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FileSystemLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FileSystemLifecycle.add_member(:misconfigured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURED", traits: {"smithy.api#enumValue" => "MISCONFIGURED"}))
    FileSystemLifecycle.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FileSystemLifecycle.add_member(:misconfigured_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURED_UNAVAILABLE", traits: {"smithy.api#enumValue" => "MISCONFIGURED_UNAVAILABLE"}))
    FileSystemLustreMetadataConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataIops, name: "Iops"))
    FileSystemLustreMetadataConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfigurationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FileSystemLustreMetadataConfiguration.type = Types::FileSystemLustreMetadataConfiguration
    FileSystemMaintenanceOperation.add_member(:patching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATCHING", traits: {"smithy.api#enumValue" => "PATCHING"}))
    FileSystemMaintenanceOperation.add_member(:backing_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKING_UP", traits: {"smithy.api#enumValue" => "BACKING_UP"}))
    FileSystemMaintenanceOperations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemMaintenanceOperation, name: "member")
    FileSystemNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileSystemNotFound.type = Types::FileSystemNotFound
    FileSystemSecondaryGIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemGID, name: "member")
    FileSystemType.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    FileSystemType.add_member(:lustre, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LUSTRE", traits: {"smithy.api#enumValue" => "LUSTRE"}))
    FileSystemType.add_member(:ontap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONTAP", traits: {"smithy.api#enumValue" => "ONTAP"}))
    FileSystemType.add_member(:openzfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENZFS", traits: {"smithy.api#enumValue" => "OPENZFS"}))
    FileSystems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "member")
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values"))
    Filter.type = Types::Filter
    FilterName.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ID", traits: {"smithy.api#enumValue" => "file-system-id"}))
    FilterName.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_TYPE", traits: {"smithy.api#enumValue" => "backup-type"}))
    FilterName.add_member(:file_system_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_TYPE", traits: {"smithy.api#enumValue" => "file-system-type"}))
    FilterName.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_ID", traits: {"smithy.api#enumValue" => "volume-id"}))
    FilterName.add_member(:data_repository_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_REPOSITORY_TYPE", traits: {"smithy.api#enumValue" => "data-repository-type"}))
    FilterName.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_CACHE_ID", traits: {"smithy.api#enumValue" => "file-cache-id"}))
    FilterName.add_member(:file_cache_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_CACHE_TYPE", traits: {"smithy.api#enumValue" => "file-cache-type"}))
    FilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member")
    Filters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    FlexCacheEndpointType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    FlexCacheEndpointType.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGIN", traits: {"smithy.api#enumValue" => "ORIGIN"}))
    FlexCacheEndpointType.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CACHE", traits: {"smithy.api#enumValue" => "CACHE"}))
    IncompatibleParameterError.add_member(:parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "Parameter", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncompatibleParameterError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IncompatibleParameterError.type = Types::IncompatibleParameterError
    IncompatibleRegionForMultiAZ.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IncompatibleRegionForMultiAZ.type = Types::IncompatibleRegionForMultiAZ
    InputOntapVolumeType.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    InputOntapVolumeType.add_member(:dp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DP", traits: {"smithy.api#enumValue" => "DP"}))
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerError.type = Types::InternalServerError
    InvalidAccessPoint.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    InvalidAccessPoint.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidAccessPoint.type = Types::InvalidAccessPoint
    InvalidDataRepositoryType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidDataRepositoryType.type = Types::InvalidDataRepositoryType
    InvalidDestinationKmsKey.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidDestinationKmsKey.type = Types::InvalidDestinationKmsKey
    InvalidExportPath.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidExportPath.type = Types::InvalidExportPath
    InvalidImportPath.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidImportPath.type = Types::InvalidImportPath
    InvalidNetworkSettings.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidNetworkSettings.add_member(:invalid_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "InvalidSubnetId"))
    InvalidNetworkSettings.add_member(:invalid_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "InvalidSecurityGroupId"))
    InvalidNetworkSettings.add_member(:invalid_route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableId, name: "InvalidRouteTableId"))
    InvalidNetworkSettings.type = Types::InvalidNetworkSettings
    InvalidPerUnitStorageThroughput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidPerUnitStorageThroughput.type = Types::InvalidPerUnitStorageThroughput
    InvalidRegion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRegion.type = Types::InvalidRegion
    InvalidRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    InvalidRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequest.type = Types::InvalidRequest
    InvalidSourceKmsKey.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidSourceKmsKey.type = Types::InvalidSourceKmsKey
    LifecycleTransitionReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LifecycleTransitionReason.type = Types::LifecycleTransitionReason
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LustreAccessAuditLogLevel.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LustreAccessAuditLogLevel.add_member(:warn_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN_ONLY", traits: {"smithy.api#enumValue" => "WARN_ONLY"}))
    LustreAccessAuditLogLevel.add_member(:error_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ONLY", traits: {"smithy.api#enumValue" => "ERROR_ONLY"}))
    LustreAccessAuditLogLevel.add_member(:warn_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN_ERROR", traits: {"smithy.api#enumValue" => "WARN_ERROR"}))
    LustreDeploymentType.add_member(:scratch_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRATCH_1", traits: {"smithy.api#enumValue" => "SCRATCH_1"}))
    LustreDeploymentType.add_member(:scratch_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRATCH_2", traits: {"smithy.api#enumValue" => "SCRATCH_2"}))
    LustreDeploymentType.add_member(:persistent_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSISTENT_1", traits: {"smithy.api#enumValue" => "PERSISTENT_1"}))
    LustreDeploymentType.add_member(:persistent_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSISTENT_2", traits: {"smithy.api#enumValue" => "PERSISTENT_2"}))
    LustreFileSystemConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    LustreFileSystemConfiguration.add_member(:data_repository_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryConfiguration, name: "DataRepositoryConfiguration"))
    LustreFileSystemConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreDeploymentType, name: "DeploymentType"))
    LustreFileSystemConfiguration.add_member(:per_unit_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PerUnitStorageThroughput, name: "PerUnitStorageThroughput"))
    LustreFileSystemConfiguration.add_member(:mount_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreFileSystemMountName, name: "MountName"))
    LustreFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    LustreFileSystemConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    LustreFileSystemConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    LustreFileSystemConfiguration.add_member(:drive_cache_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DriveCacheType, name: "DriveCacheType"))
    LustreFileSystemConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCompressionType, name: "DataCompressionType"))
    LustreFileSystemConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreLogConfiguration, name: "LogConfiguration"))
    LustreFileSystemConfiguration.add_member(:root_squash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreRootSquashConfiguration, name: "RootSquashConfiguration"))
    LustreFileSystemConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLustreMetadataConfiguration, name: "MetadataConfiguration"))
    LustreFileSystemConfiguration.add_member(:efa_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "EfaEnabled"))
    LustreFileSystemConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputCapacityMbps, name: "ThroughputCapacity"))
    LustreFileSystemConfiguration.add_member(:data_read_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreReadCacheConfiguration, name: "DataReadCacheConfiguration"))
    LustreFileSystemConfiguration.type = Types::LustreFileSystemConfiguration
    LustreLogConfiguration.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreAccessAuditLogLevel, name: "Level", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LustreLogConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralARN, name: "Destination"))
    LustreLogConfiguration.type = Types::LustreLogConfiguration
    LustreLogCreateConfiguration.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreAccessAuditLogLevel, name: "Level", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LustreLogCreateConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralARN, name: "Destination"))
    LustreLogCreateConfiguration.type = Types::LustreLogCreateConfiguration
    LustreNoSquashNids.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LustreNoSquashNid, name: "member")
    LustreReadCacheConfiguration.add_member(:sizing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreReadCacheSizingMode, name: "SizingMode"))
    LustreReadCacheConfiguration.add_member(:size_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "SizeGiB"))
    LustreReadCacheConfiguration.type = Types::LustreReadCacheConfiguration
    LustreReadCacheSizingMode.add_member(:no_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_CACHE", traits: {"smithy.api#enumValue" => "NO_CACHE"}))
    LustreReadCacheSizingMode.add_member(:user_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PROVISIONED", traits: {"smithy.api#enumValue" => "USER_PROVISIONED"}))
    LustreReadCacheSizingMode.add_member(:proportional_to_throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPORTIONAL_TO_THROUGHPUT_CAPACITY", traits: {"smithy.api#enumValue" => "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"}))
    LustreRootSquashConfiguration.add_member(:root_squash, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreRootSquash, name: "RootSquash"))
    LustreRootSquashConfiguration.add_member(:no_squash_nids, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreNoSquashNids, name: "NoSquashNids"))
    LustreRootSquashConfiguration.type = Types::LustreRootSquashConfiguration
    MetadataConfigurationMode.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    MetadataConfigurationMode.add_member(:user_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PROVISIONED", traits: {"smithy.api#enumValue" => "USER_PROVISIONED"}))
    MissingFileCacheConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MissingFileCacheConfiguration.type = Types::MissingFileCacheConfiguration
    MissingFileSystemConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MissingFileSystemConfiguration.type = Types::MissingFileSystemConfiguration
    MissingVolumeConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MissingVolumeConfiguration.type = Types::MissingVolumeConfiguration
    NFSDataRepositoryConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsVersion, name: "Version", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NFSDataRepositoryConfiguration.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDnsIps, name: "DnsIps"))
    NFSDataRepositoryConfiguration.add_member(:auto_export_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoExportPolicy, name: "AutoExportPolicy"))
    NFSDataRepositoryConfiguration.type = Types::NFSDataRepositoryConfiguration
    NetworkInterfaceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "member")
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL", traits: {"smithy.api#enumValue" => "DUAL"}))
    NfsVersion.add_member(:nfs3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS3", traits: {"smithy.api#enumValue" => "NFS3"}))
    NotServiceResourceError.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NotServiceResourceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotServiceResourceError.type = Types::NotServiceResourceError
    OntapDeploymentType.add_member(:multi_az_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_AZ_1", traits: {"smithy.api#enumValue" => "MULTI_AZ_1"}))
    OntapDeploymentType.add_member(:single_az_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_1", traits: {"smithy.api#enumValue" => "SINGLE_AZ_1"}))
    OntapDeploymentType.add_member(:single_az_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_2", traits: {"smithy.api#enumValue" => "SINGLE_AZ_2"}))
    OntapDeploymentType.add_member(:multi_az_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_AZ_2", traits: {"smithy.api#enumValue" => "MULTI_AZ_2"}))
    OntapEndpointIpAddresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "member")
    OntapFileSystemConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    OntapFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    OntapFileSystemConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapDeploymentType, name: "DeploymentType"))
    OntapFileSystemConfiguration.add_member(:endpoint_ip_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressRange, name: "EndpointIpAddressRange"))
    OntapFileSystemConfiguration.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemEndpoints, name: "Endpoints"))
    OntapFileSystemConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    OntapFileSystemConfiguration.add_member(:preferred_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "PreferredSubnetId"))
    OntapFileSystemConfiguration.add_member(:route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "RouteTableIds"))
    OntapFileSystemConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    OntapFileSystemConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    OntapFileSystemConfiguration.add_member(:fsx_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPassword, name: "FsxAdminPassword"))
    OntapFileSystemConfiguration.add_member(:ha_pairs, ::Smithy::Schema::Shapes::MemberShape.new(target: HAPairs, name: "HAPairs"))
    OntapFileSystemConfiguration.add_member(:throughput_capacity_per_ha_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputCapacityPerHAPair, name: "ThroughputCapacityPerHAPair"))
    OntapFileSystemConfiguration.add_member(:endpoint_ipv6_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressRange, name: "EndpointIpv6AddressRange"))
    OntapFileSystemConfiguration.type = Types::OntapFileSystemConfiguration
    OntapVolumeConfiguration.add_member(:flex_cache_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlexCacheEndpointType, name: "FlexCacheEndpointType"))
    OntapVolumeConfiguration.add_member(:junction_path, ::Smithy::Schema::Shapes::MemberShape.new(target: JunctionPath, name: "JunctionPath"))
    OntapVolumeConfiguration.add_member(:security_style, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityStyle, name: "SecurityStyle"))
    OntapVolumeConfiguration.add_member(:size_in_megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeCapacity, name: "SizeInMegabytes"))
    OntapVolumeConfiguration.add_member(:storage_efficiency_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "StorageEfficiencyEnabled"))
    OntapVolumeConfiguration.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "StorageVirtualMachineId"))
    OntapVolumeConfiguration.add_member(:storage_virtual_machine_root, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "StorageVirtualMachineRoot"))
    OntapVolumeConfiguration.add_member(:tiering_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringPolicy, name: "TieringPolicy"))
    OntapVolumeConfiguration.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "UUID"))
    OntapVolumeConfiguration.add_member(:ontap_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapVolumeType, name: "OntapVolumeType"))
    OntapVolumeConfiguration.add_member(:snapshot_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotPolicy, name: "SnapshotPolicy"))
    OntapVolumeConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    OntapVolumeConfiguration.add_member(:snaplock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnaplockConfiguration, name: "SnaplockConfiguration"))
    OntapVolumeConfiguration.add_member(:volume_style, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStyle, name: "VolumeStyle"))
    OntapVolumeConfiguration.add_member(:aggregate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConfiguration, name: "AggregateConfiguration"))
    OntapVolumeConfiguration.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeCapacityBytes, name: "SizeInBytes"))
    OntapVolumeConfiguration.type = Types::OntapVolumeConfiguration
    OntapVolumeType.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    OntapVolumeType.add_member(:dp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DP", traits: {"smithy.api#enumValue" => "DP"}))
    OntapVolumeType.add_member(:ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LS", traits: {"smithy.api#enumValue" => "LS"}))
    OpenZFSClientConfiguration.add_member(:clients, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSClients, name: "Clients", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSClientConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExportOptions, name: "Options", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSClientConfiguration.type = Types::OpenZFSClientConfiguration
    OpenZFSClientConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSClientConfiguration, name: "member")
    OpenZFSCopyStrategy.add_member(:clone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLONE", traits: {"smithy.api#enumValue" => "CLONE"}))
    OpenZFSCopyStrategy.add_member(:full_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_COPY", traits: {"smithy.api#enumValue" => "FULL_COPY"}))
    OpenZFSCopyStrategy.add_member(:incremental_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL_COPY", traits: {"smithy.api#enumValue" => "INCREMENTAL_COPY"}))
    OpenZFSCreateRootVolumeConfiguration.add_member(:record_size_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRecordSizeKiB, name: "RecordSizeKiB"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSDataCompressionType, name: "DataCompressionType"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:nfs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExports, name: "NfsExports"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:user_and_group_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSUserAndGroupQuotas, name: "UserAndGroupQuotas"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:copy_tags_to_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToSnapshots"))
    OpenZFSCreateRootVolumeConfiguration.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadOnly, name: "ReadOnly"))
    OpenZFSCreateRootVolumeConfiguration.type = Types::OpenZFSCreateRootVolumeConfiguration
    OpenZFSDataCompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    OpenZFSDataCompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    OpenZFSDataCompressionType.add_member(:lz4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LZ4", traits: {"smithy.api#enumValue" => "LZ4"}))
    OpenZFSDeploymentType.add_member(:single_az_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_1", traits: {"smithy.api#enumValue" => "SINGLE_AZ_1"}))
    OpenZFSDeploymentType.add_member(:single_az_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_2", traits: {"smithy.api#enumValue" => "SINGLE_AZ_2"}))
    OpenZFSDeploymentType.add_member(:single_az_ha_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_HA_1", traits: {"smithy.api#enumValue" => "SINGLE_AZ_HA_1"}))
    OpenZFSDeploymentType.add_member(:single_az_ha_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_HA_2", traits: {"smithy.api#enumValue" => "SINGLE_AZ_HA_2"}))
    OpenZFSDeploymentType.add_member(:multi_az_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_AZ_1", traits: {"smithy.api#enumValue" => "MULTI_AZ_1"}))
    OpenZFSFileSystemConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    OpenZFSFileSystemConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    OpenZFSFileSystemConfiguration.add_member(:copy_tags_to_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToVolumes"))
    OpenZFSFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    OpenZFSFileSystemConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSDeploymentType, name: "DeploymentType"))
    OpenZFSFileSystemConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    OpenZFSFileSystemConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    OpenZFSFileSystemConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    OpenZFSFileSystemConfiguration.add_member(:root_volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "RootVolumeId"))
    OpenZFSFileSystemConfiguration.add_member(:preferred_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "PreferredSubnetId"))
    OpenZFSFileSystemConfiguration.add_member(:endpoint_ip_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressRange, name: "EndpointIpAddressRange"))
    OpenZFSFileSystemConfiguration.add_member(:endpoint_ipv6_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressRange, name: "EndpointIpv6AddressRange"))
    OpenZFSFileSystemConfiguration.add_member(:route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "RouteTableIds"))
    OpenZFSFileSystemConfiguration.add_member(:endpoint_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "EndpointIpAddress"))
    OpenZFSFileSystemConfiguration.add_member(:endpoint_ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "EndpointIpv6Address"))
    OpenZFSFileSystemConfiguration.add_member(:read_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSReadCacheConfiguration, name: "ReadCacheConfiguration"))
    OpenZFSFileSystemConfiguration.type = Types::OpenZFSFileSystemConfiguration
    OpenZFSFileSystemIdentity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSFileSystemUserType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSFileSystemIdentity.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSPosixFileSystemUser, name: "PosixUser"))
    OpenZFSFileSystemIdentity.type = Types::OpenZFSFileSystemIdentity
    OpenZFSFileSystemUserType.add_member(:posix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSIX", traits: {"smithy.api#enumValue" => "POSIX"}))
    OpenZFSNfsExport.add_member(:client_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSClientConfigurations, name: "ClientConfigurations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSNfsExport.type = Types::OpenZFSNfsExport
    OpenZFSNfsExportOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExportOption, name: "member")
    OpenZFSNfsExports.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExport, name: "member")
    OpenZFSOriginSnapshotConfiguration.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "SnapshotARN"))
    OpenZFSOriginSnapshotConfiguration.add_member(:copy_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSCopyStrategy, name: "CopyStrategy"))
    OpenZFSOriginSnapshotConfiguration.type = Types::OpenZFSOriginSnapshotConfiguration
    OpenZFSPosixFileSystemUser.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemUID, name: "Uid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSPosixFileSystemUser.add_member(:gid, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemGID, name: "Gid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSPosixFileSystemUser.add_member(:secondary_gids, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemSecondaryGIDs, name: "SecondaryGids"))
    OpenZFSPosixFileSystemUser.type = Types::OpenZFSPosixFileSystemUser
    OpenZFSQuotaType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    OpenZFSQuotaType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    OpenZFSReadCacheConfiguration.add_member(:sizing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSReadCacheSizingMode, name: "SizingMode"))
    OpenZFSReadCacheConfiguration.add_member(:size_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "SizeGiB"))
    OpenZFSReadCacheConfiguration.type = Types::OpenZFSReadCacheConfiguration
    OpenZFSReadCacheSizingMode.add_member(:no_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_CACHE", traits: {"smithy.api#enumValue" => "NO_CACHE"}))
    OpenZFSReadCacheSizingMode.add_member(:user_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PROVISIONED", traits: {"smithy.api#enumValue" => "USER_PROVISIONED"}))
    OpenZFSReadCacheSizingMode.add_member(:proportional_to_throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPORTIONAL_TO_THROUGHPUT_CAPACITY", traits: {"smithy.api#enumValue" => "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"}))
    OpenZFSUserAndGroupQuotas.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSUserOrGroupQuota, name: "member")
    OpenZFSUserOrGroupQuota.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSQuotaType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSUserOrGroupQuota.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMax, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSUserOrGroupQuota.add_member(:storage_capacity_quota_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMax, name: "StorageCapacityQuotaGiB", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OpenZFSUserOrGroupQuota.type = Types::OpenZFSUserOrGroupQuota
    OpenZFSVolumeConfiguration.add_member(:parent_volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "ParentVolumeId"))
    OpenZFSVolumeConfiguration.add_member(:volume_path, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumePath, name: "VolumePath"))
    OpenZFSVolumeConfiguration.add_member(:storage_capacity_reservation_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMax, name: "StorageCapacityReservationGiB"))
    OpenZFSVolumeConfiguration.add_member(:storage_capacity_quota_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMax, name: "StorageCapacityQuotaGiB"))
    OpenZFSVolumeConfiguration.add_member(:record_size_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRecordSizeKiB, name: "RecordSizeKiB"))
    OpenZFSVolumeConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSDataCompressionType, name: "DataCompressionType"))
    OpenZFSVolumeConfiguration.add_member(:copy_tags_to_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToSnapshots"))
    OpenZFSVolumeConfiguration.add_member(:origin_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSOriginSnapshotConfiguration, name: "OriginSnapshot"))
    OpenZFSVolumeConfiguration.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadOnly, name: "ReadOnly"))
    OpenZFSVolumeConfiguration.add_member(:nfs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExports, name: "NfsExports"))
    OpenZFSVolumeConfiguration.add_member(:user_and_group_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSUserAndGroupQuotas, name: "UserAndGroupQuotas"))
    OpenZFSVolumeConfiguration.add_member(:restore_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "RestoreToSnapshot"))
    OpenZFSVolumeConfiguration.add_member(:delete_intermediate_snaphots, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "DeleteIntermediateSnaphots"))
    OpenZFSVolumeConfiguration.add_member(:delete_cloned_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "DeleteClonedVolumes"))
    OpenZFSVolumeConfiguration.add_member(:delete_intermediate_data, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "DeleteIntermediateData"))
    OpenZFSVolumeConfiguration.add_member(:source_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "SourceSnapshotARN"))
    OpenZFSVolumeConfiguration.add_member(:destination_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "DestinationSnapshot"))
    OpenZFSVolumeConfiguration.add_member(:copy_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSCopyStrategy, name: "CopyStrategy"))
    OpenZFSVolumeConfiguration.type = Types::OpenZFSVolumeConfiguration
    PrivilegedDelete.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PrivilegedDelete.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PrivilegedDelete.add_member(:permanently_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMANENTLY_DISABLED", traits: {"smithy.api#enumValue" => "PERMANENTLY_DISABLED"}))
    ReleaseConfiguration.add_member(:duration_since_last_access, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSinceLastAccess, name: "DurationSinceLastAccess"))
    ReleaseConfiguration.type = Types::ReleaseConfiguration
    ReleaseFileSystemNfsV3LocksRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ReleaseFileSystemNfsV3LocksRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ReleaseFileSystemNfsV3LocksRequest.type = Types::ReleaseFileSystemNfsV3LocksRequest
    ReleaseFileSystemNfsV3LocksResponse.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "FileSystem"))
    ReleaseFileSystemNfsV3LocksResponse.type = Types::ReleaseFileSystemNfsV3LocksResponse
    ReportFormat.add_member(:report_csv_20191124, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPORT_CSV_20191124", traits: {"smithy.api#enumValue" => "REPORT_CSV_20191124"}))
    ReportScope.add_member(:failed_files_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_FILES_ONLY", traits: {"smithy.api#enumValue" => "FAILED_FILES_ONLY"}))
    RepositoryDnsIps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "member")
    ResourceDoesNotSupportTagging.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceDoesNotSupportTagging.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceDoesNotSupportTagging.type = Types::ResourceDoesNotSupportTagging
    ResourceNotFound.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResourceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFound.type = Types::ResourceNotFound
    ResourceType.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM", traits: {"smithy.api#enumValue" => "FILE_SYSTEM"}))
    ResourceType.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    RestoreOpenZFSVolumeOption.add_member(:delete_intermediate_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_INTERMEDIATE_SNAPSHOTS", traits: {"smithy.api#enumValue" => "DELETE_INTERMEDIATE_SNAPSHOTS"}))
    RestoreOpenZFSVolumeOption.add_member(:delete_cloned_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_CLONED_VOLUMES", traits: {"smithy.api#enumValue" => "DELETE_CLONED_VOLUMES"}))
    RestoreOpenZFSVolumeOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreOpenZFSVolumeOption, name: "member")
    RestoreVolumeFromSnapshotRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RestoreVolumeFromSnapshotRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreVolumeFromSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreVolumeFromSnapshotRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreOpenZFSVolumeOptions, name: "Options"))
    RestoreVolumeFromSnapshotRequest.type = Types::RestoreVolumeFromSnapshotRequest
    RestoreVolumeFromSnapshotResponse.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    RestoreVolumeFromSnapshotResponse.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeLifecycle, name: "Lifecycle"))
    RestoreVolumeFromSnapshotResponse.add_member(:administrative_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActions, name: "AdministrativeActions"))
    RestoreVolumeFromSnapshotResponse.type = Types::RestoreVolumeFromSnapshotResponse
    RetentionPeriod.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RetentionPeriod.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodValue, name: "Value"))
    RetentionPeriod.type = Types::RetentionPeriod
    RetentionPeriodType.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "SECONDS"}))
    RetentionPeriodType.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "MINUTES"}))
    RetentionPeriodType.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    RetentionPeriodType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    RetentionPeriodType.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    RetentionPeriodType.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))
    RetentionPeriodType.add_member(:infinite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFINITE", traits: {"smithy.api#enumValue" => "INFINITE"}))
    RetentionPeriodType.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSPECIFIED", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    RouteTableIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableId, name: "member")
    S3AccessPoint.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralARN, name: "ResourceARN"))
    S3AccessPoint.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAlias, name: "Alias"))
    S3AccessPoint.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointVpcConfiguration, name: "VpcConfiguration"))
    S3AccessPoint.type = Types::S3AccessPoint
    S3AccessPointAttachment.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentLifecycle, name: "Lifecycle"))
    S3AccessPointAttachment.add_member(:lifecycle_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransitionReason, name: "LifecycleTransitionReason"))
    S3AccessPointAttachment.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    S3AccessPointAttachment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentName, name: "Name"))
    S3AccessPointAttachment.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentType, name: "Type"))
    S3AccessPointAttachment.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    S3AccessPointAttachment.add_member(:s3_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPoint, name: "S3AccessPoint"))
    S3AccessPointAttachment.type = Types::S3AccessPointAttachment
    S3AccessPointAttachmentLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    S3AccessPointAttachmentLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    S3AccessPointAttachmentLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    S3AccessPointAttachmentLifecycle.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    S3AccessPointAttachmentLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    S3AccessPointAttachmentNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentName, name: "member")
    S3AccessPointAttachmentNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    S3AccessPointAttachmentNotFound.type = Types::S3AccessPointAttachmentNotFound
    S3AccessPointAttachmentType.add_member(:openzfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENZFS", traits: {"smithy.api#enumValue" => "OPENZFS"}))
    S3AccessPointAttachments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachment, name: "member")
    S3AccessPointAttachmentsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentsFilterName, name: "Name"))
    S3AccessPointAttachmentsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentsFilterValues, name: "Values"))
    S3AccessPointAttachmentsFilter.type = Types::S3AccessPointAttachmentsFilter
    S3AccessPointAttachmentsFilterName.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ID", traits: {"smithy.api#enumValue" => "file-system-id"}))
    S3AccessPointAttachmentsFilterName.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_ID", traits: {"smithy.api#enumValue" => "volume-id"}))
    S3AccessPointAttachmentsFilterName.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE", traits: {"smithy.api#enumValue" => "type"}))
    S3AccessPointAttachmentsFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentsFilterValue, name: "member")
    S3AccessPointAttachmentsFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointAttachmentsFilter, name: "member")
    S3AccessPointOpenZFSConfiguration.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    S3AccessPointOpenZFSConfiguration.add_member(:file_system_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSFileSystemIdentity, name: "FileSystemIdentity"))
    S3AccessPointOpenZFSConfiguration.type = Types::S3AccessPointOpenZFSConfiguration
    S3AccessPointVpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    S3AccessPointVpcConfiguration.type = Types::S3AccessPointVpcConfiguration
    S3DataRepositoryConfiguration.add_member(:auto_import_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoImportPolicy, name: "AutoImportPolicy"))
    S3DataRepositoryConfiguration.add_member(:auto_export_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoExportPolicy, name: "AutoExportPolicy"))
    S3DataRepositoryConfiguration.type = Types::S3DataRepositoryConfiguration
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member")
    SecurityStyle.add_member(:unix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIX", traits: {"smithy.api#enumValue" => "UNIX"}))
    SecurityStyle.add_member(:ntfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NTFS", traits: {"smithy.api#enumValue" => "NTFS"}))
    SecurityStyle.add_member(:mixed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIXED", traits: {"smithy.api#enumValue" => "MIXED"}))
    SelfManagedActiveDirectoryAttributes.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryFullyQualifiedName, name: "DomainName"))
    SelfManagedActiveDirectoryAttributes.add_member(:organizational_unit_distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedName, name: "OrganizationalUnitDistinguishedName"))
    SelfManagedActiveDirectoryAttributes.add_member(:file_system_administrators_group, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAdministratorsGroupName, name: "FileSystemAdministratorsGroup"))
    SelfManagedActiveDirectoryAttributes.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryUserName, name: "UserName"))
    SelfManagedActiveDirectoryAttributes.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIps, name: "DnsIps"))
    SelfManagedActiveDirectoryAttributes.type = Types::SelfManagedActiveDirectoryAttributes
    SelfManagedActiveDirectoryConfiguration.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryFullyQualifiedName, name: "DomainName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SelfManagedActiveDirectoryConfiguration.add_member(:organizational_unit_distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedName, name: "OrganizationalUnitDistinguishedName"))
    SelfManagedActiveDirectoryConfiguration.add_member(:file_system_administrators_group, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAdministratorsGroupName, name: "FileSystemAdministratorsGroup"))
    SelfManagedActiveDirectoryConfiguration.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryUserName, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SelfManagedActiveDirectoryConfiguration.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryPassword, name: "Password", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SelfManagedActiveDirectoryConfiguration.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIps, name: "DnsIps", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SelfManagedActiveDirectoryConfiguration.type = Types::SelfManagedActiveDirectoryConfiguration
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryUserName, name: "UserName"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryPassword, name: "Password"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIps, name: "DnsIps"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryFullyQualifiedName, name: "DomainName"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:organizational_unit_distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedName, name: "OrganizationalUnitDistinguishedName"))
    SelfManagedActiveDirectoryConfigurationUpdates.add_member(:file_system_administrators_group, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAdministratorsGroupName, name: "FileSystemAdministratorsGroup"))
    SelfManagedActiveDirectoryConfigurationUpdates.type = Types::SelfManagedActiveDirectoryConfigurationUpdates
    ServiceLimit.add_member(:file_system_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_COUNT", traits: {"smithy.api#enumValue" => "FILE_SYSTEM_COUNT"}))
    ServiceLimit.add_member(:total_throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_THROUGHPUT_CAPACITY", traits: {"smithy.api#enumValue" => "TOTAL_THROUGHPUT_CAPACITY"}))
    ServiceLimit.add_member(:total_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_STORAGE", traits: {"smithy.api#enumValue" => "TOTAL_STORAGE"}))
    ServiceLimit.add_member(:total_user_initiated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_USER_INITIATED_BACKUPS", traits: {"smithy.api#enumValue" => "TOTAL_USER_INITIATED_BACKUPS"}))
    ServiceLimit.add_member(:total_user_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_USER_TAGS", traits: {"smithy.api#enumValue" => "TOTAL_USER_TAGS"}))
    ServiceLimit.add_member(:total_in_progress_copy_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_IN_PROGRESS_COPY_BACKUPS", traits: {"smithy.api#enumValue" => "TOTAL_IN_PROGRESS_COPY_BACKUPS"}))
    ServiceLimit.add_member(:storage_virtual_machines_per_file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM", traits: {"smithy.api#enumValue" => "STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM"}))
    ServiceLimit.add_member(:volumes_per_file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUMES_PER_FILE_SYSTEM", traits: {"smithy.api#enumValue" => "VOLUMES_PER_FILE_SYSTEM"}))
    ServiceLimit.add_member(:total_ssd_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SSD_IOPS", traits: {"smithy.api#enumValue" => "TOTAL_SSD_IOPS"}))
    ServiceLimit.add_member(:file_cache_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_CACHE_COUNT", traits: {"smithy.api#enumValue" => "FILE_CACHE_COUNT"}))
    ServiceLimitExceeded.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLimit, name: "Limit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceLimitExceeded.type = Types::ServiceLimitExceeded
    SnaplockConfiguration.add_member(:audit_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "AuditLogVolume"))
    SnaplockConfiguration.add_member(:autocommit_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocommitPeriod, name: "AutocommitPeriod"))
    SnaplockConfiguration.add_member(:privileged_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivilegedDelete, name: "PrivilegedDelete"))
    SnaplockConfiguration.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SnaplockRetentionPeriod, name: "RetentionPeriod"))
    SnaplockConfiguration.add_member(:snaplock_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnaplockType, name: "SnaplockType"))
    SnaplockConfiguration.add_member(:volume_append_mode_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "VolumeAppendModeEnabled"))
    SnaplockConfiguration.type = Types::SnaplockConfiguration
    SnaplockRetentionPeriod.add_member(:default_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "DefaultRetention", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SnaplockRetentionPeriod.add_member(:minimum_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "MinimumRetention", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SnaplockRetentionPeriod.add_member(:maximum_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "MaximumRetention", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SnaplockRetentionPeriod.type = Types::SnaplockRetentionPeriod
    SnaplockType.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    SnaplockType.add_member(:enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE", traits: {"smithy.api#enumValue" => "ENTERPRISE"}))
    Snapshot.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    Snapshot.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    Snapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "Name"))
    Snapshot.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    Snapshot.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    Snapshot.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotLifecycle, name: "Lifecycle"))
    Snapshot.add_member(:lifecycle_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransitionReason, name: "LifecycleTransitionReason"))
    Snapshot.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    Snapshot.add_member(:administrative_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActions, name: "AdministrativeActions"))
    Snapshot.type = Types::Snapshot
    SnapshotFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotFilterName, name: "Name"))
    SnapshotFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotFilterValues, name: "Values"))
    SnapshotFilter.type = Types::SnapshotFilter
    SnapshotFilterName.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ID", traits: {"smithy.api#enumValue" => "file-system-id"}))
    SnapshotFilterName.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_ID", traits: {"smithy.api#enumValue" => "volume-id"}))
    SnapshotFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotFilterValue, name: "member")
    SnapshotFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotFilter, name: "member")
    SnapshotIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "member")
    SnapshotLifecycle.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    SnapshotLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    SnapshotLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    SnapshotLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SnapshotNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SnapshotNotFound.type = Types::SnapshotNotFound
    Snapshots.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "member")
    SourceBackupUnavailable.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SourceBackupUnavailable.add_member(:backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupId, name: "BackupId"))
    SourceBackupUnavailable.type = Types::SourceBackupUnavailable
    StartMisconfiguredStateRecoveryRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartMisconfiguredStateRecoveryRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMisconfiguredStateRecoveryRequest.type = Types::StartMisconfiguredStateRecoveryRequest
    StartMisconfiguredStateRecoveryResponse.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "FileSystem"))
    StartMisconfiguredStateRecoveryResponse.type = Types::StartMisconfiguredStateRecoveryResponse
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    Status.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    Status.add_member(:updated_optimizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_OPTIMIZING", traits: {"smithy.api#enumValue" => "UPDATED_OPTIMIZING"}))
    Status.add_member(:optimizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZING", traits: {"smithy.api#enumValue" => "OPTIMIZING"}))
    Status.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    Status.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StorageType.add_member(:ssd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSD", traits: {"smithy.api#enumValue" => "SSD"}))
    StorageType.add_member(:hdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HDD", traits: {"smithy.api#enumValue" => "HDD"}))
    StorageType.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    StorageVirtualMachine.add_member(:active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SvmActiveDirectoryConfiguration, name: "ActiveDirectoryConfiguration"))
    StorageVirtualMachine.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    StorageVirtualMachine.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: SvmEndpoints, name: "Endpoints"))
    StorageVirtualMachine.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    StorageVirtualMachine.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineLifecycle, name: "Lifecycle"))
    StorageVirtualMachine.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineName, name: "Name"))
    StorageVirtualMachine.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    StorageVirtualMachine.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "StorageVirtualMachineId"))
    StorageVirtualMachine.add_member(:subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineSubtype, name: "Subtype"))
    StorageVirtualMachine.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "UUID"))
    StorageVirtualMachine.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    StorageVirtualMachine.add_member(:lifecycle_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransitionReason, name: "LifecycleTransitionReason"))
    StorageVirtualMachine.add_member(:root_volume_security_style, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineRootVolumeSecurityStyle, name: "RootVolumeSecurityStyle"))
    StorageVirtualMachine.type = Types::StorageVirtualMachine
    StorageVirtualMachineFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineFilterName, name: "Name"))
    StorageVirtualMachineFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineFilterValues, name: "Values"))
    StorageVirtualMachineFilter.type = Types::StorageVirtualMachineFilter
    StorageVirtualMachineFilterName.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ID", traits: {"smithy.api#enumValue" => "file-system-id"}))
    StorageVirtualMachineFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineFilterValue, name: "member")
    StorageVirtualMachineFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineFilter, name: "member")
    StorageVirtualMachineIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "member")
    StorageVirtualMachineLifecycle.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    StorageVirtualMachineLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    StorageVirtualMachineLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StorageVirtualMachineLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StorageVirtualMachineLifecycle.add_member(:misconfigured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURED", traits: {"smithy.api#enumValue" => "MISCONFIGURED"}))
    StorageVirtualMachineLifecycle.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    StorageVirtualMachineNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    StorageVirtualMachineNotFound.type = Types::StorageVirtualMachineNotFound
    StorageVirtualMachineRootVolumeSecurityStyle.add_member(:unix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIX", traits: {"smithy.api#enumValue" => "UNIX"}))
    StorageVirtualMachineRootVolumeSecurityStyle.add_member(:ntfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NTFS", traits: {"smithy.api#enumValue" => "NTFS"}))
    StorageVirtualMachineRootVolumeSecurityStyle.add_member(:mixed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIXED", traits: {"smithy.api#enumValue" => "MIXED"}))
    StorageVirtualMachineSubtype.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    StorageVirtualMachineSubtype.add_member(:dp_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DP_DESTINATION", traits: {"smithy.api#enumValue" => "DP_DESTINATION"}))
    StorageVirtualMachineSubtype.add_member(:sync_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC_DESTINATION", traits: {"smithy.api#enumValue" => "SYNC_DESTINATION"}))
    StorageVirtualMachineSubtype.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC_SOURCE", traits: {"smithy.api#enumValue" => "SYNC_SOURCE"}))
    StorageVirtualMachines.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachine, name: "member")
    SubDirectoriesPaths.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "member")
    SubnetIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member")
    SvmActiveDirectoryConfiguration.add_member(:net_bios_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetBiosAlias, name: "NetBiosName"))
    SvmActiveDirectoryConfiguration.add_member(:self_managed_active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedActiveDirectoryAttributes, name: "SelfManagedActiveDirectoryConfiguration"))
    SvmActiveDirectoryConfiguration.type = Types::SvmActiveDirectoryConfiguration
    SvmEndpoint.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    SvmEndpoint.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapEndpointIpAddresses, name: "IpAddresses"))
    SvmEndpoint.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapEndpointIpAddresses, name: "Ipv6Addresses"))
    SvmEndpoint.type = Types::SvmEndpoint
    SvmEndpoints.add_member(:iscsi, ::Smithy::Schema::Shapes::MemberShape.new(target: SvmEndpoint, name: "Iscsi"))
    SvmEndpoints.add_member(:management, ::Smithy::Schema::Shapes::MemberShape.new(target: SvmEndpoint, name: "Management"))
    SvmEndpoints.add_member(:nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: SvmEndpoint, name: "Nfs"))
    SvmEndpoints.add_member(:smb, ::Smithy::Schema::Shapes::MemberShape.new(target: SvmEndpoint, name: "Smb"))
    SvmEndpoints.type = Types::SvmEndpoints
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TaskIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "member")
    TieringPolicy.add_member(:cooling_period, ::Smithy::Schema::Shapes::MemberShape.new(target: CoolingPeriod, name: "CoolingPeriod"))
    TieringPolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringPolicyName, name: "Name"))
    TieringPolicy.type = Types::TieringPolicy
    TieringPolicyName.add_member(:snapshot_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT_ONLY", traits: {"smithy.api#enumValue" => "SNAPSHOT_ONLY"}))
    TieringPolicyName.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    TieringPolicyName.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TieringPolicyName.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TooManyAccessPoints.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    TooManyAccessPoints.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TooManyAccessPoints.type = Types::TooManyAccessPoints
    Unit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    UnsupportedOperation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedOperation.type = Types::UnsupportedOperation
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataRepositoryAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociationId, name: "AssociationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateDataRepositoryAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateDataRepositoryAssociationRequest.add_member(:imported_file_chunk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Megabytes, name: "ImportedFileChunkSize"))
    UpdateDataRepositoryAssociationRequest.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataRepositoryConfiguration, name: "S3"))
    UpdateDataRepositoryAssociationRequest.type = Types::UpdateDataRepositoryAssociationRequest
    UpdateDataRepositoryAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRepositoryAssociation, name: "Association"))
    UpdateDataRepositoryAssociationResponse.type = Types::UpdateDataRepositoryAssociationResponse
    UpdateFileCacheLustreConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    UpdateFileCacheLustreConfiguration.type = Types::UpdateFileCacheLustreConfiguration
    UpdateFileCacheRequest.add_member(:file_cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCacheId, name: "FileCacheId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateFileCacheRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFileCacheRequest.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFileCacheLustreConfiguration, name: "LustreConfiguration"))
    UpdateFileCacheRequest.type = Types::UpdateFileCacheRequest
    UpdateFileCacheResponse.add_member(:file_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: FileCache, name: "FileCache"))
    UpdateFileCacheResponse.type = Types::UpdateFileCacheResponse
    UpdateFileSystemLustreConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemLustreConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemLustreConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemLustreConfiguration.add_member(:auto_import_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoImportPolicyType, name: "AutoImportPolicy"))
    UpdateFileSystemLustreConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCompressionType, name: "DataCompressionType"))
    UpdateFileSystemLustreConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreLogCreateConfiguration, name: "LogConfiguration"))
    UpdateFileSystemLustreConfiguration.add_member(:root_squash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreRootSquashConfiguration, name: "RootSquashConfiguration"))
    UpdateFileSystemLustreConfiguration.add_member(:per_unit_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PerUnitStorageThroughput, name: "PerUnitStorageThroughput"))
    UpdateFileSystemLustreConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFileSystemLustreMetadataConfiguration, name: "MetadataConfiguration"))
    UpdateFileSystemLustreConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputCapacityMbps, name: "ThroughputCapacity"))
    UpdateFileSystemLustreConfiguration.add_member(:data_read_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LustreReadCacheConfiguration, name: "DataReadCacheConfiguration"))
    UpdateFileSystemLustreConfiguration.type = Types::UpdateFileSystemLustreConfiguration
    UpdateFileSystemLustreMetadataConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataIops, name: "Iops"))
    UpdateFileSystemLustreMetadataConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfigurationMode, name: "Mode"))
    UpdateFileSystemLustreMetadataConfiguration.type = Types::UpdateFileSystemLustreMetadataConfiguration
    UpdateFileSystemOntapConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemOntapConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemOntapConfiguration.add_member(:fsx_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPassword, name: "FsxAdminPassword"))
    UpdateFileSystemOntapConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemOntapConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    UpdateFileSystemOntapConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    UpdateFileSystemOntapConfiguration.add_member(:add_route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "AddRouteTableIds"))
    UpdateFileSystemOntapConfiguration.add_member(:remove_route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "RemoveRouteTableIds"))
    UpdateFileSystemOntapConfiguration.add_member(:throughput_capacity_per_ha_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputCapacityPerHAPair, name: "ThroughputCapacityPerHAPair"))
    UpdateFileSystemOntapConfiguration.add_member(:ha_pairs, ::Smithy::Schema::Shapes::MemberShape.new(target: HAPairs, name: "HAPairs"))
    UpdateFileSystemOntapConfiguration.add_member(:endpoint_ipv6_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressRange, name: "EndpointIpv6AddressRange"))
    UpdateFileSystemOntapConfiguration.type = Types::UpdateFileSystemOntapConfiguration
    UpdateFileSystemOpenZFSConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:copy_tags_to_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToVolumes"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:add_route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "AddRouteTableIds"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:remove_route_table_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteTableIds, name: "RemoveRouteTableIds"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:read_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSReadCacheConfiguration, name: "ReadCacheConfiguration"))
    UpdateFileSystemOpenZFSConfiguration.add_member(:endpoint_ipv6_address_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6AddressRange, name: "EndpointIpv6AddressRange"))
    UpdateFileSystemOpenZFSConfiguration.type = Types::UpdateFileSystemOpenZFSConfiguration
    UpdateFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFileSystemRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacity, name: "StorageCapacity"))
    UpdateFileSystemRequest.add_member(:windows_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFileSystemWindowsConfiguration, name: "WindowsConfiguration"))
    UpdateFileSystemRequest.add_member(:lustre_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFileSystemLustreConfiguration, name: "LustreConfiguration"))
    UpdateFileSystemRequest.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFileSystemOntapConfiguration, name: "OntapConfiguration"))
    UpdateFileSystemRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFileSystemOpenZFSConfiguration, name: "OpenZFSConfiguration"))
    UpdateFileSystemRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "StorageType"))
    UpdateFileSystemRequest.add_member(:file_system_type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemTypeVersion, name: "FileSystemTypeVersion"))
    UpdateFileSystemRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    UpdateFileSystemRequest.type = Types::UpdateFileSystemRequest
    UpdateFileSystemResponse.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystem, name: "FileSystem"))
    UpdateFileSystemResponse.type = Types::UpdateFileSystemResponse
    UpdateFileSystemWindowsConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemWindowsConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemWindowsConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemWindowsConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    UpdateFileSystemWindowsConfiguration.add_member(:self_managed_active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedActiveDirectoryConfigurationUpdates, name: "SelfManagedActiveDirectoryConfiguration"))
    UpdateFileSystemWindowsConfiguration.add_member(:audit_log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAuditLogCreateConfiguration, name: "AuditLogConfiguration"))
    UpdateFileSystemWindowsConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    UpdateFileSystemWindowsConfiguration.type = Types::UpdateFileSystemWindowsConfiguration
    UpdateOntapVolumeConfiguration.add_member(:junction_path, ::Smithy::Schema::Shapes::MemberShape.new(target: JunctionPath, name: "JunctionPath"))
    UpdateOntapVolumeConfiguration.add_member(:security_style, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityStyle, name: "SecurityStyle"))
    UpdateOntapVolumeConfiguration.add_member(:size_in_megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeCapacity, name: "SizeInMegabytes"))
    UpdateOntapVolumeConfiguration.add_member(:storage_efficiency_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "StorageEfficiencyEnabled"))
    UpdateOntapVolumeConfiguration.add_member(:tiering_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringPolicy, name: "TieringPolicy"))
    UpdateOntapVolumeConfiguration.add_member(:snapshot_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotPolicy, name: "SnapshotPolicy"))
    UpdateOntapVolumeConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    UpdateOntapVolumeConfiguration.add_member(:snaplock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSnaplockConfiguration, name: "SnaplockConfiguration"))
    UpdateOntapVolumeConfiguration.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeCapacityBytes, name: "SizeInBytes"))
    UpdateOntapVolumeConfiguration.type = Types::UpdateOntapVolumeConfiguration
    UpdateOpenZFSVolumeConfiguration.add_member(:storage_capacity_reservation_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMaxFromNegativeOne, name: "StorageCapacityReservationGiB"))
    UpdateOpenZFSVolumeConfiguration.add_member(:storage_capacity_quota_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerNoMaxFromNegativeOne, name: "StorageCapacityQuotaGiB"))
    UpdateOpenZFSVolumeConfiguration.add_member(:record_size_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRecordSizeKiB, name: "RecordSizeKiB"))
    UpdateOpenZFSVolumeConfiguration.add_member(:data_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSDataCompressionType, name: "DataCompressionType"))
    UpdateOpenZFSVolumeConfiguration.add_member(:nfs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSNfsExports, name: "NfsExports"))
    UpdateOpenZFSVolumeConfiguration.add_member(:user_and_group_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSUserAndGroupQuotas, name: "UserAndGroupQuotas"))
    UpdateOpenZFSVolumeConfiguration.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadOnly, name: "ReadOnly"))
    UpdateOpenZFSVolumeConfiguration.type = Types::UpdateOpenZFSVolumeConfiguration
    UpdateOpenZFSVolumeOption.add_member(:delete_intermediate_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_INTERMEDIATE_SNAPSHOTS", traits: {"smithy.api#enumValue" => "DELETE_INTERMEDIATE_SNAPSHOTS"}))
    UpdateOpenZFSVolumeOption.add_member(:delete_cloned_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_CLONED_VOLUMES", traits: {"smithy.api#enumValue" => "DELETE_CLONED_VOLUMES"}))
    UpdateOpenZFSVolumeOption.add_member(:delete_intermediate_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_INTERMEDIATE_DATA", traits: {"smithy.api#enumValue" => "DELETE_INTERMEDIATE_DATA"}))
    UpdateOpenZFSVolumeOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenZFSVolumeOption, name: "member")
    UpdateSharedVpcConfigurationRequest.add_member(:enable_fsx_route_table_updates_from_participant_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: VerboseFlag, name: "EnableFsxRouteTableUpdatesFromParticipantAccounts"))
    UpdateSharedVpcConfigurationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateSharedVpcConfigurationRequest.type = Types::UpdateSharedVpcConfigurationRequest
    UpdateSharedVpcConfigurationResponse.add_member(:enable_fsx_route_table_updates_from_participant_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: VerboseFlag, name: "EnableFsxRouteTableUpdatesFromParticipantAccounts"))
    UpdateSharedVpcConfigurationResponse.type = Types::UpdateSharedVpcConfigurationResponse
    UpdateSnaplockConfiguration.add_member(:audit_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "AuditLogVolume"))
    UpdateSnaplockConfiguration.add_member(:autocommit_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AutocommitPeriod, name: "AutocommitPeriod"))
    UpdateSnaplockConfiguration.add_member(:privileged_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivilegedDelete, name: "PrivilegedDelete"))
    UpdateSnaplockConfiguration.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SnaplockRetentionPeriod, name: "RetentionPeriod"))
    UpdateSnaplockConfiguration.add_member(:volume_append_mode_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "VolumeAppendModeEnabled"))
    UpdateSnaplockConfiguration.type = Types::UpdateSnaplockConfiguration
    UpdateSnapshotRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateSnapshotRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateSnapshotRequest.type = Types::UpdateSnapshotRequest
    UpdateSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    UpdateSnapshotResponse.type = Types::UpdateSnapshotResponse
    UpdateStorageVirtualMachineRequest.add_member(:active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSvmActiveDirectoryConfiguration, name: "ActiveDirectoryConfiguration"))
    UpdateStorageVirtualMachineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateStorageVirtualMachineRequest.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "StorageVirtualMachineId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStorageVirtualMachineRequest.add_member(:svm_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPassword, name: "SvmAdminPassword"))
    UpdateStorageVirtualMachineRequest.type = Types::UpdateStorageVirtualMachineRequest
    UpdateStorageVirtualMachineResponse.add_member(:storage_virtual_machine, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachine, name: "StorageVirtualMachine"))
    UpdateStorageVirtualMachineResponse.type = Types::UpdateStorageVirtualMachineResponse
    UpdateSvmActiveDirectoryConfiguration.add_member(:self_managed_active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedActiveDirectoryConfigurationUpdates, name: "SelfManagedActiveDirectoryConfiguration"))
    UpdateSvmActiveDirectoryConfiguration.add_member(:net_bios_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetBiosAlias, name: "NetBiosName"))
    UpdateSvmActiveDirectoryConfiguration.type = Types::UpdateSvmActiveDirectoryConfiguration
    UpdateVolumeRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateVolumeRequest.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOntapVolumeConfiguration, name: "OntapConfiguration"))
    UpdateVolumeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeName, name: "Name"))
    UpdateVolumeRequest.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenZFSVolumeConfiguration, name: "OpenZFSConfiguration"))
    UpdateVolumeRequest.type = Types::UpdateVolumeRequest
    UpdateVolumeResponse.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "Volume"))
    UpdateVolumeResponse.type = Types::UpdateVolumeResponse
    Volume.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    Volume.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    Volume.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeLifecycle, name: "Lifecycle"))
    Volume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeName, name: "Name"))
    Volume.add_member(:ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OntapVolumeConfiguration, name: "OntapConfiguration"))
    Volume.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    Volume.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    Volume.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    Volume.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "VolumeType"))
    Volume.add_member(:lifecycle_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransitionReason, name: "LifecycleTransitionReason"))
    Volume.add_member(:administrative_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeActions, name: "AdministrativeActions"))
    Volume.add_member(:open_zfs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenZFSVolumeConfiguration, name: "OpenZFSConfiguration"))
    Volume.type = Types::Volume
    VolumeFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFilterName, name: "Name"))
    VolumeFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFilterValues, name: "Values"))
    VolumeFilter.type = Types::VolumeFilter
    VolumeFilterName.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SYSTEM_ID", traits: {"smithy.api#enumValue" => "file-system-id"}))
    VolumeFilterName.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_VIRTUAL_MACHINE_ID", traits: {"smithy.api#enumValue" => "storage-virtual-machine-id"}))
    VolumeFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFilterValue, name: "member")
    VolumeFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFilter, name: "member")
    VolumeIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "member")
    VolumeLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    VolumeLifecycle.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    VolumeLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    VolumeLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VolumeLifecycle.add_member(:misconfigured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURED", traits: {"smithy.api#enumValue" => "MISCONFIGURED"}))
    VolumeLifecycle.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    VolumeLifecycle.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VolumeNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    VolumeNotFound.type = Types::VolumeNotFound
    VolumeStyle.add_member(:flexvol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEXVOL", traits: {"smithy.api#enumValue" => "FLEXVOL"}))
    VolumeStyle.add_member(:flexgroup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEXGROUP", traits: {"smithy.api#enumValue" => "FLEXGROUP"}))
    VolumeType.add_member(:ontap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONTAP", traits: {"smithy.api#enumValue" => "ONTAP"}))
    VolumeType.add_member(:openzfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENZFS", traits: {"smithy.api#enumValue" => "OPENZFS"}))
    Volumes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "member")
    WindowsAccessAuditLogLevel.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WindowsAccessAuditLogLevel.add_member(:success_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS_ONLY", traits: {"smithy.api#enumValue" => "SUCCESS_ONLY"}))
    WindowsAccessAuditLogLevel.add_member(:failure_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE_ONLY", traits: {"smithy.api#enumValue" => "FAILURE_ONLY"}))
    WindowsAccessAuditLogLevel.add_member(:success_and_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS_AND_FAILURE", traits: {"smithy.api#enumValue" => "SUCCESS_AND_FAILURE"}))
    WindowsAuditLogConfiguration.add_member(:file_access_audit_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAccessAuditLogLevel, name: "FileAccessAuditLogLevel", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WindowsAuditLogConfiguration.add_member(:file_share_access_audit_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAccessAuditLogLevel, name: "FileShareAccessAuditLogLevel", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WindowsAuditLogConfiguration.add_member(:audit_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralARN, name: "AuditLogDestination"))
    WindowsAuditLogConfiguration.type = Types::WindowsAuditLogConfiguration
    WindowsAuditLogCreateConfiguration.add_member(:file_access_audit_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAccessAuditLogLevel, name: "FileAccessAuditLogLevel", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WindowsAuditLogCreateConfiguration.add_member(:file_share_access_audit_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAccessAuditLogLevel, name: "FileShareAccessAuditLogLevel", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    WindowsAuditLogCreateConfiguration.add_member(:audit_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralARN, name: "AuditLogDestination"))
    WindowsAuditLogCreateConfiguration.type = Types::WindowsAuditLogCreateConfiguration
    WindowsDeploymentType.add_member(:multi_az_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_AZ_1", traits: {"smithy.api#enumValue" => "MULTI_AZ_1"}))
    WindowsDeploymentType.add_member(:single_az_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_1", traits: {"smithy.api#enumValue" => "SINGLE_AZ_1"}))
    WindowsDeploymentType.add_member(:single_az_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ_2", traits: {"smithy.api#enumValue" => "SINGLE_AZ_2"}))
    WindowsFileSystemConfiguration.add_member(:active_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "ActiveDirectoryId"))
    WindowsFileSystemConfiguration.add_member(:self_managed_active_directory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedActiveDirectoryAttributes, name: "SelfManagedActiveDirectoryConfiguration"))
    WindowsFileSystemConfiguration.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsDeploymentType, name: "DeploymentType"))
    WindowsFileSystemConfiguration.add_member(:remote_administration_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "RemoteAdministrationEndpoint"))
    WindowsFileSystemConfiguration.add_member(:preferred_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "PreferredSubnetId"))
    WindowsFileSystemConfiguration.add_member(:preferred_file_server_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "PreferredFileServerIp"))
    WindowsFileSystemConfiguration.add_member(:throughput_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MegabytesPerSecond, name: "ThroughputCapacity"))
    WindowsFileSystemConfiguration.add_member(:maintenance_operations_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemMaintenanceOperations, name: "MaintenanceOperationsInProgress"))
    WindowsFileSystemConfiguration.add_member(:weekly_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyTime, name: "WeeklyMaintenanceStartTime"))
    WindowsFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyTime, name: "DailyAutomaticBackupStartTime"))
    WindowsFileSystemConfiguration.add_member(:automatic_backup_retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticBackupRetentionDays, name: "AutomaticBackupRetentionDays"))
    WindowsFileSystemConfiguration.add_member(:copy_tags_to_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: Flag, name: "CopyTagsToBackups"))
    WindowsFileSystemConfiguration.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases"))
    WindowsFileSystemConfiguration.add_member(:audit_log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsAuditLogConfiguration, name: "AuditLogConfiguration"))
    WindowsFileSystemConfiguration.add_member(:disk_iops_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIopsConfiguration, name: "DiskIopsConfiguration"))
    WindowsFileSystemConfiguration.add_member(:preferred_file_server_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "PreferredFileServerIpv6"))
    WindowsFileSystemConfiguration.type = Types::WindowsFileSystemConfiguration

    AWSSimbaAPIServiceV20180301 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.fsx#AWSSimbaAPIService_v20180301"
      service.name = "AWSSimbaAPIServiceV20180301"
      service.version = "2018-03-01"
      service.traits = {"aws.api#service" => {"sdkId" => "FSx", "arnNamespace" => "fsx", "cloudFormationName" => "FSx", "cloudTrailEventSource" => "fsx.amazonaws.com", "endpointPrefix" => "fsx"}, "aws.auth#sigv4" => {"name" => "fsx"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon FSx"}
      service.add_operation(:associate_file_system_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#AssociateFileSystemAliases"
        operation.name = "AssociateFileSystemAliases"
        operation.input = AssociateFileSystemAliasesRequest
        operation.output = AssociateFileSystemAliasesResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:cancel_data_repository_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CancelDataRepositoryTask"
        operation.name = "CancelDataRepositoryTask"
        operation.input = CancelDataRepositoryTaskRequest
        operation.output = CancelDataRepositoryTaskResponse
        operation.errors << BadRequest
        operation.errors << DataRepositoryTaskEnded
        operation.errors << DataRepositoryTaskNotFound
        operation.errors << InternalServerError
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:copy_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CopyBackup"
        operation.name = "CopyBackup"
        operation.input = CopyBackupRequest
        operation.output = CopyBackupResponse
        operation.errors << BackupNotFound
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << IncompatibleRegionForMultiAZ
        operation.errors << InternalServerError
        operation.errors << InvalidDestinationKmsKey
        operation.errors << InvalidRegion
        operation.errors << InvalidSourceKmsKey
        operation.errors << ServiceLimitExceeded
        operation.errors << SourceBackupUnavailable
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:copy_snapshot_and_update_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CopySnapshotAndUpdateVolume"
        operation.name = "CopySnapshotAndUpdateVolume"
        operation.input = CopySnapshotAndUpdateVolumeRequest
        operation.output = CopySnapshotAndUpdateVolumeResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_and_attach_s3_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateAndAttachS3AccessPoint"
        operation.name = "CreateAndAttachS3AccessPoint"
        operation.input = CreateAndAttachS3AccessPointRequest
        operation.output = CreateAndAttachS3AccessPointResponse
        operation.errors << AccessPointAlreadyOwnedByYou
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << InvalidAccessPoint
        operation.errors << InvalidRequest
        operation.errors << TooManyAccessPoints
        operation.errors << UnsupportedOperation
        operation.errors << VolumeNotFound
        operation.traits = {}
      end)
      service.add_operation(:create_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateBackup"
        operation.name = "CreateBackup"
        operation.input = CreateBackupRequest
        operation.output = CreateBackupResponse
        operation.errors << BackupInProgress
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.errors << UnsupportedOperation
        operation.errors << VolumeNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_repository_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateDataRepositoryAssociation"
        operation.name = "CreateDataRepositoryAssociation"
        operation.input = CreateDataRepositoryAssociationRequest
        operation.output = CreateDataRepositoryAssociationResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_repository_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateDataRepositoryTask"
        operation.name = "CreateDataRepositoryTask"
        operation.input = CreateDataRepositoryTaskRequest
        operation.output = CreateDataRepositoryTaskResponse
        operation.errors << BadRequest
        operation.errors << DataRepositoryTaskExecuting
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_file_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateFileCache"
        operation.name = "CreateFileCache"
        operation.input = CreateFileCacheRequest
        operation.output = CreateFileCacheResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << InvalidNetworkSettings
        operation.errors << InvalidPerUnitStorageThroughput
        operation.errors << MissingFileCacheConfiguration
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateFileSystem"
        operation.name = "CreateFileSystem"
        operation.input = CreateFileSystemRequest
        operation.output = CreateFileSystemResponse
        operation.errors << ActiveDirectoryError
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << InvalidExportPath
        operation.errors << InvalidImportPath
        operation.errors << InvalidNetworkSettings
        operation.errors << InvalidPerUnitStorageThroughput
        operation.errors << MissingFileSystemConfiguration
        operation.errors << ServiceLimitExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_file_system_from_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateFileSystemFromBackup"
        operation.name = "CreateFileSystemFromBackup"
        operation.input = CreateFileSystemFromBackupRequest
        operation.output = CreateFileSystemFromBackupResponse
        operation.errors << ActiveDirectoryError
        operation.errors << BackupNotFound
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << InvalidNetworkSettings
        operation.errors << InvalidPerUnitStorageThroughput
        operation.errors << MissingFileSystemConfiguration
        operation.errors << ServiceLimitExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = CreateSnapshotRequest
        operation.output = CreateSnapshotResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.errors << VolumeNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_storage_virtual_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateStorageVirtualMachine"
        operation.name = "CreateStorageVirtualMachine"
        operation.input = CreateStorageVirtualMachineRequest
        operation.output = CreateStorageVirtualMachineResponse
        operation.errors << ActiveDirectoryError
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.errors << UnsupportedOperation
        operation.traits = {}
      end)
      service.add_operation(:create_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateVolume"
        operation.name = "CreateVolume"
        operation.input = CreateVolumeRequest
        operation.output = CreateVolumeResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << MissingVolumeConfiguration
        operation.errors << ServiceLimitExceeded
        operation.errors << StorageVirtualMachineNotFound
        operation.errors << UnsupportedOperation
        operation.traits = {}
      end)
      service.add_operation(:create_volume_from_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#CreateVolumeFromBackup"
        operation.name = "CreateVolumeFromBackup"
        operation.input = CreateVolumeFromBackupRequest
        operation.output = CreateVolumeFromBackupResponse
        operation.errors << BackupNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << MissingVolumeConfiguration
        operation.errors << ServiceLimitExceeded
        operation.errors << StorageVirtualMachineNotFound
        operation.traits = {}
      end)
      service.add_operation(:delete_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteBackup"
        operation.name = "DeleteBackup"
        operation.input = DeleteBackupRequest
        operation.output = DeleteBackupResponse
        operation.errors << BackupBeingCopied
        operation.errors << BackupInProgress
        operation.errors << BackupNotFound
        operation.errors << BackupRestoring
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_repository_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteDataRepositoryAssociation"
        operation.name = "DeleteDataRepositoryAssociation"
        operation.input = DeleteDataRepositoryAssociationRequest
        operation.output = DeleteDataRepositoryAssociationResponse
        operation.errors << BadRequest
        operation.errors << DataRepositoryAssociationNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_file_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteFileCache"
        operation.name = "DeleteFileCache"
        operation.input = DeleteFileCacheRequest
        operation.output = DeleteFileCacheResponse
        operation.errors << BadRequest
        operation.errors << FileCacheNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteFileSystem"
        operation.name = "DeleteFileSystem"
        operation.input = DeleteFileSystemRequest
        operation.output = DeleteFileSystemResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = DeleteSnapshotRequest
        operation.output = DeleteSnapshotResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << SnapshotNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_storage_virtual_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteStorageVirtualMachine"
        operation.name = "DeleteStorageVirtualMachine"
        operation.input = DeleteStorageVirtualMachineRequest
        operation.output = DeleteStorageVirtualMachineResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << StorageVirtualMachineNotFound
        operation.traits = {}
      end)
      service.add_operation(:delete_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DeleteVolume"
        operation.name = "DeleteVolume"
        operation.input = DeleteVolumeRequest
        operation.output = DeleteVolumeResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.errors << VolumeNotFound
        operation.traits = {}
      end)
      service.add_operation(:describe_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeBackups"
        operation.name = "DescribeBackups"
        operation.input = DescribeBackupsRequest
        operation.output = DescribeBackupsResponse
        operation.errors << BackupNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << VolumeNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBackups.new
      end)
      service.add_operation(:describe_data_repository_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeDataRepositoryAssociations"
        operation.name = "DescribeDataRepositoryAssociations"
        operation.input = DescribeDataRepositoryAssociationsRequest
        operation.output = DescribeDataRepositoryAssociationsResponse
        operation.errors << BadRequest
        operation.errors << DataRepositoryAssociationNotFound
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << InvalidDataRepositoryType
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeDataRepositoryAssociations.new
      end)
      service.add_operation(:describe_data_repository_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeDataRepositoryTasks"
        operation.name = "DescribeDataRepositoryTasks"
        operation.input = DescribeDataRepositoryTasksRequest
        operation.output = DescribeDataRepositoryTasksResponse
        operation.errors << BadRequest
        operation.errors << DataRepositoryTaskNotFound
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataRepositoryTasks.new
      end)
      service.add_operation(:describe_file_caches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeFileCaches"
        operation.name = "DescribeFileCaches"
        operation.input = DescribeFileCachesRequest
        operation.output = DescribeFileCachesResponse
        operation.errors << BadRequest
        operation.errors << FileCacheNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::DescribeFileCaches.new
      end)
      service.add_operation(:describe_file_system_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeFileSystemAliases"
        operation.name = "DescribeFileSystemAliases"
        operation.input = DescribeFileSystemAliasesRequest
        operation.output = DescribeFileSystemAliasesResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFileSystemAliases.new
      end)
      service.add_operation(:describe_file_systems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeFileSystems"
        operation.name = "DescribeFileSystems"
        operation.input = DescribeFileSystemsRequest
        operation.output = DescribeFileSystemsResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFileSystems.new
      end)
      service.add_operation(:describe_s3_access_point_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeS3AccessPointAttachments"
        operation.name = "DescribeS3AccessPointAttachments"
        operation.input = DescribeS3AccessPointAttachmentsRequest
        operation.output = DescribeS3AccessPointAttachmentsResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << S3AccessPointAttachmentNotFound
        operation.errors << UnsupportedOperation
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeS3AccessPointAttachments.new
      end)
      service.add_operation(:describe_shared_vpc_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeSharedVpcConfiguration"
        operation.name = "DescribeSharedVpcConfiguration"
        operation.input = DescribeSharedVpcConfigurationRequest
        operation.output = DescribeSharedVpcConfigurationResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:describe_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = DescribeSnapshotsRequest
        operation.output = DescribeSnapshotsResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << SnapshotNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_storage_virtual_machines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeStorageVirtualMachines"
        operation.name = "DescribeStorageVirtualMachines"
        operation.input = DescribeStorageVirtualMachinesRequest
        operation.output = DescribeStorageVirtualMachinesResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << StorageVirtualMachineNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeStorageVirtualMachines.new
      end)
      service.add_operation(:describe_volumes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DescribeVolumes"
        operation.name = "DescribeVolumes"
        operation.input = DescribeVolumesRequest
        operation.output = DescribeVolumesResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << VolumeNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeVolumes.new
      end)
      service.add_operation(:detach_and_delete_s3_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DetachAndDeleteS3AccessPoint"
        operation.name = "DetachAndDeleteS3AccessPoint"
        operation.input = DetachAndDeleteS3AccessPointRequest
        operation.output = DetachAndDeleteS3AccessPointResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << S3AccessPointAttachmentNotFound
        operation.errors << UnsupportedOperation
        operation.traits = {}
      end)
      service.add_operation(:disassociate_file_system_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#DisassociateFileSystemAliases"
        operation.name = "DisassociateFileSystemAliases"
        operation.input = DisassociateFileSystemAliasesRequest
        operation.output = DisassociateFileSystemAliasesResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << NotServiceResourceError
        operation.errors << ResourceDoesNotSupportTagging
        operation.errors << ResourceNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:release_file_system_nfs_v3_locks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#ReleaseFileSystemNfsV3Locks"
        operation.name = "ReleaseFileSystemNfsV3Locks"
        operation.input = ReleaseFileSystemNfsV3LocksRequest
        operation.output = ReleaseFileSystemNfsV3LocksResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:restore_volume_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#RestoreVolumeFromSnapshot"
        operation.name = "RestoreVolumeFromSnapshot"
        operation.input = RestoreVolumeFromSnapshotRequest
        operation.output = RestoreVolumeFromSnapshotResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << VolumeNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_misconfigured_state_recovery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#StartMisconfiguredStateRecovery"
        operation.name = "StartMisconfiguredStateRecovery"
        operation.input = StartMisconfiguredStateRecoveryRequest
        operation.output = StartMisconfiguredStateRecoveryResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << NotServiceResourceError
        operation.errors << ResourceDoesNotSupportTagging
        operation.errors << ResourceNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << NotServiceResourceError
        operation.errors << ResourceDoesNotSupportTagging
        operation.errors << ResourceNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_repository_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateDataRepositoryAssociation"
        operation.name = "UpdateDataRepositoryAssociation"
        operation.input = UpdateDataRepositoryAssociationRequest
        operation.output = UpdateDataRepositoryAssociationResponse
        operation.errors << BadRequest
        operation.errors << DataRepositoryAssociationNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << ServiceLimitExceeded
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_file_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateFileCache"
        operation.name = "UpdateFileCache"
        operation.input = UpdateFileCacheRequest
        operation.output = UpdateFileCacheResponse
        operation.errors << BadRequest
        operation.errors << FileCacheNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << MissingFileCacheConfiguration
        operation.errors << ServiceLimitExceeded
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateFileSystem"
        operation.name = "UpdateFileSystem"
        operation.input = UpdateFileSystemRequest
        operation.output = UpdateFileSystemResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << InvalidNetworkSettings
        operation.errors << MissingFileSystemConfiguration
        operation.errors << ServiceLimitExceeded
        operation.errors << UnsupportedOperation
        operation.traits = {}
      end)
      service.add_operation(:update_shared_vpc_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateSharedVpcConfiguration"
        operation.name = "UpdateSharedVpcConfiguration"
        operation.input = UpdateSharedVpcConfigurationRequest
        operation.output = UpdateSharedVpcConfigurationResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:update_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateSnapshot"
        operation.name = "UpdateSnapshot"
        operation.input = UpdateSnapshotRequest
        operation.output = UpdateSnapshotResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.errors << SnapshotNotFound
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_storage_virtual_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateStorageVirtualMachine"
        operation.name = "UpdateStorageVirtualMachine"
        operation.input = UpdateStorageVirtualMachineRequest
        operation.output = UpdateStorageVirtualMachineResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << StorageVirtualMachineNotFound
        operation.errors << UnsupportedOperation
        operation.traits = {}
      end)
      service.add_operation(:update_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fsx#UpdateVolume"
        operation.name = "UpdateVolume"
        operation.input = UpdateVolumeRequest
        operation.output = UpdateVolumeResponse
        operation.errors << BadRequest
        operation.errors << IncompatibleParameterError
        operation.errors << InternalServerError
        operation.errors << MissingVolumeConfiguration
        operation.errors << VolumeNotFound
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

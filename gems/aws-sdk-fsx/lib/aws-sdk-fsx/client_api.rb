# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FSx
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    ActiveDirectoryError = Shapes::StructureShape.new(name: 'ActiveDirectoryError')
    ActiveDirectoryErrorType = Shapes::StringShape.new(name: 'ActiveDirectoryErrorType')
    ArchivePath = Shapes::StringShape.new(name: 'ArchivePath')
    AutomaticBackupRetentionDays = Shapes::IntegerShape.new(name: 'AutomaticBackupRetentionDays')
    Backup = Shapes::StructureShape.new(name: 'Backup')
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
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CreateBackupRequest = Shapes::StructureShape.new(name: 'CreateBackupRequest')
    CreateBackupResponse = Shapes::StructureShape.new(name: 'CreateBackupResponse')
    CreateFileSystemFromBackupRequest = Shapes::StructureShape.new(name: 'CreateFileSystemFromBackupRequest')
    CreateFileSystemFromBackupResponse = Shapes::StructureShape.new(name: 'CreateFileSystemFromBackupResponse')
    CreateFileSystemLustreConfiguration = Shapes::StructureShape.new(name: 'CreateFileSystemLustreConfiguration')
    CreateFileSystemRequest = Shapes::StructureShape.new(name: 'CreateFileSystemRequest')
    CreateFileSystemResponse = Shapes::StructureShape.new(name: 'CreateFileSystemResponse')
    CreateFileSystemWindowsConfiguration = Shapes::StructureShape.new(name: 'CreateFileSystemWindowsConfiguration')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime')
    DNSName = Shapes::StringShape.new(name: 'DNSName')
    DailyTime = Shapes::StringShape.new(name: 'DailyTime')
    DataRepositoryConfiguration = Shapes::StructureShape.new(name: 'DataRepositoryConfiguration')
    DeleteBackupRequest = Shapes::StructureShape.new(name: 'DeleteBackupRequest')
    DeleteBackupResponse = Shapes::StructureShape.new(name: 'DeleteBackupResponse')
    DeleteFileSystemRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemRequest')
    DeleteFileSystemResponse = Shapes::StructureShape.new(name: 'DeleteFileSystemResponse')
    DeleteFileSystemWindowsConfiguration = Shapes::StructureShape.new(name: 'DeleteFileSystemWindowsConfiguration')
    DeleteFileSystemWindowsResponse = Shapes::StructureShape.new(name: 'DeleteFileSystemWindowsResponse')
    DescribeBackupsRequest = Shapes::StructureShape.new(name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = Shapes::StructureShape.new(name: 'DescribeBackupsResponse')
    DescribeFileSystemsRequest = Shapes::StructureShape.new(name: 'DescribeFileSystemsRequest')
    DescribeFileSystemsResponse = Shapes::StructureShape.new(name: 'DescribeFileSystemsResponse')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileSystem = Shapes::StructureShape.new(name: 'FileSystem')
    FileSystemFailureDetails = Shapes::StructureShape.new(name: 'FileSystemFailureDetails')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FileSystemIds = Shapes::ListShape.new(name: 'FileSystemIds')
    FileSystemLifecycle = Shapes::StringShape.new(name: 'FileSystemLifecycle')
    FileSystemMaintenanceOperation = Shapes::StringShape.new(name: 'FileSystemMaintenanceOperation')
    FileSystemMaintenanceOperations = Shapes::ListShape.new(name: 'FileSystemMaintenanceOperations')
    FileSystemNotFound = Shapes::StructureShape.new(name: 'FileSystemNotFound')
    FileSystemType = Shapes::StringShape.new(name: 'FileSystemType')
    FileSystems = Shapes::ListShape.new(name: 'FileSystems')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    Flag = Shapes::BooleanShape.new(name: 'Flag')
    IncompatibleParameterError = Shapes::StructureShape.new(name: 'IncompatibleParameterError')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidExportPath = Shapes::StructureShape.new(name: 'InvalidExportPath')
    InvalidImportPath = Shapes::StructureShape.new(name: 'InvalidImportPath')
    InvalidNetworkSettings = Shapes::StructureShape.new(name: 'InvalidNetworkSettings')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LustreFileSystemConfiguration = Shapes::StructureShape.new(name: 'LustreFileSystemConfiguration')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Megabytes = Shapes::IntegerShape.new(name: 'Megabytes')
    MegabytesPerSecond = Shapes::IntegerShape.new(name: 'MegabytesPerSecond')
    MissingFileSystemConfiguration = Shapes::StructureShape.new(name: 'MissingFileSystemConfiguration')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaceIds = Shapes::ListShape.new(name: 'NetworkInterfaceIds')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotServiceResourceError = Shapes::StructureShape.new(name: 'NotServiceResourceError')
    Parameter = Shapes::StringShape.new(name: 'Parameter')
    ProgressPercent = Shapes::IntegerShape.new(name: 'ProgressPercent')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceDoesNotSupportTagging = Shapes::StructureShape.new(name: 'ResourceDoesNotSupportTagging')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceLimit = Shapes::StringShape.new(name: 'ServiceLimit')
    ServiceLimitExceeded = Shapes::StructureShape.new(name: 'ServiceLimitExceeded')
    StorageCapacity = Shapes::IntegerShape.new(name: 'StorageCapacity')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateFileSystemLustreConfiguration = Shapes::StructureShape.new(name: 'UpdateFileSystemLustreConfiguration')
    UpdateFileSystemRequest = Shapes::StructureShape.new(name: 'UpdateFileSystemRequest')
    UpdateFileSystemResponse = Shapes::StructureShape.new(name: 'UpdateFileSystemResponse')
    UpdateFileSystemWindowsConfiguration = Shapes::StructureShape.new(name: 'UpdateFileSystemWindowsConfiguration')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WeeklyTime = Shapes::StringShape.new(name: 'WeeklyTime')
    WindowsFileSystemConfiguration = Shapes::StructureShape.new(name: 'WindowsFileSystemConfiguration')

    ActiveDirectoryError.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ActiveDirectoryId"))
    ActiveDirectoryError.add_member(:type, Shapes::ShapeRef.new(shape: ActiveDirectoryErrorType, location_name: "Type"))
    ActiveDirectoryError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ActiveDirectoryError.struct_class = Types::ActiveDirectoryError

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
    Backup.struct_class = Types::Backup

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

    CreateBackupRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateBackupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateBackupRequest.struct_class = Types::CreateBackupRequest

    CreateBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    CreateBackupResponse.struct_class = Types::CreateBackupResponse

    CreateFileSystemFromBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    CreateFileSystemFromBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateFileSystemFromBackupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateFileSystemFromBackupRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateFileSystemFromBackupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFileSystemFromBackupRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    CreateFileSystemFromBackupRequest.struct_class = Types::CreateFileSystemFromBackupRequest

    CreateFileSystemFromBackupResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    CreateFileSystemFromBackupResponse.struct_class = Types::CreateFileSystemFromBackupResponse

    CreateFileSystemLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemLustreConfiguration.add_member(:import_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ImportPath"))
    CreateFileSystemLustreConfiguration.add_member(:export_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ExportPath"))
    CreateFileSystemLustreConfiguration.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    CreateFileSystemLustreConfiguration.struct_class = Types::CreateFileSystemLustreConfiguration

    CreateFileSystemRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateFileSystemRequest.add_member(:file_system_type, Shapes::ShapeRef.new(shape: FileSystemType, required: true, location_name: "FileSystemType"))
    CreateFileSystemRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, required: true, location_name: "StorageCapacity"))
    CreateFileSystemRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateFileSystemRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    CreateFileSystemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFileSystemRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFileSystemRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    CreateFileSystemRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: CreateFileSystemLustreConfiguration, location_name: "LustreConfiguration"))
    CreateFileSystemRequest.struct_class = Types::CreateFileSystemRequest

    CreateFileSystemResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    CreateFileSystemResponse.struct_class = Types::CreateFileSystemResponse

    CreateFileSystemWindowsConfiguration.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "ActiveDirectoryId"))
    CreateFileSystemWindowsConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, required: true, location_name: "ThroughputCapacity"))
    CreateFileSystemWindowsConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    CreateFileSystemWindowsConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    CreateFileSystemWindowsConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    CreateFileSystemWindowsConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
    CreateFileSystemWindowsConfiguration.struct_class = Types::CreateFileSystemWindowsConfiguration

    DataRepositoryConfiguration.add_member(:import_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ImportPath"))
    DataRepositoryConfiguration.add_member(:export_path, Shapes::ShapeRef.new(shape: ArchivePath, location_name: "ExportPath"))
    DataRepositoryConfiguration.add_member(:imported_file_chunk_size, Shapes::ShapeRef.new(shape: Megabytes, location_name: "ImportedFileChunkSize"))
    DataRepositoryConfiguration.struct_class = Types::DataRepositoryConfiguration

    DeleteBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    DeleteBackupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteBackupRequest.struct_class = Types::DeleteBackupRequest

    DeleteBackupResponse.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    DeleteBackupResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: BackupLifecycle, location_name: "Lifecycle"))
    DeleteBackupResponse.struct_class = Types::DeleteBackupResponse

    DeleteFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    DeleteFileSystemRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteFileSystemRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: DeleteFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    DeleteFileSystemRequest.struct_class = Types::DeleteFileSystemRequest

    DeleteFileSystemResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    DeleteFileSystemResponse.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileSystemLifecycle, location_name: "Lifecycle"))
    DeleteFileSystemResponse.add_member(:windows_response, Shapes::ShapeRef.new(shape: DeleteFileSystemWindowsResponse, location_name: "WindowsResponse"))
    DeleteFileSystemResponse.struct_class = Types::DeleteFileSystemResponse

    DeleteFileSystemWindowsConfiguration.add_member(:skip_final_backup, Shapes::ShapeRef.new(shape: Flag, location_name: "SkipFinalBackup"))
    DeleteFileSystemWindowsConfiguration.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemWindowsConfiguration.struct_class = Types::DeleteFileSystemWindowsConfiguration

    DeleteFileSystemWindowsResponse.add_member(:final_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "FinalBackupId"))
    DeleteFileSystemWindowsResponse.add_member(:final_backup_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "FinalBackupTags"))
    DeleteFileSystemWindowsResponse.struct_class = Types::DeleteFileSystemWindowsResponse

    DescribeBackupsRequest.add_member(:backup_ids, Shapes::ShapeRef.new(shape: BackupIds, location_name: "BackupIds"))
    DescribeBackupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeBackupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBackupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsRequest.struct_class = Types::DescribeBackupsRequest

    DescribeBackupsResponse.add_member(:backups, Shapes::ShapeRef.new(shape: Backups, location_name: "Backups"))
    DescribeBackupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsResponse.struct_class = Types::DescribeBackupsResponse

    DescribeFileSystemsRequest.add_member(:file_system_ids, Shapes::ShapeRef.new(shape: FileSystemIds, location_name: "FileSystemIds"))
    DescribeFileSystemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeFileSystemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileSystemsRequest.struct_class = Types::DescribeFileSystemsRequest

    DescribeFileSystemsResponse.add_member(:file_systems, Shapes::ShapeRef.new(shape: FileSystems, location_name: "FileSystems"))
    DescribeFileSystemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeFileSystemsResponse.struct_class = Types::DescribeFileSystemsResponse

    FileSystem.add_member(:owner_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "OwnerId"))
    FileSystem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    FileSystem.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    FileSystem.add_member(:file_system_type, Shapes::ShapeRef.new(shape: FileSystemType, location_name: "FileSystemType"))
    FileSystem.add_member(:lifecycle, Shapes::ShapeRef.new(shape: FileSystemLifecycle, location_name: "Lifecycle"))
    FileSystem.add_member(:failure_details, Shapes::ShapeRef.new(shape: FileSystemFailureDetails, location_name: "FailureDetails"))
    FileSystem.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StorageCapacity, location_name: "StorageCapacity"))
    FileSystem.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    FileSystem.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    FileSystem.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: NetworkInterfaceIds, location_name: "NetworkInterfaceIds"))
    FileSystem.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    FileSystem.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    FileSystem.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    FileSystem.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    FileSystem.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: WindowsFileSystemConfiguration, location_name: "WindowsConfiguration"))
    FileSystem.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: LustreFileSystemConfiguration, location_name: "LustreConfiguration"))
    FileSystem.struct_class = Types::FileSystem

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

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidExportPath.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidExportPath.struct_class = Types::InvalidExportPath

    InvalidImportPath.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidImportPath.struct_class = Types::InvalidImportPath

    InvalidNetworkSettings.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNetworkSettings.add_member(:invalid_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "InvalidSubnetId"))
    InvalidNetworkSettings.add_member(:invalid_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "InvalidSecurityGroupId"))
    InvalidNetworkSettings.struct_class = Types::InvalidNetworkSettings

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LustreFileSystemConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    LustreFileSystemConfiguration.add_member(:data_repository_configuration, Shapes::ShapeRef.new(shape: DataRepositoryConfiguration, location_name: "DataRepositoryConfiguration"))
    LustreFileSystemConfiguration.struct_class = Types::LustreFileSystemConfiguration

    MissingFileSystemConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MissingFileSystemConfiguration.struct_class = Types::MissingFileSystemConfiguration

    NetworkInterfaceIds.member = Shapes::ShapeRef.new(shape: NetworkInterfaceId)

    NotServiceResourceError.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    NotServiceResourceError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotServiceResourceError.struct_class = Types::NotServiceResourceError

    ResourceDoesNotSupportTagging.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ResourceDoesNotSupportTagging.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceDoesNotSupportTagging.struct_class = Types::ResourceDoesNotSupportTagging

    ResourceNotFound.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceLimitExceeded.add_member(:limit, Shapes::ShapeRef.new(shape: ServiceLimit, required: true, location_name: "Limit"))
    ServiceLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceLimitExceeded.struct_class = Types::ServiceLimitExceeded

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateFileSystemLustreConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemLustreConfiguration.struct_class = Types::UpdateFileSystemLustreConfiguration

    UpdateFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    UpdateFileSystemRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateFileSystemRequest.add_member(:windows_configuration, Shapes::ShapeRef.new(shape: UpdateFileSystemWindowsConfiguration, location_name: "WindowsConfiguration"))
    UpdateFileSystemRequest.add_member(:lustre_configuration, Shapes::ShapeRef.new(shape: UpdateFileSystemLustreConfiguration, location_name: "LustreConfiguration"))
    UpdateFileSystemRequest.struct_class = Types::UpdateFileSystemRequest

    UpdateFileSystemResponse.add_member(:file_system, Shapes::ShapeRef.new(shape: FileSystem, location_name: "FileSystem"))
    UpdateFileSystemResponse.struct_class = Types::UpdateFileSystemResponse

    UpdateFileSystemWindowsConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    UpdateFileSystemWindowsConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    UpdateFileSystemWindowsConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    UpdateFileSystemWindowsConfiguration.struct_class = Types::UpdateFileSystemWindowsConfiguration

    WindowsFileSystemConfiguration.add_member(:active_directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "ActiveDirectoryId"))
    WindowsFileSystemConfiguration.add_member(:throughput_capacity, Shapes::ShapeRef.new(shape: MegabytesPerSecond, location_name: "ThroughputCapacity"))
    WindowsFileSystemConfiguration.add_member(:maintenance_operations_in_progress, Shapes::ShapeRef.new(shape: FileSystemMaintenanceOperations, location_name: "MaintenanceOperationsInProgress"))
    WindowsFileSystemConfiguration.add_member(:weekly_maintenance_start_time, Shapes::ShapeRef.new(shape: WeeklyTime, location_name: "WeeklyMaintenanceStartTime"))
    WindowsFileSystemConfiguration.add_member(:daily_automatic_backup_start_time, Shapes::ShapeRef.new(shape: DailyTime, location_name: "DailyAutomaticBackupStartTime"))
    WindowsFileSystemConfiguration.add_member(:automatic_backup_retention_days, Shapes::ShapeRef.new(shape: AutomaticBackupRetentionDays, location_name: "AutomaticBackupRetentionDays"))
    WindowsFileSystemConfiguration.add_member(:copy_tags_to_backups, Shapes::ShapeRef.new(shape: Flag, location_name: "CopyTagsToBackups"))
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
        "targetPrefix" => "AWSSimbaAPIService_v20180301",
        "uid" => "fsx-2018-03-01",
      }

      api.add_operation(:create_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: BackupInProgress)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
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
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileSystemConfiguration)
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

      api.add_operation(:describe_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFound)
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

      api.add_operation(:update_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFileSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFileSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleParameterError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: MissingFileSystemConfiguration)
      end)
    end

  end
end

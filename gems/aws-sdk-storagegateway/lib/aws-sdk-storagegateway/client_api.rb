# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::StorageGateway
  # @api private
  module ClientApi

    include Seahorse::Model

    ActivateGatewayInput = Shapes::StructureShape.new(name: 'ActivateGatewayInput')
    ActivateGatewayOutput = Shapes::StructureShape.new(name: 'ActivateGatewayOutput')
    ActivationKey = Shapes::StringShape.new(name: 'ActivationKey')
    AddCacheInput = Shapes::StructureShape.new(name: 'AddCacheInput')
    AddCacheOutput = Shapes::StructureShape.new(name: 'AddCacheOutput')
    AddTagsToResourceInput = Shapes::StructureShape.new(name: 'AddTagsToResourceInput')
    AddTagsToResourceOutput = Shapes::StructureShape.new(name: 'AddTagsToResourceOutput')
    AddUploadBufferInput = Shapes::StructureShape.new(name: 'AddUploadBufferInput')
    AddUploadBufferOutput = Shapes::StructureShape.new(name: 'AddUploadBufferOutput')
    AddWorkingStorageInput = Shapes::StructureShape.new(name: 'AddWorkingStorageInput')
    AddWorkingStorageOutput = Shapes::StructureShape.new(name: 'AddWorkingStorageOutput')
    Authentication = Shapes::StringShape.new(name: 'Authentication')
    BandwidthDownloadRateLimit = Shapes::IntegerShape.new(name: 'BandwidthDownloadRateLimit')
    BandwidthType = Shapes::StringShape.new(name: 'BandwidthType')
    BandwidthUploadRateLimit = Shapes::IntegerShape.new(name: 'BandwidthUploadRateLimit')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CachediSCSIVolume = Shapes::StructureShape.new(name: 'CachediSCSIVolume')
    CachediSCSIVolumes = Shapes::ListShape.new(name: 'CachediSCSIVolumes')
    CancelArchivalInput = Shapes::StructureShape.new(name: 'CancelArchivalInput')
    CancelArchivalOutput = Shapes::StructureShape.new(name: 'CancelArchivalOutput')
    CancelRetrievalInput = Shapes::StructureShape.new(name: 'CancelRetrievalInput')
    CancelRetrievalOutput = Shapes::StructureShape.new(name: 'CancelRetrievalOutput')
    ChapCredentials = Shapes::ListShape.new(name: 'ChapCredentials')
    ChapInfo = Shapes::StructureShape.new(name: 'ChapInfo')
    ChapSecret = Shapes::StringShape.new(name: 'ChapSecret')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CreateCachediSCSIVolumeInput = Shapes::StructureShape.new(name: 'CreateCachediSCSIVolumeInput')
    CreateCachediSCSIVolumeOutput = Shapes::StructureShape.new(name: 'CreateCachediSCSIVolumeOutput')
    CreateNFSFileShareInput = Shapes::StructureShape.new(name: 'CreateNFSFileShareInput')
    CreateNFSFileShareOutput = Shapes::StructureShape.new(name: 'CreateNFSFileShareOutput')
    CreateSMBFileShareInput = Shapes::StructureShape.new(name: 'CreateSMBFileShareInput')
    CreateSMBFileShareOutput = Shapes::StructureShape.new(name: 'CreateSMBFileShareOutput')
    CreateSnapshotFromVolumeRecoveryPointInput = Shapes::StructureShape.new(name: 'CreateSnapshotFromVolumeRecoveryPointInput')
    CreateSnapshotFromVolumeRecoveryPointOutput = Shapes::StructureShape.new(name: 'CreateSnapshotFromVolumeRecoveryPointOutput')
    CreateSnapshotInput = Shapes::StructureShape.new(name: 'CreateSnapshotInput')
    CreateSnapshotOutput = Shapes::StructureShape.new(name: 'CreateSnapshotOutput')
    CreateStorediSCSIVolumeInput = Shapes::StructureShape.new(name: 'CreateStorediSCSIVolumeInput')
    CreateStorediSCSIVolumeOutput = Shapes::StructureShape.new(name: 'CreateStorediSCSIVolumeOutput')
    CreateTapeWithBarcodeInput = Shapes::StructureShape.new(name: 'CreateTapeWithBarcodeInput')
    CreateTapeWithBarcodeOutput = Shapes::StructureShape.new(name: 'CreateTapeWithBarcodeOutput')
    CreateTapesInput = Shapes::StructureShape.new(name: 'CreateTapesInput')
    CreateTapesOutput = Shapes::StructureShape.new(name: 'CreateTapesOutput')
    CreatedDate = Shapes::TimestampShape.new(name: 'CreatedDate')
    DayOfWeek = Shapes::IntegerShape.new(name: 'DayOfWeek')
    DeleteBandwidthRateLimitInput = Shapes::StructureShape.new(name: 'DeleteBandwidthRateLimitInput')
    DeleteBandwidthRateLimitOutput = Shapes::StructureShape.new(name: 'DeleteBandwidthRateLimitOutput')
    DeleteChapCredentialsInput = Shapes::StructureShape.new(name: 'DeleteChapCredentialsInput')
    DeleteChapCredentialsOutput = Shapes::StructureShape.new(name: 'DeleteChapCredentialsOutput')
    DeleteFileShareInput = Shapes::StructureShape.new(name: 'DeleteFileShareInput')
    DeleteFileShareOutput = Shapes::StructureShape.new(name: 'DeleteFileShareOutput')
    DeleteGatewayInput = Shapes::StructureShape.new(name: 'DeleteGatewayInput')
    DeleteGatewayOutput = Shapes::StructureShape.new(name: 'DeleteGatewayOutput')
    DeleteSnapshotScheduleInput = Shapes::StructureShape.new(name: 'DeleteSnapshotScheduleInput')
    DeleteSnapshotScheduleOutput = Shapes::StructureShape.new(name: 'DeleteSnapshotScheduleOutput')
    DeleteTapeArchiveInput = Shapes::StructureShape.new(name: 'DeleteTapeArchiveInput')
    DeleteTapeArchiveOutput = Shapes::StructureShape.new(name: 'DeleteTapeArchiveOutput')
    DeleteTapeInput = Shapes::StructureShape.new(name: 'DeleteTapeInput')
    DeleteTapeOutput = Shapes::StructureShape.new(name: 'DeleteTapeOutput')
    DeleteVolumeInput = Shapes::StructureShape.new(name: 'DeleteVolumeInput')
    DeleteVolumeOutput = Shapes::StructureShape.new(name: 'DeleteVolumeOutput')
    DescribeBandwidthRateLimitInput = Shapes::StructureShape.new(name: 'DescribeBandwidthRateLimitInput')
    DescribeBandwidthRateLimitOutput = Shapes::StructureShape.new(name: 'DescribeBandwidthRateLimitOutput')
    DescribeCacheInput = Shapes::StructureShape.new(name: 'DescribeCacheInput')
    DescribeCacheOutput = Shapes::StructureShape.new(name: 'DescribeCacheOutput')
    DescribeCachediSCSIVolumesInput = Shapes::StructureShape.new(name: 'DescribeCachediSCSIVolumesInput')
    DescribeCachediSCSIVolumesOutput = Shapes::StructureShape.new(name: 'DescribeCachediSCSIVolumesOutput')
    DescribeChapCredentialsInput = Shapes::StructureShape.new(name: 'DescribeChapCredentialsInput')
    DescribeChapCredentialsOutput = Shapes::StructureShape.new(name: 'DescribeChapCredentialsOutput')
    DescribeGatewayInformationInput = Shapes::StructureShape.new(name: 'DescribeGatewayInformationInput')
    DescribeGatewayInformationOutput = Shapes::StructureShape.new(name: 'DescribeGatewayInformationOutput')
    DescribeMaintenanceStartTimeInput = Shapes::StructureShape.new(name: 'DescribeMaintenanceStartTimeInput')
    DescribeMaintenanceStartTimeOutput = Shapes::StructureShape.new(name: 'DescribeMaintenanceStartTimeOutput')
    DescribeNFSFileSharesInput = Shapes::StructureShape.new(name: 'DescribeNFSFileSharesInput')
    DescribeNFSFileSharesOutput = Shapes::StructureShape.new(name: 'DescribeNFSFileSharesOutput')
    DescribeSMBFileSharesInput = Shapes::StructureShape.new(name: 'DescribeSMBFileSharesInput')
    DescribeSMBFileSharesOutput = Shapes::StructureShape.new(name: 'DescribeSMBFileSharesOutput')
    DescribeSMBSettingsInput = Shapes::StructureShape.new(name: 'DescribeSMBSettingsInput')
    DescribeSMBSettingsOutput = Shapes::StructureShape.new(name: 'DescribeSMBSettingsOutput')
    DescribeSnapshotScheduleInput = Shapes::StructureShape.new(name: 'DescribeSnapshotScheduleInput')
    DescribeSnapshotScheduleOutput = Shapes::StructureShape.new(name: 'DescribeSnapshotScheduleOutput')
    DescribeStorediSCSIVolumesInput = Shapes::StructureShape.new(name: 'DescribeStorediSCSIVolumesInput')
    DescribeStorediSCSIVolumesOutput = Shapes::StructureShape.new(name: 'DescribeStorediSCSIVolumesOutput')
    DescribeTapeArchivesInput = Shapes::StructureShape.new(name: 'DescribeTapeArchivesInput')
    DescribeTapeArchivesOutput = Shapes::StructureShape.new(name: 'DescribeTapeArchivesOutput')
    DescribeTapeRecoveryPointsInput = Shapes::StructureShape.new(name: 'DescribeTapeRecoveryPointsInput')
    DescribeTapeRecoveryPointsOutput = Shapes::StructureShape.new(name: 'DescribeTapeRecoveryPointsOutput')
    DescribeTapesInput = Shapes::StructureShape.new(name: 'DescribeTapesInput')
    DescribeTapesOutput = Shapes::StructureShape.new(name: 'DescribeTapesOutput')
    DescribeUploadBufferInput = Shapes::StructureShape.new(name: 'DescribeUploadBufferInput')
    DescribeUploadBufferOutput = Shapes::StructureShape.new(name: 'DescribeUploadBufferOutput')
    DescribeVTLDevicesInput = Shapes::StructureShape.new(name: 'DescribeVTLDevicesInput')
    DescribeVTLDevicesOutput = Shapes::StructureShape.new(name: 'DescribeVTLDevicesOutput')
    DescribeWorkingStorageInput = Shapes::StructureShape.new(name: 'DescribeWorkingStorageInput')
    DescribeWorkingStorageOutput = Shapes::StructureShape.new(name: 'DescribeWorkingStorageOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    DeviceiSCSIAttributes = Shapes::StructureShape.new(name: 'DeviceiSCSIAttributes')
    DisableGatewayInput = Shapes::StructureShape.new(name: 'DisableGatewayInput')
    DisableGatewayOutput = Shapes::StructureShape.new(name: 'DisableGatewayOutput')
    Disk = Shapes::StructureShape.new(name: 'Disk')
    DiskAllocationType = Shapes::StringShape.new(name: 'DiskAllocationType')
    DiskId = Shapes::StringShape.new(name: 'DiskId')
    DiskIds = Shapes::ListShape.new(name: 'DiskIds')
    Disks = Shapes::ListShape.new(name: 'Disks')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainUserName = Shapes::StringShape.new(name: 'DomainUserName')
    DomainUserPassword = Shapes::StringShape.new(name: 'DomainUserPassword')
    DoubleObject = Shapes::FloatShape.new(name: 'DoubleObject')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    FileShareARN = Shapes::StringShape.new(name: 'FileShareARN')
    FileShareARNList = Shapes::ListShape.new(name: 'FileShareARNList')
    FileShareClientList = Shapes::ListShape.new(name: 'FileShareClientList')
    FileShareId = Shapes::StringShape.new(name: 'FileShareId')
    FileShareInfo = Shapes::StructureShape.new(name: 'FileShareInfo')
    FileShareInfoList = Shapes::ListShape.new(name: 'FileShareInfoList')
    FileShareStatus = Shapes::StringShape.new(name: 'FileShareStatus')
    FileShareType = Shapes::StringShape.new(name: 'FileShareType')
    FileShareUser = Shapes::StringShape.new(name: 'FileShareUser')
    FileShareUserList = Shapes::ListShape.new(name: 'FileShareUserList')
    GatewayARN = Shapes::StringShape.new(name: 'GatewayARN')
    GatewayId = Shapes::StringShape.new(name: 'GatewayId')
    GatewayInfo = Shapes::StructureShape.new(name: 'GatewayInfo')
    GatewayName = Shapes::StringShape.new(name: 'GatewayName')
    GatewayNetworkInterfaces = Shapes::ListShape.new(name: 'GatewayNetworkInterfaces')
    GatewayOperationalState = Shapes::StringShape.new(name: 'GatewayOperationalState')
    GatewayState = Shapes::StringShape.new(name: 'GatewayState')
    GatewayTimezone = Shapes::StringShape.new(name: 'GatewayTimezone')
    GatewayType = Shapes::StringShape.new(name: 'GatewayType')
    Gateways = Shapes::ListShape.new(name: 'Gateways')
    HourOfDay = Shapes::IntegerShape.new(name: 'HourOfDay')
    IPV4AddressCIDR = Shapes::StringShape.new(name: 'IPV4AddressCIDR')
    Initiator = Shapes::StringShape.new(name: 'Initiator')
    Initiators = Shapes::ListShape.new(name: 'Initiators')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidGatewayRequestException = Shapes::StructureShape.new(name: 'InvalidGatewayRequestException')
    IqnName = Shapes::StringShape.new(name: 'IqnName')
    JoinDomainInput = Shapes::StructureShape.new(name: 'JoinDomainInput')
    JoinDomainOutput = Shapes::StructureShape.new(name: 'JoinDomainOutput')
    KMSKey = Shapes::StringShape.new(name: 'KMSKey')
    LastSoftwareUpdate = Shapes::StringShape.new(name: 'LastSoftwareUpdate')
    ListFileSharesInput = Shapes::StructureShape.new(name: 'ListFileSharesInput')
    ListFileSharesOutput = Shapes::StructureShape.new(name: 'ListFileSharesOutput')
    ListGatewaysInput = Shapes::StructureShape.new(name: 'ListGatewaysInput')
    ListGatewaysOutput = Shapes::StructureShape.new(name: 'ListGatewaysOutput')
    ListLocalDisksInput = Shapes::StructureShape.new(name: 'ListLocalDisksInput')
    ListLocalDisksOutput = Shapes::StructureShape.new(name: 'ListLocalDisksOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTapesInput = Shapes::StructureShape.new(name: 'ListTapesInput')
    ListTapesOutput = Shapes::StructureShape.new(name: 'ListTapesOutput')
    ListVolumeInitiatorsInput = Shapes::StructureShape.new(name: 'ListVolumeInitiatorsInput')
    ListVolumeInitiatorsOutput = Shapes::StructureShape.new(name: 'ListVolumeInitiatorsOutput')
    ListVolumeRecoveryPointsInput = Shapes::StructureShape.new(name: 'ListVolumeRecoveryPointsInput')
    ListVolumeRecoveryPointsOutput = Shapes::StructureShape.new(name: 'ListVolumeRecoveryPointsOutput')
    ListVolumesInput = Shapes::StructureShape.new(name: 'ListVolumesInput')
    ListVolumesOutput = Shapes::StructureShape.new(name: 'ListVolumesOutput')
    LocalConsolePassword = Shapes::StringShape.new(name: 'LocalConsolePassword')
    LocationARN = Shapes::StringShape.new(name: 'LocationARN')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MediumChangerType = Shapes::StringShape.new(name: 'MediumChangerType')
    MinuteOfHour = Shapes::IntegerShape.new(name: 'MinuteOfHour')
    NFSFileShareDefaults = Shapes::StructureShape.new(name: 'NFSFileShareDefaults')
    NFSFileShareInfo = Shapes::StructureShape.new(name: 'NFSFileShareInfo')
    NFSFileShareInfoList = Shapes::ListShape.new(name: 'NFSFileShareInfoList')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NextUpdateAvailabilityDate = Shapes::StringShape.new(name: 'NextUpdateAvailabilityDate')
    NotificationId = Shapes::StringShape.new(name: 'NotificationId')
    NotifyWhenUploadedInput = Shapes::StructureShape.new(name: 'NotifyWhenUploadedInput')
    NotifyWhenUploadedOutput = Shapes::StructureShape.new(name: 'NotifyWhenUploadedOutput')
    NumTapesToCreate = Shapes::IntegerShape.new(name: 'NumTapesToCreate')
    ObjectACL = Shapes::StringShape.new(name: 'ObjectACL')
    Path = Shapes::StringShape.new(name: 'Path')
    PermissionId = Shapes::IntegerShape.new(name: 'PermissionId')
    PermissionMode = Shapes::StringShape.new(name: 'PermissionMode')
    PositiveIntObject = Shapes::IntegerShape.new(name: 'PositiveIntObject')
    RecurrenceInHours = Shapes::IntegerShape.new(name: 'RecurrenceInHours')
    RefreshCacheInput = Shapes::StructureShape.new(name: 'RefreshCacheInput')
    RefreshCacheOutput = Shapes::StructureShape.new(name: 'RefreshCacheOutput')
    RegionId = Shapes::StringShape.new(name: 'RegionId')
    RemoveTagsFromResourceInput = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceInput')
    RemoveTagsFromResourceOutput = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceOutput')
    ResetCacheInput = Shapes::StructureShape.new(name: 'ResetCacheInput')
    ResetCacheOutput = Shapes::StructureShape.new(name: 'ResetCacheOutput')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    RetrieveTapeArchiveInput = Shapes::StructureShape.new(name: 'RetrieveTapeArchiveInput')
    RetrieveTapeArchiveOutput = Shapes::StructureShape.new(name: 'RetrieveTapeArchiveOutput')
    RetrieveTapeRecoveryPointInput = Shapes::StructureShape.new(name: 'RetrieveTapeRecoveryPointInput')
    RetrieveTapeRecoveryPointOutput = Shapes::StructureShape.new(name: 'RetrieveTapeRecoveryPointOutput')
    Role = Shapes::StringShape.new(name: 'Role')
    SMBFileShareInfo = Shapes::StructureShape.new(name: 'SMBFileShareInfo')
    SMBFileShareInfoList = Shapes::ListShape.new(name: 'SMBFileShareInfoList')
    SMBGuestPassword = Shapes::StringShape.new(name: 'SMBGuestPassword')
    ServiceUnavailableError = Shapes::StructureShape.new(name: 'ServiceUnavailableError')
    SetLocalConsolePasswordInput = Shapes::StructureShape.new(name: 'SetLocalConsolePasswordInput')
    SetLocalConsolePasswordOutput = Shapes::StructureShape.new(name: 'SetLocalConsolePasswordOutput')
    SetSMBGuestPasswordInput = Shapes::StructureShape.new(name: 'SetSMBGuestPasswordInput')
    SetSMBGuestPasswordOutput = Shapes::StructureShape.new(name: 'SetSMBGuestPasswordOutput')
    ShutdownGatewayInput = Shapes::StructureShape.new(name: 'ShutdownGatewayInput')
    ShutdownGatewayOutput = Shapes::StructureShape.new(name: 'ShutdownGatewayOutput')
    SnapshotDescription = Shapes::StringShape.new(name: 'SnapshotDescription')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    Squash = Shapes::StringShape.new(name: 'Squash')
    StartGatewayInput = Shapes::StructureShape.new(name: 'StartGatewayInput')
    StartGatewayOutput = Shapes::StructureShape.new(name: 'StartGatewayOutput')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    StorageGatewayError = Shapes::StructureShape.new(name: 'StorageGatewayError')
    StorediSCSIVolume = Shapes::StructureShape.new(name: 'StorediSCSIVolume')
    StorediSCSIVolumes = Shapes::ListShape.new(name: 'StorediSCSIVolumes')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    Tape = Shapes::StructureShape.new(name: 'Tape')
    TapeARN = Shapes::StringShape.new(name: 'TapeARN')
    TapeARNs = Shapes::ListShape.new(name: 'TapeARNs')
    TapeArchive = Shapes::StructureShape.new(name: 'TapeArchive')
    TapeArchiveStatus = Shapes::StringShape.new(name: 'TapeArchiveStatus')
    TapeArchives = Shapes::ListShape.new(name: 'TapeArchives')
    TapeBarcode = Shapes::StringShape.new(name: 'TapeBarcode')
    TapeBarcodePrefix = Shapes::StringShape.new(name: 'TapeBarcodePrefix')
    TapeDriveType = Shapes::StringShape.new(name: 'TapeDriveType')
    TapeInfo = Shapes::StructureShape.new(name: 'TapeInfo')
    TapeInfos = Shapes::ListShape.new(name: 'TapeInfos')
    TapeRecoveryPointInfo = Shapes::StructureShape.new(name: 'TapeRecoveryPointInfo')
    TapeRecoveryPointInfos = Shapes::ListShape.new(name: 'TapeRecoveryPointInfos')
    TapeRecoveryPointStatus = Shapes::StringShape.new(name: 'TapeRecoveryPointStatus')
    TapeSize = Shapes::IntegerShape.new(name: 'TapeSize')
    TapeStatus = Shapes::StringShape.new(name: 'TapeStatus')
    TapeUsage = Shapes::IntegerShape.new(name: 'TapeUsage')
    Tapes = Shapes::ListShape.new(name: 'Tapes')
    TargetARN = Shapes::StringShape.new(name: 'TargetARN')
    TargetName = Shapes::StringShape.new(name: 'TargetName')
    Time = Shapes::TimestampShape.new(name: 'Time')
    UpdateBandwidthRateLimitInput = Shapes::StructureShape.new(name: 'UpdateBandwidthRateLimitInput')
    UpdateBandwidthRateLimitOutput = Shapes::StructureShape.new(name: 'UpdateBandwidthRateLimitOutput')
    UpdateChapCredentialsInput = Shapes::StructureShape.new(name: 'UpdateChapCredentialsInput')
    UpdateChapCredentialsOutput = Shapes::StructureShape.new(name: 'UpdateChapCredentialsOutput')
    UpdateGatewayInformationInput = Shapes::StructureShape.new(name: 'UpdateGatewayInformationInput')
    UpdateGatewayInformationOutput = Shapes::StructureShape.new(name: 'UpdateGatewayInformationOutput')
    UpdateGatewaySoftwareNowInput = Shapes::StructureShape.new(name: 'UpdateGatewaySoftwareNowInput')
    UpdateGatewaySoftwareNowOutput = Shapes::StructureShape.new(name: 'UpdateGatewaySoftwareNowOutput')
    UpdateMaintenanceStartTimeInput = Shapes::StructureShape.new(name: 'UpdateMaintenanceStartTimeInput')
    UpdateMaintenanceStartTimeOutput = Shapes::StructureShape.new(name: 'UpdateMaintenanceStartTimeOutput')
    UpdateNFSFileShareInput = Shapes::StructureShape.new(name: 'UpdateNFSFileShareInput')
    UpdateNFSFileShareOutput = Shapes::StructureShape.new(name: 'UpdateNFSFileShareOutput')
    UpdateSMBFileShareInput = Shapes::StructureShape.new(name: 'UpdateSMBFileShareInput')
    UpdateSMBFileShareOutput = Shapes::StructureShape.new(name: 'UpdateSMBFileShareOutput')
    UpdateSnapshotScheduleInput = Shapes::StructureShape.new(name: 'UpdateSnapshotScheduleInput')
    UpdateSnapshotScheduleOutput = Shapes::StructureShape.new(name: 'UpdateSnapshotScheduleOutput')
    UpdateVTLDeviceTypeInput = Shapes::StructureShape.new(name: 'UpdateVTLDeviceTypeInput')
    UpdateVTLDeviceTypeOutput = Shapes::StructureShape.new(name: 'UpdateVTLDeviceTypeOutput')
    VTLDevice = Shapes::StructureShape.new(name: 'VTLDevice')
    VTLDeviceARN = Shapes::StringShape.new(name: 'VTLDeviceARN')
    VTLDeviceARNs = Shapes::ListShape.new(name: 'VTLDeviceARNs')
    VTLDeviceProductIdentifier = Shapes::StringShape.new(name: 'VTLDeviceProductIdentifier')
    VTLDeviceType = Shapes::StringShape.new(name: 'VTLDeviceType')
    VTLDeviceVendor = Shapes::StringShape.new(name: 'VTLDeviceVendor')
    VTLDevices = Shapes::ListShape.new(name: 'VTLDevices')
    VolumeARN = Shapes::StringShape.new(name: 'VolumeARN')
    VolumeARNs = Shapes::ListShape.new(name: 'VolumeARNs')
    VolumeId = Shapes::StringShape.new(name: 'VolumeId')
    VolumeInfo = Shapes::StructureShape.new(name: 'VolumeInfo')
    VolumeInfos = Shapes::ListShape.new(name: 'VolumeInfos')
    VolumeRecoveryPointInfo = Shapes::StructureShape.new(name: 'VolumeRecoveryPointInfo')
    VolumeRecoveryPointInfos = Shapes::ListShape.new(name: 'VolumeRecoveryPointInfos')
    VolumeStatus = Shapes::StringShape.new(name: 'VolumeStatus')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    VolumeUsedInBytes = Shapes::IntegerShape.new(name: 'VolumeUsedInBytes')
    VolumeiSCSIAttributes = Shapes::StructureShape.new(name: 'VolumeiSCSIAttributes')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    double = Shapes::FloatShape.new(name: 'double')
    errorDetails = Shapes::MapShape.new(name: 'errorDetails')
    integer = Shapes::IntegerShape.new(name: 'integer')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')

    ActivateGatewayInput.add_member(:activation_key, Shapes::ShapeRef.new(shape: ActivationKey, required: true, location_name: "ActivationKey"))
    ActivateGatewayInput.add_member(:gateway_name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "GatewayName"))
    ActivateGatewayInput.add_member(:gateway_timezone, Shapes::ShapeRef.new(shape: GatewayTimezone, required: true, location_name: "GatewayTimezone"))
    ActivateGatewayInput.add_member(:gateway_region, Shapes::ShapeRef.new(shape: RegionId, required: true, location_name: "GatewayRegion"))
    ActivateGatewayInput.add_member(:gateway_type, Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    ActivateGatewayInput.add_member(:tape_drive_type, Shapes::ShapeRef.new(shape: TapeDriveType, location_name: "TapeDriveType"))
    ActivateGatewayInput.add_member(:medium_changer_type, Shapes::ShapeRef.new(shape: MediumChangerType, location_name: "MediumChangerType"))
    ActivateGatewayInput.struct_class = Types::ActivateGatewayInput

    ActivateGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ActivateGatewayOutput.struct_class = Types::ActivateGatewayOutput

    AddCacheInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    AddCacheInput.add_member(:disk_ids, Shapes::ShapeRef.new(shape: DiskIds, required: true, location_name: "DiskIds"))
    AddCacheInput.struct_class = Types::AddCacheInput

    AddCacheOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    AddCacheOutput.struct_class = Types::AddCacheOutput

    AddTagsToResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    AddTagsToResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    AddTagsToResourceInput.struct_class = Types::AddTagsToResourceInput

    AddTagsToResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    AddTagsToResourceOutput.struct_class = Types::AddTagsToResourceOutput

    AddUploadBufferInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    AddUploadBufferInput.add_member(:disk_ids, Shapes::ShapeRef.new(shape: DiskIds, required: true, location_name: "DiskIds"))
    AddUploadBufferInput.struct_class = Types::AddUploadBufferInput

    AddUploadBufferOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    AddUploadBufferOutput.struct_class = Types::AddUploadBufferOutput

    AddWorkingStorageInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    AddWorkingStorageInput.add_member(:disk_ids, Shapes::ShapeRef.new(shape: DiskIds, required: true, location_name: "DiskIds"))
    AddWorkingStorageInput.struct_class = Types::AddWorkingStorageInput

    AddWorkingStorageOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    AddWorkingStorageOutput.struct_class = Types::AddWorkingStorageOutput

    CachediSCSIVolume.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    CachediSCSIVolume.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    CachediSCSIVolume.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    CachediSCSIVolume.add_member(:volume_status, Shapes::ShapeRef.new(shape: VolumeStatus, location_name: "VolumeStatus"))
    CachediSCSIVolume.add_member(:volume_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "VolumeSizeInBytes"))
    CachediSCSIVolume.add_member(:volume_progress, Shapes::ShapeRef.new(shape: DoubleObject, location_name: "VolumeProgress"))
    CachediSCSIVolume.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SourceSnapshotId"))
    CachediSCSIVolume.add_member(:volume_iscsi_attributes, Shapes::ShapeRef.new(shape: VolumeiSCSIAttributes, location_name: "VolumeiSCSIAttributes"))
    CachediSCSIVolume.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDate, location_name: "CreatedDate"))
    CachediSCSIVolume.add_member(:volume_used_in_bytes, Shapes::ShapeRef.new(shape: VolumeUsedInBytes, location_name: "VolumeUsedInBytes"))
    CachediSCSIVolume.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CachediSCSIVolume.struct_class = Types::CachediSCSIVolume

    CachediSCSIVolumes.member = Shapes::ShapeRef.new(shape: CachediSCSIVolume)

    CancelArchivalInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CancelArchivalInput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, required: true, location_name: "TapeARN"))
    CancelArchivalInput.struct_class = Types::CancelArchivalInput

    CancelArchivalOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    CancelArchivalOutput.struct_class = Types::CancelArchivalOutput

    CancelRetrievalInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CancelRetrievalInput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, required: true, location_name: "TapeARN"))
    CancelRetrievalInput.struct_class = Types::CancelRetrievalInput

    CancelRetrievalOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    CancelRetrievalOutput.struct_class = Types::CancelRetrievalOutput

    ChapCredentials.member = Shapes::ShapeRef.new(shape: ChapInfo)

    ChapInfo.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    ChapInfo.add_member(:secret_to_authenticate_initiator, Shapes::ShapeRef.new(shape: ChapSecret, location_name: "SecretToAuthenticateInitiator"))
    ChapInfo.add_member(:initiator_name, Shapes::ShapeRef.new(shape: IqnName, location_name: "InitiatorName"))
    ChapInfo.add_member(:secret_to_authenticate_target, Shapes::ShapeRef.new(shape: ChapSecret, location_name: "SecretToAuthenticateTarget"))
    ChapInfo.struct_class = Types::ChapInfo

    CreateCachediSCSIVolumeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CreateCachediSCSIVolumeInput.add_member(:volume_size_in_bytes, Shapes::ShapeRef.new(shape: long, required: true, location_name: "VolumeSizeInBytes"))
    CreateCachediSCSIVolumeInput.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateCachediSCSIVolumeInput.add_member(:target_name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "TargetName"))
    CreateCachediSCSIVolumeInput.add_member(:source_volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "SourceVolumeARN"))
    CreateCachediSCSIVolumeInput.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, required: true, location_name: "NetworkInterfaceId"))
    CreateCachediSCSIVolumeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateCachediSCSIVolumeInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    CreateCachediSCSIVolumeInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CreateCachediSCSIVolumeInput.struct_class = Types::CreateCachediSCSIVolumeInput

    CreateCachediSCSIVolumeOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    CreateCachediSCSIVolumeOutput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    CreateCachediSCSIVolumeOutput.struct_class = Types::CreateCachediSCSIVolumeOutput

    CreateNFSFileShareInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateNFSFileShareInput.add_member(:nfs_file_share_defaults, Shapes::ShapeRef.new(shape: NFSFileShareDefaults, location_name: "NFSFileShareDefaults"))
    CreateNFSFileShareInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CreateNFSFileShareInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    CreateNFSFileShareInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CreateNFSFileShareInput.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateNFSFileShareInput.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationARN, required: true, location_name: "LocationARN"))
    CreateNFSFileShareInput.add_member(:default_storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "DefaultStorageClass"))
    CreateNFSFileShareInput.add_member(:object_acl, Shapes::ShapeRef.new(shape: ObjectACL, location_name: "ObjectACL"))
    CreateNFSFileShareInput.add_member(:client_list, Shapes::ShapeRef.new(shape: FileShareClientList, location_name: "ClientList"))
    CreateNFSFileShareInput.add_member(:squash, Shapes::ShapeRef.new(shape: Squash, location_name: "Squash"))
    CreateNFSFileShareInput.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    CreateNFSFileShareInput.add_member(:guess_mime_type_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "GuessMIMETypeEnabled"))
    CreateNFSFileShareInput.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    CreateNFSFileShareInput.struct_class = Types::CreateNFSFileShareInput

    CreateNFSFileShareOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    CreateNFSFileShareOutput.struct_class = Types::CreateNFSFileShareOutput

    CreateSMBFileShareInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateSMBFileShareInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CreateSMBFileShareInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    CreateSMBFileShareInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CreateSMBFileShareInput.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateSMBFileShareInput.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationARN, required: true, location_name: "LocationARN"))
    CreateSMBFileShareInput.add_member(:default_storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "DefaultStorageClass"))
    CreateSMBFileShareInput.add_member(:object_acl, Shapes::ShapeRef.new(shape: ObjectACL, location_name: "ObjectACL"))
    CreateSMBFileShareInput.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    CreateSMBFileShareInput.add_member(:guess_mime_type_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "GuessMIMETypeEnabled"))
    CreateSMBFileShareInput.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    CreateSMBFileShareInput.add_member(:valid_user_list, Shapes::ShapeRef.new(shape: FileShareUserList, location_name: "ValidUserList"))
    CreateSMBFileShareInput.add_member(:invalid_user_list, Shapes::ShapeRef.new(shape: FileShareUserList, location_name: "InvalidUserList"))
    CreateSMBFileShareInput.add_member(:authentication, Shapes::ShapeRef.new(shape: Authentication, location_name: "Authentication"))
    CreateSMBFileShareInput.struct_class = Types::CreateSMBFileShareInput

    CreateSMBFileShareOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    CreateSMBFileShareOutput.struct_class = Types::CreateSMBFileShareOutput

    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:snapshot_description, Shapes::ShapeRef.new(shape: SnapshotDescription, required: true, location_name: "SnapshotDescription"))
    CreateSnapshotFromVolumeRecoveryPointInput.struct_class = Types::CreateSnapshotFromVolumeRecoveryPointInput

    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:volume_recovery_point_time, Shapes::ShapeRef.new(shape: string, location_name: "VolumeRecoveryPointTime"))
    CreateSnapshotFromVolumeRecoveryPointOutput.struct_class = Types::CreateSnapshotFromVolumeRecoveryPointOutput

    CreateSnapshotInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    CreateSnapshotInput.add_member(:snapshot_description, Shapes::ShapeRef.new(shape: SnapshotDescription, required: true, location_name: "SnapshotDescription"))
    CreateSnapshotInput.struct_class = Types::CreateSnapshotInput

    CreateSnapshotOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    CreateSnapshotOutput.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateSnapshotOutput.struct_class = Types::CreateSnapshotOutput

    CreateStorediSCSIVolumeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CreateStorediSCSIVolumeInput.add_member(:disk_id, Shapes::ShapeRef.new(shape: DiskId, required: true, location_name: "DiskId"))
    CreateStorediSCSIVolumeInput.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateStorediSCSIVolumeInput.add_member(:preserve_existing_data, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "PreserveExistingData"))
    CreateStorediSCSIVolumeInput.add_member(:target_name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "TargetName"))
    CreateStorediSCSIVolumeInput.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, required: true, location_name: "NetworkInterfaceId"))
    CreateStorediSCSIVolumeInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    CreateStorediSCSIVolumeInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CreateStorediSCSIVolumeInput.struct_class = Types::CreateStorediSCSIVolumeInput

    CreateStorediSCSIVolumeOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    CreateStorediSCSIVolumeOutput.add_member(:volume_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "VolumeSizeInBytes"))
    CreateStorediSCSIVolumeOutput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    CreateStorediSCSIVolumeOutput.struct_class = Types::CreateStorediSCSIVolumeOutput

    CreateTapeWithBarcodeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CreateTapeWithBarcodeInput.add_member(:tape_size_in_bytes, Shapes::ShapeRef.new(shape: TapeSize, required: true, location_name: "TapeSizeInBytes"))
    CreateTapeWithBarcodeInput.add_member(:tape_barcode, Shapes::ShapeRef.new(shape: TapeBarcode, required: true, location_name: "TapeBarcode"))
    CreateTapeWithBarcodeInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    CreateTapeWithBarcodeInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CreateTapeWithBarcodeInput.struct_class = Types::CreateTapeWithBarcodeInput

    CreateTapeWithBarcodeOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    CreateTapeWithBarcodeOutput.struct_class = Types::CreateTapeWithBarcodeOutput

    CreateTapesInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    CreateTapesInput.add_member(:tape_size_in_bytes, Shapes::ShapeRef.new(shape: TapeSize, required: true, location_name: "TapeSizeInBytes"))
    CreateTapesInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateTapesInput.add_member(:num_tapes_to_create, Shapes::ShapeRef.new(shape: NumTapesToCreate, required: true, location_name: "NumTapesToCreate"))
    CreateTapesInput.add_member(:tape_barcode_prefix, Shapes::ShapeRef.new(shape: TapeBarcodePrefix, required: true, location_name: "TapeBarcodePrefix"))
    CreateTapesInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    CreateTapesInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    CreateTapesInput.struct_class = Types::CreateTapesInput

    CreateTapesOutput.add_member(:tape_arns, Shapes::ShapeRef.new(shape: TapeARNs, location_name: "TapeARNs"))
    CreateTapesOutput.struct_class = Types::CreateTapesOutput

    DeleteBandwidthRateLimitInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DeleteBandwidthRateLimitInput.add_member(:bandwidth_type, Shapes::ShapeRef.new(shape: BandwidthType, required: true, location_name: "BandwidthType"))
    DeleteBandwidthRateLimitInput.struct_class = Types::DeleteBandwidthRateLimitInput

    DeleteBandwidthRateLimitOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DeleteBandwidthRateLimitOutput.struct_class = Types::DeleteBandwidthRateLimitOutput

    DeleteChapCredentialsInput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, required: true, location_name: "TargetARN"))
    DeleteChapCredentialsInput.add_member(:initiator_name, Shapes::ShapeRef.new(shape: IqnName, required: true, location_name: "InitiatorName"))
    DeleteChapCredentialsInput.struct_class = Types::DeleteChapCredentialsInput

    DeleteChapCredentialsOutput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    DeleteChapCredentialsOutput.add_member(:initiator_name, Shapes::ShapeRef.new(shape: IqnName, location_name: "InitiatorName"))
    DeleteChapCredentialsOutput.struct_class = Types::DeleteChapCredentialsOutput

    DeleteFileShareInput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, required: true, location_name: "FileShareARN"))
    DeleteFileShareInput.add_member(:force_delete, Shapes::ShapeRef.new(shape: boolean, location_name: "ForceDelete"))
    DeleteFileShareInput.struct_class = Types::DeleteFileShareInput

    DeleteFileShareOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    DeleteFileShareOutput.struct_class = Types::DeleteFileShareOutput

    DeleteGatewayInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DeleteGatewayInput.struct_class = Types::DeleteGatewayInput

    DeleteGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DeleteGatewayOutput.struct_class = Types::DeleteGatewayOutput

    DeleteSnapshotScheduleInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    DeleteSnapshotScheduleInput.struct_class = Types::DeleteSnapshotScheduleInput

    DeleteSnapshotScheduleOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    DeleteSnapshotScheduleOutput.struct_class = Types::DeleteSnapshotScheduleOutput

    DeleteTapeArchiveInput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, required: true, location_name: "TapeARN"))
    DeleteTapeArchiveInput.struct_class = Types::DeleteTapeArchiveInput

    DeleteTapeArchiveOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    DeleteTapeArchiveOutput.struct_class = Types::DeleteTapeArchiveOutput

    DeleteTapeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DeleteTapeInput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, required: true, location_name: "TapeARN"))
    DeleteTapeInput.struct_class = Types::DeleteTapeInput

    DeleteTapeOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    DeleteTapeOutput.struct_class = Types::DeleteTapeOutput

    DeleteVolumeInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    DeleteVolumeInput.struct_class = Types::DeleteVolumeInput

    DeleteVolumeOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    DeleteVolumeOutput.struct_class = Types::DeleteVolumeOutput

    DescribeBandwidthRateLimitInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeBandwidthRateLimitInput.struct_class = Types::DescribeBandwidthRateLimitInput

    DescribeBandwidthRateLimitOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeBandwidthRateLimitOutput.add_member(:average_upload_rate_limit_in_bits_per_sec, Shapes::ShapeRef.new(shape: BandwidthUploadRateLimit, location_name: "AverageUploadRateLimitInBitsPerSec"))
    DescribeBandwidthRateLimitOutput.add_member(:average_download_rate_limit_in_bits_per_sec, Shapes::ShapeRef.new(shape: BandwidthDownloadRateLimit, location_name: "AverageDownloadRateLimitInBitsPerSec"))
    DescribeBandwidthRateLimitOutput.struct_class = Types::DescribeBandwidthRateLimitOutput

    DescribeCacheInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeCacheInput.struct_class = Types::DescribeCacheInput

    DescribeCacheOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeCacheOutput.add_member(:disk_ids, Shapes::ShapeRef.new(shape: DiskIds, location_name: "DiskIds"))
    DescribeCacheOutput.add_member(:cache_allocated_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "CacheAllocatedInBytes"))
    DescribeCacheOutput.add_member(:cache_used_percentage, Shapes::ShapeRef.new(shape: double, location_name: "CacheUsedPercentage"))
    DescribeCacheOutput.add_member(:cache_dirty_percentage, Shapes::ShapeRef.new(shape: double, location_name: "CacheDirtyPercentage"))
    DescribeCacheOutput.add_member(:cache_hit_percentage, Shapes::ShapeRef.new(shape: double, location_name: "CacheHitPercentage"))
    DescribeCacheOutput.add_member(:cache_miss_percentage, Shapes::ShapeRef.new(shape: double, location_name: "CacheMissPercentage"))
    DescribeCacheOutput.struct_class = Types::DescribeCacheOutput

    DescribeCachediSCSIVolumesInput.add_member(:volume_arns, Shapes::ShapeRef.new(shape: VolumeARNs, required: true, location_name: "VolumeARNs"))
    DescribeCachediSCSIVolumesInput.struct_class = Types::DescribeCachediSCSIVolumesInput

    DescribeCachediSCSIVolumesOutput.add_member(:cached_iscsi_volumes, Shapes::ShapeRef.new(shape: CachediSCSIVolumes, location_name: "CachediSCSIVolumes"))
    DescribeCachediSCSIVolumesOutput.struct_class = Types::DescribeCachediSCSIVolumesOutput

    DescribeChapCredentialsInput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, required: true, location_name: "TargetARN"))
    DescribeChapCredentialsInput.struct_class = Types::DescribeChapCredentialsInput

    DescribeChapCredentialsOutput.add_member(:chap_credentials, Shapes::ShapeRef.new(shape: ChapCredentials, location_name: "ChapCredentials"))
    DescribeChapCredentialsOutput.struct_class = Types::DescribeChapCredentialsOutput

    DescribeGatewayInformationInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeGatewayInformationInput.struct_class = Types::DescribeGatewayInformationInput

    DescribeGatewayInformationOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeGatewayInformationOutput.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, location_name: "GatewayId"))
    DescribeGatewayInformationOutput.add_member(:gateway_name, Shapes::ShapeRef.new(shape: string, location_name: "GatewayName"))
    DescribeGatewayInformationOutput.add_member(:gateway_timezone, Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: "GatewayTimezone"))
    DescribeGatewayInformationOutput.add_member(:gateway_state, Shapes::ShapeRef.new(shape: GatewayState, location_name: "GatewayState"))
    DescribeGatewayInformationOutput.add_member(:gateway_network_interfaces, Shapes::ShapeRef.new(shape: GatewayNetworkInterfaces, location_name: "GatewayNetworkInterfaces"))
    DescribeGatewayInformationOutput.add_member(:gateway_type, Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    DescribeGatewayInformationOutput.add_member(:next_update_availability_date, Shapes::ShapeRef.new(shape: NextUpdateAvailabilityDate, location_name: "NextUpdateAvailabilityDate"))
    DescribeGatewayInformationOutput.add_member(:last_software_update, Shapes::ShapeRef.new(shape: LastSoftwareUpdate, location_name: "LastSoftwareUpdate"))
    DescribeGatewayInformationOutput.struct_class = Types::DescribeGatewayInformationOutput

    DescribeMaintenanceStartTimeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeMaintenanceStartTimeInput.struct_class = Types::DescribeMaintenanceStartTimeInput

    DescribeMaintenanceStartTimeOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeMaintenanceStartTimeOutput.add_member(:hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, location_name: "HourOfDay"))
    DescribeMaintenanceStartTimeOutput.add_member(:minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: "MinuteOfHour"))
    DescribeMaintenanceStartTimeOutput.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "DayOfWeek"))
    DescribeMaintenanceStartTimeOutput.add_member(:timezone, Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: "Timezone"))
    DescribeMaintenanceStartTimeOutput.struct_class = Types::DescribeMaintenanceStartTimeOutput

    DescribeNFSFileSharesInput.add_member(:file_share_arn_list, Shapes::ShapeRef.new(shape: FileShareARNList, required: true, location_name: "FileShareARNList"))
    DescribeNFSFileSharesInput.struct_class = Types::DescribeNFSFileSharesInput

    DescribeNFSFileSharesOutput.add_member(:nfs_file_share_info_list, Shapes::ShapeRef.new(shape: NFSFileShareInfoList, location_name: "NFSFileShareInfoList"))
    DescribeNFSFileSharesOutput.struct_class = Types::DescribeNFSFileSharesOutput

    DescribeSMBFileSharesInput.add_member(:file_share_arn_list, Shapes::ShapeRef.new(shape: FileShareARNList, required: true, location_name: "FileShareARNList"))
    DescribeSMBFileSharesInput.struct_class = Types::DescribeSMBFileSharesInput

    DescribeSMBFileSharesOutput.add_member(:smb_file_share_info_list, Shapes::ShapeRef.new(shape: SMBFileShareInfoList, location_name: "SMBFileShareInfoList"))
    DescribeSMBFileSharesOutput.struct_class = Types::DescribeSMBFileSharesOutput

    DescribeSMBSettingsInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeSMBSettingsInput.struct_class = Types::DescribeSMBSettingsInput

    DescribeSMBSettingsOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeSMBSettingsOutput.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DescribeSMBSettingsOutput.add_member(:smb_guest_password_set, Shapes::ShapeRef.new(shape: Boolean, location_name: "SMBGuestPasswordSet"))
    DescribeSMBSettingsOutput.struct_class = Types::DescribeSMBSettingsOutput

    DescribeSnapshotScheduleInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    DescribeSnapshotScheduleInput.struct_class = Types::DescribeSnapshotScheduleInput

    DescribeSnapshotScheduleOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    DescribeSnapshotScheduleOutput.add_member(:start_at, Shapes::ShapeRef.new(shape: HourOfDay, location_name: "StartAt"))
    DescribeSnapshotScheduleOutput.add_member(:recurrence_in_hours, Shapes::ShapeRef.new(shape: RecurrenceInHours, location_name: "RecurrenceInHours"))
    DescribeSnapshotScheduleOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeSnapshotScheduleOutput.add_member(:timezone, Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: "Timezone"))
    DescribeSnapshotScheduleOutput.struct_class = Types::DescribeSnapshotScheduleOutput

    DescribeStorediSCSIVolumesInput.add_member(:volume_arns, Shapes::ShapeRef.new(shape: VolumeARNs, required: true, location_name: "VolumeARNs"))
    DescribeStorediSCSIVolumesInput.struct_class = Types::DescribeStorediSCSIVolumesInput

    DescribeStorediSCSIVolumesOutput.add_member(:stored_iscsi_volumes, Shapes::ShapeRef.new(shape: StorediSCSIVolumes, location_name: "StorediSCSIVolumes"))
    DescribeStorediSCSIVolumesOutput.struct_class = Types::DescribeStorediSCSIVolumesOutput

    DescribeTapeArchivesInput.add_member(:tape_arns, Shapes::ShapeRef.new(shape: TapeARNs, location_name: "TapeARNs"))
    DescribeTapeArchivesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTapeArchivesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    DescribeTapeArchivesInput.struct_class = Types::DescribeTapeArchivesInput

    DescribeTapeArchivesOutput.add_member(:tape_archives, Shapes::ShapeRef.new(shape: TapeArchives, location_name: "TapeArchives"))
    DescribeTapeArchivesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTapeArchivesOutput.struct_class = Types::DescribeTapeArchivesOutput

    DescribeTapeRecoveryPointsInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeTapeRecoveryPointsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTapeRecoveryPointsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    DescribeTapeRecoveryPointsInput.struct_class = Types::DescribeTapeRecoveryPointsInput

    DescribeTapeRecoveryPointsOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeTapeRecoveryPointsOutput.add_member(:tape_recovery_point_infos, Shapes::ShapeRef.new(shape: TapeRecoveryPointInfos, location_name: "TapeRecoveryPointInfos"))
    DescribeTapeRecoveryPointsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTapeRecoveryPointsOutput.struct_class = Types::DescribeTapeRecoveryPointsOutput

    DescribeTapesInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeTapesInput.add_member(:tape_arns, Shapes::ShapeRef.new(shape: TapeARNs, location_name: "TapeARNs"))
    DescribeTapesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTapesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    DescribeTapesInput.struct_class = Types::DescribeTapesInput

    DescribeTapesOutput.add_member(:tapes, Shapes::ShapeRef.new(shape: Tapes, location_name: "Tapes"))
    DescribeTapesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTapesOutput.struct_class = Types::DescribeTapesOutput

    DescribeUploadBufferInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeUploadBufferInput.struct_class = Types::DescribeUploadBufferInput

    DescribeUploadBufferOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeUploadBufferOutput.add_member(:disk_ids, Shapes::ShapeRef.new(shape: DiskIds, location_name: "DiskIds"))
    DescribeUploadBufferOutput.add_member(:upload_buffer_used_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "UploadBufferUsedInBytes"))
    DescribeUploadBufferOutput.add_member(:upload_buffer_allocated_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "UploadBufferAllocatedInBytes"))
    DescribeUploadBufferOutput.struct_class = Types::DescribeUploadBufferOutput

    DescribeVTLDevicesInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeVTLDevicesInput.add_member(:vtl_device_arns, Shapes::ShapeRef.new(shape: VTLDeviceARNs, location_name: "VTLDeviceARNs"))
    DescribeVTLDevicesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeVTLDevicesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    DescribeVTLDevicesInput.struct_class = Types::DescribeVTLDevicesInput

    DescribeVTLDevicesOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeVTLDevicesOutput.add_member(:vtl_devices, Shapes::ShapeRef.new(shape: VTLDevices, location_name: "VTLDevices"))
    DescribeVTLDevicesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeVTLDevicesOutput.struct_class = Types::DescribeVTLDevicesOutput

    DescribeWorkingStorageInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DescribeWorkingStorageInput.struct_class = Types::DescribeWorkingStorageInput

    DescribeWorkingStorageOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DescribeWorkingStorageOutput.add_member(:disk_ids, Shapes::ShapeRef.new(shape: DiskIds, location_name: "DiskIds"))
    DescribeWorkingStorageOutput.add_member(:working_storage_used_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "WorkingStorageUsedInBytes"))
    DescribeWorkingStorageOutput.add_member(:working_storage_allocated_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "WorkingStorageAllocatedInBytes"))
    DescribeWorkingStorageOutput.struct_class = Types::DescribeWorkingStorageOutput

    DeviceiSCSIAttributes.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    DeviceiSCSIAttributes.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    DeviceiSCSIAttributes.add_member(:network_interface_port, Shapes::ShapeRef.new(shape: integer, location_name: "NetworkInterfacePort"))
    DeviceiSCSIAttributes.add_member(:chap_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "ChapEnabled"))
    DeviceiSCSIAttributes.struct_class = Types::DeviceiSCSIAttributes

    DisableGatewayInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    DisableGatewayInput.struct_class = Types::DisableGatewayInput

    DisableGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    DisableGatewayOutput.struct_class = Types::DisableGatewayOutput

    Disk.add_member(:disk_id, Shapes::ShapeRef.new(shape: DiskId, location_name: "DiskId"))
    Disk.add_member(:disk_path, Shapes::ShapeRef.new(shape: string, location_name: "DiskPath"))
    Disk.add_member(:disk_node, Shapes::ShapeRef.new(shape: string, location_name: "DiskNode"))
    Disk.add_member(:disk_status, Shapes::ShapeRef.new(shape: string, location_name: "DiskStatus"))
    Disk.add_member(:disk_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "DiskSizeInBytes"))
    Disk.add_member(:disk_allocation_type, Shapes::ShapeRef.new(shape: DiskAllocationType, location_name: "DiskAllocationType"))
    Disk.add_member(:disk_allocation_resource, Shapes::ShapeRef.new(shape: string, location_name: "DiskAllocationResource"))
    Disk.struct_class = Types::Disk

    DiskIds.member = Shapes::ShapeRef.new(shape: DiskId)

    Disks.member = Shapes::ShapeRef.new(shape: Disk)

    FileShareARNList.member = Shapes::ShapeRef.new(shape: FileShareARN)

    FileShareClientList.member = Shapes::ShapeRef.new(shape: IPV4AddressCIDR)

    FileShareInfo.add_member(:file_share_type, Shapes::ShapeRef.new(shape: FileShareType, location_name: "FileShareType"))
    FileShareInfo.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    FileShareInfo.add_member(:file_share_id, Shapes::ShapeRef.new(shape: FileShareId, location_name: "FileShareId"))
    FileShareInfo.add_member(:file_share_status, Shapes::ShapeRef.new(shape: FileShareStatus, location_name: "FileShareStatus"))
    FileShareInfo.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    FileShareInfo.struct_class = Types::FileShareInfo

    FileShareInfoList.member = Shapes::ShapeRef.new(shape: FileShareInfo)

    FileShareUserList.member = Shapes::ShapeRef.new(shape: FileShareUser)

    GatewayInfo.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, location_name: "GatewayId"))
    GatewayInfo.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    GatewayInfo.add_member(:gateway_type, Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    GatewayInfo.add_member(:gateway_operational_state, Shapes::ShapeRef.new(shape: GatewayOperationalState, location_name: "GatewayOperationalState"))
    GatewayInfo.add_member(:gateway_name, Shapes::ShapeRef.new(shape: string, location_name: "GatewayName"))
    GatewayInfo.struct_class = Types::GatewayInfo

    GatewayNetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    Gateways.member = Shapes::ShapeRef.new(shape: GatewayInfo)

    Initiators.member = Shapes::ShapeRef.new(shape: Initiator)

    JoinDomainInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    JoinDomainInput.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    JoinDomainInput.add_member(:user_name, Shapes::ShapeRef.new(shape: DomainUserName, required: true, location_name: "UserName"))
    JoinDomainInput.add_member(:password, Shapes::ShapeRef.new(shape: DomainUserPassword, required: true, location_name: "Password"))
    JoinDomainInput.struct_class = Types::JoinDomainInput

    JoinDomainOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    JoinDomainOutput.struct_class = Types::JoinDomainOutput

    ListFileSharesInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ListFileSharesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    ListFileSharesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListFileSharesInput.struct_class = Types::ListFileSharesInput

    ListFileSharesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListFileSharesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    ListFileSharesOutput.add_member(:file_share_info_list, Shapes::ShapeRef.new(shape: FileShareInfoList, location_name: "FileShareInfoList"))
    ListFileSharesOutput.struct_class = Types::ListFileSharesOutput

    ListGatewaysInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListGatewaysInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    ListGatewaysInput.struct_class = Types::ListGatewaysInput

    ListGatewaysOutput.add_member(:gateways, Shapes::ShapeRef.new(shape: Gateways, location_name: "Gateways"))
    ListGatewaysOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListGatewaysOutput.struct_class = Types::ListGatewaysOutput

    ListLocalDisksInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    ListLocalDisksInput.struct_class = Types::ListLocalDisksInput

    ListLocalDisksOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ListLocalDisksOutput.add_member(:disks, Shapes::ShapeRef.new(shape: Disks, location_name: "Disks"))
    ListLocalDisksOutput.struct_class = Types::ListLocalDisksOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListTagsForResourceInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    ListTagsForResourceOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTapesInput.add_member(:tape_arns, Shapes::ShapeRef.new(shape: TapeARNs, location_name: "TapeARNs"))
    ListTapesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListTapesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    ListTapesInput.struct_class = Types::ListTapesInput

    ListTapesOutput.add_member(:tape_infos, Shapes::ShapeRef.new(shape: TapeInfos, location_name: "TapeInfos"))
    ListTapesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListTapesOutput.struct_class = Types::ListTapesOutput

    ListVolumeInitiatorsInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    ListVolumeInitiatorsInput.struct_class = Types::ListVolumeInitiatorsInput

    ListVolumeInitiatorsOutput.add_member(:initiators, Shapes::ShapeRef.new(shape: Initiators, location_name: "Initiators"))
    ListVolumeInitiatorsOutput.struct_class = Types::ListVolumeInitiatorsOutput

    ListVolumeRecoveryPointsInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    ListVolumeRecoveryPointsInput.struct_class = Types::ListVolumeRecoveryPointsInput

    ListVolumeRecoveryPointsOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ListVolumeRecoveryPointsOutput.add_member(:volume_recovery_point_infos, Shapes::ShapeRef.new(shape: VolumeRecoveryPointInfos, location_name: "VolumeRecoveryPointInfos"))
    ListVolumeRecoveryPointsOutput.struct_class = Types::ListVolumeRecoveryPointsOutput

    ListVolumesInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ListVolumesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListVolumesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "Limit"))
    ListVolumesInput.struct_class = Types::ListVolumesInput

    ListVolumesOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ListVolumesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListVolumesOutput.add_member(:volume_infos, Shapes::ShapeRef.new(shape: VolumeInfos, location_name: "VolumeInfos"))
    ListVolumesOutput.struct_class = Types::ListVolumesOutput

    NFSFileShareDefaults.add_member(:file_mode, Shapes::ShapeRef.new(shape: PermissionMode, location_name: "FileMode"))
    NFSFileShareDefaults.add_member(:directory_mode, Shapes::ShapeRef.new(shape: PermissionMode, location_name: "DirectoryMode"))
    NFSFileShareDefaults.add_member(:group_id, Shapes::ShapeRef.new(shape: PermissionId, location_name: "GroupId"))
    NFSFileShareDefaults.add_member(:owner_id, Shapes::ShapeRef.new(shape: PermissionId, location_name: "OwnerId"))
    NFSFileShareDefaults.struct_class = Types::NFSFileShareDefaults

    NFSFileShareInfo.add_member(:nfs_file_share_defaults, Shapes::ShapeRef.new(shape: NFSFileShareDefaults, location_name: "NFSFileShareDefaults"))
    NFSFileShareInfo.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    NFSFileShareInfo.add_member(:file_share_id, Shapes::ShapeRef.new(shape: FileShareId, location_name: "FileShareId"))
    NFSFileShareInfo.add_member(:file_share_status, Shapes::ShapeRef.new(shape: FileShareStatus, location_name: "FileShareStatus"))
    NFSFileShareInfo.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    NFSFileShareInfo.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "KMSEncrypted"))
    NFSFileShareInfo.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    NFSFileShareInfo.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    NFSFileShareInfo.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    NFSFileShareInfo.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationARN, location_name: "LocationARN"))
    NFSFileShareInfo.add_member(:default_storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "DefaultStorageClass"))
    NFSFileShareInfo.add_member(:object_acl, Shapes::ShapeRef.new(shape: ObjectACL, location_name: "ObjectACL"))
    NFSFileShareInfo.add_member(:client_list, Shapes::ShapeRef.new(shape: FileShareClientList, location_name: "ClientList"))
    NFSFileShareInfo.add_member(:squash, Shapes::ShapeRef.new(shape: Squash, location_name: "Squash"))
    NFSFileShareInfo.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    NFSFileShareInfo.add_member(:guess_mime_type_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "GuessMIMETypeEnabled"))
    NFSFileShareInfo.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    NFSFileShareInfo.struct_class = Types::NFSFileShareInfo

    NFSFileShareInfoList.member = Shapes::ShapeRef.new(shape: NFSFileShareInfo)

    NetworkInterface.add_member(:ipv_4_address, Shapes::ShapeRef.new(shape: string, location_name: "Ipv4Address"))
    NetworkInterface.add_member(:mac_address, Shapes::ShapeRef.new(shape: string, location_name: "MacAddress"))
    NetworkInterface.add_member(:ipv_6_address, Shapes::ShapeRef.new(shape: string, location_name: "Ipv6Address"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NotifyWhenUploadedInput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, required: true, location_name: "FileShareARN"))
    NotifyWhenUploadedInput.struct_class = Types::NotifyWhenUploadedInput

    NotifyWhenUploadedOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    NotifyWhenUploadedOutput.add_member(:notification_id, Shapes::ShapeRef.new(shape: NotificationId, location_name: "NotificationId"))
    NotifyWhenUploadedOutput.struct_class = Types::NotifyWhenUploadedOutput

    RefreshCacheInput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, required: true, location_name: "FileShareARN"))
    RefreshCacheInput.struct_class = Types::RefreshCacheInput

    RefreshCacheOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    RefreshCacheOutput.struct_class = Types::RefreshCacheOutput

    RemoveTagsFromResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    RemoveTagsFromResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceInput.struct_class = Types::RemoveTagsFromResourceInput

    RemoveTagsFromResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    RemoveTagsFromResourceOutput.struct_class = Types::RemoveTagsFromResourceOutput

    ResetCacheInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    ResetCacheInput.struct_class = Types::ResetCacheInput

    ResetCacheOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ResetCacheOutput.struct_class = Types::ResetCacheOutput

    RetrieveTapeArchiveInput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, required: true, location_name: "TapeARN"))
    RetrieveTapeArchiveInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    RetrieveTapeArchiveInput.struct_class = Types::RetrieveTapeArchiveInput

    RetrieveTapeArchiveOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    RetrieveTapeArchiveOutput.struct_class = Types::RetrieveTapeArchiveOutput

    RetrieveTapeRecoveryPointInput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, required: true, location_name: "TapeARN"))
    RetrieveTapeRecoveryPointInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    RetrieveTapeRecoveryPointInput.struct_class = Types::RetrieveTapeRecoveryPointInput

    RetrieveTapeRecoveryPointOutput.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    RetrieveTapeRecoveryPointOutput.struct_class = Types::RetrieveTapeRecoveryPointOutput

    SMBFileShareInfo.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    SMBFileShareInfo.add_member(:file_share_id, Shapes::ShapeRef.new(shape: FileShareId, location_name: "FileShareId"))
    SMBFileShareInfo.add_member(:file_share_status, Shapes::ShapeRef.new(shape: FileShareStatus, location_name: "FileShareStatus"))
    SMBFileShareInfo.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    SMBFileShareInfo.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: boolean, location_name: "KMSEncrypted"))
    SMBFileShareInfo.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    SMBFileShareInfo.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    SMBFileShareInfo.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    SMBFileShareInfo.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationARN, location_name: "LocationARN"))
    SMBFileShareInfo.add_member(:default_storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "DefaultStorageClass"))
    SMBFileShareInfo.add_member(:object_acl, Shapes::ShapeRef.new(shape: ObjectACL, location_name: "ObjectACL"))
    SMBFileShareInfo.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    SMBFileShareInfo.add_member(:guess_mime_type_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "GuessMIMETypeEnabled"))
    SMBFileShareInfo.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    SMBFileShareInfo.add_member(:valid_user_list, Shapes::ShapeRef.new(shape: FileShareUserList, location_name: "ValidUserList"))
    SMBFileShareInfo.add_member(:invalid_user_list, Shapes::ShapeRef.new(shape: FileShareUserList, location_name: "InvalidUserList"))
    SMBFileShareInfo.add_member(:authentication, Shapes::ShapeRef.new(shape: Authentication, location_name: "Authentication"))
    SMBFileShareInfo.struct_class = Types::SMBFileShareInfo

    SMBFileShareInfoList.member = Shapes::ShapeRef.new(shape: SMBFileShareInfo)

    SetLocalConsolePasswordInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    SetLocalConsolePasswordInput.add_member(:local_console_password, Shapes::ShapeRef.new(shape: LocalConsolePassword, required: true, location_name: "LocalConsolePassword"))
    SetLocalConsolePasswordInput.struct_class = Types::SetLocalConsolePasswordInput

    SetLocalConsolePasswordOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    SetLocalConsolePasswordOutput.struct_class = Types::SetLocalConsolePasswordOutput

    SetSMBGuestPasswordInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    SetSMBGuestPasswordInput.add_member(:password, Shapes::ShapeRef.new(shape: SMBGuestPassword, required: true, location_name: "Password"))
    SetSMBGuestPasswordInput.struct_class = Types::SetSMBGuestPasswordInput

    SetSMBGuestPasswordOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    SetSMBGuestPasswordOutput.struct_class = Types::SetSMBGuestPasswordOutput

    ShutdownGatewayInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    ShutdownGatewayInput.struct_class = Types::ShutdownGatewayInput

    ShutdownGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    ShutdownGatewayOutput.struct_class = Types::ShutdownGatewayOutput

    StartGatewayInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    StartGatewayInput.struct_class = Types::StartGatewayInput

    StartGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    StartGatewayOutput.struct_class = Types::StartGatewayOutput

    StorageGatewayError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    StorageGatewayError.add_member(:error_details, Shapes::ShapeRef.new(shape: errorDetails, location_name: "errorDetails"))
    StorageGatewayError.struct_class = Types::StorageGatewayError

    StorediSCSIVolume.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    StorediSCSIVolume.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    StorediSCSIVolume.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    StorediSCSIVolume.add_member(:volume_status, Shapes::ShapeRef.new(shape: VolumeStatus, location_name: "VolumeStatus"))
    StorediSCSIVolume.add_member(:volume_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "VolumeSizeInBytes"))
    StorediSCSIVolume.add_member(:volume_progress, Shapes::ShapeRef.new(shape: DoubleObject, location_name: "VolumeProgress"))
    StorediSCSIVolume.add_member(:volume_disk_id, Shapes::ShapeRef.new(shape: DiskId, location_name: "VolumeDiskId"))
    StorediSCSIVolume.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SourceSnapshotId"))
    StorediSCSIVolume.add_member(:preserved_existing_data, Shapes::ShapeRef.new(shape: boolean, location_name: "PreservedExistingData"))
    StorediSCSIVolume.add_member(:volume_iscsi_attributes, Shapes::ShapeRef.new(shape: VolumeiSCSIAttributes, location_name: "VolumeiSCSIAttributes"))
    StorediSCSIVolume.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDate, location_name: "CreatedDate"))
    StorediSCSIVolume.add_member(:volume_used_in_bytes, Shapes::ShapeRef.new(shape: VolumeUsedInBytes, location_name: "VolumeUsedInBytes"))
    StorediSCSIVolume.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    StorediSCSIVolume.struct_class = Types::StorediSCSIVolume

    StorediSCSIVolumes.member = Shapes::ShapeRef.new(shape: StorediSCSIVolume)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    Tape.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    Tape.add_member(:tape_barcode, Shapes::ShapeRef.new(shape: TapeBarcode, location_name: "TapeBarcode"))
    Tape.add_member(:tape_created_date, Shapes::ShapeRef.new(shape: Time, location_name: "TapeCreatedDate"))
    Tape.add_member(:tape_size_in_bytes, Shapes::ShapeRef.new(shape: TapeSize, location_name: "TapeSizeInBytes"))
    Tape.add_member(:tape_status, Shapes::ShapeRef.new(shape: TapeStatus, location_name: "TapeStatus"))
    Tape.add_member(:vtl_device, Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: "VTLDevice"))
    Tape.add_member(:progress, Shapes::ShapeRef.new(shape: DoubleObject, location_name: "Progress"))
    Tape.add_member(:tape_used_in_bytes, Shapes::ShapeRef.new(shape: TapeUsage, location_name: "TapeUsedInBytes"))
    Tape.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    Tape.struct_class = Types::Tape

    TapeARNs.member = Shapes::ShapeRef.new(shape: TapeARN)

    TapeArchive.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    TapeArchive.add_member(:tape_barcode, Shapes::ShapeRef.new(shape: TapeBarcode, location_name: "TapeBarcode"))
    TapeArchive.add_member(:tape_created_date, Shapes::ShapeRef.new(shape: Time, location_name: "TapeCreatedDate"))
    TapeArchive.add_member(:tape_size_in_bytes, Shapes::ShapeRef.new(shape: TapeSize, location_name: "TapeSizeInBytes"))
    TapeArchive.add_member(:completion_time, Shapes::ShapeRef.new(shape: Time, location_name: "CompletionTime"))
    TapeArchive.add_member(:retrieved_to, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "RetrievedTo"))
    TapeArchive.add_member(:tape_status, Shapes::ShapeRef.new(shape: TapeArchiveStatus, location_name: "TapeStatus"))
    TapeArchive.add_member(:tape_used_in_bytes, Shapes::ShapeRef.new(shape: TapeUsage, location_name: "TapeUsedInBytes"))
    TapeArchive.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    TapeArchive.struct_class = Types::TapeArchive

    TapeArchives.member = Shapes::ShapeRef.new(shape: TapeArchive)

    TapeInfo.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    TapeInfo.add_member(:tape_barcode, Shapes::ShapeRef.new(shape: TapeBarcode, location_name: "TapeBarcode"))
    TapeInfo.add_member(:tape_size_in_bytes, Shapes::ShapeRef.new(shape: TapeSize, location_name: "TapeSizeInBytes"))
    TapeInfo.add_member(:tape_status, Shapes::ShapeRef.new(shape: TapeStatus, location_name: "TapeStatus"))
    TapeInfo.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    TapeInfo.struct_class = Types::TapeInfo

    TapeInfos.member = Shapes::ShapeRef.new(shape: TapeInfo)

    TapeRecoveryPointInfo.add_member(:tape_arn, Shapes::ShapeRef.new(shape: TapeARN, location_name: "TapeARN"))
    TapeRecoveryPointInfo.add_member(:tape_recovery_point_time, Shapes::ShapeRef.new(shape: Time, location_name: "TapeRecoveryPointTime"))
    TapeRecoveryPointInfo.add_member(:tape_size_in_bytes, Shapes::ShapeRef.new(shape: TapeSize, location_name: "TapeSizeInBytes"))
    TapeRecoveryPointInfo.add_member(:tape_status, Shapes::ShapeRef.new(shape: TapeRecoveryPointStatus, location_name: "TapeStatus"))
    TapeRecoveryPointInfo.struct_class = Types::TapeRecoveryPointInfo

    TapeRecoveryPointInfos.member = Shapes::ShapeRef.new(shape: TapeRecoveryPointInfo)

    Tapes.member = Shapes::ShapeRef.new(shape: Tape)

    UpdateBandwidthRateLimitInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    UpdateBandwidthRateLimitInput.add_member(:average_upload_rate_limit_in_bits_per_sec, Shapes::ShapeRef.new(shape: BandwidthUploadRateLimit, location_name: "AverageUploadRateLimitInBitsPerSec"))
    UpdateBandwidthRateLimitInput.add_member(:average_download_rate_limit_in_bits_per_sec, Shapes::ShapeRef.new(shape: BandwidthDownloadRateLimit, location_name: "AverageDownloadRateLimitInBitsPerSec"))
    UpdateBandwidthRateLimitInput.struct_class = Types::UpdateBandwidthRateLimitInput

    UpdateBandwidthRateLimitOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    UpdateBandwidthRateLimitOutput.struct_class = Types::UpdateBandwidthRateLimitOutput

    UpdateChapCredentialsInput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, required: true, location_name: "TargetARN"))
    UpdateChapCredentialsInput.add_member(:secret_to_authenticate_initiator, Shapes::ShapeRef.new(shape: ChapSecret, required: true, location_name: "SecretToAuthenticateInitiator"))
    UpdateChapCredentialsInput.add_member(:initiator_name, Shapes::ShapeRef.new(shape: IqnName, required: true, location_name: "InitiatorName"))
    UpdateChapCredentialsInput.add_member(:secret_to_authenticate_target, Shapes::ShapeRef.new(shape: ChapSecret, location_name: "SecretToAuthenticateTarget"))
    UpdateChapCredentialsInput.struct_class = Types::UpdateChapCredentialsInput

    UpdateChapCredentialsOutput.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    UpdateChapCredentialsOutput.add_member(:initiator_name, Shapes::ShapeRef.new(shape: IqnName, location_name: "InitiatorName"))
    UpdateChapCredentialsOutput.struct_class = Types::UpdateChapCredentialsOutput

    UpdateGatewayInformationInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    UpdateGatewayInformationInput.add_member(:gateway_name, Shapes::ShapeRef.new(shape: GatewayName, location_name: "GatewayName"))
    UpdateGatewayInformationInput.add_member(:gateway_timezone, Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: "GatewayTimezone"))
    UpdateGatewayInformationInput.struct_class = Types::UpdateGatewayInformationInput

    UpdateGatewayInformationOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    UpdateGatewayInformationOutput.add_member(:gateway_name, Shapes::ShapeRef.new(shape: string, location_name: "GatewayName"))
    UpdateGatewayInformationOutput.struct_class = Types::UpdateGatewayInformationOutput

    UpdateGatewaySoftwareNowInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    UpdateGatewaySoftwareNowInput.struct_class = Types::UpdateGatewaySoftwareNowInput

    UpdateGatewaySoftwareNowOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    UpdateGatewaySoftwareNowOutput.struct_class = Types::UpdateGatewaySoftwareNowOutput

    UpdateMaintenanceStartTimeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, required: true, location_name: "GatewayARN"))
    UpdateMaintenanceStartTimeInput.add_member(:hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "HourOfDay"))
    UpdateMaintenanceStartTimeInput.add_member(:minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, required: true, location_name: "MinuteOfHour"))
    UpdateMaintenanceStartTimeInput.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, required: true, location_name: "DayOfWeek"))
    UpdateMaintenanceStartTimeInput.struct_class = Types::UpdateMaintenanceStartTimeInput

    UpdateMaintenanceStartTimeOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    UpdateMaintenanceStartTimeOutput.struct_class = Types::UpdateMaintenanceStartTimeOutput

    UpdateNFSFileShareInput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, required: true, location_name: "FileShareARN"))
    UpdateNFSFileShareInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    UpdateNFSFileShareInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    UpdateNFSFileShareInput.add_member(:nfs_file_share_defaults, Shapes::ShapeRef.new(shape: NFSFileShareDefaults, location_name: "NFSFileShareDefaults"))
    UpdateNFSFileShareInput.add_member(:default_storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "DefaultStorageClass"))
    UpdateNFSFileShareInput.add_member(:object_acl, Shapes::ShapeRef.new(shape: ObjectACL, location_name: "ObjectACL"))
    UpdateNFSFileShareInput.add_member(:client_list, Shapes::ShapeRef.new(shape: FileShareClientList, location_name: "ClientList"))
    UpdateNFSFileShareInput.add_member(:squash, Shapes::ShapeRef.new(shape: Squash, location_name: "Squash"))
    UpdateNFSFileShareInput.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    UpdateNFSFileShareInput.add_member(:guess_mime_type_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "GuessMIMETypeEnabled"))
    UpdateNFSFileShareInput.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    UpdateNFSFileShareInput.struct_class = Types::UpdateNFSFileShareInput

    UpdateNFSFileShareOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    UpdateNFSFileShareOutput.struct_class = Types::UpdateNFSFileShareOutput

    UpdateSMBFileShareInput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, required: true, location_name: "FileShareARN"))
    UpdateSMBFileShareInput.add_member(:kms_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "KMSEncrypted"))
    UpdateSMBFileShareInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "KMSKey"))
    UpdateSMBFileShareInput.add_member(:default_storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "DefaultStorageClass"))
    UpdateSMBFileShareInput.add_member(:object_acl, Shapes::ShapeRef.new(shape: ObjectACL, location_name: "ObjectACL"))
    UpdateSMBFileShareInput.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    UpdateSMBFileShareInput.add_member(:guess_mime_type_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "GuessMIMETypeEnabled"))
    UpdateSMBFileShareInput.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    UpdateSMBFileShareInput.add_member(:valid_user_list, Shapes::ShapeRef.new(shape: FileShareUserList, location_name: "ValidUserList"))
    UpdateSMBFileShareInput.add_member(:invalid_user_list, Shapes::ShapeRef.new(shape: FileShareUserList, location_name: "InvalidUserList"))
    UpdateSMBFileShareInput.struct_class = Types::UpdateSMBFileShareInput

    UpdateSMBFileShareOutput.add_member(:file_share_arn, Shapes::ShapeRef.new(shape: FileShareARN, location_name: "FileShareARN"))
    UpdateSMBFileShareOutput.struct_class = Types::UpdateSMBFileShareOutput

    UpdateSnapshotScheduleInput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, required: true, location_name: "VolumeARN"))
    UpdateSnapshotScheduleInput.add_member(:start_at, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "StartAt"))
    UpdateSnapshotScheduleInput.add_member(:recurrence_in_hours, Shapes::ShapeRef.new(shape: RecurrenceInHours, required: true, location_name: "RecurrenceInHours"))
    UpdateSnapshotScheduleInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateSnapshotScheduleInput.struct_class = Types::UpdateSnapshotScheduleInput

    UpdateSnapshotScheduleOutput.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    UpdateSnapshotScheduleOutput.struct_class = Types::UpdateSnapshotScheduleOutput

    UpdateVTLDeviceTypeInput.add_member(:vtl_device_arn, Shapes::ShapeRef.new(shape: VTLDeviceARN, required: true, location_name: "VTLDeviceARN"))
    UpdateVTLDeviceTypeInput.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "DeviceType"))
    UpdateVTLDeviceTypeInput.struct_class = Types::UpdateVTLDeviceTypeInput

    UpdateVTLDeviceTypeOutput.add_member(:vtl_device_arn, Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: "VTLDeviceARN"))
    UpdateVTLDeviceTypeOutput.struct_class = Types::UpdateVTLDeviceTypeOutput

    VTLDevice.add_member(:vtl_device_arn, Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: "VTLDeviceARN"))
    VTLDevice.add_member(:vtl_device_type, Shapes::ShapeRef.new(shape: VTLDeviceType, location_name: "VTLDeviceType"))
    VTLDevice.add_member(:vtl_device_vendor, Shapes::ShapeRef.new(shape: VTLDeviceVendor, location_name: "VTLDeviceVendor"))
    VTLDevice.add_member(:vtl_device_product_identifier, Shapes::ShapeRef.new(shape: VTLDeviceProductIdentifier, location_name: "VTLDeviceProductIdentifier"))
    VTLDevice.add_member(:device_iscsi_attributes, Shapes::ShapeRef.new(shape: DeviceiSCSIAttributes, location_name: "DeviceiSCSIAttributes"))
    VTLDevice.struct_class = Types::VTLDevice

    VTLDeviceARNs.member = Shapes::ShapeRef.new(shape: VTLDeviceARN)

    VTLDevices.member = Shapes::ShapeRef.new(shape: VTLDevice)

    VolumeARNs.member = Shapes::ShapeRef.new(shape: VolumeARN)

    VolumeInfo.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    VolumeInfo.add_member(:volume_id, Shapes::ShapeRef.new(shape: VolumeId, location_name: "VolumeId"))
    VolumeInfo.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayARN, location_name: "GatewayARN"))
    VolumeInfo.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, location_name: "GatewayId"))
    VolumeInfo.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    VolumeInfo.add_member(:volume_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "VolumeSizeInBytes"))
    VolumeInfo.struct_class = Types::VolumeInfo

    VolumeInfos.member = Shapes::ShapeRef.new(shape: VolumeInfo)

    VolumeRecoveryPointInfo.add_member(:volume_arn, Shapes::ShapeRef.new(shape: VolumeARN, location_name: "VolumeARN"))
    VolumeRecoveryPointInfo.add_member(:volume_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "VolumeSizeInBytes"))
    VolumeRecoveryPointInfo.add_member(:volume_usage_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "VolumeUsageInBytes"))
    VolumeRecoveryPointInfo.add_member(:volume_recovery_point_time, Shapes::ShapeRef.new(shape: string, location_name: "VolumeRecoveryPointTime"))
    VolumeRecoveryPointInfo.struct_class = Types::VolumeRecoveryPointInfo

    VolumeRecoveryPointInfos.member = Shapes::ShapeRef.new(shape: VolumeRecoveryPointInfo)

    VolumeiSCSIAttributes.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetARN, location_name: "TargetARN"))
    VolumeiSCSIAttributes.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    VolumeiSCSIAttributes.add_member(:network_interface_port, Shapes::ShapeRef.new(shape: integer, location_name: "NetworkInterfacePort"))
    VolumeiSCSIAttributes.add_member(:lun_number, Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: "LunNumber"))
    VolumeiSCSIAttributes.add_member(:chap_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "ChapEnabled"))
    VolumeiSCSIAttributes.struct_class = Types::VolumeiSCSIAttributes

    errorDetails.key = Shapes::ShapeRef.new(shape: string)
    errorDetails.value = Shapes::ShapeRef.new(shape: string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-06-30"

      api.metadata = {
        "apiVersion" => "2013-06-30",
        "endpointPrefix" => "storagegateway",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Storage Gateway",
        "serviceId" => "Storage Gateway",
        "signatureVersion" => "v4",
        "targetPrefix" => "StorageGateway_20130630",
        "uid" => "storagegateway-2013-06-30",
      }

      api.add_operation(:activate_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ActivateGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: ActivateGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:add_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddCacheInput)
        o.output = Shapes::ShapeRef.new(shape: AddCacheOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:add_upload_buffer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddUploadBuffer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddUploadBufferInput)
        o.output = Shapes::ShapeRef.new(shape: AddUploadBufferOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:add_working_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddWorkingStorage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddWorkingStorageInput)
        o.output = Shapes::ShapeRef.new(shape: AddWorkingStorageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:cancel_archival, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelArchival"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelArchivalInput)
        o.output = Shapes::ShapeRef.new(shape: CancelArchivalOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:cancel_retrieval, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelRetrieval"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelRetrievalInput)
        o.output = Shapes::ShapeRef.new(shape: CancelRetrievalOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_cached_iscsi_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCachediSCSIVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCachediSCSIVolumeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCachediSCSIVolumeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_nfs_file_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNFSFileShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNFSFileShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNFSFileShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_smb_file_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSMBFileShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSMBFileShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSMBFileShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)

      api.add_operation(:create_snapshot_from_volume_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshotFromVolumeRecoveryPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotFromVolumeRecoveryPointInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotFromVolumeRecoveryPointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableError)
      end)

      api.add_operation(:create_stored_iscsi_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStorediSCSIVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStorediSCSIVolumeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStorediSCSIVolumeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_tape_with_barcode, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTapeWithBarcode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTapeWithBarcodeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTapeWithBarcodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_tapes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTapes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTapesInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTapesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_bandwidth_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBandwidthRateLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBandwidthRateLimitInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBandwidthRateLimitOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_chap_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChapCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteChapCredentialsInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteChapCredentialsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_file_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileShareInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteFileShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_tape, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTape"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTapeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTapeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_tape_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTapeArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTapeArchiveInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTapeArchiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVolumeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVolumeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_bandwidth_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBandwidthRateLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBandwidthRateLimitInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBandwidthRateLimitOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCacheOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_cached_iscsi_volumes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCachediSCSIVolumes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCachediSCSIVolumesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCachediSCSIVolumesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_chap_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChapCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeChapCredentialsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeChapCredentialsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_gateway_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayInformation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayInformationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayInformationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_maintenance_start_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceStartTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceStartTimeInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceStartTimeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_nfs_file_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNFSFileShares"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNFSFileSharesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNFSFileSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_smb_file_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSMBFileShares"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSMBFileSharesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSMBFileSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_smb_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSMBSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSMBSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSMBSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSnapshotScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_stored_iscsi_volumes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorediSCSIVolumes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStorediSCSIVolumesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStorediSCSIVolumesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_tape_archives, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTapeArchives"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTapeArchivesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTapeArchivesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_tape_recovery_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTapeRecoveryPoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTapeRecoveryPointsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTapeRecoveryPointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_tapes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTapes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTapesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTapesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_upload_buffer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUploadBuffer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUploadBufferInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeUploadBufferOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_vtl_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVTLDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVTLDevicesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVTLDevicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_working_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkingStorage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkingStorageInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkingStorageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:disable_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DisableGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:join_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "JoinDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: JoinDomainInput)
        o.output = Shapes::ShapeRef.new(shape: JoinDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_file_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFileShares"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFileSharesInput)
        o.output = Shapes::ShapeRef.new(shape: ListFileSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysInput)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_local_disks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLocalDisks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLocalDisksInput)
        o.output = Shapes::ShapeRef.new(shape: ListLocalDisksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_tapes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTapes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTapesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTapesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_volume_initiators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVolumeInitiators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVolumeInitiatorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListVolumeInitiatorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_volume_recovery_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVolumeRecoveryPoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVolumeRecoveryPointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListVolumeRecoveryPointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_volumes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVolumes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVolumesInput)
        o.output = Shapes::ShapeRef.new(shape: ListVolumesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:notify_when_uploaded, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyWhenUploaded"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: NotifyWhenUploadedInput)
        o.output = Shapes::ShapeRef.new(shape: NotifyWhenUploadedOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:refresh_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RefreshCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RefreshCacheInput)
        o.output = Shapes::ShapeRef.new(shape: RefreshCacheOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:reset_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetCache"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetCacheInput)
        o.output = Shapes::ShapeRef.new(shape: ResetCacheOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:retrieve_tape_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveTapeArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetrieveTapeArchiveInput)
        o.output = Shapes::ShapeRef.new(shape: RetrieveTapeArchiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:retrieve_tape_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveTapeRecoveryPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetrieveTapeRecoveryPointInput)
        o.output = Shapes::ShapeRef.new(shape: RetrieveTapeRecoveryPointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:set_local_console_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLocalConsolePassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetLocalConsolePasswordInput)
        o.output = Shapes::ShapeRef.new(shape: SetLocalConsolePasswordOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:set_smb_guest_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetSMBGuestPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetSMBGuestPasswordInput)
        o.output = Shapes::ShapeRef.new(shape: SetSMBGuestPasswordOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:shutdown_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ShutdownGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ShutdownGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: ShutdownGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:start_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: StartGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_bandwidth_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBandwidthRateLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBandwidthRateLimitInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBandwidthRateLimitOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_chap_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChapCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateChapCredentialsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateChapCredentialsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_gateway_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayInformation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayInformationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayInformationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_gateway_software_now, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewaySoftwareNow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_maintenance_start_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceStartTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceStartTimeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceStartTimeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_nfs_file_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNFSFileShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNFSFileShareInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNFSFileShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_smb_file_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSMBFileShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSMBFileShareInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSMBFileShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSnapshotScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSnapshotScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_vtl_device_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVTLDeviceType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVTLDeviceTypeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVTLDeviceTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
